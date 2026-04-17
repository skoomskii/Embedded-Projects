--------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
--
-- Create Date:   01:04:51 01/14/2023
-- Design Name:   
-- Module Name:   C:/Users/Black/Xilinx/SysGen/14.7/validator_tb.vhd
-- Project Name:  keypad
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Validator
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY validator_tb IS
END validator_tb;
 
ARCHITECTURE behavior OF validator_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Validator
    PORT(
         A : IN  std_logic_vector(15 downto 0);
         B : IN  std_logic_vector(15 downto 0);
         decision : OUT  std_logic_vector(31 downto 0);
         fault : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(15 downto 0) := (others => '0');
   signal B : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal decision : std_logic_vector(31 downto 0);
   signal fault : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Validator PORT MAP (
          A => A,
          B => B,
          decision => decision,
          fault => fault
        );

--   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
--      wait for 100 ns;	

--      wait for <clock>_period*10;

      -- insert stimulus here 
--		A <= x"000A";
--		B <= x"000B";
--		A <= x"000A";
--		B <= x"0000";
--		A <= x"0001";
--		B <= x"000A";
		
--		A <= x"0000";
--		B <= x"0000";
--		A <= x"0001";
--		B <= x"0000";
--		A <= x"0000";
--		B <= x"0002";

--		A <= x"0001";
--		B <= x"0001";
--		A <= x"0001";
--		B <= x"0002";
		A <= x"0002";
		B <= x"0001";

      wait;
   end process;

END;
