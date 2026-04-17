----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date:    22:07:50 01/17/2023 
-- Design Name: 
-- Module Name:    Similarity_Investigator_Controlpath_Interface - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Similarity_Investigator_Controlpath_Interface is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           check_similarity : in  STD_LOGIC;
           save_product : in  STD_LOGIC;
			  similarity : in  STD_LOGIC;
           re_i : out  STD_LOGIC;
			  re_done : in  STD_LOGIC;
           load : out  STD_LOGIC;
           we_i : out  STD_LOGIC;
           check_similarity_done : out  STD_LOGIC);
end Similarity_Investigator_Controlpath_Interface;

architecture Behavioral of Similarity_Investigator_Controlpath_Interface is

type main_fsm is(reset_sd, idle_sd, read_sd, write_sd, done_sd);
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
	nstatePROC : process(pstate,clk,reset,check_similarity,save_product,similarity,re_done)
		begin
			case pstate is
				when reset_sd =>
					nstate <= idle_sd;
				
				when idle_sd =>
					if(check_similarity='0')then
						nstate <= idle_sd;
					elsif(check_similarity='1')then
						nstate <= read_sd;
					end if;

				when read_sd =>
					if(re_done='0')then
						nstate <= read_sd;
					else
						nstate <= done_sd;
					end if;
				
				when done_sd =>
					if(similarity='0')then
						if(save_product='0')then
							nstate <= done_sd;
						elsif(save_product='1')then
							nstate <= write_sd;
						end if;
					elsif(similarity='1')then
						nstate <= idle_sd;
					end if;
				
				when write_sd =>
					nstate <= idle_sd;
				
				when others =>
				
		end case;
	end process;
---- output logic
	outputPROC : process(pstate)
		begin
			case pstate is
				when reset_sd =>
					re_i <= '0';
					load <= '0';
					we_i <= '0';
					check_similarity_done <= '0';
				
				when idle_sd =>
					re_i <= '0';
					load <= '0';
					we_i <= '0';
					check_similarity_done <= '0';
					
				when read_sd =>
					re_i <= '1';
					load <= '1';
					we_i <= '0';
					check_similarity_done <= '0';
				
				when done_sd =>
					re_i <= '0';
					load <= '0';
					we_i <= '0';
					check_similarity_done <= '1';
				
				when write_sd =>
					re_i <= '0';
					load <= '1';
					we_i <= '1';
					check_similarity_done <= '0';
				
				when others =>
			
		end case;
	end process;

end Behavioral;