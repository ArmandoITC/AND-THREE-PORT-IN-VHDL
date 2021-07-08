-------------------------------------------------------------------------------
--
-- Title       : systemX
-- Design      : systemX
-- Author      : ARMANDO FIGUEROA MARTINEZ
-- Company     : ITC
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\signal_assignament\signal_assignament\systemX\src\signal_assignament.vhd
-- Generated   : Thu Jul  8 11:16:28 2021
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description :The next vhd file describe a three ports and simple using type BIT input 
-- and and output
--
-------------------------------------------------------------------------------



library IEEE;
use IEEE.std_logic_1164.all;

entity systemX is
	 port(
		 A,B,C : in BIT; --declaration of input type bit 
		 F : out BIT	 -- declaration of pouput type bit
	     );
end systemX;

--}} End of automatically maintained section

architecture systemX_arch of systemX is
---declaration of signal for connection 
	signal ABC : bit_vector (2 downto 0);
begin				  
	ABC<= A & B & C;
	with ABC select  
	F <='1' when "000",
		'0' when "001",
		'1' when "010",
		'0' when "011",
		'0' when "100",
		'0' when "101",
		'1' when "110",
		'0' when "111";
--other forms very small of the same description of hardware are		   
end architecture;
