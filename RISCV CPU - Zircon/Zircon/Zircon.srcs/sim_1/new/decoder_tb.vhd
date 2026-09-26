----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date: 09/13/2026 11:08:38 AM
-- Design Name: 
-- Module Name: Decoder_tb - Behavioral
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
 
ENTITY decoder_tb IS
END decoder_tb;
 
ARCHITECTURE behavior OF decoder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT Decoder
    PORT(
           Data : in STD_LOGIC_VECTOR (31 downto 0);
           rtn : out STD_LOGIC;
           jmp : out STD_LOGIC;
           brch : out STD_LOGIC;
           func : out STD_LOGIC_VECTOR (2 downto 0);
           flag : out STD_LOGIC;
           write : out STD_LOGIC;
           read : out STD_LOGIC;
           load : out STD_LOGIC;
           srcB : out STD_LOGIC;
           srcA : out STD_LOGIC;
           OP : out STD_LOGIC_VECTOR (3 downto 0);
           wen : out STD_LOGIC;
           ren : out STD_LOGIC;
           rS2 : out STD_LOGIC_VECTOR (4 downto 0);
           rS1 : out STD_LOGIC_VECTOR (4 downto 0);
           rD : out STD_LOGIC_VECTOR (4 downto 0);
           IMM : out STD_LOGIC_VECTOR (31 downto 0);
           exc : out STD_LOGIC_VECTOR (31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Data : std_logic_vector (31 downto 0);

 	--Outputs
   signal rtn : STD_LOGIC;
   signal jmp : STD_LOGIC;
   signal brch : STD_LOGIC;
   signal func : STD_LOGIC_VECTOR (2 downto 0);
   signal flag : STD_LOGIC;
   signal write : STD_LOGIC;
   signal read : STD_LOGIC;
   signal load : STD_LOGIC;
   signal srcB : STD_LOGIC;
   signal srcA : STD_LOGIC;
   signal OP : STD_LOGIC_VECTOR (3 downto 0);
   signal wen : STD_LOGIC;
   signal ren : STD_LOGIC;
   signal rS2 : STD_LOGIC_VECTOR (4 downto 0);
   signal rS1 : STD_LOGIC_VECTOR (4 downto 0);
   signal rD : STD_LOGIC_VECTOR (4 downto 0);
   signal IMM : STD_LOGIC_VECTOR (31 downto 0);
   signal exc : STD_LOGIC_VECTOR (31 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Decoder PORT MAP (
          Data => Data,
           rtn => rtn,
           jmp => jmp,
           brch => brch,
           func => func,
           flag => flag,
           write => write,
           read => read,
           load => load,
           srcB => srcB,
           srcA => srcA,
           OP => OP,
           wen => wen,
           ren => ren,
           rS2 => rS2,
           rS1 => rS1,
           rD => rD,
           IMM => IMM,
           exc => exc
        );

   -- Stimulus process
   stim_proc: process
   begin		
   
      -- insert stimulus here
      Data <= "00000000100000000000000011101111";
      wait for 10 ns;

      wait;
   end process;

END;
