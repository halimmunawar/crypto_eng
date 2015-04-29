--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:59:03 04/07/2015
-- Design Name:   
-- Module Name:   C:/Users/halim/Dropbox/CryptoEng/TWINE/twine - 7 April 2015/tb_ram_t.vhd
-- Project Name:  twine
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ram_t
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
 
ENTITY tb_ram_t IS
END tb_ram_t;
 
ARCHITECTURE behavior OF tb_ram_t IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ram_t
    PORT(
         clk : IN  std_logic;
         rw : IN  std_logic;
         data_in : IN  std_logic_vector(31 downto 0);
         address : IN  std_logic_vector(5 downto 0);
         data_out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rw : std_logic := '0';
   signal data_in : std_logic_vector(31 downto 0) := (others => '0');
   signal address : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal data_out : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ram_t PORT MAP (
          clk => clk,
          rw => rw,
          data_in => data_in,
          address => address,
          data_out => data_out
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
			address <= "00" & X"0";
			rw <= '1';
			data_in <= X"A" & X"A" & X"A" & X"A" & X"A" & X"A" & X"A" & X"A";
			
			wait for clk_period;
			
			address <= "00" & X"1";
			data_in <= X"B" & X"B" & X"B" & X"B" & X"B" & X"B" & X"B" & X"B";
			
			wait for clk_period;
			
			address <= "00" & X"2";
			data_in <= X"C" & X"C" & X"C" & X"C" & X"C" & X"C" & X"C" & X"C";
			
			wait for clk_period;
			
			address <= "00" & X"0";
			
			wait for clk_period;
			
			
			assert data_out = X"A" & X"A" & X"A" & X"A" & X"A" & X"A" & X"A" & X"A"
			report "RAM_t Error(0)" severity FAILURE;
			
			wait for clk_period;
			address <= "00" & X"1";
			
			wait for clk_period;
			assert data_out = X"B" & X"B" & X"B" & X"B" & X"B" & X"B" & X"B" & X"B"
			report "RAM_t Error(1)" severity FAILURE;

   end process;

END;
