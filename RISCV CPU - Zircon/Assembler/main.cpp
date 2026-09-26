#include <iostream>
#include <vector>
#include <string>
#include <algorithm>
#include <cstdint>
#include <bitset>
#include <fstream>
#include <sstream>

using namespace std;

// RISC-V RV32I ISA class
class ISA
{
    private:
    vector<string> mnemonic = 
    {
        "ADD","SUB","SLL","SLT","SLTU","XOR","SRL","SRA","OR","AND","JALR","LB","LH","LW",
        "LBU","LHU","ADDI","SLTI","SLTIU","XORI","ORI","ANDI","SLLI","SRLI","SRAI","FENCE","FENCE.TSO","PAUSE",
        "ECALL","EBREAK","SB","SH","SW","BEQ","BNE","BLT","BGE","BLTU","BGEU","LUI","AUIPC","JAL"
    };
    vector<string> instruction = 
    {
        "R","R","R","R","R","R","R","R","R","R","I","I","I","I",
        "I","I","I","I","I","I","I","I","I","I","I","I","I","I",
        "I","I","S","S","S","B","B","B","B","B","B","U","U","J"
    };
    vector<uint8_t> opcode = 
    {
        0b0110011,0b0110011,0b0110011,0b0110011,0b0110011,0b0110011,0b0110011,0b0110011,0b0110011,0b0110011,0b1100111,0b0000011,0b0000011,0b0000011,
        0b0000011,0b0000011,0b0010011,0b0010011,0b0010011,0b0010011,0b0010011,0b0010011,0b0010011,0b0010011,0b0010011,0b0001111,0b0001111,0b0001111,
        0b1110011,0b1110011,0b0100011,0b0100011,0b0100011,0b1100011,0b1100011,0b1100011,0b1100011,0b1100011,0b1100011,0b0110111,0b0010111,0b1101111
    };
    vector<uint8_t> funct3 = 
    {
        0b000,0b000,0b001,0b010,0b011,0b100,0b101,0b101,0b110,0b111,0b000,0b000,0b001,
        0b010,0b100,0b101,0b000,0b010,0b011,0b100,0b110,0b111,0b001,0b101,0b101,0b000,
        0b000,0b000,0b000,0b000,0b000,0b001,0b010,0b000,0b001,0b100,0b101,0b110,0b111
    };
    vector<uint8_t> funct7 =
    {
        0b0000000,0b0100000,0b0000000,0b0000000,0b0000000,0b0000000,0b0000000,0b0100000,0b0000000,0b0000000
    };
    int index=0;
    int getIndex(string op, int i)
    {
        if(i>=mnemonic.size()){return -1;}
        else if(mnemonic[i] == op){return i;}
        else {return getIndex(op, i+1);}
    }
    public:
    string type=""; uint8_t OPCODE=0; uint8_t func3=0; uint8_t func7=0;
    void find(string op)
    {
        index = getIndex(op, 0);
        if(index != -1)
        {
            type = instruction[index];
            OPCODE = opcode[index];
            func3 = funct3[index];
            func7 = funct7[index];
            return;
        }
        else 
        {
            type = ""; 
            return;
        }
    }
};

// R-type instruction encoding
bitset<32> EncodeR(uint8_t func7, uint8_t rs2, uint8_t rs1, uint8_t func3, uint8_t rd, uint8_t opcode)
{
    bitset<32> f7(func7);
    bitset<32> rS2(rs2);
    bitset<32> rS1(rs1);
    bitset<32> f3(func3);
    bitset<32> rD(rd);
    bitset<32> op(opcode);
    bitset<32> code = (f7 << 25) | (rS2 << 20) | (rS1 << 15) | (f3 << 12) | (rD << 7) | op;
    return code;
}

// I-type instruction encoding
bitset<32> EncodeI(uint32_t imm, uint8_t rs1, uint8_t func3, uint8_t rd, uint8_t opcode)
{
    bitset<32> immediate(imm);
    bitset<32> rS1(rs1);
    bitset<32> f3(func3);
    bitset<32> rD(rd);
    bitset<32> op(opcode);
    bitset<32> code = (immediate << 20) | (rS1 << 15) | (f3 << 12) | (rD << 7) | op;
    return code;
}

// S-type instruction encoding
bitset<32> EncodeS(uint32_t imm, uint8_t rs2, uint8_t rs1, uint8_t func3, uint8_t opcode)
{
    bitset<32> immediate(imm);
    bitset<32> rS2(rs2);
    bitset<32> rS1(rs1);
    bitset<32> f3(func3);
    bitset<32> op(opcode);
    bitset<32> code = ((immediate & bitset<32>(0x7E0)) << 25) | (rS2 << 20) | (rS1 << 15) | (f3 << 12) | ((immediate & bitset<32>(0x1F)) << 7) | op;
    return code;
}

// B-type instruction encoding
bitset<32> EncodeB(uint32_t imm, uint8_t rs2, uint8_t rs1, uint8_t func3, uint8_t opcode)
{
    bitset<32> immediate(imm);
    bitset<32> rS2(rs2);
    bitset<32> rS1(rs1);
    bitset<32> f3(func3);
    bitset<32> op(opcode);
    bitset<32> code = ((immediate & bitset<32>(0x1000)) << 19) | ((immediate & bitset<32>(0x7E0)) << 20) | (rS2 << 20) | (rS1 << 15) | (f3 << 12) | ((immediate & bitset<32>(0x1E)) << 7) | ((immediate & bitset<32>(0x800)) >> 4) | op;
    return code;
}

