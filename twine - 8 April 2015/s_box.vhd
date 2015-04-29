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
	 "1111",
	 "1010",
	 "0010",
	 "1011",
	 "1001",
	 "0101",
	 "1000",
	 "0011",
	 "1101",
	 "0111",
	 "0001",
	 "1110",
	 "0110",
	 "0100" -- data for address 15
	 );

begin
	process (clk)
	 begin -- process
		if clk'event and clk='1' then
			dout <= romdata(to_integer(unsigned(addr)));
		end if;
	 end process;

end Behavioral;

