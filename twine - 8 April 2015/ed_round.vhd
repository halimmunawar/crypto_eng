----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:43:16 04/08/2015 
-- Design Name: 
-- Module Name:    ed_round - Behavioral 
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

entity ed_round is
    Port ( rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           enc : in  STD_LOGIC;
			  flag: in STD_LOGIC;
           Ptext : in  STD_LOGIC_VECTOR (63 downto 0);
           round_key : in  STD_LOGIC_VECTOR (31 downto 0);
           round_nbr : in  STD_LOGIC_VECTOR (5 downto 0);
           c_out : in  STD_LOGIC_VECTOR (63 downto 0));
end ed_round;

architecture Behavioral of ed_round is
component round_f is 
	Port ( clk : in std_logic;
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
			  k_0_mux_s : in  STD_LOGIC_VECTOR (3 downto 0);
           k_1_mux_s : in  STD_LOGIC_VECTOR (3 downto 0);
			  k_2_mux_s : in  STD_LOGIC_VECTOR (3 downto 0);
           k_3_mux_s : in  STD_LOGIC_VECTOR (3 downto 0);
			  k_4_mux_s : in  STD_LOGIC_VECTOR (3 downto 0);
           k_5_mux_s : in  STD_LOGIC_VECTOR (3 downto 0);
			  k_6_mux_s : in  STD_LOGIC_VECTOR (3 downto 0);
           k_7_mux_s : in  STD_LOGIC_VECTOR (3 downto 0);
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
end component;

component block_shuffle is 
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
end component;

signal a_in: std_logic_vector (63 downto 0);
signal a_0_in_s: std_logic_vector (3 downto 0);
signal a_1_in_s: std_logic_vector (3 downto 0);
signal a_2_in_s: std_logic_vector (3 downto 0);
signal a_3_in_s: std_logic_vector (3 downto 0);
signal a_4_in_s: std_logic_vector (3 downto 0);
signal a_5_in_s: std_logic_vector (3 downto 0);
signal a_6_in_s: std_logic_vector (3 downto 0);
signal a_7_in_s: std_logic_vector (3 downto 0);
signal a_8_in_s: std_logic_vector (3 downto 0);
signal a_9_in_s: std_logic_vector (3 downto 0);
signal a_10_in_s: std_logic_vector (3 downto 0);
signal a_11_in_s: std_logic_vector (3 downto 0);
signal a_12_in_s: std_logic_vector (3 downto 0);
signal a_13_in_s: std_logic_vector (3 downto 0);
signal a_14_in_s: std_logic_vector (3 downto 0);
signal a_15_in_s: std_logic_vector (3 downto 0);
signal a_0_out_s: std_logic_vector (3 downto 0);
signal a_1_out_s: std_logic_vector (3 downto 0);
signal a_2_out_s: std_logic_vector (3 downto 0);
signal a_3_out_s: std_logic_vector (3 downto 0);
signal a_4_out_s: std_logic_vector (3 downto 0);
signal a_5_out_s: std_logic_vector (3 downto 0);
signal a_6_out_s: std_logic_vector (3 downto 0);
signal a_7_out_s: std_logic_vector (3 downto 0);
signal a_8_out_s: std_logic_vector (3 downto 0);
signal a_9_out_s: std_logic_vector (3 downto 0);
signal a_10_out_s: std_logic_vector (3 downto 0);
signal a_11_out_s: std_logic_vector (3 downto 0);
signal a_12_out_s: std_logic_vector (3 downto 0);
signal a_13_out_s: std_logic_vector (3 downto 0);
signal a_14_out_s: std_logic_vector (3 downto 0);
signal a_15_out_s: std_logic_vector (3 downto 0);
signal a_0_out: std_logic_vector (3 downto 0);
signal a_1_out: std_logic_vector (3 downto 0);
signal a_2_out: std_logic_vector (3 downto 0);
signal a_3_out: std_logic_vector (3 downto 0);
signal a_4_out: std_logic_vector (3 downto 0);
signal a_5_out: std_logic_vector (3 downto 0);
signal a_6_out: std_logic_vector (3 downto 0);
signal a_7_out: std_logic_vector (3 downto 0);
signal a_8_out: std_logic_vector (3 downto 0);
signal a_9_out: std_logic_vector (3 downto 0);
signal a_10_out: std_logic_vector (3 downto 0);
signal a_11_out: std_logic_vector (3 downto 0);
signal a_12_out: std_logic_vector (3 downto 0);
signal a_13_out: std_logic_vector (3 downto 0);
signal a_14_out: std_logic_vector (3 downto 0);
signal a_15_out: std_logic_vector (3 downto 0);

signal a_out: std_logic_vector (63 downto 0);

signal key_0: std_logic_vector (3 downto 0);
signal key_1: std_logic_vector (3 downto 0);
signal key_2: std_logic_vector (3 downto 0);
signal key_3: std_logic_vector (3 downto 0);
signal key_4: std_logic_vector (3 downto 0);
signal key_5: std_logic_vector (3 downto 0);
signal key_6: std_logic_vector (3 downto 0);
signal key_7: std_logic_vector (3 downto 0);

signal rnd_count : std_logic_vector(5 downto 0) := "000000";

begin

a_0_in_s <= a_in(63 downto 60);
a_1_in_s <= a_in(59 downto 56);
a_2_in_s <= a_in(55 downto 52);
a_3_in_s <= a_in(51 downto 48);
a_4_in_s <= a_in(47 downto 44);
a_5_in_s <= a_in(43 downto 40);
a_6_in_s <= a_in(39 downto 36);
a_7_in_s <= a_in(35 downto 32);
a_8_in_s <= a_in(31 downto 28);
a_9_in_s <= a_in(27 downto 24);
a_10_in_s <= a_in(23 downto 20);
a_11_in_s <= a_in(19 downto 16);
a_12_in_s <= a_in(15 downto 12);
a_13_in_s <= a_in(11 downto 8);
a_14_in_s <= a_in(7 downto 4);
a_15_in_s <= a_in(3 downto 0);

round_nbr <= rnd_count;

key_0 <= round_key(31 downto 28);
key_1 <= round_key(27 downto 24);
key_2 <= round_key(23 downto 20);
key_3 <= round_key(19 downto 16);
key_4 <= round_key(15 downto 12);
key_5 <= round_key(11 downto 8);
key_6 <= round_key(7 downto 4);
key_7 <= round_key(3 downto 0);

ROUND_F_0 : round_f  port map(clk, 
										a_0_in_s,
										a_1_in_s,
										a_2_in_s,
										a_3_in_s,
										a_4_in_s,
										a_5_in_s,
										a_6_in_s,
										a_7_in_s,
										a_8_in_s,
										a_9_in_s,
										a_10_in_s,
										a_11_in_s,
										a_12_in_s,
										a_13_in_s,
										a_14_in_s,
										a_15_in_s,
										key_0,
										key_1,
										key_2,
										key_3,
										key_4,
										key_5,
										key_6,
										key_7,
										a_0_out_s,
										a_1_out_s,
										a_2_out_s,
										a_3_out_s,
										a_4_out_s,
										a_5_out_s,
										a_6_out_s,
										a_7_out_s,
										a_8_out_s,
										a_9_out_s,
										a_10_out_s,
										a_11_out_s,
										a_12_out_s,
										a_13_out_s,
										a_14_out_s,
										a_15_out_s);

c_out <= a_0_out_s & a_1_out_s & a_2_out_s & a_3_out_s & a_4_out_s & a_5_out_s & a_6_out_s & a_7_out_s & a_8_out_s & a_9_out_s & a_10_out_s & a_11_out_s & a_12_out_s & a_13_out_s & a_14_out_s & a_15_out_s;

BLOCK_SHUFFLE_0 :   block_shuffle port map (enc,
										a_0_out_s,
										a_1_out_s,
										a_2_out_s,
										a_3_out_s,
										a_4_out_s,
										a_5_out_s,
										a_6_out_s,
										a_7_out_s,
										a_8_out_s,
										a_9_out_s,
										a_10_out_s,
										a_11_out_s,
										a_12_out_s,
										a_13_out_s,
										a_14_out_s,
										a_15_out_s,
										a_0_out,
										a_1_out,
										a_2_out,
										a_3_out,
										a_4_out,
										a_5_out,
										a_6_out,
										a_7_out,
										a_8_out,
										a_9_out,
										a_10_out,
										a_11_out,
										a_12_out,
										a_13_out,
										a_14_out,
										a_15_out);

a_out <= a_0_out & a_1_out & a_2_out & a_3_out & a_4_out & a_5_out & a_6_out & a_7_out &a_8_out & a_9_out & a_10_out & a_11_out &a_12_out & a_13_out & a_14_out & a_15_out;

pr_ed_round: process(clk, rst, enc, rnd_count)
	begin
		if rising_edge(clk) and flag = '1' then
			if rst = '1' then
				a_in <= p_text;
				rnd_count <= 0;
			else
				a_in <= a_out;
				rnd_count <= rnd_count + 1;
			end if;
		end if;
	end process;

end Behavioral;
