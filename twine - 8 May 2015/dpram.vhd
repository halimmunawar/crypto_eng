----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:04:55 05/08/2015 
-- Design Name: 
-- Module Name:    dpram - Behavioral 
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

entity dpram is
    Port ( clk : in  STD_LOGIC;
           data_in_a : in  STD_LOGIC_VECTOR (31 downto 0);
           rw_a : in  STD_LOGIC;
           address_a : in  STD_LOGIC_VECTOR (5 downto 0);
           address_b : in  STD_LOGIC_VECTOR (5 downto 0);
           data_out_b : out  STD_LOGIC_VECTOR (31 downto 0));
end dpram;

architecture Behavioral of dpram is

type ramtype is array (0 to 35) of std_logic_vector(31 downto 0);
signal memory_ram : ramtype;

begin

input_a: process (clk)
begin
	if rising_edge(clk) then
		if rw_a = '1' then
			memory_ram(to_integer(unsigned(address_a))) <= data_in_a;
		end if;
		data_out_b <= memory_ram(to_integer(unsigned(address_b)));
	end if;
end process;

end Behavioral;

