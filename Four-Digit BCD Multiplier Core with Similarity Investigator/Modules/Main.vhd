----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date:    15:28:32 01/28/2023 
-- Design Name: 
-- Module Name:    Main - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity Main is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           start : in  STD_LOGIC;
			  clr : in  STD_LOGIC;
			  source_en : in  STD_LOGIC;
           datain : in  STD_LOGIC_VECTOR (11 downto 0);
           seg : out  STD_LOGIC_VECTOR (6 downto 0);
           anode : inout  STD_LOGIC_VECTOR (3 downto 0);
           overflow : out  STD_LOGIC;
           done : inout  STD_LOGIC);
end Main;

architecture Behavioral of Main is

---------------- Components ----------------
component Multiplier_Core
Port(clk : in  STD_LOGIC;
     reset : in  STD_LOGIC;
     start : in  STD_LOGIC;
     A : in  STD_LOGIC_VECTOR (15 downto 0);
     B : in  STD_LOGIC_VECTOR (15 downto 0);
     final_product : out  STD_LOGIC_VECTOR (31 downto 0);
     overflow : out  STD_LOGIC;
     done : out  STD_LOGIC
	  );
end component;

component mux21_36
Port(A : in std_logic_vector(35 downto 0);
     B : in std_logic_vector(35 downto 0);
	  sel : in std_logic;
	  O : out std_logic_vector(35 downto 0)
	  );
end component;

component keypad_encoder
Port(clk : in std_logic;
     reset : in std_logic;
	  keys : in std_logic_vector(11 downto 0);
	  keypress : out std_logic;
	  keycode : out std_logic_vector(3 downto 0)
	  );
end component;

component SIPO_Hold_Reg
Port(clk : in std_logic;
     reset : in std_logic;
	  data_in : in std_logic_vector(3 downto 0);
	  data_out : out std_logic_vector(31 downto 0)
	  );
end component;

component time_multiplexer_4digit
Port(clk : in std_logic; --multiplexing clock(1 kHz)      
     reset : in std_logic; -- reset signal 
	  display_value : in std_logic_vector(15 downto 0); --BCD digits to be displayed
     seg : out std_logic_vector(6 downto 0); --7 cathodes
     anode : inout std_logic_vector(3 downto 0)
	  );
end component;

component frequency_divider
Port(clk    : in std_logic;
     reset  : in std_logic;
	  clock1 : inout std_logic;
	  clock2 : inout std_logic
	  );
end component;

component debounce_1bit
Port(clock: in STD_LOGIC;
     RESET: in STD_LOGIC;
     D_IN: in STD_LOGIC;   
     Q_OUT: out STD_LOGIC);
end component;

component sweep
Port (clk : in std_logic;
      reset : in  STD_LOGIC;
		ce : in  STD_LOGIC;
      datain : in  STD_LOGIC_VECTOR (35 downto 0);
      dataout : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

---------------- Signals ----------------
signal clk1Hz,clk1kHz,keypress_sig,start_sig : std_logic;
signal product,Reg_sig : std_logic_vector(31 downto 0);
signal O_sig : std_logic_vector(35 downto 0);
signal A_sig,B_sig,dsp : std_logic_vector(15 downto 0);
signal keycode_sig : std_logic_vector(3 downto 0);

begin

cop1: Multiplier_Core
Port map(clk => clk,
     reset => reset,
     start => start_sig,
     A => A_sig,
     B => B_sig,
     final_product => product,
     overflow => overflow,
     done => done
	  );

cop2: mux21_36
Port map(A => (A_sig & "1111" & B_sig),
     B => (product & "1111"),
	  sel => source_en,
	  O => O_sig
	  );

cop3: sweep
Port map(clk => clk1Hz,
      reset => reset,
		ce => '1',
      datain => O_sig,
      dataout => dsp
		);
	  
cop4: keypad_encoder
Port map(clk => clk1kHz,
     reset => reset,
	  keys => datain,
	  keypress => keypress_sig,
	  keycode => keycode_sig
	  );
	  
cop5: SIPO_Hold_Reg
Port map(clk => keypress_sig,
     reset => (reset or clr),
	  data_in => keycode_sig,
	  data_out => Reg_sig
	  );
	  
cop6: time_multiplexer_4digit
Port map(clk => clk1kHz,   
     reset => reset,
	  display_value => dsp,
     seg => seg,
     anode => anode
	  );
	  
cop7: frequency_divider
Port map(clk => clk,
     reset => reset,
	  clock1 => clk1kHz,
	  clock2 => clk1Hz
	  );

cop8 : debounce_1bit
  port map(clock => clk1kHz,
           RESET => reset,
           D_IN => start,   
           Q_OUT => start_sig
			  );
	  
A_sig <= Reg_sig(31 downto 16);
B_sig <= Reg_sig(15 downto 0);
			
end Behavioral;

