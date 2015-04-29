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
    Port ( clk : in  STD_LOGIC;
           addr : in  STD_LOGIC_VECTOR (5 downto 0);
           k_0_in : in  STD_LOGIC_VECTOR (3 downto 0);
           k_1_in : in  STD_LOGIC_VECTOR (3 downto 0);
           k_2_in : in  STD_LOGIC_VECTOR (3 downto 0);
           k_3_in : in  STD_LOGIC_VECTOR (3 downto 0);
           k_4_in : in  STD_LOGIC_VECTOR (3 downto 0);
           k_5_in : in  STD_LOGIC_VECTOR (3 downto 0);
           k_6_in : in  STD_LOGIC_VECTOR (3 downto 0);
           k_7_in : in  STD_LOGIC_VECTOR (3 downto 0);
           k_8_in : in  STD_LOGIC_VECTOR (3 downto 0);
           k_9_in : in  STD_LOGIC_VECTOR (3 downto 0);
           k_10_in : in  STD_LOGIC_VECTOR (3 downto 0);
           k_11_in : in  STD_LOGIC_VECTOR (3 downto 0);
           k_12_in : in  STD_LOGIC_VECTOR (3 downto 0);
           k_13_in : in  STD_LOGIC_VECTOR (3 downto 0);
           k_14_in : in  STD_LOGIC_VECTOR (3 downto 0);
           k_15_in : in  STD_LOGIC_VECTOR (3 downto 0);
           k_16_in : in  STD_LOGIC_VECTOR (3 downto 0);
           k_17_in : in  STD_LOGIC_VECTOR (3 downto 0);
           k_18_in : in  STD_LOGIC_VECTOR (3 downto 0);
           k_19_in : in  STD_LOGIC_VECTOR (3 downto 0);
           k_0_out : out  STD_LOGIC_VECTOR (3 downto 0);
           k_1_out : out  STD_LOGIC_VECTOR (3 downto 0);
           k_2_out : out  STD_LOGIC_VECTOR (3 downto 0);
           k_3_out : out  STD_LOGIC_VECTOR (3 downto 0);
           k_4_out : out  STD_LOGIC_VECTOR (3 downto 0);
           k_5_out : out  STD_LOGIC_VECTOR (3 downto 0);
           k_6_out : out  STD_LOGIC_VECTOR (3 downto 0);
           k_7_out : out  STD_LOGIC_VECTOR (3 downto 0);
           k_8_out : out  STD_LOGIC_VECTOR (3 downto 0);
           k_9_out : out  STD_LOGIC_VECTOR (3 downto 0);
           k_10_out : out  STD_LOGIC_VECTOR (3 downto 0);
           k_11_out : out  STD_LOGIC_VECTOR (3 downto 0);
           k_12_out : out  STD_LOGIC_VECTOR (3 downto 0);
           k_13_out : out  STD_LOGIC_VECTOR (3 downto 0);
           k_14_out : out  STD_LOGIC_VECTOR (3 downto 0);
           k_15_out : out  STD_LOGIC_VECTOR (3 downto 0);
           k_16_out : out  STD_LOGIC_VECTOR (3 downto 0);
           k_17_out : out  STD_LOGIC_VECTOR (3 downto 0);
           k_18_out : out  STD_LOGIC_VECTOR (3 downto 0);
           k_19_out : out  STD_LOGIC_VECTOR (3 downto 0));
end round_k;

architecture Behavioral of round_k is

component s_box is 
	Port ( addr : in  STD_LOGIC_VECTOR (3 downto 0);
				clk : in std_logic;
           dout : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

begin


end Behavioral;

