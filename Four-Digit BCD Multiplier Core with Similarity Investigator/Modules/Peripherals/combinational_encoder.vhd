library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity combinational_encoder is
  Port(pulse : in std_logic_vector(11 downto 0);
       keypress : out std_logic;
       keycode : out std_logic_vector(3 downto 0));
end combinational_encoder;

architecture Behavioral of combinational_encoder is
begin   
  process(pulse)
    begin
      case pulse is
		  when "000000000001" => keycode <="0011"; keypress <= '1'; --key 3
        when "000000000010" => keycode <="0110"; keypress <= '1'; --key 6
		  when "000000000100" => keycode <="1001"; keypress <= '1'; --key 9
		  when "000000001000" => keycode <="1011"; keypress <= '1'; --key #
        when "000000010000" => keycode <="0010"; keypress <= '1'; --key 2
		  when "000000100000" => keycode <="0101"; keypress <= '1'; --key 5
		  when "000001000000" => keycode <="1000"; keypress <= '1'; --key 8
        when "000010000000" => keycode <="0000"; keypress <= '1'; --key 0
		  when "000100000000" => keycode <="0001"; keypress <= '1'; --key 1
		  when "001000000000" => keycode <="0100"; keypress <= '1'; --key 4
        when "010000000000" => keycode <="0111"; keypress <= '1'; --key 7
		  when "100000000000" => keycode <="1010"; keypress <= '1'; --key *
        when others => keycode <= "0000"; keypress <='0';
      end case;	
  end process;
end Behavioral;