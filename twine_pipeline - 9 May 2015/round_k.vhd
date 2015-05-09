----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:15:11 04/08/2015 
-- Design Name: 
-- Module Name:    round_k - Behavioral 
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

entity round_k is
    Port ( clk: in STD_LOGIC;
			  addr : in  STD_LOGIC_VECTOR (5 downto 0);
			  key_in: in  STD_LOGIC_VECTOR (79 downto 0);
			  key_out: out  STD_LOGIC_VECTOR (79 downto 0)
--           k_0_in_s : in  STD_LOGIC_VECTOR (3 downto 0);
--           k_1_in_s : in  STD_LOGIC_VECTOR (3 downto 0);
--           k_2_in_s : in  STD_LOGIC_VECTOR (3 downto 0);
--           k_3_in_s : in  STD_LOGIC_VECTOR (3 downto 0);
--           k_4_in_s : in  STD_LOGIC_VECTOR (3 downto 0);
--           k_5_in_s : in  STD_LOGIC_VECTOR (3 downto 0);
--           k_6_in_s : in  STD_LOGIC_VECTOR (3 downto 0);
--           k_7_in_s : in  STD_LOGIC_VECTOR (3 downto 0);
--           k_8_in_s : in  STD_LOGIC_VECTOR (3 downto 0);
--           k_9_in_s : in  STD_LOGIC_VECTOR (3 downto 0);
--           k_10_in_s : in  STD_LOGIC_VECTOR (3 downto 0);
--           k_11_in_s : in  STD_LOGIC_VECTOR (3 downto 0);
--           k_12_in_s : in  STD_LOGIC_VECTOR (3 downto 0);
--           k_13_in_s : in  STD_LOGIC_VECTOR (3 downto 0);
--           k_14_in_s : in  STD_LOGIC_VECTOR (3 downto 0);
--           k_15_in_s : in  STD_LOGIC_VECTOR (3 downto 0);
--           k_16_in_s : in  STD_LOGIC_VECTOR (3 downto 0);
--           k_17_in_s : in  STD_LOGIC_VECTOR (3 downto 0);
--           k_18_in_s : in  STD_LOGIC_VECTOR (3 downto 0);
--           k_19_in_s : in  STD_LOGIC_VECTOR (3 downto 0);
--           k_0_out_s : out  STD_LOGIC_VECTOR (3 downto 0);
--           k_1_out_s : out  STD_LOGIC_VECTOR (3 downto 0);
--           k_2_out_s : out  STD_LOGIC_VECTOR (3 downto 0);
--           k_3_out_s : out  STD_LOGIC_VECTOR (3 downto 0);
--           k_4_out_s : out  STD_LOGIC_VECTOR (3 downto 0);
--           k_5_out_s : out  STD_LOGIC_VECTOR (3 downto 0);
--           k_6_out_s : out  STD_LOGIC_VECTOR (3 downto 0);
--           k_7_out_s : out  STD_LOGIC_VECTOR (3 downto 0);
--           k_8_out_s : out  STD_LOGIC_VECTOR (3 downto 0);
--           k_9_out_s : out  STD_LOGIC_VECTOR (3 downto 0);
--           k_10_out_s : out  STD_LOGIC_VECTOR (3 downto 0);
--           k_11_out_s : out  STD_LOGIC_VECTOR (3 downto 0);
--           k_12_out_s : out  STD_LOGIC_VECTOR (3 downto 0);
--           k_13_out_s : out  STD_LOGIC_VECTOR (3 downto 0);
--           k_14_out_s : out  STD_LOGIC_VECTOR (3 downto 0);
--           k_15_out_s : out  STD_LOGIC_VECTOR (3 downto 0);
--           k_16_out_s : out  STD_LOGIC_VECTOR (3 downto 0);
--           k_17_out_s : out  STD_LOGIC_VECTOR (3 downto 0);
--           k_18_out_s : out  STD_LOGIC_VECTOR (3 downto 0);
--           k_19_out_s : out  STD_LOGIC_VECTOR (3 downto 0)
);
end round_k;

architecture Behavioral of round_k is

