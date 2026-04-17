library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity debounce_12bit is
Port(clk : in std_logic;
     reset : in std_logic;
     D_IN : in std_logic_vector(11 downto 0);   
     Q_OUT : out std_logic_vector(11 downto 0));
end debounce_12bit;

architecture Behavioral of debounce_12bit is

component debounce_1bit
Port(clock: in STD_LOGIC;
     RESET: in STD_LOGIC;
     D_IN: in STD_LOGIC;   
     Q_OUT: out STD_LOGIC);
end component;

begin
cop1 : debounce_1bit
  port map(clock => clk,
           RESET => reset,
           D_IN => D_IN(0),   
           Q_OUT => Q_OUT(0)
			  );

cop2 : debounce_1bit
  port map(clock => clk,
           RESET => reset,
           D_IN => D_IN(1),   
           Q_OUT => Q_OUT(1)
			  );

cop3 : debounce_1bit
  port map(clock => clk,
           RESET => reset,
           D_IN => D_IN(2),   
           Q_OUT => Q_OUT(2)
			  );

cop4 : debounce_1bit
  port map(clock => clk,
           RESET => reset,
           D_IN => D_IN(3),   
           Q_OUT => Q_OUT(3)
			  );

cop5 : debounce_1bit
  port map(clock => clk,
           RESET => reset,
           D_IN => D_IN(4),   
           Q_OUT => Q_OUT(4)
			  );

cop6 : debounce_1bit
  port map(clock => clk,
           RESET => reset,
           D_IN => D_IN(5),   
           Q_OUT => Q_OUT(5)
			  );

cop7 : debounce_1bit
  port map(clock => clk,
           RESET => reset,
           D_IN => D_IN(6),   
           Q_OUT => Q_OUT(6)
			  );

cop8 : debounce_1bit
  port map(clock => clk,
           RESET => reset,
           D_IN => D_IN(7),   
           Q_OUT => Q_OUT(7)
			  );

cop9 : debounce_1bit
  port map(clock => clk,
           RESET => reset,
           D_IN => D_IN(8),   
           Q_OUT => Q_OUT(8)
			  );

cop10 : debounce_1bit
  port map(clock => clk,
           RESET => reset,
           D_IN => D_IN(9),   
           Q_OUT => Q_OUT(9)
			  );

cop11 : debounce_1bit
  port map(clock => clk,
           RESET => reset,
           D_IN => D_IN(10),   
           Q_OUT => Q_OUT(10)
			  );

cop12 : debounce_1bit
  port map(clock => clk,
           RESET => reset,
           D_IN => D_IN(11),   
           Q_OUT => Q_OUT(11)
			  );
end Behavioral;