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
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

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
           round_nbr : out  STD_LOGIC_VECTOR (5 downto 0);
           c_out : out  STD_LOGIC_VECTOR (63 downto 0));
end ed_round;

architecture Behavioral of ed_round is

component round_f is 
	Port ( clk : in std_logic;
			  a_in : in  STD_LOGIC_VECTOR (63 downto 0);
			  k_mux : in  STD_LOGIC_VECTOR (31 downto 0);
           a_out : out  STD_LOGIC_VECTOR (63 downto 0));
end component;

component block_shuffle is 
	Port ( enc : in  STD_LOGIC;
           a_in : in  STD_LOGIC_VECTOR (63 downto 0);
			  a_out : out  STD_LOGIC_VECTOR (63 downto 0));
end component;

signal a_in: std_logic_vector (63 downto 0);
signal a_out_s: std_logic_vector (63 downto 0);
signal a_out: std_logic_vector (63 downto 0);

signal rnd_count : std_logic_vector(5 downto 0);
signal rst_buf : std_logic := '0';

signal rw_s: std_logic;
signal data_in_s: std_logic_vector (31 downto 0);
signal round_key_s: std_logic_vector (31 downto 0);

begin



ROUND_F_0 : round_f  port map(clk, 
										a_in,
										round_key,
										a_out_s);
c_out <= a_out_s;

BLOCK_SHUFFLE_0 :   block_shuffle port map (enc,
										a_out_s,
										a_out);
										
pr_edround: process(clk)
	variable wt : std_logic_vector (5 downto 0) :="000000";
	variable rnd_count : std_logic_vector (5 downto 0);
	begin
		if rising_edge(clk) and flag='1' then
			if rst = '1' then
				a_in <= Ptext;
				if enc = '1' then
					rnd_count :="000000"; --<= (OTHERS => '0');
				else
					rnd_count := "100011";
				end if;
			else			
				if(enc = '1' and rnd_count /= "100011")  then
					rnd_count := std_logic_vector( unsigned(rnd_count) + 1 ) ;
				end if;
				if(rnd_count /= "000000" and enc = '0') then				
					rnd_count := std_logic_vector( unsigned(rnd_count) - 1 ) ;  
				end if;
				if wt > "000001" and wt < "100101" then
					a_in <= a_out;
					wt:=std_logic_vector( unsigned(wt) + 1 );
				else
					wt:=std_logic_vector( unsigned(wt) + 1 );
				end if;
			end if;
			round_nbr <= rnd_count;
		end if;
	end process;
	
end Behavioral;

