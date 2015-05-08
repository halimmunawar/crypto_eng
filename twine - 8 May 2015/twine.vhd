----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:30:26 04/02/2015 
-- Design Name: 
-- Module Name:    twine - Behavioral 
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

entity twine is
    Port ( clk : in  STD_LOGIC;
           rst_key : in  STD_LOGIC;
           rst_ed : in  STD_LOGIC;
           enc : in  STD_LOGIC;
           p_text : in  STD_LOGIC_VECTOR (63 downto 0);
			  key : in STD_LOGIC_VECTOR (79 downto 0);
           c_out : out  STD_LOGIC_VECTOR (63 downto 0);
			  addr_out_test: out STD_LOGIC_VECTOR(5 downto 0);
			  rk_out_test: out STD_LOGIC_VECTOR(31 downto 0) );
end twine;

architecture Behavioral of twine is

component keygen is
    Port ( key : in  STD_LOGIC_VECTOR (79 downto 0);
           clk : in  STD_LOGIC;
           flag : out  STD_LOGIC;
			  addr: out STD_LOGIC_VECTOR(5 downto 0);
			  rk: out STD_LOGIC_VECTOR(31 downto 0);
			  rst : in  STD_LOGIC);
end component;

component ram_t is
    Port ( clk : in  STD_LOGIC;
           rw : in  STD_LOGIC;
           data_in : in  STD_LOGIC_VECTOR (31 downto 0);
           address : in  STD_LOGIC_VECTOR (5 downto 0);
           data_out : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component ed_round is
    Port ( rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           enc : in  STD_LOGIC;
			  flag: in STD_LOGIC;
           Ptext : in  STD_LOGIC_VECTOR (63 downto 0);
           round_key : in  STD_LOGIC_VECTOR (31 downto 0);
           round_nbr : out  STD_LOGIC_VECTOR (5 downto 0);
           c_out : out  STD_LOGIC_VECTOR (63 downto 0));
end component;


signal flag: std_logic;
signal rw_ram: std_logic;
signal addr_kg: STD_LOGIC_VECTOR(5 downto 0);
signal addr_ed: STD_LOGIC_VECTOR(5 downto 0);
signal addr_ram: STD_LOGIC_VECTOR(5 downto 0);
signal rk_in: STD_LOGIC_VECTOR(31 downto 0);
signal rk_in_ram: STD_LOGIC_VECTOR(31 downto 0);
signal rk_out_ram: STD_LOGIC_VECTOR(31 downto 0);
signal rk_out: STD_LOGIC_VECTOR(31 downto 0);


begin


KEYGEN_0 :   keygen port map (key,
										clk,
										flag,
										addr_kg,
										rk_in,
										rst_key);
										
RAM_T_0 :	ram_t port map (clk,
									rw_ram,
									rk_in_ram,
									addr_ram,
									rk_out_ram);

									
ED_ROUND_0 : ed_round port map (rst_ed,
									clk,
									enc,
									flag,
									p_text,
									rk_out_ram,
									addr_ed,
									c_out);

pr_twi: process(clk)
	variable wt : std_logic :='0';
	begin
		if rising_edge(clk) then
			if flag = '0' then
				rw_ram <= '1';	
				addr_ram <=addr_kg;
				rk_in_ram <=rk_in;
			elsif flag = '1' then
				rw_ram <= '0';
				addr_ram <= addr_ed;
				--if wt = '1' then
					--rk_out <=rk_out_ram;
					rk_out_test <=rk_out_ram;
					addr_out_test <= addr_ram;
				--	wt :='0';
				--else
				--	wt :='1';
				--end if;
			end if;
--		else
--				rk_in_buf <=rk_in;
--				rk_out_test <=rk_in;
		end if;
	end process;

end Behavioral;

