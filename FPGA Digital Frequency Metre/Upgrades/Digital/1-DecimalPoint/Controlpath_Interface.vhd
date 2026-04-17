----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:22:45 10/25/2021 
-- Design Name: 
-- Module Name:    Controlpath_Interface - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FSMD is
  Port(clk : in std_logic;
       reset : in std_logic;
		 signal_05Hz : in std_logic;
		 reset_counter : out std_logic;
		 load_data : out std_logic;
		 done : out std_logic);
end FSMD;

architecture Behavioral of FSMD is
type main_fsm is(reset_state, idle, reset_counter_state, pulse_counting, load_to_hreg);
signal pstate,nstate : main_fsm;

begin
  clkPROC : process(clk, reset)
    begin
	   if(reset = '1')then
		  pstate <= reset_state;
		elsif(clk'event and clk = '1')then
		  pstate <= nstate;
		end if;
  end process;

  controlPROC : process(pstate,signal_05Hz)
    begin
	   case pstate is
	     when reset_state =>
		    reset_counter <= '0';
		    load_data <= '0';
			 done <= '0';
		    nstate <= idle;

        when idle =>
		    reset_counter <= '0';
		    load_data <= '0';
			 done <= '0';
			 if(signal_05Hz = '1')then
			   nstate <= reset_counter_state;
			 else
			   nstate <= idle;
			 end if;

	     when reset_counter_state =>
		    reset_counter <= '1';
		    load_data <= '0';
			 done <= '0';
		    nstate <= pulse_counting;

	     when pulse_counting =>
		    reset_counter <= '0';
		    load_data <= '0';
			 done <= '0';
			 if(signal_05Hz = '0')then
		      nstate <= load_to_hreg;
			 else
			   nstate <= pulse_counting;
			 end if;

	     when load_to_hreg =>
		    reset_counter <= '0';
		    load_data <= '1';
			 done <= '1';
		    nstate <= idle;
		end case;	  
  end process;
end Behavioral;