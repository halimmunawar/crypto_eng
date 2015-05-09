----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:52:06 04/07/2015 
-- Design Name: 
-- Module Name:    ram_t - Behavioral 
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

entity ram_t is
    Port ( clk : in  STD_LOGIC;
           rw : in  STD_LOGIC;
           data_in : in  STD_LOGIC_VECTOR (31 downto 0);
           address : in  STD_LOGIC_VECTOR (5 downto 0);
           data_out : out  STD_LOGIC_VECTOR (31 downto 0));
end ram_t;

architecture Behavioral of ram_t is

type ramtype is array (0 to 35) of std_logic_vector(31 downto 0);
signal memory_ram : ramtype;

begin

process(clk)
begin
	if clk'event and clk = '1' then
		if rw = '1' then
			memory_ram(to_integer(unsigned(address))) <= data_in;
		end if;
		data_out <= memory_ram(to_integer(unsigned(address)));
	end if;
end process;

end Behavioral;

