----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:12:44 04/02/2015 
-- Design Name: 
-- Module Name:    con_t - Behavioral 
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

entity con_t is
    Port ( clk : in  STD_LOGIC;
           addr : in  STD_LOGIC_VECTOR (5 downto 0);
           dout : out  STD_LOGIC_VECTOR (5 downto 0));
end con_t;

architecture Behavioral of con_t is
type ROMTABLE is array (0 to 36) of std_logic_vector (5 downto 0);
	 -- internal table
	 constant romdata : romtable := (
	 --"000000", -- data for address 0
	 "000001", -- data for address 1
	 "000010",
	 "000100",
	 "001000",
	 "010000",
	 "100000",
	 "000011",
	 "000110",
	 "001100",
	 "011000",
	 "110000",
	 "100011",
	 "000101",
	 "001010",
	 "010100",-- data for address 15
	 "101000", 
	 "010011",
	 "100110",
	 "001111",
	 "011110",
	 "111100",
	 "111011",
	 "110101",
	 "101001",
	 "010001",
	 "100010",
	 "000111",
	 "001110",
	 "011100",
	 "111000",
	 "110011",
	 "100101",
	 "001001",
	 "010010",
	 "100100",
	 "001011",
	 "000000"
	 );

begin
	--process (clk)
	 --begin -- process
		--if clk'event and clk='1' then
			dout <= romdata(to_integer(unsigned(addr)));
		--end if;
	 --end process;

end Behavioral;

