--------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
--
-- Create Date:   16:40:13 01/22/2023
-- Design Name:   
-- Module Name:   C:/Users/Black/Xilinx/SysGen/14.7/Multiplier_Core_tb.vhd
-- Project Name:  keypad
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Multiplier_Core
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
 
ENTITY Multiplier_Core_tb IS
END Multiplier_Core_tb;
 
ARCHITECTURE behavior OF Multiplier_Core_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Multiplier_Core
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         start : IN  std_logic;
         A : IN  std_logic_vector(15 downto 0);
         B : IN  std_logic_vector(15 downto 0);
         final_product : OUT  std_logic_vector(31 downto 0);
         overflow : OUT  std_logic;
         done : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal start : std_logic := '0';
   signal A : std_logic_vector(15 downto 0) := (others => '0');
   signal B : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal final_product : std_logic_vector(31 downto 0);
   signal overflow : std_logic;
   signal done : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Multiplier_Core PORT MAP (
          clk => clk,
          reset => reset,
          start => start,
          A => A,
          B => B,
          final_product => final_product,
          overflow => overflow,
          done => done
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 
		reset <= '1';
---- Validator ----

-- Invalid --
--		A <= x"000A";
--		B <= x"000B";
--		A <= x"000A";
--		B <= x"0000";
--		A <= x"0001";
--		B <= x"000A";
-- Zeros --
--		A <= x"0000";
--		B <= x"0000";
--		A <= x"0001";
--		B <= x"0000";
--		A <= x"0000";
--		B <= x"0002";
-- Ones --
--		A <= x"0001";
--		B <= x"0001";
--		A <= x"0001";
--		B <= x"0002";
--		A <= x"0002";
--		B <= x"0001";

---- SI/Multiplier ----
-- Low/Low --
--		A <= X"0010";
--		B <= X"0010";
-- Low/Medium --
--		A <= X"0010";
--		B <= X"0500";
-- Medium/Medium --
--		A <= X"0500";
--		B <= X"1000";
-- Medium/High --
--		A <= X"9999";
--		B <= X"1000";
-- High/High --
--		A <= X"9999";
--		B <= X"9999";

		wait for 100 ns;
		
		reset <= '0';
		start <= '1';
		wait for 100 ns;
		
		start <= '0';
		
---- SI ----
--		wait for 1.4 us;
--		
--		start <= '1';
--		wait for 100 ns;
--		
--		start <= '0';
		
      wait;
   end process;

END;
