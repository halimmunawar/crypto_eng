----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:09:34 04/02/2015 
-- Design Name: 
-- Module Name:    round_f_0 - Behavioral 
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

entity round_f is
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
end round_f;

architecture Behavioral of round_f is

signal b_0_s : std_logic_vector(3 downto 0);
signal b_1_s : std_logic_vector(3 downto 0);
signal b_2_s : std_logic_vector(3 downto 0);
signal b_3_s : std_logic_vector(3 downto 0);
signal b_4_s : std_logic_vector(3 downto 0);
signal b_5_s : std_logic_vector(3 downto 0);
signal b_6_s : std_logic_vector(3 downto 0);
signal b_7_s : std_logic_vector(3 downto 0);

signal c_0_s : std_logic_vector(3 downto 0);
signal c_1_s : std_logic_vector(3 downto 0);
signal c_2_s : std_logic_vector(3 downto 0);
signal c_3_s : std_logic_vector(3 downto 0);
signal c_4_s : std_logic_vector(3 downto 0);
signal c_5_s : std_logic_vector(3 downto 0);
signal c_6_s : std_logic_vector(3 downto 0);
signal c_7_s : std_logic_vector(3 downto 0);

component s_box is 
	Port ( addr : in  STD_LOGIC_VECTOR (3 downto 0);
				clk : in std_logic;
           dout : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

begin
	a_0_out_s <= a_0_in_s;
	a_2_out_s <= a_2_in_s;
	a_4_out_s <= a_4_in_s;
	a_6_out_s <= a_6_in_s;
	a_8_out_s <= a_8_in_s;
	a_10_out_s <= a_10_in_s;
	a_12_out_s <= a_12_in_s;
	a_14_out_s <= a_14_in_s;
	
	b_0_s <= a_0_in_s xor k_0_mux_s;
	b_1_s <= a_2_in_s xor k_1_mux_s;
	b_2_s <= a_4_in_s xor k_2_mux_s;
	b_3_s <= a_6_in_s xor k_3_mux_s;
	b_4_s <= a_8_in_s xor k_4_mux_s;
	b_5_s <= a_10_in_s xor k_5_mux_s;
	b_6_s <= a_12_in_s xor k_6_mux_s;
	b_7_s <= a_14_in_s xor k_7_mux_s;
	
	S_BOX_0 : s_box port map (b_0_s,
									  clk,
									  c_0_s);
	S_BOX_1 : s_box port map (b_1_s,
									  clk,
									  c_1_s);
	S_BOX_2 : s_box port map (b_2_s,
									  clk,
									  c_2_s);
	S_BOX_3 : s_box port map (b_3_s,
									  clk,
									  c_3_s);
	S_BOX_4 : s_box port map (b_4_s,
									  clk,
									  c_4_s);
	S_BOX_5 : s_box port map (b_5_s,
									  clk,
									  c_5_s);
	S_BOX_6 : s_box port map (b_6_s,
									  clk,
									  c_6_s);
	S_BOX_7 : s_box port map (b_7_s,
									  clk,
									  c_7_s);
	
	a_1_out_s <= a_1_in_s xor c_0_s;
	a_3_out_s <= a_3_in_s xor c_1_s;
	a_5_out_s <= a_5_in_s xor c_2_s;
	a_7_out_s <= a_7_in_s xor c_3_s;
	a_9_out_s <= a_9_in_s xor c_4_s;
	a_11_out_s <= a_11_in_s xor c_5_s;
	a_13_out_s <= a_13_in_s xor c_6_s;
	a_15_out_s <= a_15_in_s xor c_7_s;

end Behavioral;