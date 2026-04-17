--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:16:15 10/29/2021
-- Design Name:   
-- Module Name:   C:/.Xilinx/IDP/basic_sys_tb.vhd
-- Project Name:  IDP
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Frequency_Metre
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
 
ENTITY basic_sys_tb IS
END basic_sys_tb;
 
ARCHITECTURE behavior OF basic_sys_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Frequency_Metre
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         signal_F : IN  std_logic;
         select_display : IN  std_logic;
         seg : OUT  std_logic_vector(6 downto 0);
         anode : INOUT  std_logic_vector(3 downto 0);
         done : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal signal_F : std_logic := '0';
   signal select_display : std_logic := '0';

	--BiDirs
   signal anode : std_logic_vector(3 downto 0);

 	--Outputs
   signal seg : std_logic_vector(6 downto 0);
   signal done : std_logic;

   -- Clock period definitions
   constant clk_period : time := 100 us;
	
	-- Signal F period definitions
   constant sigF_period : time := 100 ms; -- 10Hz
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Frequency_Metre PORT MAP (
          clk => clk,
          reset => reset,
          signal_F => signal_F,
          select_display => select_display,
          seg => seg,
          anode => anode,
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
 
 -- Signal F process definitions
   sigF_process :process
   begin
		signal_F <= '0';
		wait for sigF_period/2;
		signal_F <= '1';
		wait for sigF_period/2;
   end process;

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      wait for clk_period*10;

      -- insert stimulus here
		select_display <= '1'; -- lower
		reset <= '1';
		wait for 10 ns;
		reset <= '0';

      wait;
   end process;

END;
