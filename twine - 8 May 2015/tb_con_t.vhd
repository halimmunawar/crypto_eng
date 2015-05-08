--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:29:47 04/02/2015
-- Design Name:   
-- Module Name:   H:/smt_2/cryptography_engineering/final assignment/twine/tb_con_t.vhd
-- Project Name:  twine
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: con_t
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
 
ENTITY tb_con_t IS
END tb_con_t;
 
ARCHITECTURE behavior OF tb_con_t IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT con_t
    PORT(
         clk : IN  std_logic;
         addr : IN  std_logic_vector(5 downto 0);
         dout : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal addr : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal dout : std_logic_vector(5 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: con_t PORT MAP (
          clk => clk,
          addr => addr,
          dout => dout
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
     addr <= "00" & X"1";

      wait for clk_period;

		assert dout = "00" & X"1"
			report "CON_T Error(1)" severity FAILURE;

      wait for clk_period;
		addr <= "00" & X"2";

      wait for clk_period;

		assert dout = "00" & X"2"
			report "CON_T Error(2)" severity FAILURE;

      wait for clk_period;
		addr <= "00" & X"3";

      wait for clk_period;

		assert dout = "00" & X"4"
			report "CON_T Error(3)" severity FAILURE;

      wait for clk_period;
		addr <= "00" & X"4";

      wait for clk_period;

		assert dout = "00" & X"8"
			report "CON_T Error(4)" severity FAILURE;

      wait for clk_period;
		addr <= "00" & X"5";

      wait for clk_period;

		assert dout = "01" & X"0"
			report "CON_T Error(5)" severity FAILURE;

      wait for clk_period;
		addr <= "00" & X"6";

      wait for clk_period;

		assert dout = "10" & X"0"
			report "CON_T Error(6)" severity FAILURE;

      wait for clk_period;
		addr <= "00" & X"7";

      wait for clk_period;

		assert dout = "00" & X"3"
			report "CON_T Error(7)" severity FAILURE;

      wait for clk_period;
		addr <= "00" & X"8";

      wait for clk_period;

		assert dout = "00" & X"6"
			report "CON_T Error(8)" severity FAILURE;

      wait for clk_period;
		addr <= "00" & X"9";

      wait for clk_period;

		assert dout = "00" & X"C"
			report "CON_T Error(9)" severity FAILURE;

      wait for clk_period;
		addr <= "00" & X"A";

      wait for clk_period;

		assert dout = "01" & X"8"
			report "CON_T Error(10)" severity FAILURE;

      wait for clk_period;
		addr <= "00" & X"B";

      wait for clk_period;

		assert dout = "11" & X"0"
			report "CON_T Error(11)" severity FAILURE;

      wait for clk_period;
		addr <= "00" & X"C";

      wait for clk_period;

		assert dout = "10" & X"3"
			report "CON_T Error(12)" severity FAILURE;

      wait for clk_period;
		addr <= "00" & X"D";

      wait for clk_period;

		assert dout = "00" & X"5"
			report "CON_T Error(13)" severity FAILURE;

      wait for clk_period;
		addr <= "00" & X"E";

      wait for clk_period;

		assert dout = "00" & X"A"
			report "CON_T Error(14)" severity FAILURE;

      wait for clk_period;
		addr <= "00" & X"F";

      wait for clk_period;

		assert dout = "01" & X"4"
			report "CON_T Error(15)" severity FAILURE;

      wait for clk_period;
		addr <= "01" & X"0";

      wait for clk_period;

		assert dout = "10" & X"8"
			report "CON_T Error(16)" severity FAILURE;

      wait for clk_period;
		addr <= "01" & X"1";

      wait for clk_period;

		assert dout = "01" & X"3"
			report "CON_T Error(17)" severity FAILURE;

      wait for clk_period;
		addr <= "01" & X"2";

      wait for clk_period;

		assert dout = "10" & X"6"
			report "CON_T Error(18)" severity FAILURE;

      wait for clk_period;
		addr <= "01" & X"3";

      wait for clk_period;

		assert dout = "00" & X"F"
			report "CON_T Error(19)" severity FAILURE;

      wait for clk_period;
		addr <= "01" & X"4";

      wait for clk_period;

		assert dout = "01" & X"E"
			report "CON_T Error(20)" severity FAILURE;

      wait for clk_period;
		addr <= "01" & X"5";

      wait for clk_period;

		assert dout = "11" & X"C"
			report "CON_T Error(21)" severity FAILURE;

      wait for clk_period;
		addr <= "01" & X"6";

      wait for clk_period;

		assert dout = "11" & X"B"
			report "CON_T Error(22)" severity FAILURE;

      wait for clk_period;
		addr <= "01" & X"7";

      wait for clk_period;

		assert dout = "11" & X"5"
			report "CON_T Error(23)" severity FAILURE;

      wait for clk_period;
		addr <= "01" & X"8";

      wait for clk_period;

		assert dout = "10" & X"9"
			report "CON_T Error(24)" severity FAILURE;

      wait for clk_period;
		addr <= "01" & X"9";

      wait for clk_period;

		assert dout = "01" & X"1"
			report "CON_T Error(25)" severity FAILURE;

      wait for clk_period;
		addr <= "01" & X"A";

      wait for clk_period;

		assert dout = "10" & X"2"
			report "CON_T Error(26)" severity FAILURE;

      wait for clk_period;
		addr <= "01" & X"B";

      wait for clk_period;

		assert dout = "00" & X"7"
			report "CON_T Error(27)" severity FAILURE;

      wait for clk_period;
		addr <= "01" & X"C";

      wait for clk_period;

		assert dout = "00" & X"E"
			report "CON_T Error(28)" severity FAILURE;

      wait for clk_period;
		addr <= "01" & X"D";

      wait for clk_period;

		assert dout = "01" & X"C"
			report "CON_T Error(29)" severity FAILURE;

      wait for clk_period;
		addr <= "01" & X"E";

      wait for clk_period;

		assert dout = "11" & X"8"
			report "CON_T Error(30)" severity FAILURE;

      wait for clk_period;
		addr <= "01" & X"F";

      wait for clk_period;

		assert dout = "11" & X"3"
			report "CON_T Error(31)" severity FAILURE;

      wait for clk_period;
		addr <= "10" & X"0";

      wait for clk_period;

		assert dout = "10" & X"5"
			report "CON_T Error(32)" severity FAILURE;

      wait for clk_period;
		addr <= "10" & X"1";

      wait for clk_period;

		assert dout = "00" & X"9"
			report "CON_T Error(33)" severity FAILURE;

      wait for clk_period;
		addr <= "10" & X"2";

      wait for clk_period;

		assert dout = "01" & X"2"
			report "CON_T Error(34)" severity FAILURE;

      wait for clk_period;
		addr <= "10" & X"3";

      wait for clk_period;

		assert dout = "10" & X"4"
			report "CON_T Error(35)" severity FAILURE;

      wait for clk_period;
		addr <= "10" & X"4";

      wait for clk_period;

		assert dout = "00" & X"B"
			report "CON_T Error(36)" severity FAILURE;

      wait for clk_period;
   end process;

END;
