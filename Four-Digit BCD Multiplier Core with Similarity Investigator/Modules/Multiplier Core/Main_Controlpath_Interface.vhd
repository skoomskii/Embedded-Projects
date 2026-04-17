----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date:    20:43:46 01/16/2023 
-- Design Name: 
-- Module Name:    Main_Controlpath_Interface - Behavioral 
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Main_CPI is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           start : in  STD_LOGIC;
           done : out  STD_LOGIC;
           fault : in  STD_LOGIC;
           check_similarity : out  STD_LOGIC;
           check_similarity_done : in  STD_LOGIC;
           similarity : in  STD_LOGIC;
           multiply : out  STD_LOGIC;
           multiply_done : in  STD_LOGIC;
           save_product : out  STD_LOGIC);
end Main_CPI;

architecture Behavioral of Main_CPI is

type main_fsm is(reset_sd, idle_sd, validate_sd, check_similarity_sd, multiply_sd, save_sd, done_sd);
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
	nstatePROC : process(pstate,clk,reset,start,fault,check_similarity_done,similarity,multiply_done)
		begin
			case pstate is
				when reset_sd =>
					nstate <= idle_sd;
					
				when idle_sd =>
					if(start='1')then
						nstate <= validate_sd;
					elsif(start='0')then
						nstate <= idle_sd;
					end if;
					
				when validate_sd =>
					if(fault='0')then
						nstate <= check_similarity_sd;
					elsif(fault='1')then
						nstate <= done_sd;
					end if;
				
				when check_similarity_sd =>
					if(check_similarity_done='0')then
						nstate <= check_similarity_sd;
					elsif(check_similarity_done='1')then
						if(similarity='0')then
							nstate <= multiply_sd;
						elsif(similarity='1')then
							nstate <= done_sd;
						end if;
					end if;
					
				when multiply_sd =>
					if(multiply_done='0')then
						nstate <= multiply_sd;
					else
						nstate <= save_sd;
					end if;
				
				when save_sd =>
					nstate <= done_sd;
				
				when done_sd =>
					if(start='0')then
						nstate <= done_sd;
					else
						nstate <= idle_sd;
					end if;
				
				when others =>

			end case;
		end process;
---- output logic
	outputPROC : process(pstate)
		begin
			case pstate is
			when reset_sd =>
					done <= '0';
					check_similarity <= '0';
					multiply <= '0';
					save_product <= '0';
					
				when idle_sd =>
					done <= '0';
					check_similarity <= '0';
					multiply <= '0';
					save_product <= '0';
					
				when validate_sd =>
					done <= '0';
					check_similarity <= '0';
					multiply <= '0';
					save_product <= '0';
				
				when check_similarity_sd =>
					done <= '0';
					check_similarity <= '1';
					multiply <= '0';
					save_product <= '0';
				
				when multiply_sd =>
					done <= '0';
					check_similarity <= '0';
					multiply <= '1';
					save_product <= '0';
				
				when save_sd =>
					done <= '0';
					check_similarity <= '0';
					multiply <= '0';
					save_product <= '1';
				
				when done_sd =>
					done <= '1';
					check_similarity <= '0';
					multiply <= '0';
					save_product <= '0';
				
				when others =>
			
			end case;
		end process;

end Behavioral;

