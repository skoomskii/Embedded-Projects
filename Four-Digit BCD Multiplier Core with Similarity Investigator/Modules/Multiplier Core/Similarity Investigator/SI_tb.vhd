--------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
--
-- Create Date:   16:30:24 01/19/2023
-- Design Name:   
-- Module Name:   C:/Users/Black/Xilinx/SysGen/14.7/SI_tb.vhd
-- Project Name:  keypad
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Similarity_Investigator
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
 
ENTITY SI_tb IS
END SI_tb;
 
ARCHITECTURE behavior OF SI_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Similarity_Investigator
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         check_similarity : IN  std_logic;
         save_product : IN  std_logic;
         A : IN  std_logic_vector(15 downto 0);
         B : IN  std_logic_vector(15 downto 0);
         product : IN  std_logic_vector(31 downto 0);
         similarity : OUT  std_logic;
         msi_product : OUT  std_logic_vector(31 downto 0);
         overflow : OUT  std_logic;
         check_similarity_done : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal check_similarity : std_logic := '0';
   signal save_product : std_logic := '0';
   signal A : std_logic_vector(15 downto 0) := (others => '0');
   signal B : std_logic_vector(15 downto 0) := (others => '0');
   signal product : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal similarity : std_logic;
   signal msi_product : std_logic_vector(31 downto 0);
   signal overflow : std_logic;
   signal check_similarity_done : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Similarity_Investigator PORT MAP (
          clk => clk,
          reset => reset,
          check_similarity => check_similarity,
          save_product => save_product,
          A => A,
          B => B,
          product => product,
          similarity => similarity,
          msi_product => msi_product,
          overflow => overflow,
          check_similarity_done => check_similarity_done
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
--		A <= x"5000";
--		B <= x"0500";
--		product <= x"02500000";
		
--		A <= x"0500";
--		B <= x"0050";
--		product <= x"00025000";
--		
		A <= x"0050";
		B <= x"0005";
		product <= x"00000250";
		wait for 100 ns;
		
		reset <= '0';
		check_similarity <= '1';
		wait for 100 ns;
		
		check_similarity <= '0';
		save_product <= '1';
		wait for 100 ns;
		
		save_product <= '0';
		check_similarity <= '1';

      wait;
   end process;

END;
