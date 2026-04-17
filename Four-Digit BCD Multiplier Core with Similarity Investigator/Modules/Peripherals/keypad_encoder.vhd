library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity keypad_encoder is
  Port(clk : in std_logic;
       reset : in std_logic;
		 keys : in std_logic_vector(11 downto 0);
		 keypress : out std_logic;
		 keycode : out std_logic_vector(3 downto 0));
end keypad_encoder;

architecture Behavioral of keypad_encoder is
--------------------internal signals-----------------
--------------------debounce_12bit-------------------
signal Q_OUT_sig : std_logic_vector(11 downto 0);
--------------------components-----------------------
component debounce_12bit
Port(clk : in std_logic;
     reset : in std_logic;
     D_IN : in std_logic_vector(11 downto 0);   
     Q_OUT : out std_logic_vector(11 downto 0));
end component;

component combinational_encoder
  Port(pulse : in std_logic_vector(11 downto 0);
       keypress : out std_logic;
       keycode : out std_logic_vector(3 downto 0));
end component;

begin

cop1 : debounce_12bit
  port map(clk => clk,
           reset => reset,
           D_IN => keys,   
           Q_OUT => Q_OUT_sig);

cop2 : combinational_encoder
  port map(pulse => Q_OUT_sig,
           keypress => keypress,
           keycode => keycode);
end Behavioral;