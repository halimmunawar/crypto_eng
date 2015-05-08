----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:07:42 04/02/2015 
-- Design Name: 
-- Module Name:    block_shuffle - Behavioral 
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity block_shuffle is
    Port ( enc : in  STD_LOGIC;
           a_in : in  STD_LOGIC_VECTOR (63 downto 0);
			  a_out : out  STD_LOGIC_VECTOR (63 downto 0));
end block_shuffle;

architecture Behavioral of block_shuffle is

begin

	a_out(63 downto 60) <= a_in(59 downto 56) when enc = '1' else a_in(43 downto 40);
	a_out(59 downto 56) <= a_in(55 downto 52) when enc = '1' else a_in(63 downto 60);
	a_out(55 downto 52) <= a_in(19 downto 16) when enc = '1' else a_in(59 downto 56);
	a_out(51 downto 48) <= a_in(39 downto 36) when enc = '1' else a_in(47 downto 44);
	a_out(47 downto 44) <= a_in(51 downto 48) when enc = '1' else a_in(35 downto 32);
	a_out(43 downto 40) <= a_in(63 downto 60) when enc = '1' else a_in(15 downto 12);
	a_out(39 downto 36) <= a_in(27 downto 24) when enc = '1' else a_in(51 downto 48);
	a_out(35 downto 32) <= a_in(47 downto 44) when enc = '1' else a_in(31 downto 28);
	a_out(31 downto 28) <= a_in(35 downto 32) when enc = '1' else a_in(11 downto 8);
	a_out(27 downto 24) <= a_in(23 downto 20) when enc = '1' else a_in(39 downto 36);
	a_out(23 downto 20) <= a_in(11 downto 8) when enc = '1' else a_in(27 downto 24);
	a_out(19 downto 16) <= a_in(7 downto 4) when enc = '1' else a_in(55 downto 52);
	a_out(15 downto 12) <= a_in(43 downto 40) when enc = '1' else a_in(3 downto 0);
	a_out(11 downto 8) <= a_in(31 downto 28) when enc = '1' else a_in(23 downto 20);
	a_out(7 downto 4) <= a_in(3 downto 0) when enc = '1' else a_in(19 downto 16);
	a_out(3 downto 0) <= a_in(15 downto 12) when enc = '1' else a_in(7 downto 4);


end Behavioral;

