----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date:    00:24:15 01/14/2023 
-- Design Name: 
-- Module Name:    Validator - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Validator is
    Port ( A : in  STD_LOGIC_VECTOR (15 downto 0);
           B : in  STD_LOGIC_VECTOR (15 downto 0);
           decision : out  STD_LOGIC_VECTOR (31 downto 0);
           fault : out  STD_LOGIC);
end Validator;

architecture Behavioral of Validator is

---------------- Signals ----------------
signal A_sig : std_logic_vector(15 downto 0);
signal B_sig : std_logic_vector(15 downto 0);
signal decision_sig : std_logic_vector(31 downto 0);
signal fault_sig : std_logic;

begin
	process(A,A_sig,B,B_sig,decision_sig,fault_sig)
	begin
	---------- Init ----------
	fault_sig <= '0';
	A_sig <= A;
	B_sig <= B;
	
	---------- Fault ----------
	---- A (Multiplicand) ----
		if(A_sig = x"0000")then -- Zero
			if(B_sig(15 downto 12) > 9)then -- Invalid
				decision_sig <= x"DEEFDEEF";
				fault_sig <= '1';
			elsif(B_sig(11 downto 8) > 9)then -- Invalid
				decision_sig <= x"DEEFDEEF";
				fault_sig <= '1';
			elsif(B_sig(7 downto 4) > 9)then -- Invalid
				decision_sig <= x"DEEFDEEF";
				fault_sig <= '1';
			elsif(B_sig(3 downto 0) > 9)then -- Invalid
				decision_sig <= x"DEEFDEEF";
				fault_sig <= '1';
			else
				decision_sig <= x"00000000";
				fault_sig <= '1';
			end if;
			
		elsif(A_sig = x"0001")then -- One
			if(B_sig(15 downto 12) > 9)then -- Invalid
				decision_sig <= x"DEEFDEEF";
				fault_sig <= '1';
			elsif(B_sig(11 downto 8) > 9)then -- Invalid
				decision_sig <= x"DEEFDEEF";
				fault_sig <= '1';
			elsif(B_sig(7 downto 4) > 9)then -- Invalid
				decision_sig <= x"DEEFDEEF";
				fault_sig <= '1';
			elsif(B_sig(3 downto 0) > 9)then -- Invalid
				decision_sig <= x"DEEFDEEF";
				fault_sig <= '1';
			else
				decision_sig <= x"0000" & B;
				fault_sig <= '1';
			end if;
			
		elsif(A_sig(15 downto 12) > 9)then -- Invalid
			decision_sig <= x"DEEFDEEF";
			fault_sig <= '1';
		elsif(A_sig(11 downto 8) > 9)then -- Invalid
			decision_sig <= x"DEEFDEEF";
			fault_sig <= '1';
		elsif(A_sig(7 downto 4) > 9)then -- Invalid
			decision_sig <= x"DEEFDEEF";
			fault_sig <= '1';
		elsif(A_sig(3 downto 0) > 9)then -- Invalid
			decision_sig <= x"DEEFDEEF";
			fault_sig <= '1';
			
	---- B (Multiplier) ----
		elsif(B_sig = x"0000")then -- Zero
			if(A_sig(15 downto 12) > 9)then -- Invalid
				decision_sig <= x"DEEFDEEF";
				fault_sig <= '1';
			elsif(A_sig(11 downto 8) > 9)then -- Invalid
				decision_sig <= x"DEEFDEEF";
				fault_sig <= '1';
			elsif(A_sig(7 downto 4) > 9)then -- Invalid
				decision_sig <= x"DEEFDEEF";
				fault_sig <= '1';
			elsif(A_sig(3 downto 0) > 9)then -- Invalid
				decision_sig <= x"DEEFDEEF";
				fault_sig <= '1';
			else
				decision_sig <= x"00000000";
				fault_sig <= '1';
			end if;
		
		elsif(B_sig = x"0001")then -- One
			if(A_sig(15 downto 12) > 9)then -- Invalid
				decision_sig <= x"DEEFDEEF";
				fault_sig <= '1';
			elsif(A_sig(11 downto 8) > 9)then -- Invalid
				decision_sig <= x"DEEFDEEF";
				fault_sig <= '1';
			elsif(A_sig(7 downto 4) > 9)then -- Invalid
				decision_sig <= x"DEEFDEEF";
				fault_sig <= '1';
			elsif(A_sig(3 downto 0) > 9)then -- Invalid
				decision_sig <= x"DEEFDEEF";
				fault_sig <= '1';
			else
				decision_sig <= x"0000" & A;
				fault_sig <= '1';
			end if;
			
		elsif(B_sig(15 downto 12) > 9)then -- Invalid
			decision_sig <= x"DEEFDEEF";
			fault_sig <= '1';
		elsif(B_sig(11 downto 8) > 9)then -- Invalid
			decision_sig <= x"DEEFDEEF";
			fault_sig <= '1';
		elsif(B_sig(7 downto 4) > 9)then -- Invalid
			decision_sig <= x"DEEFDEEF";
			fault_sig <= '1';
		elsif(B_sig(3 downto 0) > 9)then -- Invalid
			decision_sig <= x"DEEFDEEF";
			fault_sig <= '1';
			
	--------- No Fault --------
		else
			decision_sig <= A_sig & B_sig;
			fault_sig <= '0';
		end if;
		decision <= decision_sig;
		fault <= fault_sig;
	end process;
end Behavioral;

