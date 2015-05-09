----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:06:27 04/07/2015 
-- Design Name: 
-- Module Name:    keygen - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity keygen is
    Port ( key : in  STD_LOGIC_VECTOR (79 downto 0);
           clk : in  STD_LOGIC;
           flag : out  STD_LOGIC;
			  addr: out STD_LOGIC_VECTOR(5 downto 0);
			  rk: out STD_LOGIC_VECTOR(31 downto 0);
			  rst : in  STD_LOGIC);
end keygen;

architecture Behavioral of keygen is

component round_k is 
	Port ( clk : in std_logic;
			  addr: in STD_LOGIC_VECTOR (5 downto 0);
			  key_in : in  STD_LOGIC_VECTOR (79 downto 0);
			  key_out : out  STD_LOGIC_VECTOR (79 downto 0));
			  
end component;

signal key_in :  STD_LOGIC_VECTOR (79 downto 0);
signal key_out_s :  STD_LOGIC_VECTOR (79 downto 0);


signal count : STD_LOGIC_VECTOR (5 downto 0);

signal rk_0 :  STD_LOGIC_VECTOR (3 downto 0);
signal rk_1 :  STD_LOGIC_VECTOR (3 downto 0);
signal rk_2 :  STD_LOGIC_VECTOR (3 downto 0);
signal rk_3 :  STD_LOGIC_VECTOR (3 downto 0);
signal rk_4 :  STD_LOGIC_VECTOR (3 downto 0);
signal rk_5 :  STD_LOGIC_VECTOR (3 downto 0);
signal rk_6 :  STD_LOGIC_VECTOR (3 downto 0);
signal rk_7 :  STD_LOGIC_VECTOR (3 downto 0);

begin

ROUND_K_0 : round_k  port map(clk,
										count,
										key_in,
										key_out_s		
										);
										

rk_0 <= key_in(75 downto 72);
rk_1 <= key_in(67 downto 64);
rk_2 <= key_in(63 downto 60);
rk_3 <= key_in(55 downto 52);
rk_4 <= key_in(27 downto 24);
rk_5 <= key_in(23 downto 20);
rk_6 <= key_in(19 downto 16);
rk_7 <= key_in(15 downto 12);


rk <= rk_0 & rk_1 & rk_2 & rk_3 & rk_4 & rk_5 & rk_6 & rk_7;

										
pr_ky: process(clk,rst)
	variable var : std_logic_vector (5 downto 0):= "111111";
	variable wt : std_logic :='0';
	begin
	   if rst = '1' then
			var:="111111";
			wt := '0';
		end if;
		if rising_edge(clk) then
--			if wt = '0' then
				if var = "111111" then
					var := "000000";
					key_in <= key;
					flag <='0';
				elsif var < "100011" then
					key_in <= key_out_s;
					var := std_logic_vector( unsigned(var) + 1 );
					flag <='0';
				else
					flag <= '1';
				end if;
				count <=var;
				addr <= var;
				wt :='1';
--			else
--				wt:='0';
--			end if;
		end if;
	end process;

end Behavioral;