component s_box is 
	Port ( addr : in  STD_LOGIC_VECTOR (3 downto 0);
				clk : in std_logic;
           dout : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component con_t is 
	Port ( clk : in std_logic;
				addr : in  STD_LOGIC_VECTOR (5 downto 0);
				dout : out  STD_LOGIC_VECTOR (5 downto 0));
end component;


	signal s_0_out : STD_LOGIC_VECTOR (3 downto 0);
	signal s_16_out : STD_LOGIC_VECTOR (3 downto 0);
	signal con_out : STD_LOGIC_VECTOR (5 downto 0);
	signal k_0_in :  STD_LOGIC_VECTOR (3 downto 0);
	signal k_1_in :  STD_LOGIC_VECTOR (3 downto 0);
	signal k_2_in :  STD_LOGIC_VECTOR (3 downto 0);
	signal k_3_in :  STD_LOGIC_VECTOR (3 downto 0);
	signal k_4_in :  STD_LOGIC_VECTOR (3 downto 0);
	signal k_5_in :  STD_LOGIC_VECTOR (3 downto 0);
	signal k_6_in :  STD_LOGIC_VECTOR (3 downto 0);
	signal k_7_in :  STD_LOGIC_VECTOR (3 downto 0);
	signal k_8_in :  STD_LOGIC_VECTOR (3 downto 0);
	signal k_9_in :  STD_LOGIC_VECTOR (3 downto 0);
	signal k_10_in :  STD_LOGIC_VECTOR (3 downto 0);
	signal k_11_in :  STD_LOGIC_VECTOR (3 downto 0);
	signal k_12_in :  STD_LOGIC_VECTOR (3 downto 0);
	signal k_13_in :  STD_LOGIC_VECTOR (3 downto 0);
	signal k_14_in :  STD_LOGIC_VECTOR (3 downto 0);
	signal k_15_in :  STD_LOGIC_VECTOR (3 downto 0);
	signal k_16_in :  STD_LOGIC_VECTOR (3 downto 0);
	signal k_17_in :  STD_LOGIC_VECTOR (3 downto 0);
	signal k_18_in :  STD_LOGIC_VECTOR (3 downto 0);
	signal k_19_in :  STD_LOGIC_VECTOR (3 downto 0);
	signal k_0_out :  STD_LOGIC_VECTOR (3 downto 0);
	signal k_1_out :  STD_LOGIC_VECTOR (3 downto 0);
	signal k_2_out :  STD_LOGIC_VECTOR (3 downto 0);
	signal k_3_out :  STD_LOGIC_VECTOR (3 downto 0);
	signal k_4_out :  STD_LOGIC_VECTOR (3 downto 0);
	signal k_5_out :  STD_LOGIC_VECTOR (3 downto 0);
	signal k_6_out :  STD_LOGIC_VECTOR (3 downto 0);
	signal k_7_out :  STD_LOGIC_VECTOR (3 downto 0);
	signal k_8_out :  STD_LOGIC_VECTOR (3 downto 0);
	signal k_9_out :  STD_LOGIC_VECTOR (3 downto 0);
	signal k_10_out :  STD_LOGIC_VECTOR (3 downto 0);
	signal k_11_out :  STD_LOGIC_VECTOR (3 downto 0);
	signal k_12_out :  STD_LOGIC_VECTOR (3 downto 0);
	signal k_13_out :  STD_LOGIC_VECTOR (3 downto 0);
	signal k_14_out :  STD_LOGIC_VECTOR (3 downto 0);
	signal k_15_out :  STD_LOGIC_VECTOR (3 downto 0);
	signal k_16_out :  STD_LOGIC_VECTOR (3 downto 0);
	signal k_17_out :  STD_LOGIC_VECTOR (3 downto 0);
	signal k_18_out :  STD_LOGIC_VECTOR (3 downto 0);
	signal k_19_out :  STD_LOGIC_VECTOR (3 downto 0);

begin

k_0_in <= key_in(79 downto 76);
k_1_in <= key_in(75 downto 72);
k_2_in <= key_in(71 downto 68);
k_3_in <= key_in(67 downto 64);
k_4_in <= key_in(63 downto 60);
k_5_in <= key_in(59 downto 56);
k_6_in <= key_in(55 downto 52);
k_7_in <= key_in(51 downto 48);
k_8_in <= key_in(47 downto 44);
k_9_in <= key_in(43 downto 40);
k_10_in <= key_in(39 downto 36);
k_11_in <= key_in(35 downto 32);
k_12_in <= key_in(31 downto 28);
k_13_in <= key_in(27 downto 24);
k_14_in <= key_in(23 downto 20);
k_15_in <= key_in(19 downto 16);
k_16_in <= key_in(15 downto 12);
k_17_in <= key_in(11 downto 8);
k_18_in <= key_in(7 downto 4);
k_19_in <= key_in(3 downto 0);

	S_BOX_0 : s_box port map (k_0_in,
									  clk,
									  s_0_out);
	S_BOX_16 : s_box port map (k_16_in,
									  clk,
									  s_16_out);
									  
	CON_LH : con_t port map (clk,
									  addr,
									  con_out);

	k_0_out <= k_4_in xor s_16_out;
	k_1_out <= k_5_in;
	k_2_out <= k_6_in;
	k_3_out <= k_7_in xor ("0" & con_out(5 downto 3));
	k_4_out <= k_8_in;
	k_5_out <= k_9_in;
	k_6_out <= k_10_in;
	k_7_out <= k_11_in;
	k_8_out <= k_12_in;
	k_9_out <= k_13_in;
	k_10_out <= k_14_in;
	k_11_out <= k_15_in;
	k_12_out <= k_16_in;
	k_13_out <= k_17_in;
	k_14_out <= k_18_in;
	k_15_out <= k_19_in xor ("0" & con_out(2 downto 0));
	k_16_out <= k_1_in xor s_0_out;
	k_17_out <= k_2_in;
	k_18_out <= k_3_in;
	k_19_out <= k_0_in;

key_out <= k_0_out & k_1_out & k_2_out & k_3_out & k_4_out & k_5_out & k_6_out & k_7_out & k_8_out & k_9_out & k_10_out & k_11_out & k_12_out & k_13_out & k_14_out & k_15_out & k_16_out & k_17_out & k_18_out & k_19_out;

end Behavioral;

