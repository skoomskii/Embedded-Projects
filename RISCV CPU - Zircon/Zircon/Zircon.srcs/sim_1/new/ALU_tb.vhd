----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date: 09/13/2026 11:08:38 AM
-- Design Name: 
-- Module Name: ALU_tb - Behavioral
-- Project Name: Zircon v1.0.0
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ALU_tb IS
END ALU_tb;
 
ARCHITECTURE behavior OF ALU_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT ALU
    PORT(
           A : in STD_LOGIC_VECTOR (31 downto 0);
           B : in STD_LOGIC_VECTOR (31 downto 0);
           R : out STD_LOGIC_VECTOR (31 downto 0);
           OP : in STD_LOGIC_VECTOR (3 downto 0);
           Ovf : out STD_LOGIC;
           Zf : out STD_LOGIC;
           Cf : out STD_LOGIC
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector (31 downto 0);
   signal B : std_logic_vector (31 downto 0);
   signal OP : std_logic_vector (3 downto 0);      

 	--Outputs
   signal R : std_logic_vector (31 downto 0);
   signal Ovf : STD_LOGIC;
   signal Zf : std_logic;
   signal Cf : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          A => A,
           B => B,
           R => R,
           OP => OP,
           Ovf => Ovf,
           Zf => Zf,
           Cf => Cf
        );

   -- Stimulus process
   stim_proc: process
   begin

      -- insert stimulus here
      
      ----- AND
--      A <= x"0000abcd";
--      B <= x"010101ef";
--      OP <= x"0";
--      B <= x"0000abcd";
--      A <= x"010101ef";
      
      ---- OR
--      A <= x"0000abcd";
--      B <= x"010101ef";
--      OP <= x"1";
--      B <= x"0000abcd";
--      A <= x"010101ef";     
      
      ---- XOR
--      A <= x"0000abcd";
--      B <= x"010101ef";
--      OP <= x"2";
--      B <= x"0000abcd";
--      A <= x"010101ef";
            
      ---- ADD
--      A <= x"0000abcd";
--      B <= x"010101ef";
--      OP <= x"3";
--      B <= x"7FFFFFFF";
--      A <= x"00000001";
            
      ---- SUB
--      A <= x"0000abcd";
--      B <= x"010101ef";
--      OP <= x"4";
--      B <= x"0000abcd";
--      A <= x"010101ef";
            
      ---- SLT
--      A <= x"0000abcd";
--      B <= x"010101ef";

--      B <= x"0000abcd";
--      A <= x"010101ef";
--      OP <= x"5";
        -------------------
--      A <= x"f000abcd";
--      B <= x"010101ef";
        
--      B <= x"f000abcd";
--      A <= x"010101ef";
        -------------------
--      A <= x"0000abcd";
--      B <= x"f10101ef";
        
--      B <= x"0000abcd";
--      A <= x"f10101ef";
        -------------------
--      A <= x"f000abcd";
--      B <= x"f10101ef";
        --
--      B <= x"f000abcd";
--      A <= x"f10101ef";
            
      ---- SLL
--      A <= x"0000abcd";
--      B <= x"010101ef";
--      OP <= x"6";
--      B <= x"0000abcd";
--      A <= x"010101ef";
           
      ---- SRL
--      A <= x"0000abcd";
--      B <= x"010101ef";
--      OP <= x"7";
--      B <= x"0000abcd";
--      A <= x"010101ef";
            
      ---- SLTU
--      A <= x"0000abcd";
--      B <= x"010101ef";

--      B <= x"0000abcd";
--      A <= x"010101ef";
--      OP <= x"c";
        -------------------
--      A <= x"f000abcd";
--      B <= x"010101ef";
        
--      B <= x"f000abcd";
--      A <= x"010101ef";
        -------------------
--      A <= x"0000abcd";
--      B <= x"f10101ef";
        
--      B <= x"0000abcd";
--      A <= x"f10101ef";
        -------------------
--      A <= x"f000abcd";
--      B <= x"f10101ef";
        --
--      B <= x"f000abcd";
--      A <= x"f10101ef";            
            
      ---- SRA
--      A <= x"f000abcd";
--      B <= x"010101ef";
--      OP <= x"8";
--      B <= x"0000abcd";
--      A <= x"f10101ef";  

      ---- A
--      A <= x"0000abcd";
--      B <= x"010101ef";
--      OP <= x"A";
--      B <= x"0000abcd";
--      A <= x"010101ef";

      ---- B
--      A <= x"0000abcd";
--      B <= x"010101ef";
--      OP <= x"F";
--      B <= x"0000abcd";
--      A <= x"010101ef";   

      wait;
   end process;

END;
