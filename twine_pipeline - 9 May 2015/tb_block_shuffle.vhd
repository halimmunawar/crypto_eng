--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:07:05 05/07/2015
-- Design Name:   
-- Module Name:   C:/Users/halim/Dropbox/CryptoEng/TWINE/twine - 8 April 2015/tb_block_shuffle.vhd
-- Project Name:  twine
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: block_shuffle
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
 
ENTITY tb_block_shuffle IS
END tb_block_shuffle;
 
ARCHITECTURE behavior OF tb_block_shuffle IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT block_shuffle
    PORT(
         enc : IN  std_logic;
         a_in : IN  std_logic_vector(63 downto 0);
         a_out : OUT  std_logic_vector(63 downto 0));
    END COMPONENT;
    

   --Inputs
   signal enc : std_logic := '0';
   signal a_in : std_logic_vector(63 downto 0) := (others => '0');
   
 	--Outputs
   signal a_out : std_logic_vector(63 downto 0);
   
	-- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
	signal clock : std_logic := '0';
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: block_shuffle PORT MAP (
          enc => enc,
          a_in => a_in,
          a_out => a_out
         );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      enc <= '1';
      a_in <= X"0123456789ABCDEF";
		

      wait for clock_period;
		
		assert a_out = X"12B630947ADE58FC"
			report "bs_enc Error(0)" severity FAILURE;
--		assert a_1_out_s = X"2"
--			report "bs_enc Error(1)" severity FAILURE;
--		assert a_2_out_s = X"B"
--			report "bs_enc Error(2)" severity FAILURE;
--		assert a_3_out_s = X"6"
--			report "bs_enc Error(3)" severity FAILURE;
--		assert a_4_out_s = X"3"
--			report "bs_enc Error(4)" severity FAILURE;
--		assert a_5_out_s = X"0"
--			report "bs_enc Error(5)" severity FAILURE;
--		assert a_6_out_s = X"9"
--			report "bs_enc Error(6)" severity FAILURE;
--		assert a_7_out_s = X"4"
--			report "bs_enc Error(7)" severity FAILURE;
--		assert a_8_out_s = X"7"
--			report "bs_enc Error(8)" severity FAILURE;
--		assert a_9_out_s = X"A"
--			report "bs_enc Error(9)" severity FAILURE;
--		assert a_10_out_s = X"D"
--			report "bs_enc Error(10)" severity FAILURE;
--		assert a_11_out_s = X"E"
--			report "bs_enc Error(11)" severity FAILURE;
--		assert a_12_out_s = X"5"
--			report "bs_enc Error(12)" severity FAILURE;
--		assert a_13_out_s = X"8"
--			report "bs_enc Error(13)" severity FAILURE;
--		assert a_14_out_s = X"F"
--			report "bs_enc Error(14)" severity FAILURE;
--		assert a_15_out_s = X"C"
--			report "bs_enc Error(15)" severity FAILURE;
      wait;
   end process;

END;
