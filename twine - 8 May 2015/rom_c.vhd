----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:12:17 05/07/2015 
-- Design Name: 
-- Module Name:    rom_c - Behavioral 
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
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity rom_c is
    Port ( addr : in  STD_LOGIC_VECTOR (5 downto 0);
           clk : in  STD_LOGIC;
           dout : out  STD_LOGIC_VECTOR (31 downto 0));
end rom_c;

architecture Behavioral of rom_c is
type ROMTABLE is array (0 to 35) of std_logic_vector (31 downto 0);
	 -- internal table
	 constant romdata : romtable := (
	 X"01236778", -- data for address 1
	 X"2345898c", -- data for address 2
	 X"4567112f",
	 X"678933ef",
	 X"89c15559",
	 X"10f37729",
	 X"3af599c5",
	 X"559710c2",
	 X"72993aa7",
	 X"9d50550e",--10
	 X"1f2a7268",
	 X"3c759dcb",
	 X"54e20f0e",
	 X"768dacf9",
	 X"9dbf542f",
	 X"02ec26ce",
	 X"aa94ddb4", 
	 X"50f6f2c2", 
	 X"28edcae2",
	 X"da4240ce",--20
	 X"ff2a686d",
	 X"c920da50",
	 X"4be82f1d",
	 X"60daa992",
	 X"d00f0bfa",
	 X"23d98012",
	 X"ad2ba00c",
	 X"0fa0f3a5",
	 X"80209d4a",
	 X"a3c3bf78",--30
	 X"fd5d001e",
	 X"92af03cd",
	 X"b3803d13",
	 X"00e3d229",
	 X"0eddf36f",
	 X"3532006e"
	 );

begin

dout <= romdata(to_integer(unsigned(addr)));

end Behavioral;

