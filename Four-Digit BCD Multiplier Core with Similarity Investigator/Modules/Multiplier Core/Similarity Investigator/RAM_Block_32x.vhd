--------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
--
-- Create Date:    08:48:03 01/12/10
-- Design Name:    
-- Module Name:    RAM_Block_40x - Behavioral
-- Project Name:   
-- Target Device:  
-- Tool versions:  
-- Description:
--
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RAM_Block_32x is
  Port(clk : in std_logic;
		 reset : in std_logic;
		 we_i : in std_logic;
		 re_i : in std_logic;
		 addressX : in std_logic_vector(7 downto 0);
		 addressY : in std_logic_vector(7 downto 0);
		 data_i : in std_logic_vector(63 downto 0);
		 data_o : out std_logic_vector(63 downto 0));
end RAM_Block_32x;

architecture Behavioral of RAM_Block_32x is

---------------- Signals ----------------
type ram_block is array(254 downto 0) of std_logic_vector (63 downto 0); --255 addresses of 64-bits
signal ram_block_sig : ram_block;

begin

  process(clk, reset, addressX, ram_block_sig, we_i, re_i, data_i)
	variable k,L : integer;
	 begin
	   ---- innitialization of RAM ----
	   if(reset = '1')then
		  ram_block_sig(0) <= x"0000000000000000";
		  ram_block_sig(1) <= x"0000000000000000";
		  ram_block_sig(2) <= x"0000000000000000";
		  ram_block_sig(3) <= x"0000000000000000";
		  ram_block_sig(4) <= x"0000000000000000";
		  ram_block_sig(5) <= x"0000000000000000";
		  ram_block_sig(6) <= x"0000000000000000";
		  ram_block_sig(7) <= x"0000000000000000";
		  ram_block_sig(8) <= x"0000000000000000";
		  ram_block_sig(9) <= x"0000000000000000";
		  ram_block_sig(10) <= x"0000000000000000";
		  ram_block_sig(11) <= x"0000000000000000";
		  ram_block_sig(12) <= x"0000000000000000";
		  ram_block_sig(13) <= x"0000000000000000";
		  ram_block_sig(14) <= x"0000000000000000";
		  ram_block_sig(15) <= x"0000000000000000";
		  ram_block_sig(16) <= x"0000000000000000";
		  ram_block_sig(17) <= x"0000000000000000";
		  ram_block_sig(18) <= x"0000000000000000";
		  ram_block_sig(19) <= x"0000000000000000";
		  ram_block_sig(20) <= x"0000000000000000";
		  ram_block_sig(21) <= x"0000000000000000";
		  ram_block_sig(22) <= x"0000000000000000";
		  ram_block_sig(23) <= x"0000000000000000";
		  ram_block_sig(24) <= x"0000000000000000";
		  ram_block_sig(25) <= x"0000000000000000";
		  ram_block_sig(26) <= x"0000000000000000";
		  ram_block_sig(27) <= x"0000000000000000";
		  ram_block_sig(28) <= x"0000000000000000";
		  ram_block_sig(29) <= x"0000000000000000";
		  ram_block_sig(30) <= x"0000000000000000";
		  ram_block_sig(31) <= x"0000000000000000";
		  ram_block_sig(32) <= x"0000000000000000";
		  ram_block_sig(33) <= x"0000000000000000";
		  ram_block_sig(34) <= x"0000000000000000";
		  ram_block_sig(34) <= x"0000000000000000";
		  ram_block_sig(36) <= x"0000000000000000";
		  ram_block_sig(37) <= x"0000000000000000";
		  ram_block_sig(38) <= x"0000000000000000";
		  ram_block_sig(39) <= x"0000000000000000";
		  ram_block_sig(40) <= x"0000000000000000";
		  ram_block_sig(41) <= x"0000000000000000";
		  ram_block_sig(42) <= x"0000000000000000";
		  ram_block_sig(43) <= x"0000000000000000";
		  ram_block_sig(44) <= x"0000000000000000";
		  ram_block_sig(45) <= x"0000000000000000";
		  ram_block_sig(46) <= x"0000000000000000";
		  ram_block_sig(47) <= x"0000000000000000";
		  ram_block_sig(48) <= x"0000000000000000";
		  ram_block_sig(49) <= x"0000000000000000";
		  ram_block_sig(50) <= x"0000000000000000";
		  ram_block_sig(51) <= x"0000000000000000";
		  ram_block_sig(52) <= x"0000000000000000";
		  ram_block_sig(53) <= x"0000000000000000";
		  ram_block_sig(54) <= x"0000000000000000";
		  ram_block_sig(55) <= x"0000000000000000";
		  ram_block_sig(56) <= x"0000000000000000";
		  ram_block_sig(57) <= x"0000000000000000";
		  ram_block_sig(58) <= x"0000000000000000";
		  ram_block_sig(59) <= x"0000000000000000";
		  ram_block_sig(60) <= x"0000000000000000";
		  ram_block_sig(61) <= x"0000000000000000";
		  ram_block_sig(62) <= x"0000000000000000";
		  ram_block_sig(63) <= x"0000000000000000";
		  ram_block_sig(64) <= x"0000000000000000";
		  ram_block_sig(65) <= x"0000000000000000";
		  ram_block_sig(66) <= x"0000000000000000";
		  ram_block_sig(67) <= x"0000000000000000";
		  ram_block_sig(68) <= x"0000000000000000";
		  ram_block_sig(69) <= x"0000000000000000";
		  ram_block_sig(70) <= x"0000000000000000";
		  ram_block_sig(71) <= x"0000000000000000";
		  ram_block_sig(72) <= x"0000000000000000";
		  ram_block_sig(73) <= x"0000000000000000";
		  ram_block_sig(74) <= x"0000000000000000";
		  ram_block_sig(75) <= x"0000000000000000";
		  ram_block_sig(76) <= x"0000000000000000";
		  ram_block_sig(77) <= x"0000000000000000";
		  ram_block_sig(78) <= x"0000000000000000";
		  ram_block_sig(79) <= x"0000000000000000";
		  ram_block_sig(80) <= x"0000000000000000";
		  ram_block_sig(81) <= x"0000000000000000";
		  ram_block_sig(82) <= x"0000000000000000";
		  ram_block_sig(83) <= x"0000000000000000";
		  ram_block_sig(84) <= x"0000000000000000";
		  ram_block_sig(85) <= x"0000000000000000";
		  ram_block_sig(86) <= x"0000000000000000";
		  ram_block_sig(87) <= x"0000000000000000";
		  ram_block_sig(88) <= x"0000000000000000";
		  ram_block_sig(89) <= x"0000000000000000";
		  ram_block_sig(90) <= x"0000000000000000";
		  ram_block_sig(91) <= x"0000000000000000";
		  ram_block_sig(92) <= x"0000000000000000";
		  ram_block_sig(93) <= x"0000000000000000";
		  ram_block_sig(94) <= x"0000000000000000";
		  ram_block_sig(95) <= x"0000000000000000";
		  ram_block_sig(96) <= x"0000000000000000";
		  ram_block_sig(97) <= x"0000000000000000";
		  ram_block_sig(98) <= x"0000000000000000";
		  ram_block_sig(99) <= x"0000000000000000";
		  ram_block_sig(100) <= x"0000000000000000";
		  ram_block_sig(101) <= x"0000000000000000";
		  ram_block_sig(102) <= x"0000000000000000";
		  ram_block_sig(103) <= x"0000000000000000";
		  ram_block_sig(104) <= x"0000000000000000";
		  ram_block_sig(105) <= x"0000000000000000";
		  ram_block_sig(106) <= x"0000000000000000";
		  ram_block_sig(107) <= x"0000000000000000";
		  ram_block_sig(108) <= x"0000000000000000";
		  ram_block_sig(109) <= x"0000000000000000";
		  ram_block_sig(110) <= x"0000000000000000";
		  ram_block_sig(111) <= x"0000000000000000";
		  ram_block_sig(112) <= x"0000000000000000";
		  ram_block_sig(113) <= x"0000000000000000";
		  ram_block_sig(114) <= x"0000000000000000";
		  ram_block_sig(115) <= x"0000000000000000";
		  ram_block_sig(116) <= x"0000000000000000";
		  ram_block_sig(117) <= x"0000000000000000";
		  ram_block_sig(118) <= x"0000000000000000";
		  ram_block_sig(119) <= x"0000000000000000";
		  ram_block_sig(120) <= x"0000000000000000";
		  ram_block_sig(121) <= x"0000000000000000";
		  ram_block_sig(122) <= x"0000000000000000";
		  ram_block_sig(123) <= x"0000000000000000";
		  ram_block_sig(124) <= x"0000000000000000";
		  ram_block_sig(125) <= x"0000000000000000";
		  ram_block_sig(126) <= x"0000000000000000";
		  ram_block_sig(127) <= x"0000000000000000";
		  ram_block_sig(128) <= x"0000000000000000";
		  ram_block_sig(129) <= x"0000000000000000";
		  ram_block_sig(130) <= x"0000000000000000";
		  ram_block_sig(131) <= x"0000000000000000";
		  ram_block_sig(132) <= x"0000000000000000";
		  ram_block_sig(133) <= x"0000000000000000";
		  ram_block_sig(134) <= x"0000000000000000";
		  ram_block_sig(135) <= x"0000000000000000";
		  ram_block_sig(136) <= x"0000000000000000";
		  ram_block_sig(137) <= x"0000000000000000";
		  ram_block_sig(138) <= x"0000000000000000";
		  ram_block_sig(139) <= x"0000000000000000";
		  ram_block_sig(140) <= x"0000000000000000";
		  ram_block_sig(141) <= x"0000000000000000";
		  ram_block_sig(142) <= x"0000000000000000";
		  ram_block_sig(143) <= x"0000000000000000";
		  ram_block_sig(144) <= x"0000000000000000";
		  ram_block_sig(145) <= x"0000000000000000";
		  ram_block_sig(146) <= x"0000000000000000";
		  ram_block_sig(147) <= x"0000000000000000";
		  ram_block_sig(148) <= x"0000000000000000";
		  ram_block_sig(149) <= x"0000000000000000";
		  ram_block_sig(150) <= x"0000000000000000";
		  ram_block_sig(151) <= x"0000000000000000";
		  ram_block_sig(152) <= x"0000000000000000";
		  ram_block_sig(153) <= x"0000000000000000";
		  ram_block_sig(154) <= x"0000000000000000";
		  ram_block_sig(155) <= x"0000000000000000";
		  ram_block_sig(156) <= x"0000000000000000";
		  ram_block_sig(157) <= x"0000000000000000";
		  ram_block_sig(158) <= x"0000000000000000";
		  ram_block_sig(159) <= x"0000000000000000";
		  ram_block_sig(160) <= x"0000000000000000";
		  ram_block_sig(161) <= x"0000000000000000";
		  ram_block_sig(162) <= x"0000000000000000";
		  ram_block_sig(163) <= x"0000000000000000";
		  ram_block_sig(164) <= x"0000000000000000";
		  ram_block_sig(165) <= x"0000000000000000";
		  ram_block_sig(166) <= x"0000000000000000";
		  ram_block_sig(167) <= x"0000000000000000";
		  ram_block_sig(168) <= x"0000000000000000";
		  ram_block_sig(169) <= x"0000000000000000";
		  ram_block_sig(170) <= x"0000000000000000";
		  ram_block_sig(171) <= x"0000000000000000";
		  ram_block_sig(172) <= x"0000000000000000";
		  ram_block_sig(173) <= x"0000000000000000";
		  ram_block_sig(174) <= x"0000000000000000";
		  ram_block_sig(175) <= x"0000000000000000";
		  ram_block_sig(176) <= x"0000000000000000";
		  ram_block_sig(177) <= x"0000000000000000";
		  ram_block_sig(178) <= x"0000000000000000";
		  ram_block_sig(179) <= x"0000000000000000";
		  ram_block_sig(180) <= x"0000000000000000";
		  ram_block_sig(181) <= x"0000000000000000";
		  ram_block_sig(182) <= x"0000000000000000";
		  ram_block_sig(183) <= x"0000000000000000";
		  ram_block_sig(184) <= x"0000000000000000";
		  ram_block_sig(185) <= x"0000000000000000";
		  ram_block_sig(186) <= x"0000000000000000";
		  ram_block_sig(187) <= x"0000000000000000";
		  ram_block_sig(188) <= x"0000000000000000";
		  ram_block_sig(189) <= x"0000000000000000";
		  ram_block_sig(190) <= x"0000000000000000";
		  ram_block_sig(191) <= x"0000000000000000";
		  ram_block_sig(192) <= x"0000000000000000";
		  ram_block_sig(193) <= x"0000000000000000";
		  ram_block_sig(194) <= x"0000000000000000";
		  ram_block_sig(195) <= x"0000000000000000";
		  ram_block_sig(196) <= x"0000000000000000";
		  ram_block_sig(197) <= x"0000000000000000";
		  ram_block_sig(198) <= x"0000000000000000";
		  ram_block_sig(199) <= x"0000000000000000";
		  ram_block_sig(200) <= x"0000000000000000";
		  ram_block_sig(201) <= x"0000000000000000";
		  ram_block_sig(202) <= x"0000000000000000";
		  ram_block_sig(203) <= x"0000000000000000";
		  ram_block_sig(204) <= x"0000000000000000";
		  ram_block_sig(205) <= x"0000000000000000";
		  ram_block_sig(206) <= x"0000000000000000";
		  ram_block_sig(207) <= x"0000000000000000";
		  ram_block_sig(208) <= x"0000000000000000";
		  ram_block_sig(209) <= x"0000000000000000";
		  ram_block_sig(210) <= x"0000000000000000";
		  ram_block_sig(211) <= x"0000000000000000";
		  ram_block_sig(212) <= x"0000000000000000";
		  ram_block_sig(213) <= x"0000000000000000";
		  ram_block_sig(214) <= x"0000000000000000";
		  ram_block_sig(215) <= x"0000000000000000";
		  ram_block_sig(216) <= x"0000000000000000";
		  ram_block_sig(217) <= x"0000000000000000";
		  ram_block_sig(218) <= x"0000000000000000";
		  ram_block_sig(219) <= x"0000000000000000";
		  ram_block_sig(220) <= x"0000000000000000";
		  ram_block_sig(221) <= x"0000000000000000";
		  ram_block_sig(222) <= x"0000000000000000";
		  ram_block_sig(223) <= x"0000000000000000";
		  ram_block_sig(224) <= x"0000000000000000";
		  ram_block_sig(225) <= x"0000000000000000";
		  ram_block_sig(226) <= x"0000000000000000";
		  ram_block_sig(227) <= x"0000000000000000";
		  ram_block_sig(228) <= x"0000000000000000";
		  ram_block_sig(229) <= x"0000000000000000";
		  ram_block_sig(230) <= x"0000000000000000";
		  ram_block_sig(231) <= x"0000000000000000";
		  ram_block_sig(232) <= x"0000000000000000";
		  ram_block_sig(233) <= x"0000000000000000";
		  ram_block_sig(234) <= x"0000000000000000";
		  ram_block_sig(235) <= x"0000000000000000";
		  ram_block_sig(236) <= x"0000000000000000";
		  ram_block_sig(237) <= x"0000000000000000";
		  ram_block_sig(238) <= x"0000000000000000";
		  ram_block_sig(239) <= x"0000000000000000";
		  ram_block_sig(240) <= x"0000000000000000";
		  ram_block_sig(241) <= x"0000000000000000";
		  ram_block_sig(242) <= x"0000000000000000";
		  ram_block_sig(243) <= x"0000000000000000";
		  ram_block_sig(244) <= x"0000000000000000";
		  ram_block_sig(245) <= x"0000000000000000";
		  ram_block_sig(246) <= x"0000000000000000";
		  ram_block_sig(247) <= x"0000000000000000";
		  ram_block_sig(248) <= x"0000000000000000";
		  ram_block_sig(249) <= x"0000000000000000";
		  ram_block_sig(250) <= x"0000000000000000";
		  ram_block_sig(251) <= x"0000000000000000";
		  ram_block_sig(252) <= x"0000000000000000";
		  ram_block_sig(253) <= x"0000000000000000";
		  ram_block_sig(254) <= x"0000000000000000";
		  data_o <= x"0000000000000000";

		elsif(clk'event and clk='1')then
		---- writing of RAM ----
		if(we_i = '1')then
		case addressX is
	     when "00000000" =>
			 ram_block_sig(0) <= data_i;

		  when "00000001" =>
			 ram_block_sig(1) <= data_i;

		  when "00000010" =>
			 ram_block_sig(2) <= data_i;

		  when "00000011" =>
			 ram_block_sig(3) <= data_i;

		  when "00000100" =>
			 ram_block_sig(4) <= data_i;

		  when "00000101" =>
			 ram_block_sig(5) <= data_i;

		  when "00000110" =>
			 ram_block_sig(6) <= data_i;

		  when "00000111" =>
			 ram_block_sig(7) <= data_i;

		  when "00001000" =>
			 ram_block_sig(8) <= data_i;

		  when "00001001" =>
			 ram_block_sig(9) <= data_i;

		  when "00001010" =>
			 ram_block_sig(10) <= data_i;

		  when "00001011" =>
			 ram_block_sig(11) <= data_i;

		  when "00001100" =>
			 ram_block_sig(12) <= data_i;

		  when "00001101" =>
			 ram_block_sig(13) <= data_i;

		  when "00001110" =>
			 ram_block_sig(14) <= data_i;

		  when "00001111" =>
			 ram_block_sig(15) <= data_i;

		  when "00010000" =>
			 ram_block_sig(16) <= data_i;

		  when "00010001" =>
			 ram_block_sig(17) <= data_i;

		  when "00010010" =>
			 ram_block_sig(18) <= data_i;

		  when "00010011" =>
			 ram_block_sig(19) <= data_i;

		  when "00010100" =>
			 ram_block_sig(20) <= data_i;

		  when "00010101" =>
			 ram_block_sig(21) <= data_i;

		  when "00010110" =>
			 ram_block_sig(22) <= data_i;

		  when "00010111" =>
			 ram_block_sig(23) <= data_i;

		  when "00011000" =>
			 ram_block_sig(24) <= data_i;

		  when "00011001" =>
			  ram_block_sig(25) <= data_i;

		  when "00011010" =>
			 ram_block_sig(26) <= data_i;

		  when "00011011" =>
			 ram_block_sig(27) <= data_i;

		  when "00011100" =>
			 ram_block_sig(28) <= data_i;

		  when "00011101" =>
			 ram_block_sig(29) <= data_i;

		  when "00011110" =>
			 ram_block_sig(30) <= data_i;

		  when "00011111" =>
			 ram_block_sig(31) <= data_i;
			 
	     when "00100000" =>
			 ram_block_sig(32) <= data_i;

		  when "00100001" =>
			 ram_block_sig(33) <= data_i;

		  when "00100010" =>
			 ram_block_sig(34) <= data_i;

		  when "00100011" =>
			 ram_block_sig(35) <= data_i;

		  when "00100100" =>
			 ram_block_sig(36) <= data_i;

		  when "00100101" =>
			 ram_block_sig(37) <= data_i;

		  when "00100110" =>
			 ram_block_sig(38) <= data_i;

		  when "00100111" =>
			 ram_block_sig(39) <= data_i;

		  when "00101000" =>
			 ram_block_sig(40) <= data_i;

		  when "00101001" =>
			 ram_block_sig(41) <= data_i;

		  when "00101010" =>
			 ram_block_sig(42) <= data_i;

		  when "00101011" =>
			 ram_block_sig(43) <= data_i;

		  when "00101100" =>
			 ram_block_sig(44) <= data_i;

		  when "00101101" =>
			 ram_block_sig(45) <= data_i;

		  when "00101110" =>
			 ram_block_sig(46) <= data_i;

		  when "00101111" =>
			 ram_block_sig(47) <= data_i;

		  when "00110000" =>
			 ram_block_sig(48) <= data_i;

		  when "00110001" =>
			 ram_block_sig(49) <= data_i;

		  when "00110010" =>
			 ram_block_sig(50) <= data_i;

		  when "00110011" =>
			 ram_block_sig(51) <= data_i;

		  when "00110100" =>
			 ram_block_sig(52) <= data_i;

		  when "00110101" =>
			 ram_block_sig(53) <= data_i;

		  when "00110110" =>
			 ram_block_sig(54) <= data_i;

		  when "00110111" =>
			 ram_block_sig(55) <= data_i;

		  when "00111000" =>
			 ram_block_sig(56) <= data_i;

		  when "00111001" =>
			  ram_block_sig(57) <= data_i;

		  when "00111010" =>
			 ram_block_sig(58) <= data_i;

		  when "00111011" =>
			 ram_block_sig(59) <= data_i;

		  when "00111100" =>
			 ram_block_sig(60) <= data_i;

		  when "00111101" =>
			 ram_block_sig(61) <= data_i;

		  when "00111110" =>
			 ram_block_sig(62) <= data_i;

		  when "00111111" =>
			 ram_block_sig(63) <= data_i;
			 
	     when "01000000" =>
			 ram_block_sig(64) <= data_i;

		  when "01000001" =>
			 ram_block_sig(65) <= data_i;

		  when "01000010" =>
			 ram_block_sig(66) <= data_i;

		  when "01000011" =>
			 ram_block_sig(67) <= data_i;

		  when "01000100" =>
			 ram_block_sig(68) <= data_i;

		  when "01000101" =>
			 ram_block_sig(69) <= data_i;

		  when "01000110" =>
			 ram_block_sig(70) <= data_i;

		  when "01000111" =>
			 ram_block_sig(71) <= data_i;

		  when "01001000" =>
			 ram_block_sig(72) <= data_i;

		  when "01001001" =>
			 ram_block_sig(73) <= data_i;

		  when "01001010" =>
			 ram_block_sig(74) <= data_i;

		  when "01001011" =>
			 ram_block_sig(75) <= data_i;

		  when "01001100" =>
			 ram_block_sig(76) <= data_i;

		  when "01001101" =>
			 ram_block_sig(77) <= data_i;

		  when "01001110" =>
			 ram_block_sig(78) <= data_i;

		  when "01001111" =>
			 ram_block_sig(79) <= data_i;

		  when "01010000" =>
			 ram_block_sig(80) <= data_i;

		  when "01010001" =>
			 ram_block_sig(81) <= data_i;

		  when "01010010" =>
			 ram_block_sig(82) <= data_i;

		  when "01010011" =>
			 ram_block_sig(83) <= data_i;

		  when "01010100" =>
			 ram_block_sig(84) <= data_i;

		  when "01010101" =>
			 ram_block_sig(85) <= data_i;

		  when "01010110" =>
			 ram_block_sig(86) <= data_i;

		  when "01010111" =>
			 ram_block_sig(87) <= data_i;

		  when "01011000" =>
			 ram_block_sig(88) <= data_i;

		  when "01011001" =>
			  ram_block_sig(89) <= data_i;

		  when "01011010" =>
			 ram_block_sig(90) <= data_i;

		  when "01011011" =>
			 ram_block_sig(91) <= data_i;

		  when "01011100" =>
			 ram_block_sig(92) <= data_i;

		  when "01011101" =>
			 ram_block_sig(93) <= data_i;

		  when "01011110" =>
			 ram_block_sig(94) <= data_i;

		  when "01011111" =>
			 ram_block_sig(95) <= data_i;

	     when "01100000" =>
			 ram_block_sig(96) <= data_i;

		  when "01100001" =>
			 ram_block_sig(97) <= data_i;

		  when "01100010" =>
			 ram_block_sig(98) <= data_i;

		  when "01100011" =>
			 ram_block_sig(99) <= data_i;

		  when "01100100" =>
			 ram_block_sig(100) <= data_i;

		  when "01100101" =>
			 ram_block_sig(101) <= data_i;

		  when "01100110" =>
			 ram_block_sig(102) <= data_i;

		  when "01100111" =>
			 ram_block_sig(103) <= data_i;

		  when "01101000" =>
			 ram_block_sig(104) <= data_i;

		  when "01101001" =>
			 ram_block_sig(105) <= data_i;

		  when "01101010" =>
			 ram_block_sig(106) <= data_i;

		  when "01101011" =>
			 ram_block_sig(107) <= data_i;

		  when "01101100" =>
			 ram_block_sig(108) <= data_i;

		  when "01101101" =>
			 ram_block_sig(109) <= data_i;

		  when "01101110" =>
			 ram_block_sig(110) <= data_i;

		  when "01101111" =>
			 ram_block_sig(111) <= data_i;

		  when "01110000" =>
			 ram_block_sig(112) <= data_i;

		  when "01110001" =>
			 ram_block_sig(113) <= data_i;

		  when "01110010" =>
			 ram_block_sig(114) <= data_i;

		  when "01110011" =>
			 ram_block_sig(115) <= data_i;

		  when "01110100" =>
			 ram_block_sig(116) <= data_i;

		  when "01110101" =>
			 ram_block_sig(117) <= data_i;

		  when "01110110" =>
			 ram_block_sig(118) <= data_i;

		  when "01110111" =>
			 ram_block_sig(119) <= data_i;

		  when "01111000" =>
			 ram_block_sig(120) <= data_i;

		  when "01111001" =>
			  ram_block_sig(121) <= data_i;

		  when "01111010" =>
			 ram_block_sig(122) <= data_i;

		  when "01111011" =>
			 ram_block_sig(123) <= data_i;

		  when "01111100" =>
			 ram_block_sig(124) <= data_i;

		  when "01111101" =>
			 ram_block_sig(125) <= data_i;

		  when "01111110" =>
			 ram_block_sig(126) <= data_i;

		  when "01111111" =>
			 ram_block_sig(127) <= data_i;

	     when "10000000" =>
			 ram_block_sig(128) <= data_i;

		  when "10000001" =>
			 ram_block_sig(129) <= data_i;

		  when "10000010" =>
			 ram_block_sig(130) <= data_i;

		  when "10000011" =>
			 ram_block_sig(131) <= data_i;

		  when "10000100" =>
			 ram_block_sig(132) <= data_i;

		  when "10000101" =>
			 ram_block_sig(133) <= data_i;

		  when "10000110" =>
			 ram_block_sig(134) <= data_i;

		  when "10000111" =>
			 ram_block_sig(135) <= data_i;

		  when "10001000" =>
			 ram_block_sig(136) <= data_i;

		  when "10001001" =>
			 ram_block_sig(137) <= data_i;

		  when "10001010" =>
			 ram_block_sig(138) <= data_i;

		  when "10001011" =>
			 ram_block_sig(139) <= data_i;

		  when "10001100" =>
			 ram_block_sig(140) <= data_i;

		  when "10001101" =>
			 ram_block_sig(141) <= data_i;

		  when "10001110" =>
			 ram_block_sig(142) <= data_i;

		  when "10001111" =>
			 ram_block_sig(143) <= data_i;

		  when "10010000" =>
			 ram_block_sig(144) <= data_i;

		  when "10010001" =>
			 ram_block_sig(145) <= data_i;

		  when "10010010" =>
			 ram_block_sig(146) <= data_i;

		  when "10010011" =>
			 ram_block_sig(147) <= data_i;

		  when "10010100" =>
			 ram_block_sig(148) <= data_i;

		  when "10010101" =>
			 ram_block_sig(149) <= data_i;

		  when "10010110" =>
			 ram_block_sig(150) <= data_i;

		  when "10010111" =>
			 ram_block_sig(151) <= data_i;

		  when "10011000" =>
			 ram_block_sig(152) <= data_i;

		  when "10011001" =>
			  ram_block_sig(153) <= data_i;

		  when "10011010" =>
			 ram_block_sig(154) <= data_i;

		  when "10011011" =>
			 ram_block_sig(155) <= data_i;

		  when "10011100" =>
			 ram_block_sig(156) <= data_i;

		  when "10011101" =>
			 ram_block_sig(157) <= data_i;

		  when "10011110" =>
			 ram_block_sig(158) <= data_i;

		  when "10011111" =>
			 ram_block_sig(159) <= data_i;

	     when "10100000" =>
			 ram_block_sig(160) <= data_i;

		  when "10100001" =>
			 ram_block_sig(161) <= data_i;

		  when "10100010" =>
			 ram_block_sig(162) <= data_i;

		  when "10100011" =>
			 ram_block_sig(163) <= data_i;

		  when "10100100" =>
			 ram_block_sig(164) <= data_i;

		  when "10100101" =>
			 ram_block_sig(165) <= data_i;

		  when "10100110" =>
			 ram_block_sig(166) <= data_i;

		  when "10100111" =>
			 ram_block_sig(167) <= data_i;

		  when "10101000" =>
			 ram_block_sig(168) <= data_i;

		  when "10101001" =>
			 ram_block_sig(169) <= data_i;

		  when "10101010" =>
			 ram_block_sig(170) <= data_i;

		  when "10101011" =>
			 ram_block_sig(171) <= data_i;

		  when "10101100" =>
			 ram_block_sig(172) <= data_i;

		  when "10101101" =>
			 ram_block_sig(173) <= data_i;

		  when "10101110" =>
			 ram_block_sig(174) <= data_i;

		  when "10101111" =>
			 ram_block_sig(175) <= data_i;

		  when "10110000" =>
			 ram_block_sig(176) <= data_i;

		  when "10110001" =>
			 ram_block_sig(177) <= data_i;

		  when "10110010" =>
			 ram_block_sig(178) <= data_i;

		  when "10110011" =>
			 ram_block_sig(179) <= data_i;

		  when "10110100" =>
			 ram_block_sig(180) <= data_i;

		  when "10110101" =>
			 ram_block_sig(181) <= data_i;

		  when "10110110" =>
			 ram_block_sig(182) <= data_i;

		  when "10110111" =>
			 ram_block_sig(183) <= data_i;

		  when "10111000" =>
			 ram_block_sig(184) <= data_i;

		  when "10111001" =>
			  ram_block_sig(185) <= data_i;
			  
		  when "10111010" =>
			 ram_block_sig(186) <= data_i;

		  when "10111011" =>
			 ram_block_sig(187) <= data_i;

		  when "10111100" =>
			 ram_block_sig(188) <= data_i;

		  when "10111101" =>
			 ram_block_sig(189) <= data_i;

		  when "10111110" =>
			 ram_block_sig(190) <= data_i;

		  when "10111111" =>
			 ram_block_sig(191) <= data_i;

	     when "11000000" =>
			 ram_block_sig(192) <= data_i;

		  when "11000001" =>
			 ram_block_sig(193) <= data_i;

		  when "11000010" =>
			 ram_block_sig(194) <= data_i;

		  when "11000011" =>
			 ram_block_sig(195) <= data_i;

		  when "11000100" =>
			 ram_block_sig(196) <= data_i;

		  when "11000101" =>
			 ram_block_sig(197) <= data_i;

		  when "11000110" =>
			 ram_block_sig(198) <= data_i;

		  when "11000111" =>
			 ram_block_sig(199) <= data_i;

		  when "11001000" =>
			 ram_block_sig(200) <= data_i;

		  when "11001001" =>
			 ram_block_sig(201) <= data_i;

		  when "11001010" =>
			 ram_block_sig(202) <= data_i;

		  when "11001011" =>
			 ram_block_sig(203) <= data_i;

		  when "11001100" =>
			 ram_block_sig(204) <= data_i;

		  when "11001101" =>
			 ram_block_sig(205) <= data_i;

		  when "11001110" =>
			 ram_block_sig(206) <= data_i;

		  when "11001111" =>
			 ram_block_sig(207) <= data_i;

		  when "11010000" =>
			 ram_block_sig(208) <= data_i;

		  when "11010001" =>
			 ram_block_sig(209) <= data_i;

		  when "11010010" =>
			 ram_block_sig(210) <= data_i;

		  when "11010011" =>
			 ram_block_sig(211) <= data_i;

		  when "11010100" =>
			 ram_block_sig(212) <= data_i;

		  when "11010101" =>
			 ram_block_sig(213) <= data_i;

		  when "11010110" =>
			 ram_block_sig(214) <= data_i;

		  when "11010111" =>
			 ram_block_sig(215) <= data_i;

		  when "11011000" =>
			 ram_block_sig(216) <= data_i;

		  when "11011001" =>
			  ram_block_sig(217) <= data_i;

		  when "11011010" =>
			 ram_block_sig(218) <= data_i;

		  when "11011011" =>
			 ram_block_sig(219) <= data_i;

		  when "11011100" =>
			 ram_block_sig(220) <= data_i;

		  when "11011101" =>
			 ram_block_sig(221) <= data_i;

		  when "11011110" =>
			 ram_block_sig(222) <= data_i;

		  when "11011111" =>
			 ram_block_sig(223) <= data_i;

	     when "11100000" =>
			 ram_block_sig(224) <= data_i;

		  when "11100001" =>
			 ram_block_sig(225) <= data_i;

		  when "11100010" =>
			 ram_block_sig(226) <= data_i;

		  when "11100011" =>
			 ram_block_sig(227) <= data_i;

		  when "11100100" =>
			 ram_block_sig(228) <= data_i;

		  when "11100101" =>
			 ram_block_sig(229) <= data_i;

		  when "11100110" =>
			 ram_block_sig(230) <= data_i;

		  when "11100111" =>
			 ram_block_sig(231) <= data_i;

		  when "11101000" =>
			 ram_block_sig(232) <= data_i;

		  when "11101001" =>
			 ram_block_sig(233) <= data_i;

		  when "11101010" =>
			 ram_block_sig(234) <= data_i;

		  when "11101011" =>
			 ram_block_sig(235) <= data_i;

		  when "11101100" =>
			 ram_block_sig(236) <= data_i;

		  when "11101101" =>
			 ram_block_sig(237) <= data_i;

		  when "11101110" =>
			 ram_block_sig(238) <= data_i;

		  when "11101111" =>
			 ram_block_sig(239) <= data_i;

		  when "11110000" =>
			 ram_block_sig(240) <= data_i;
			 
		  when "11110001" =>
			 ram_block_sig(241) <= data_i;

		  when "11110010" =>
			 ram_block_sig(242) <= data_i;

		  when "11110011" =>
			 ram_block_sig(243) <= data_i;

		  when "11110100" =>
			 ram_block_sig(244) <= data_i;

		  when "11110101" =>
			 ram_block_sig(245) <= data_i;

		  when "11110110" =>
			 ram_block_sig(246) <= data_i;

		  when "11110111" =>
			 ram_block_sig(247) <= data_i;

		  when "11111000" =>
			 ram_block_sig(248) <= data_i;

		  when "11111001" =>
			  ram_block_sig(249) <= data_i;

		  when "11111010" =>
			 ram_block_sig(250) <= data_i;

		  when "11111011" =>
			 ram_block_sig(251) <= data_i;

		  when "11111100" =>
			 ram_block_sig(252) <= data_i;

		  when "11111101" =>
			 ram_block_sig(253) <= data_i;

		  when "11111110" =>
			 ram_block_sig(254) <= data_i;
			 
		  when others =>
		  end case;
		  
		---- reading of RAM ----
		elsif(re_i = '1')then
		case addressY is
	     when "00000000" =>
			if(data_i(63 downto 32) = ram_block_sig(0)(63 downto 32))then
			  data_o <= ram_block_sig(0);
			end if;

		  when "00000001" =>
			 if(data_i(63 downto 32) = ram_block_sig(1)(63 downto 32))then
			  data_o <= ram_block_sig(1);
			end if;

		  when "00000010" =>
			 if(data_i(63 downto 32) = ram_block_sig(2)(63 downto 32))then
			  data_o <= ram_block_sig(2);
			end if;

		  when "00000011" =>
			 if(data_i(63 downto 32) = ram_block_sig(3)(63 downto 32))then
			  data_o <= ram_block_sig(3);
			end if;

		  when "00000100" =>
			 if(data_i(63 downto 32) = ram_block_sig(4)(63 downto 32))then
			  data_o <= ram_block_sig(4);
			end if;

		  when "00000101" =>
			 if(data_i(63 downto 32) = ram_block_sig(5)(63 downto 32))then
			  data_o <= ram_block_sig(5);
			end if;

		  when "00000110" =>
			 if(data_i(63 downto 32) = ram_block_sig(6)(63 downto 32))then
			  data_o <= ram_block_sig(6);
			end if;

		  when "00000111" =>
			 if(data_i(63 downto 32) = ram_block_sig(7)(63 downto 32))then
			  data_o <= ram_block_sig(7);
			end if;

		  when "00001000" =>
			 if(data_i(63 downto 32) = ram_block_sig(8)(63 downto 32))then
			  data_o <= ram_block_sig(8);
			end if;

		  when "00001001" =>
			 if(data_i(63 downto 32) = ram_block_sig(9)(63 downto 32))then
			  data_o <= ram_block_sig(9);
			end if;

		  when "00001010" =>
			 if(data_i(63 downto 32) = ram_block_sig(10)(63 downto 32))then
			  data_o <= ram_block_sig(10);
			end if;

		  when "00001011" =>
			 if(data_i(63 downto 32) = ram_block_sig(11)(63 downto 32))then
			  data_o <= ram_block_sig(11);
			end if;

		  when "00001100" =>
			 if(data_i(63 downto 32) = ram_block_sig(12)(63 downto 32))then
			  data_o <= ram_block_sig(12);
			end if;

		  when "00001101" =>
			 if(data_i(63 downto 32) = ram_block_sig(13)(63 downto 32))then
			  data_o <= ram_block_sig(13);
			end if;

		  when "00001110" =>
			 if(data_i(63 downto 32) = ram_block_sig(14)(63 downto 32))then
			  data_o <= ram_block_sig(14);
			end if;

		  when "00001111" =>
			 if(data_i(63 downto 32) = ram_block_sig(15)(63 downto 32))then
			  data_o <= ram_block_sig(15);
			end if;

		  when "00010000" =>
			 if(data_i(63 downto 32) = ram_block_sig(16)(63 downto 32))then
			  data_o <= ram_block_sig(16);
			end if;

		  when "00010001" =>
			 if(data_i(63 downto 32) = ram_block_sig(17)(63 downto 32))then
			  data_o <= ram_block_sig(17);
			end if;

		  when "00010010" =>
			 if(data_i(63 downto 32) = ram_block_sig(18)(63 downto 32))then
			  data_o <= ram_block_sig(18);
			end if;

		  when "00010011" =>
			 if(data_i(63 downto 32) = ram_block_sig(19)(63 downto 32))then
			  data_o <= ram_block_sig(19);
			end if;

		  when "00010100" =>
			 if(data_i(63 downto 32) = ram_block_sig(20)(63 downto 32))then
			  data_o <= ram_block_sig(20);
			end if;

		  when "00010101" =>
			 if(data_i(63 downto 32) = ram_block_sig(21)(63 downto 32))then
			  data_o <= ram_block_sig(21);
			end if;

		  when "00010110" =>
			 if(data_i(63 downto 32) = ram_block_sig(22)(63 downto 32))then
			  data_o <= ram_block_sig(22);
			end if;

		  when "00010111" =>
			 if(data_i(63 downto 32) = ram_block_sig(23)(63 downto 32))then
			  data_o <= ram_block_sig(23);
			end if;

		  when "00011000" =>
			 if(data_i(63 downto 32) = ram_block_sig(24)(63 downto 32))then
			  data_o <= ram_block_sig(24);
			end if;

		  when "00011001" =>
			  if(data_i(63 downto 32) = ram_block_sig(25)(63 downto 32))then
			  data_o <= ram_block_sig(25);
			end if;

		  when "00011010" =>
			 if(data_i(63 downto 32) = ram_block_sig(26)(63 downto 32))then
			  data_o <= ram_block_sig(26);
			end if;

		  when "00011011" =>
			 if(data_i(63 downto 32) = ram_block_sig(27)(63 downto 32))then
			  data_o <= ram_block_sig(27);
			end if;

		  when "00011100" =>
			 if(data_i(63 downto 32) = ram_block_sig(28)(63 downto 32))then
			  data_o <= ram_block_sig(28);
			end if;

		  when "00011101" =>
			 if(data_i(63 downto 32) = ram_block_sig(29)(63 downto 32))then
			  data_o <= ram_block_sig(29);
			end if;

		  when "00011110" =>
			 if(data_i(63 downto 32) = ram_block_sig(30)(63 downto 32))then
			  data_o <= ram_block_sig(30);
			end if;

		  when "00011111" =>
			 if(data_i(63 downto 32) = ram_block_sig(31)(63 downto 32))then
			  data_o <= ram_block_sig(31);
			end if;
			 
	     when "00100000" =>
			 if(data_i(63 downto 32) = ram_block_sig(32)(63 downto 32))then
			  data_o <= ram_block_sig(32);
			end if;

		  when "00100001" =>
			 if(data_i(63 downto 32) = ram_block_sig(33)(63 downto 32))then
			  data_o <= ram_block_sig(33);
			end if;

		  when "00100010" =>
			 if(data_i(63 downto 32) = ram_block_sig(34)(63 downto 32))then
			  data_o <= ram_block_sig(34);
			end if;

		  when "00100011" =>
			 if(data_i(63 downto 32) = ram_block_sig(35)(63 downto 32))then
			  data_o <= ram_block_sig(35);
			end if;

		  when "00100100" =>
			 if(data_i(63 downto 32) = ram_block_sig(36)(63 downto 32))then
			  data_o <= ram_block_sig(36);
			end if;

		  when "00100101" =>
			 if(data_i(63 downto 32) = ram_block_sig(37)(63 downto 32))then
			  data_o <= ram_block_sig(37);
			end if;

		  when "00100110" =>
			 if(data_i(63 downto 32) = ram_block_sig(38)(63 downto 32))then
			  data_o <= ram_block_sig(38);
			end if;

		  when "00100111" =>
			 if(data_i(63 downto 32) = ram_block_sig(39)(63 downto 32))then
			  data_o <= ram_block_sig(39);
			end if;

		  when "00101000" =>
			 if(data_i(63 downto 32) = ram_block_sig(40)(63 downto 32))then
			  data_o <= ram_block_sig(40);
			end if;

		  when "00101001" =>
			 if(data_i(63 downto 32) = ram_block_sig(41)(63 downto 32))then
			  data_o <= ram_block_sig(41);
			end if;

		  when "00101010" =>
			 if(data_i(63 downto 32) = ram_block_sig(42)(63 downto 32))then
			  data_o <= ram_block_sig(42);
			end if;

		  when "00101011" =>
			 if(data_i(63 downto 32) = ram_block_sig(43)(63 downto 32))then
			  data_o <= ram_block_sig(43);
			end if;

		  when "00101100" =>
			 if(data_i(63 downto 32) = ram_block_sig(44)(63 downto 32))then
			  data_o <= ram_block_sig(44);
			end if;

		  when "00101101" =>
			 if(data_i(63 downto 32) = ram_block_sig(45)(63 downto 32))then
			  data_o <= ram_block_sig(45);
			end if;

		  when "00101110" =>
			 if(data_i(63 downto 32) = ram_block_sig(46)(63 downto 32))then
			  data_o <= ram_block_sig(46);
			end if;

		  when "00101111" =>
			 if(data_i(63 downto 32) = ram_block_sig(47)(63 downto 32))then
			  data_o <= ram_block_sig(47);
			end if;

		  when "00110000" =>
			 if(data_i(63 downto 32) = ram_block_sig(48)(63 downto 32))then
			  data_o <= ram_block_sig(48);
			end if;

		  when "00110001" =>
			 if(data_i(63 downto 32) = ram_block_sig(49)(63 downto 32))then
			  data_o <= ram_block_sig(49);
			end if;

		  when "00110010" =>
			 if(data_i(63 downto 32) = ram_block_sig(50)(63 downto 32))then
			  data_o <= ram_block_sig(50);
			end if;

		  when "00110011" =>
			 if(data_i(63 downto 32) = ram_block_sig(51)(63 downto 32))then
			  data_o <= ram_block_sig(51);
			end if;

		  when "00110100" =>
			 if(data_i(63 downto 32) = ram_block_sig(52)(63 downto 32))then
			  data_o <= ram_block_sig(52);
			end if;

		  when "00110101" =>
			 if(data_i(63 downto 32) = ram_block_sig(53)(63 downto 32))then
			  data_o <= ram_block_sig(53);
			end if;

		  when "00110110" =>
			 if(data_i(63 downto 32) = ram_block_sig(54)(63 downto 32))then
			  data_o <= ram_block_sig(54);
			end if;

		  when "00110111" =>
			 if(data_i(63 downto 32) = ram_block_sig(55)(63 downto 32))then
			  data_o <= ram_block_sig(55);
			end if;

		  when "00111000" =>
			 if(data_i(63 downto 32) = ram_block_sig(56)(63 downto 32))then
			  data_o <= ram_block_sig(56);
			end if;

		  when "00111001" =>
			  if(data_i(63 downto 32) = ram_block_sig(57)(63 downto 32))then
			  data_o <= ram_block_sig(57);
			end if;

		  when "00111010" =>
			 if(data_i(63 downto 32) = ram_block_sig(58)(63 downto 32))then
			  data_o <= ram_block_sig(58);
			end if;

		  when "00111011" =>
			 if(data_i(63 downto 32) = ram_block_sig(59)(63 downto 32))then
			  data_o <= ram_block_sig(59);
			end if;

		  when "00111100" =>
			 if(data_i(63 downto 32) = ram_block_sig(60)(63 downto 32))then
			  data_o <= ram_block_sig(60);
			end if;

		  when "00111101" =>
			 if(data_i(63 downto 32) = ram_block_sig(61)(63 downto 32))then
			  data_o <= ram_block_sig(61);
			end if;

		  when "00111110" =>
			 if(data_i(63 downto 32) = ram_block_sig(62)(63 downto 32))then
			  data_o <= ram_block_sig(62);
			end if;

		  when "00111111" =>
			 if(data_i(63 downto 32) = ram_block_sig(63)(63 downto 32))then
			  data_o <= ram_block_sig(63);
			end if;
			 
	     when "01000000" =>
			 if(data_i(63 downto 32) = ram_block_sig(64)(63 downto 32))then
			  data_o <= ram_block_sig(64);
			end if;

		  when "01000001" =>
			 if(data_i(63 downto 32) = ram_block_sig(65)(63 downto 32))then
			  data_o <= ram_block_sig(65);
			end if;

		  when "01000010" =>
			 if(data_i(63 downto 32) = ram_block_sig(66)(63 downto 32))then
			  data_o <= ram_block_sig(66);
			end if;

		  when "01000011" =>
			 if(data_i(63 downto 32) = ram_block_sig(67)(63 downto 32))then
			  data_o <= ram_block_sig(67);
			end if;

		  when "01000100" =>
			 if(data_i(63 downto 32) = ram_block_sig(68)(63 downto 32))then
			  data_o <= ram_block_sig(68);
			end if;

		  when "01000101" =>
			 if(data_i(63 downto 32) = ram_block_sig(69)(63 downto 32))then
			  data_o <= ram_block_sig(69);
			end if;

		  when "01000110" =>
			 if(data_i(63 downto 32) = ram_block_sig(70)(63 downto 32))then
			  data_o <= ram_block_sig(70);
			end if;

		  when "01000111" =>
			 if(data_i(63 downto 32) = ram_block_sig(71)(63 downto 32))then
			  data_o <= ram_block_sig(71);
			end if;

		  when "01001000" =>
			 if(data_i(63 downto 32) = ram_block_sig(72)(63 downto 32))then
			  data_o <= ram_block_sig(72);
			end if;

		  when "01001001" =>
			 if(data_i(63 downto 32) = ram_block_sig(73)(63 downto 32))then
			  data_o <= ram_block_sig(73);
			end if;

		  when "01001010" =>
			 if(data_i(63 downto 32) = ram_block_sig(74)(63 downto 32))then
			  data_o <= ram_block_sig(74);
			end if;

		  when "01001011" =>
			 if(data_i(63 downto 32) = ram_block_sig(75)(63 downto 32))then
			  data_o <= ram_block_sig(75);
			end if;

		  when "01001100" =>
			 if(data_i(63 downto 32) = ram_block_sig(76)(63 downto 32))then
			  data_o <= ram_block_sig(76);
			end if;

		  when "01001101" =>
			 if(data_i(63 downto 32) = ram_block_sig(77)(63 downto 32))then
			  data_o <= ram_block_sig(77);
			end if;

		  when "01001110" =>
			 if(data_i(63 downto 32) = ram_block_sig(78)(63 downto 32))then
			  data_o <= ram_block_sig(78);
			end if;

		  when "01001111" =>
			 if(data_i(63 downto 32) = ram_block_sig(79)(63 downto 32))then
			  data_o <= ram_block_sig(79);
			end if;

		  when "01010000" =>
			 if(data_i(63 downto 32) = ram_block_sig(80)(63 downto 32))then
			  data_o <= ram_block_sig(80);
			end if;

		  when "01010001" =>
			 if(data_i(63 downto 32) = ram_block_sig(81)(63 downto 32))then
			  data_o <= ram_block_sig(81);
			end if;

		  when "01010010" =>
			 if(data_i(63 downto 32) = ram_block_sig(82)(63 downto 32))then
			  data_o <= ram_block_sig(82);
			end if;

		  when "01010011" =>
			 if(data_i(63 downto 32) = ram_block_sig(83)(63 downto 32))then
			  data_o <= ram_block_sig(83);
			end if;

		  when "01010100" =>
			 if(data_i(63 downto 32) = ram_block_sig(84)(63 downto 32))then
			  data_o <= ram_block_sig(84);
			end if;

		  when "01010101" =>
			 if(data_i(63 downto 32) = ram_block_sig(85)(63 downto 32))then
			  data_o <= ram_block_sig(85);
			end if;

		  when "01010110" =>
			 if(data_i(63 downto 32) = ram_block_sig(86)(63 downto 32))then
			  data_o <= ram_block_sig(86);
			end if;

		  when "01010111" =>
			 if(data_i(63 downto 32) = ram_block_sig(87)(63 downto 32))then
			  data_o <= ram_block_sig(87);
			end if;

		  when "01011000" =>
			 if(data_i(63 downto 32) = ram_block_sig(88)(63 downto 32))then
			  data_o <= ram_block_sig(88);
			end if;

		  when "01011001" =>
			  if(data_i(63 downto 32) = ram_block_sig(89)(63 downto 32))then
			  data_o <= ram_block_sig(89);
			end if;

		  when "01011010" =>
			 if(data_i(63 downto 32) = ram_block_sig(90)(63 downto 32))then
			  data_o <= ram_block_sig(90);
			end if;

		  when "01011011" =>
			 if(data_i(63 downto 32) = ram_block_sig(91)(63 downto 32))then
			  data_o <= ram_block_sig(91);
			end if;

		  when "01011100" =>
			 if(data_i(63 downto 32) = ram_block_sig(92)(63 downto 32))then
			  data_o <= ram_block_sig(92);
			end if;

		  when "01011101" =>
			 if(data_i(63 downto 32) = ram_block_sig(93)(63 downto 32))then
			  data_o <= ram_block_sig(93);
			end if;

		  when "01011110" =>
			 if(data_i(63 downto 32) = ram_block_sig(94)(63 downto 32))then
			  data_o <= ram_block_sig(94);
			end if;

		  when "01011111" =>
			 if(data_i(63 downto 32) = ram_block_sig(95)(63 downto 32))then
			  data_o <= ram_block_sig(95);
			end if;

	     when "01100000" =>
			 if(data_i(63 downto 32) = ram_block_sig(96)(63 downto 32))then
			  data_o <= ram_block_sig(96);
			end if;

		  when "01100001" =>
			 if(data_i(63 downto 32) = ram_block_sig(97)(63 downto 32))then
			  data_o <= ram_block_sig(97);
			end if;

		  when "01100010" =>
			 if(data_i(63 downto 32) = ram_block_sig(98)(63 downto 32))then
			  data_o <= ram_block_sig(98);
			end if;

		  when "01100011" =>
			 if(data_i(63 downto 32) = ram_block_sig(99)(63 downto 32))then
			  data_o <= ram_block_sig(99);
			end if;

		  when "01100100" =>
			 if(data_i(63 downto 32) = ram_block_sig(100)(63 downto 32))then
			  data_o <= ram_block_sig(100);
			end if;

		  when "01100101" =>
			 if(data_i(63 downto 32) = ram_block_sig(101)(63 downto 32))then
			  data_o <= ram_block_sig(101);
			end if;

		  when "01100110" =>
			 if(data_i(63 downto 32) = ram_block_sig(102)(63 downto 32))then
			  data_o <= ram_block_sig(102);
			end if;

		  when "01100111" =>
			 if(data_i(63 downto 32) = ram_block_sig(103)(63 downto 32))then
			  data_o <= ram_block_sig(103);
			end if;

		  when "01101000" =>
			 if(data_i(63 downto 32) = ram_block_sig(104)(63 downto 32))then
			  data_o <= ram_block_sig(104);
			end if;

		  when "01101001" =>
			 if(data_i(63 downto 32) = ram_block_sig(105)(63 downto 32))then
			  data_o <= ram_block_sig(105);
			end if;

		  when "01101010" =>
			 if(data_i(63 downto 32) = ram_block_sig(106)(63 downto 32))then
			  data_o <= ram_block_sig(106);
			end if;

		  when "01101011" =>
			 if(data_i(63 downto 32) = ram_block_sig(107)(63 downto 32))then
			  data_o <= ram_block_sig(107);
			end if;

		  when "01101100" =>
			 if(data_i(63 downto 32) = ram_block_sig(108)(63 downto 32))then
			  data_o <= ram_block_sig(108);
			end if;

		  when "01101101" =>
			 if(data_i(63 downto 32) = ram_block_sig(109)(63 downto 32))then
			  data_o <= ram_block_sig(109);
			end if;

		  when "01101110" =>
			 if(data_i(63 downto 32) = ram_block_sig(110)(63 downto 32))then
			  data_o <= ram_block_sig(110);
			end if;

		  when "01101111" =>
			 if(data_i(63 downto 32) = ram_block_sig(111)(63 downto 32))then
			  data_o <= ram_block_sig(111);
			end if;

		  when "01110000" =>
			 if(data_i(63 downto 32) = ram_block_sig(112)(63 downto 32))then
			  data_o <= ram_block_sig(112);
			end if;

		  when "01110001" =>
			 if(data_i(63 downto 32) = ram_block_sig(113)(63 downto 32))then
			  data_o <= ram_block_sig(113);
			end if;

		  when "01110010" =>
			 if(data_i(63 downto 32) = ram_block_sig(114)(63 downto 32))then
			  data_o <= ram_block_sig(114);
			end if;

		  when "01110011" =>
			 if(data_i(63 downto 32) = ram_block_sig(115)(63 downto 32))then
			  data_o <= ram_block_sig(115);
			end if;

		  when "01110100" =>
			 if(data_i(63 downto 32) = ram_block_sig(116)(63 downto 32))then
			  data_o <= ram_block_sig(116);
			end if;

		  when "01110101" =>
			 if(data_i(63 downto 32) = ram_block_sig(117)(63 downto 32))then
			  data_o <= ram_block_sig(117);
			end if;

		  when "01110110" =>
			 if(data_i(63 downto 32) = ram_block_sig(118)(63 downto 32))then
			  data_o <= ram_block_sig(118);
			end if;

		  when "01110111" =>
			 if(data_i(63 downto 32) = ram_block_sig(119)(63 downto 32))then
			  data_o <= ram_block_sig(119);
			end if;

		  when "01111000" =>
			 if(data_i(63 downto 32) = ram_block_sig(120)(63 downto 32))then
			  data_o <= ram_block_sig(120);
			end if;

		  when "01111001" =>
			  if(data_i(63 downto 32) = ram_block_sig(121)(63 downto 32))then
			  data_o <= ram_block_sig(121);
			end if;

		  when "01111010" =>
			 if(data_i(63 downto 32) = ram_block_sig(122)(63 downto 32))then
			  data_o <= ram_block_sig(122);
			end if;

		  when "01111011" =>
			 if(data_i(63 downto 32) = ram_block_sig(123)(63 downto 32))then
			  data_o <= ram_block_sig(123);
			end if;

		  when "01111100" =>
			 if(data_i(63 downto 32) = ram_block_sig(124)(63 downto 32))then
			  data_o <= ram_block_sig(124);
			end if;

		  when "01111101" =>
			 if(data_i(63 downto 32) = ram_block_sig(125)(63 downto 32))then
			  data_o <= ram_block_sig(125);
			end if;

		  when "01111110" =>
			 if(data_i(63 downto 32) = ram_block_sig(126)(63 downto 32))then
			  data_o <= ram_block_sig(126);
			end if;

		  when "01111111" =>
			 if(data_i(63 downto 32) = ram_block_sig(127)(63 downto 32))then
			  data_o <= ram_block_sig(127);
			end if;

	     when "10000000" =>
			 if(data_i(63 downto 32) = ram_block_sig(128)(63 downto 32))then
			  data_o <= ram_block_sig(128);
			end if;

		  when "10000001" =>
			 if(data_i(63 downto 32) = ram_block_sig(129)(63 downto 32))then
			  data_o <= ram_block_sig(129);
			end if;

		  when "10000010" =>
			 if(data_i(63 downto 32) = ram_block_sig(130)(63 downto 32))then
			  data_o <= ram_block_sig(130);
			end if;

		  when "10000011" =>
			 if(data_i(63 downto 32) = ram_block_sig(131)(63 downto 32))then
			  data_o <= ram_block_sig(131);
			end if;

		  when "10000100" =>
			 if(data_i(63 downto 32) = ram_block_sig(132)(63 downto 32))then
			  data_o <= ram_block_sig(132);
			end if;

		  when "10000101" =>
			 if(data_i(63 downto 32) = ram_block_sig(133)(63 downto 32))then
			  data_o <= ram_block_sig(133);
			end if;

		  when "10000110" =>
			 if(data_i(63 downto 32) = ram_block_sig(134)(63 downto 32))then
			  data_o <= ram_block_sig(134);
			end if;

		  when "10000111" =>
			 if(data_i(63 downto 32) = ram_block_sig(135)(63 downto 32))then
			  data_o <= ram_block_sig(135);
			end if;

		  when "10001000" =>
			 if(data_i(63 downto 32) = ram_block_sig(136)(63 downto 32))then
			  data_o <= ram_block_sig(136);
			end if;

		  when "10001001" =>
			 if(data_i(63 downto 32) = ram_block_sig(137)(63 downto 32))then
			  data_o <= ram_block_sig(137);
			end if;

		  when "10001010" =>
			 if(data_i(63 downto 32) = ram_block_sig(138)(63 downto 32))then
			  data_o <= ram_block_sig(138);
			end if;

		  when "10001011" =>
			 if(data_i(63 downto 32) = ram_block_sig(139)(63 downto 32))then
			  data_o <= ram_block_sig(139);
			end if;

		  when "10001100" =>
			 if(data_i(63 downto 32) = ram_block_sig(140)(63 downto 32))then
			  data_o <= ram_block_sig(140);
			end if;

		  when "10001101" =>
			 if(data_i(63 downto 32) = ram_block_sig(141)(63 downto 32))then
			  data_o <= ram_block_sig(141);
			end if;

		  when "10001110" =>
			 if(data_i(63 downto 32) = ram_block_sig(142)(63 downto 32))then
			  data_o <= ram_block_sig(142);
			end if;

		  when "10001111" =>
			 if(data_i(63 downto 32) = ram_block_sig(143)(63 downto 32))then
			  data_o <= ram_block_sig(143);
			end if;

		  when "10010000" =>
			 if(data_i(63 downto 32) = ram_block_sig(144)(63 downto 32))then
			  data_o <= ram_block_sig(144);
			end if;

		  when "10010001" =>
			 if(data_i(63 downto 32) = ram_block_sig(145)(63 downto 32))then
			  data_o <= ram_block_sig(145);
			end if;

		  when "10010010" =>
			 if(data_i(63 downto 32) = ram_block_sig(146)(63 downto 32))then
			  data_o <= ram_block_sig(146);
			end if;

		  when "10010011" =>
			 if(data_i(63 downto 32) = ram_block_sig(147)(63 downto 32))then
			  data_o <= ram_block_sig(147);
			end if;

		  when "10010100" =>
			 if(data_i(63 downto 32) = ram_block_sig(148)(63 downto 32))then
			  data_o <= ram_block_sig(148);
			end if;

		  when "10010101" =>
			 if(data_i(63 downto 32) = ram_block_sig(149)(63 downto 32))then
			  data_o <= ram_block_sig(149);
			end if;

		  when "10010110" =>
			 if(data_i(63 downto 32) = ram_block_sig(150)(63 downto 32))then
			  data_o <= ram_block_sig(150);
			end if;

		  when "10010111" =>
			 if(data_i(63 downto 32) = ram_block_sig(151)(63 downto 32))then
			  data_o <= ram_block_sig(151);
			end if;

		  when "10011000" =>
			 if(data_i(63 downto 32) = ram_block_sig(152)(63 downto 32))then
			  data_o <= ram_block_sig(152);
			end if;

		  when "10011001" =>
			  if(data_i(63 downto 32) = ram_block_sig(153)(63 downto 32))then
			  data_o <= ram_block_sig(153);
			end if;

		  when "10011010" =>
			 if(data_i(63 downto 32) = ram_block_sig(154)(63 downto 32))then
			  data_o <= ram_block_sig(154);
			end if;

		  when "10011011" =>
			 if(data_i(63 downto 32) = ram_block_sig(155)(63 downto 32))then
			  data_o <= ram_block_sig(155);
			end if;

		  when "10011100" =>
			 if(data_i(63 downto 32) = ram_block_sig(156)(63 downto 32))then
			  data_o <= ram_block_sig(156);
			end if;

		  when "10011101" =>
			 if(data_i(63 downto 32) = ram_block_sig(157)(63 downto 32))then
			  data_o <= ram_block_sig(157);
			end if;

		  when "10011110" =>
			 if(data_i(63 downto 32) = ram_block_sig(158)(63 downto 32))then
			  data_o <= ram_block_sig(158);
			end if;

		  when "10011111" =>
			 if(data_i(63 downto 32) = ram_block_sig(159)(63 downto 32))then
			  data_o <= ram_block_sig(159);
			end if;

	     when "10100000" =>
			 if(data_i(63 downto 32) = ram_block_sig(160)(63 downto 32))then
			  data_o <= ram_block_sig(160);
			end if;

		  when "10100001" =>
			 if(data_i(63 downto 32) = ram_block_sig(161)(63 downto 32))then
			  data_o <= ram_block_sig(161);
			end if;

		  when "10100010" =>
			 if(data_i(63 downto 32) = ram_block_sig(162)(63 downto 32))then
			  data_o <= ram_block_sig(162);
			end if;

		  when "10100011" =>
			 if(data_i(63 downto 32) = ram_block_sig(163)(63 downto 32))then
			  data_o <= ram_block_sig(163);
			end if;

		  when "10100100" =>
			 if(data_i(63 downto 32) = ram_block_sig(164)(63 downto 32))then
			  data_o <= ram_block_sig(164);
			end if;

		  when "10100101" =>
			 if(data_i(63 downto 32) = ram_block_sig(165)(63 downto 32))then
			  data_o <= ram_block_sig(165);
			end if;

		  when "10100110" =>
			 if(data_i(63 downto 32) = ram_block_sig(166)(63 downto 32))then
			  data_o <= ram_block_sig(166);
			end if;

		  when "10100111" =>
			 if(data_i(63 downto 32) = ram_block_sig(167)(63 downto 32))then
			  data_o <= ram_block_sig(167);
			end if;

		  when "10101000" =>
			 if(data_i(63 downto 32) = ram_block_sig(168)(63 downto 32))then
			  data_o <= ram_block_sig(168);
			end if;

		  when "10101001" =>
			 if(data_i(63 downto 32) = ram_block_sig(169)(63 downto 32))then
			  data_o <= ram_block_sig(169);
			end if;

		  when "10101010" =>
			 if(data_i(63 downto 32) = ram_block_sig(170)(63 downto 32))then
			  data_o <= ram_block_sig(170);
			end if;

		  when "10101011" =>
			 if(data_i(63 downto 32) = ram_block_sig(171)(63 downto 32))then
			  data_o <= ram_block_sig(171);
			end if;

		  when "10101100" =>
			 if(data_i(63 downto 32) = ram_block_sig(172)(63 downto 32))then
			  data_o <= ram_block_sig(172);
			end if;

		  when "10101101" =>
			 if(data_i(63 downto 32) = ram_block_sig(173)(63 downto 32))then
			  data_o <= ram_block_sig(173);
			end if;

		  when "10101110" =>
			 if(data_i(63 downto 32) = ram_block_sig(174)(63 downto 32))then
			  data_o <= ram_block_sig(174);
			end if;

		  when "10101111" =>
			 if(data_i(63 downto 32) = ram_block_sig(175)(63 downto 32))then
			  data_o <= ram_block_sig(175);
			end if;

		  when "10110000" =>
			 if(data_i(63 downto 32) = ram_block_sig(176)(63 downto 32))then
			  data_o <= ram_block_sig(176);
			end if;

		  when "10110001" =>
			 if(data_i(63 downto 32) = ram_block_sig(177)(63 downto 32))then
			  data_o <= ram_block_sig(177);
			end if;

		  when "10110010" =>
			 if(data_i(63 downto 32) = ram_block_sig(178)(63 downto 32))then
			  data_o <= ram_block_sig(178);
			end if;

		  when "10110011" =>
			 if(data_i(63 downto 32) = ram_block_sig(179)(63 downto 32))then
			  data_o <= ram_block_sig(179);
			end if;

		  when "10110100" =>
			 if(data_i(63 downto 32) = ram_block_sig(180)(63 downto 32))then
			  data_o <= ram_block_sig(180);
			end if;

		  when "10110101" =>
			 if(data_i(63 downto 32) = ram_block_sig(181)(63 downto 32))then
			  data_o <= ram_block_sig(181);
			end if;

		  when "10110110" =>
			 if(data_i(63 downto 32) = ram_block_sig(182)(63 downto 32))then
			  data_o <= ram_block_sig(182);
			end if;

		  when "10110111" =>
			 if(data_i(63 downto 32) = ram_block_sig(183)(63 downto 32))then
			  data_o <= ram_block_sig(183);
			end if;

		  when "10111000" =>
			 if(data_i(63 downto 32) = ram_block_sig(184)(63 downto 32))then
			  data_o <= ram_block_sig(184);
			end if;

		  when "10111001" =>
			  if(data_i(63 downto 32) = ram_block_sig(185)(63 downto 32))then
			  data_o <= ram_block_sig(185);
			end if;
			  
		  when "10111010" =>
			 if(data_i(63 downto 32) = ram_block_sig(186)(63 downto 32))then
			  data_o <= ram_block_sig(186);
			end if;

		  when "10111011" =>
			 if(data_i(63 downto 32) = ram_block_sig(187)(63 downto 32))then
			  data_o <= ram_block_sig(187);
			end if;

		  when "10111100" =>
			 if(data_i(63 downto 32) = ram_block_sig(188)(63 downto 32))then
			  data_o <= ram_block_sig(188);
			end if;

		  when "10111101" =>
			if(data_i(63 downto 32) = ram_block_sig(189)(63 downto 32))then
			  data_o <= ram_block_sig(189);
			end if;

		  when "10111110" =>
			 if(data_i(63 downto 32) = ram_block_sig(190)(63 downto 32))then
			  data_o <= ram_block_sig(190);
			end if;

		  when "10111111" =>
			 if(data_i(63 downto 32) = ram_block_sig(191)(63 downto 32))then
			  data_o <= ram_block_sig(191);
			end if;

	     when "11000000" =>
			 if(data_i(63 downto 32) = ram_block_sig(192)(63 downto 32))then
			  data_o <= ram_block_sig(192);
			end if;

		  when "11000001" =>
			 if(data_i(63 downto 32) = ram_block_sig(193)(63 downto 32))then
			  data_o <= ram_block_sig(193);
			end if;

		  when "11000010" =>
			 if(data_i(63 downto 32) = ram_block_sig(194)(63 downto 32))then
			  data_o <= ram_block_sig(194);
			end if;

		  when "11000011" =>
			 if(data_i(63 downto 32) = ram_block_sig(195)(63 downto 32))then
			  data_o <= ram_block_sig(195);
			end if;

		  when "11000100" =>
			 if(data_i(63 downto 32) = ram_block_sig(196)(63 downto 32))then
			  data_o <= ram_block_sig(196);
			end if;

		  when "11000101" =>
			 if(data_i(63 downto 32) = ram_block_sig(197)(63 downto 32))then
			  data_o <= ram_block_sig(197);
			end if;

		  when "11000110" =>
			 if(data_i(63 downto 32) = ram_block_sig(198)(63 downto 32))then
			  data_o <= ram_block_sig(198);
			end if;

		  when "11000111" =>
			 if(data_i(63 downto 32) = ram_block_sig(199)(63 downto 32))then
			  data_o <= ram_block_sig(199);
			end if;

		  when "11001000" =>
			 if(data_i(63 downto 32) = ram_block_sig(200)(63 downto 32))then
			  data_o <= ram_block_sig(200);
			end if;

		  when "11001001" =>
			 if(data_i(63 downto 32) = ram_block_sig(201)(63 downto 32))then
			  data_o <= ram_block_sig(201);
			end if;

		  when "11001010" =>
			 if(data_i(63 downto 32) = ram_block_sig(202)(63 downto 32))then
			  data_o <= ram_block_sig(202);
			end if;

		  when "11001011" =>
			 if(data_i(63 downto 32) = ram_block_sig(203)(63 downto 32))then
			  data_o <= ram_block_sig(203);
			end if;

		  when "11001100" =>
			 if(data_i(63 downto 32) = ram_block_sig(204)(63 downto 32))then
			  data_o <= ram_block_sig(204);
			end if;

		  when "11001101" =>
			 if(data_i(63 downto 32) = ram_block_sig(205)(63 downto 32))then
			  data_o <= ram_block_sig(205);
			end if;

		  when "11001110" =>
			 if(data_i(63 downto 32) = ram_block_sig(206)(63 downto 32))then
			  data_o <= ram_block_sig(206);
			end if;

		  when "11001111" =>
			 if(data_i(63 downto 32) = ram_block_sig(207)(63 downto 32))then
			  data_o <= ram_block_sig(207);
			end if;

		  when "11010000" =>
			 if(data_i(63 downto 32) = ram_block_sig(208)(63 downto 32))then
			  data_o <= ram_block_sig(208);
			end if;

		  when "11010001" =>
			 if(data_i(63 downto 32) = ram_block_sig(209)(63 downto 32))then
			  data_o <= ram_block_sig(209);
			end if;

		  when "11010010" =>
			 if(data_i(63 downto 32) = ram_block_sig(210)(63 downto 32))then
			  data_o <= ram_block_sig(210);
			end if;

		  when "11010011" =>
			 if(data_i(63 downto 32) = ram_block_sig(211)(63 downto 32))then
			  data_o <= ram_block_sig(211);
			end if;

		  when "11010100" =>
			 if(data_i(63 downto 32) = ram_block_sig(212)(63 downto 32))then
			  data_o <= ram_block_sig(212);
			end if;

		  when "11010101" =>
			 if(data_i(63 downto 32) = ram_block_sig(213)(63 downto 32))then
			  data_o <= ram_block_sig(213);
			end if;

		  when "11010110" =>
			 if(data_i(63 downto 32) = ram_block_sig(214)(63 downto 32))then
			  data_o <= ram_block_sig(214);
			end if;

		  when "11010111" =>
			 if(data_i(63 downto 32) = ram_block_sig(215)(63 downto 32))then
			  data_o <= ram_block_sig(215);
			end if;

		  when "11011000" =>
			 if(data_i(63 downto 32) = ram_block_sig(216)(63 downto 32))then
			  data_o <= ram_block_sig(216);
			end if;

		  when "11011001" =>
			  if(data_i(63 downto 32) = ram_block_sig(217)(63 downto 32))then
			  data_o <= ram_block_sig(217);
			end if;

		  when "11011010" =>
			 if(data_i(63 downto 32) = ram_block_sig(218)(63 downto 32))then
			  data_o <= ram_block_sig(218);
			end if;

		  when "11011011" =>
			 if(data_i(63 downto 32) = ram_block_sig(219)(63 downto 32))then
			  data_o <= ram_block_sig(219);
			end if;

		  when "11011100" =>
			 if(data_i(63 downto 32) = ram_block_sig(220)(63 downto 32))then
			  data_o <= ram_block_sig(220);
			end if;

		  when "11011101" =>
			 if(data_i(63 downto 32) = ram_block_sig(221)(63 downto 32))then
			  data_o <= ram_block_sig(221);
			end if;

		  when "11011110" =>
			 if(data_i(63 downto 32) = ram_block_sig(222)(63 downto 32))then
			  data_o <= ram_block_sig(222);
			end if;

		  when "11011111" =>
			 if(data_i(63 downto 32) = ram_block_sig(223)(63 downto 32))then
			  data_o <= ram_block_sig(223);
			end if;

	     when "11100000" =>
			 if(data_i(63 downto 32) = ram_block_sig(224)(63 downto 32))then
			  data_o <= ram_block_sig(224);
			end if;

		  when "11100001" =>
			 if(data_i(63 downto 32) = ram_block_sig(225)(63 downto 32))then
			  data_o <= ram_block_sig(225);
			end if;

		  when "11100010" =>
			 if(data_i(63 downto 32) = ram_block_sig(226)(63 downto 32))then
			  data_o <= ram_block_sig(226);
			end if;

		  when "11100011" =>
			 if(data_i(63 downto 32) = ram_block_sig(227)(63 downto 32))then
			  data_o <= ram_block_sig(227);
			end if;

		  when "11100100" =>
			 if(data_i(63 downto 32) = ram_block_sig(228)(63 downto 32))then
			  data_o <= ram_block_sig(228);
			end if;

		  when "11100101" =>
			 if(data_i(63 downto 32) = ram_block_sig(229)(63 downto 32))then
			  data_o <= ram_block_sig(229);
			end if;

		  when "11100110" =>
			 if(data_i(63 downto 32) = ram_block_sig(230)(63 downto 32))then
			  data_o <= ram_block_sig(230);
			end if;

		  when "11100111" =>
			 if(data_i(63 downto 32) = ram_block_sig(231)(63 downto 32))then
			  data_o <= ram_block_sig(231);
			end if;

		  when "11101000" =>
			 if(data_i(63 downto 32) = ram_block_sig(232)(63 downto 32))then
			  data_o <= ram_block_sig(232);
			end if;

		  when "11101001" =>
			 if(data_i(63 downto 32) = ram_block_sig(233)(63 downto 32))then
			  data_o <= ram_block_sig(233);
			end if;

		  when "11101010" =>
			 if(data_i(63 downto 32) = ram_block_sig(234)(63 downto 32))then
			  data_o <= ram_block_sig(234);
			end if;

		  when "11101011" =>
			 if(data_i(63 downto 32) = ram_block_sig(235)(63 downto 32))then
			  data_o <= ram_block_sig(235);
			end if;

		  when "11101100" =>
			 if(data_i(63 downto 32) = ram_block_sig(236)(63 downto 32))then
			  data_o <= ram_block_sig(236);
			end if;

		  when "11101101" =>
			 if(data_i(63 downto 32) = ram_block_sig(237)(63 downto 32))then
			  data_o <= ram_block_sig(237);
			end if;

		  when "11101110" =>
			 if(data_i(63 downto 32) = ram_block_sig(238)(63 downto 32))then
			  data_o <= ram_block_sig(238);
			end if;

		  when "11101111" =>
			 if(data_i(63 downto 32) = ram_block_sig(239)(63 downto 32))then
			  data_o <= ram_block_sig(239);
			end if;

		  when "11110000" =>
			 if(data_i(63 downto 32) = ram_block_sig(240)(63 downto 32))then
			  data_o <= ram_block_sig(240);
			end if;
			 
		  when "11110001" =>
			 if(data_i(63 downto 32) = ram_block_sig(241)(63 downto 32))then
			  data_o <= ram_block_sig(241);
			end if;

		  when "11110010" =>
			 if(data_i(63 downto 32) = ram_block_sig(242)(63 downto 32))then
			  data_o <= ram_block_sig(242);
			end if;

		  when "11110011" =>
			 if(data_i(63 downto 32) = ram_block_sig(243)(63 downto 32))then
			  data_o <= ram_block_sig(243);
			end if;

		  when "11110100" =>
			 if(data_i(63 downto 32) = ram_block_sig(244)(63 downto 32))then
			  data_o <= ram_block_sig(244);
			end if;

		  when "11110101" =>
			 if(data_i(63 downto 32) = ram_block_sig(245)(63 downto 32))then
			  data_o <= ram_block_sig(245);
			end if;

		  when "11110110" =>
			 if(data_i(63 downto 32) = ram_block_sig(246)(63 downto 32))then
			  data_o <= ram_block_sig(246);
			end if;

		  when "11110111" =>
			 if(data_i(63 downto 32) = ram_block_sig(247)(63 downto 32))then
			  data_o <= ram_block_sig(247);
			end if;

		  when "11111000" =>
			 if(data_i(63 downto 32) = ram_block_sig(248)(63 downto 32))then
			  data_o <= ram_block_sig(248);
			end if;

		  when "11111001" =>
			  if(data_i(63 downto 32) = ram_block_sig(249)(63 downto 32))then
			  data_o <= ram_block_sig(249);
			end if;

		  when "11111010" =>
			 if(data_i(63 downto 32) = ram_block_sig(250)(63 downto 32))then
			  data_o <= ram_block_sig(250);
			end if;

		  when "11111011" =>
			 if(data_i(63 downto 32) = ram_block_sig(251)(63 downto 32))then
			  data_o <= ram_block_sig(251);
			end if;

		  when "11111100" =>
			 if(data_i(63 downto 32) = ram_block_sig(252)(63 downto 32))then
			  data_o <= ram_block_sig(252);
			end if;

		  when "11111101" =>
			 if(data_i(63 downto 32) = ram_block_sig(253)(63 downto 32))then
			  data_o <= ram_block_sig(253);
			end if;

		  when "11111110" =>
			 if(data_i(63 downto 32) = ram_block_sig(254)(63 downto 32))then
			  data_o <= ram_block_sig(254);
			end if;
			 
		  when others =>
		  end case;
		 end if;
	end if;
	end process;
end Behavioral;