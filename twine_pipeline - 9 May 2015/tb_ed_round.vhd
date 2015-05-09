--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:26:46 05/07/2015
-- Design Name:   
-- Module Name:   C:/Users/halim/Dropbox/CryptoEng/TWINE/twine - 8 April 2015/tb_ed_round.vhd
-- Project Name:  twine
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ed_round
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
 
ENTITY tb_ed_round IS
END tb_ed_round;
 
ARCHITECTURE behavior OF tb_ed_round IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ed_round
    PORT(
         rst : IN  std_logic;
         clk : IN  std_logic;
         enc : IN  std_logic;
         flag : IN  std_logic;
         Ptext : IN  std_logic_vector(63 downto 0);
         round_key : IN  std_logic_vector(31 downto 0);
         round_nbr : OUT  std_logic_vector(5 downto 0);
         c_out : OUT  std_logic_vector(63 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';
   signal enc : std_logic := '0';
   signal flag : std_logic := '0';
   signal Ptext : std_logic_vector(63 downto 0) := (others => '0');
   signal round_key : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal round_nbr : std_logic_vector(5 downto 0);
   signal c_out : std_logic_vector(63 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ed_round PORT MAP (
          rst => rst,
          clk => clk,
          enc => enc,
          flag => flag,
          Ptext => Ptext,
          round_key => round_key,
          round_nbr => round_nbr,
          c_out => c_out
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
      enc <= '0';
		rst <= '1';
		flag <= '1';
		Ptext <= X"2bde51c88008f6b4";
		round_key <= X"11111111";
      
		wait for clk_period;
		rst <= '0';
--		assert round_nbr = "000000"
--			report "ed_round Error(0)" severity FAILURE;
		wait for clk_period;
--		assert round_nbr = "000001"
--			report "ed_round Error(1)" severity FAILURE;
		wait for clk_period;
--		assert round_nbr = "000010"
--			report "ed_round Error(2)" severity FAILURE;
		wait for clk_period;
--		assert round_nbr = "000011"
--			report "ed_round Error(3)" severity FAILURE;
		wait for clk_period;
--		assert round_nbr = "000100"
--			report "ed_round Error(4)" severity FAILURE;
		wait for clk_period;
--		assert round_nbr = "000101"
--			report "ed_round Error(5)" severity FAILURE;
		wait for clk_period;
--		assert round_nbr = "000110"
--			report "ed_round Error(6)" severity FAILURE;
		wait for clk_period;
--		assert round_nbr = "000111"
--			report "ed_round Error(7)" severity FAILURE;
		wait for clk_period;
--		assert round_nbr = "001000"
--			report "ed_round Error(8)" severity FAILURE;
		wait for clk_period;
--		assert round_nbr = "001001"
--			report "ed_round Error(9)" severity FAILURE;
		wait for clk_period;
--		assert round_nbr = "001010"
--			report "ed_round Error(10)" severity FAILURE;
		wait for clk_period;
--		assert round_nbr = "001011"
--			report "ed_round Error(11)" severity FAILURE;
		wait for clk_period;
--		assert round_nbr = "001100"
--			report "ed_round Error(12)" severity FAILURE;
		wait for clk_period;
--		assert round_nbr = "001101"
--			report "ed_round Error(13)" severity FAILURE;
		wait for clk_period;
--		assert round_nbr = "001110"
--			report "ed_round Error(14)" severity FAILURE;
		wait for clk_period;
--		assert round_nbr = "001111"
--			report "ed_round Error(15)" severity FAILURE;
		wait for clk_period;
		wait for clk_period;
--		assert round_nbr = "010001"
--			report "ed_round Error(17)" severity FAILURE;
		wait for clk_period;
		wait for clk_period;
		wait for clk_period;
		wait for clk_period;
		wait for clk_period;
		wait for clk_period;
		wait for clk_period;
		wait for clk_period;
		wait for clk_period;
		wait for clk_period;
		wait for clk_period;
		wait for clk_period;
		wait for clk_period;
		wait for clk_period;
		wait for clk_period;
		wait for clk_period;
		wait for clk_period;
		wait for clk_period;
--		assert round_nbr = "100011"
--			report "ed_round Error(35)" severity FAILURE;
   end process;

END;