// U-type instruction encoding
bitset<32> EncodeU(uint32_t imm, uint8_t rd, uint8_t opcode)
{
    bitset<32> immediate(imm);
    bitset<32> rD(rd);
    bitset<32> op(opcode);
    bitset<32> code = (immediate & bitset<32>(0xFFFFF000)) | (rD << 7) | op;
    return code;
}

// J-type instruction encoding
bitset<32> EncodeJ(uint32_t imm, uint8_t rd, uint8_t opcode)
{
    bitset<32> immediate(imm);
    bitset<32> rD(rd);
    bitset<32> op(opcode);
    bitset<32> code = ((immediate & bitset<32>(0x100000)) << 11) | ((immediate & bitset<32>(0x7FE)) << 20) | ((immediate & bitset<32>(0x800)) << 9) | (immediate & bitset<32>(0xFF000)) | (rD << 7) | op;
    return code;
}

// Parse instruction into mnemonic and operands
void Parse(string instruction, string &mnemonic, vector<string> &operands)
{
    size_t pos = instruction.find(' ');
    if (pos != string::npos)
    {
        mnemonic = instruction.substr(0, pos);
        string operandsStr = instruction.substr(pos + 1);
        size_t start = 0;
        size_t end = operandsStr.find(',');
        while (end != string::npos)
        {
            operands.push_back(operandsStr.substr(start, end - start));
            start = end + 1;
            end = operandsStr.find(',', start);
        }
        operands.push_back(operandsStr.substr(start));
    }
    else { mnemonic = instruction; }
}

// Get machine code for instruction
void genCode(string instruction, bitset<32> &code)
{
    // Parse instruction into mnemonic and operands
    string mnemonic;
    vector<string> operands;
    Parse(instruction, mnemonic, operands);

    // Find instruction type and encoding parameters
    ISA RV32I;
    RV32I.find(mnemonic);
    string type= RV32I.type;

    uint8_t opcode= RV32I.OPCODE;
    uint8_t func3= RV32I.func3;
    uint8_t func7= RV32I.func7;
    uint8_t rs1, rs2, rd;
    uint32_t imm;

// Encode instruction based on type
try
{
    if(type == "R")
    {
        rs2 = stoi(operands[2].substr(1));
        rs1 = stoi(operands[1].substr(1));
        rd = stoi(operands[0].substr(1));
        code = EncodeR(func7, rs2, rs1, func3, rd, opcode);
    }
    else if(type == "I")
    {
        if (mnemonic == "SLLI" || mnemonic == "SRLI")
            {
                imm = stoi(operands[2],0,16) & 0x1F;
                rs1 = stoi(operands[1].substr(1));
                rd = stoi(operands[0].substr(1));
                code = EncodeI(imm, rs1, func3, rd, opcode);
            }
        else if (mnemonic == "SRAI")
            {
                imm = stoi(operands[2],0,16) & 0x1F;
                imm = imm | (1 << 10); 
                rs1 = stoi(operands[1].substr(1));
                rd = stoi(operands[0].substr(1));
                code = EncodeI(imm, rs1, func3, rd, opcode);
            }
        else
        {
            imm = stoi(operands[2],0,16);
            rs1 = stoi(operands[1].substr(1));
            rd = stoi(operands[0].substr(1));
            code = EncodeI(imm, rs1, func3, rd, opcode);
        }
    }
    else if(type == "S")
    {
        imm = stoi(operands[2],0,16);
        rs1 = stoi(operands[1].substr(1));
        rs2 = stoi(operands[0].substr(1));
        code = EncodeS(imm, rs2, rs1, func3, opcode);
    }
    else if(type == "B")
    {
        imm = stoi(operands[2],0,16);
        rs2 = stoi(operands[1].substr(1));
        rs1 = stoi(operands[0].substr(1));
        code = EncodeB(imm, rs2, rs1, func3, opcode);
    }
    else if(type == "U")
    {
        imm = stoi(operands[1],0,16);
        rd = stoi(operands[0].substr(1));
        code = EncodeU(imm, rd, opcode);
    }
    else if(type == "J")
    {
        imm = stoi(operands[1],0,16);
        rd = stoi(operands[0].substr(1));
        code = EncodeJ(imm, rd, opcode);
    }
}
catch (const exception& e)
{
    code = bitset<32>(0);
    return;
}
}

// Load assembly instructions from file
vector<string> load()
{
    ifstream file;
    string line;
    vector<string> instruction;
    file.open("programme.asm");
    if (file.is_open())
    {
        cout <<"***** Programme Loaded *****"<<endl;
        while (!file.eof())
        {
            getline(file, line);
            instruction.push_back(line);
        }
        file.close();
    }
    else { cout <<"***** Load Failed *****"<<endl; }
    return instruction;
}

// Save machine code to file
void save(vector<bitset<32>> code)
{
    ofstream outfile("binary.txt");
    for (int i = 0; i < code.size(); i++)
    {
        outfile << code[i] << endl;
    }
    outfile.close();
}

int main()
{
    vector<string> instructions = load();
    vector<bitset<32>> machineCode;

    for (int i = 0; i < instructions.size(); i++)
    {
        bitset<32> code;
        genCode(instructions[i], code);
        machineCode.push_back(code);
    }

    save(machineCode);

    return 0;
}