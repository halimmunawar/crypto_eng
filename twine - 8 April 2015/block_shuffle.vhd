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
           a_0_in_s : in  STD_LOGIC_VECTOR (3 downto 0);
			  a_1_in_s : in  STD_LOGIC_VECTOR (3 downto 0);
			  a_2_in_s : in  STD_LOGIC_VECTOR (3 downto 0);
			  a_3_in_s : in  STD_LOGIC_VECTOR (3 downto 0);
			  a_4_in_s : in  STD_LOGIC_VECTOR (3 downto 0);
			  a_5_in_s : in  STD_LOGIC_VECTOR (3 downto 0);
			  a_6_in_s : in  STD_LOGIC_VECTOR (3 downto 0);
			  a_7_in_s : in  STD_LOGIC_VECTOR (3 downto 0);
			  a_8_in_s : in  STD_LOGIC_VECTOR (3 downto 0);
			  a_9_in_s : in  STD_LOGIC_VECTOR (3 downto 0);
			  a_10_in_s : in  STD_LOGIC_VECTOR (3 downto 0);
			  a_11_in_s : in  STD_LOGIC_VECTOR (3 downto 0);
			  a_12_in_s : in  STD_LOGIC_VECTOR (3 downto 0);
			  a_13_in_s : in  STD_LOGIC_VECTOR (3 downto 0);
			  a_14_in_s : in  STD_LOGIC_VECTOR (3 downto 0);
			  a_15_in_s : in  STD_LOGIC_VECTOR (3 downto 0);
           a_0_out_s : out  STD_LOGIC_VECTOR (3 downto 0);
			  a_1_out_s : out  STD_LOGIC_VECTOR (3 downto 0);
			  a_2_out_s : out  STD_LOGIC_VECTOR (3 downto 0);
			  a_3_out_s : out  STD_LOGIC_VECTOR (3 downto 0);
			  a_4_out_s : out  STD_LOGIC_VECTOR (3 downto 0);
			  a_5_out_s : out  STD_LOGIC_VECTOR (3 downto 0);
			  a_6_out_s : out  STD_LOGIC_VECTOR (3 downto 0);
			  a_7_out_s : out  STD_LOGIC_VECTOR (3 downto 0);
			  a_8_out_s : out  STD_LOGIC_VECTOR (3 downto 0);
			  a_9_out_s : out  STD_LOGIC_VECTOR (3 downto 0);
			  a_10_out_s : out  STD_LOGIC_VECTOR (3 downto 0);
			  a_11_out_s : out  STD_LOGIC_VECTOR (3 downto 0);
			  a_12_out_s : out  STD_LOGIC_VECTOR (3 downto 0);
			  a_13_out_s : out  STD_LOGIC_VECTOR (3 downto 0);
			  a_14_out_s : out  STD_LOGIC_VECTOR (3 downto 0);
			  a_15_out_s : out  STD_LOGIC_VECTOR (3 downto 0));
end block_shuffle;

architecture Behavioral of block_shuffle is

begin

	a_0_out_s <= a_1_in_s when enc = '1' else a_5_in_s;
	a_1_out_s <= a_2_in_s when enc = '1' else a_0_in_s;
	a_2_out_s <= a_11_in_s when enc = '1' else a_1_in_s;
	a_3_out_s <= a_6_in_s when enc = '1' else a_4_in_s;
	a_4_out_s <= a_3_in_s when enc = '1' else a_7_in_s;
	a_5_out_s <= a_0_in_s when enc = '1' else a_12_in_s;
	a_6_out_s <= a_9_in_s when enc = '1' else a_3_in_s;
	a_7_out_s <= a_4_in_s when enc = '1' else a_8_in_s;
	a_8_out_s <= a_7_in_s when enc = '1' else a_13_in_s;
	a_9_out_s <= a_10_in_s when enc = '1' else a_6_in_s;
	a_10_out_s <= a_13_in_s when enc = '1' else a_9_in_s;
	a_11_out_s <= a_14_in_s when enc = '1' else a_2_in_s;
	a_12_out_s <= a_5_in_s when enc = '1' else a_15_in_s;
	a_13_out_s <= a_8_in_s when enc = '1' else a_10_in_s;
	a_14_out_s <= a_15_in_s when enc = '1' else a_11_in_s;
	a_15_out_s <= a_12_in_s when enc = '1' else a_14_in_s;


end Behavioral;

