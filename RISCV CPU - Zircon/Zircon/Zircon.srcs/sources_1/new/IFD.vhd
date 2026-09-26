----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date: 09/23/2026 03:49:37 PM
-- Design Name: 
-- Module Name: IFD - Behavioral
-- Project Name: Zircon v1.0.0
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity IFD is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           en : in STD_LOGIC;
           rtI : in STD_LOGIC;
           jpI : in STD_LOGIC;
           bchI : in STD_LOGIC;
           funI : in STD_LOGIC_vector(2 downto 0);
           flagI : in STD_LOGIC;
           rdI : in STD_LOGIC;
           wtI : in STD_LOGIC;
           ldI : in STD_LOGIC;
           sAI : in STD_LOGIC;
           sBI : in STD_LOGIC;
           opI : in STD_LOGIC_Vector(3 downto 0);
           weI : in STD_LOGIC;
           reI : in STD_LOGIC;
           r2I : in STD_LOGIC_vector(4 downto 0);
           r1I : in STD_LOGIC_vector(4 downto 0);
           rd_I : in STD_LOGIC_vector(4 downto 0);
           imI : in STD_LOGIC_vector(31 downto 0);
           exI : in STD_LOGIC_vector(31 downto 0);
           rtO : out STD_LOGIC;
           jpO : out STD_LOGIC;
           bchO : out STD_LOGIC;
           funO : out STD_LOGIC_vector(2 downto 0);
           flagO : out STD_LOGIC;
           wtO : out STD_LOGIC;
           rdO : out STD_LOGIC;
           ldO : out STD_LOGIC;
           sAO : out STD_LOGIC;
           sBO : out STD_LOGIC;
           opO : out std_logic_vector(3 downto 0);
           weO : out STD_LOGIC;
           reO : out STD_LOGIC;
           r2O : out STD_LOGIC_vector(4 downto 0);
           r1O : out STD_LOGIC_vector(4 downto 0);
           rd_O : out STD_LOGIC_vector(4 downto 0);
           imO : out STD_LOGIC_vector(31 downto 0);
           exO : out STD_LOGIC_vector(31 downto 0));
end IFD;

architecture Behavioral of IFD is
---- Signal ----
signal rtn,jmp,bch,flag,red,wrt,ld,sA,sB,we,re : std_logic;
signal fun : std_logic_vector(2 downto 0);
signal op : std_logic_vector(3 downto 0);
signal r2,r1,rd : std_logic_vector(4 downto 0);
signal im,ex : std_logic_vector(31 downto 0);

begin
  process(clk,reset,en,rtI,jpI,bchI,funI,flagI,rdI,wtI,ldI,sAI,sBI,opI,weI,reI,r2I,r1I,rd_I,imI,exI,rtn,jmp,bch,fun,flag,red,wrt,ld,sA,sB,op,we,re,r2,r1,rd,im,ex)
    begin
	   if(reset = '1')then
		rtn <= '0';
		jmp <= '0';
		bch <= '0';
		fun <= "000";
		flag <= '0';
		red <= '0';
		wrt <= '0';
		ld <= '0';
		sA <= '0';
		sB <= '0';
		op <= x"0";
		we <= '0';
		re <= '0';
		r2 <= "00000";
		r1 <= "00000";
		rd <= "00000";
		im <= x"00000000";
		ex <= x"00000000";
	   elsif(clk'event and clk='1')then
			if(en = '1')then
                rtn <= rtI;
                jmp <= jpI;
                bch <= bchI;
                fun <= funI;
                flag <= flagI;
                red <= rdI;
                wrt <= wtI;
                ld <= ldI;
                sA <= sAI;
                sB <= sBI;
                op <= opI;
                we <= weI;
                re <= reI;
                r2 <= r2I;
                r1 <= r1I;
                rd <= rd_I;
                im <= imI;
                ex <= exI;
			end if;
		end if;
	 end process;
           rtO <= rtn;
           jpO <= jmp;
           bchO <= bch;
           funO <= fun;
           flagO <= flag;
           wtO <= wrt;
           rdO <= red;
           ldO <= ld;
           sAO <= sA;
           sBO <= sB;
           opO <= op;
           weO <= we;
           reO <= re;
           r2O <= r2;
           r1O <= r1;
           rd_O <= rd;
           imO <= im;
           exO <= ex;
end Behavioral;