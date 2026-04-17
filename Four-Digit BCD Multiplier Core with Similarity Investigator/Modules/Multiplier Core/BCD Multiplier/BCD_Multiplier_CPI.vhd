----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date:    13:38:01 01/18/2023 
-- Design Name: 
-- Module Name:    BCD_Multiplier_CPI - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BCD_Multiplier_CPI is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           multiply : in  STD_LOGIC;
           load_operands : out  STD_LOGIC;
           count : out  STD_LOGIC;
           count_done : in  STD_LOGIC;
           shift : out  STD_LOGIC;
           shift_done : in  STD_LOGIC;
           multiply_done : out  STD_LOGIC;
			  done : in  STD_LOGIC);
end BCD_Multiplier_CPI;

architecture Behavioral of BCD_Multiplier_CPI is

type main_fsm is(reset_sd, idle_sd, load_operands_sd, shift_sd, count_sd, wait_sd, done_sd);
signal pstate,nstate : main_fsm;

begin
---- controls transistion from one state to another based on clock
  clkPROC : process(clk, reset)
    begin
	   if(reset = '1')then
		  pstate <= reset_sd;
		elsif(clk'event and clk = '1')then
		  pstate <= nstate;
		end if;
  end process;
---- next state logic
	nstatePROC : process(pstate,clk,reset,multiply,count_done,shift_done,done)
		begin
			case pstate is
				when reset_sd =>
					nstate <= idle_sd;
				
				when idle_sd =>
					if(multiply='0')then
						nstate <= idle_sd;
					else
						nstate <= load_operands_sd;
					end if;
				
				when load_operands_sd =>
					nstate <= wait_sd;
				
				when wait_sd =>
					if(done='1')then
						nstate <= done_sd;
					elsif(done='0')then
						if(count_done='0')then
							nstate <= count_sd;
						elsif(count_done='1')then
							nstate <= shift_sd;
						end if;
					end if;
					
				when count_sd =>
					nstate <= wait_sd;
				
				when shift_sd =>
					nstate <= wait_sd;
				
				when done_sd =>
					nstate <= idle_sd;
					
				when others =>
				
			end case;
		end process;
---- output logic
	outputPROC : process(pstate)
		begin
			case pstate is
				when reset_sd =>
				  load_operands <= '0';
				  count <= '0';
				  shift <= '0';
				  multiply_done <= '0';
				
				when idle_sd =>
				  load_operands <= '0';
				  count <= '0';
				  shift <= '0';
				  multiply_done <= '0';
				
				when load_operands_sd =>
				  load_operands <= '1';
				  count <= '0';
				  shift <= '0';
				  multiply_done <= '0';
				
				when count_sd =>
				  load_operands <= '0';
				  count <= '1';
				  shift <= '0';
				  multiply_done <= '0';
				
				when shift_sd =>
				  load_operands <= '0';
				  count <= '0';
				  shift <= '1';
				  multiply_done <= '0';
				
				when wait_sd =>
				  load_operands <= '0';
				  count <= '0';
				  shift <= '0';
				  multiply_done <= '0';
				
				when done_sd =>
				  load_operands <= '0';
				  count <= '0';
				  shift <= '0';
				  multiply_done <= '1';
				
				when others =>
				
			end case;
		end process;
		
end Behavioral;