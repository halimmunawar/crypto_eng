--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:14:20 05/08/2015
-- Design Name:   
-- Module Name:   H:/smt_2/cryptography_engineering/final assignment/crypto_eng/twine - 8 May 2015/tb_dpram.vhd
-- Project Name:  twine
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: dpram
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_dpram IS
END tb_dpram;
 
ARCHITECTURE behavior OF tb_dpram IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT dpram
    PORT(
         clk : IN  std_logic;
         data_in_a : IN  std_logic_vector(31 downto 0);
         rw_a : IN  std_logic;
         address_a : IN  std_logic_vector(5 downto 0);
         address_b : IN  std_logic_vector(5 downto 0);
         data_out_b : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal data_in_a : std_logic_vector(31 downto 0) := (others => '0');
   signal rw_a : std_logic := '0';
   signal address_a : std_logic_vector(5 downto 0) := (others => '0');
   signal address_b : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal data_out_b : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: dpram PORT MAP (
          clk => clk,
          data_in_a => data_in_a,
          rw_a => rw_a,
          address_a => address_a,
          address_b => address_b,
          data_out_b => data_out_b
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
			rw_a <= '1';
			address_a <= "00" & X"0";
			data_in_a <= X"A" & X"A" & X"A" & X"A" & X"A" & X"A" & X"A" & X"A";
			
			wait for clk_period;
			
			address_a <= "00" & X"1";
			data_in_a <= X"B" & X"B" & X"B" & X"B" & X"B" & X"B" & X"B" & X"B";
			
			wait for clk_period;
			
			address_a <= "00" & X"2";
			data_in_a <= X"C" & X"C" & X"C" & X"C" & X"C" & X"C" & X"C" & X"C";
			
			wait for clk_period;
			rw_a <= '0';
			address_b <= "00" & X"0";
			
			wait for clk_period;
			
			assert data_out_b = X"AAAAAAAA"
			report "RAM_t Error B(0)" severity FAILURE;
			
			wait for clk_period;
			
			address_b <= "00" & X"1";
			
			wait for clk_period;
			
			assert data_out_b = X"BBBBBBBB"
			report "RAM_t Error B(1)" severity FAILURE;
   
	end process;

END;
