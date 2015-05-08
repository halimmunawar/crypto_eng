----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:15:53 04/02/2015 
-- Design Name: 
-- Module Name:    s_box - Behavioral 
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity s_box is
    Port ( addr : in  STD_LOGIC_VECTOR (3 downto 0);
				clk : in std_logic;
           dout : out  STD_LOGIC_VECTOR (3 downto 0));
end s_box;

architecture Behavioral of s_box is
	type ROMTABLE is array (0 to 15) of std_logic_vector (3 downto 0);
	 -- internal table
	 constant romdata : romtable := (
	 "1100", -- data for address 0
	 "0000", -- data for address 1
	 "1111", -- data for address 2
	 "1010", -- data for address 3
	 "0010", -- data for address 4
	 "1011", -- data for address 5
	 "1001", -- data for address 6
	 "0101", -- data for address 7
	 "1000", -- data for address 8
	 "0011", -- data for address 9
	 "1101", -- data for address A
	 "0111", -- data for address B
	 "0001", -- data for address C
	 "1110", -- data for address D
	 "0110", -- data for address E
	 "0100" -- data for address F
	 );

begin
	--process (clk)
	 --begin -- process
		--if clk'event and clk='1' then
			dout <= romdata(to_integer(unsigned(addr)));
		--end if;
	 --end process;

end Behavioral;

