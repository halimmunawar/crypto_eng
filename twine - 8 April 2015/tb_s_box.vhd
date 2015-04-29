--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:34:04 04/02/2015
-- Design Name:   
-- Module Name:   H:/smt_2/cryptography_engineering/final assignment/twine/tb_s_box.vhd
-- Project Name:  twine
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: s_box
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
 
ENTITY tb_s_box IS
END tb_s_box;
 
ARCHITECTURE behavior OF tb_s_box IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT s_box
    PORT(
         addr : IN  std_logic_vector(3 downto 0);
			clk  : IN std_logic;
         dout : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal addr : std_logic_vector(3 downto 0) := (others => '0');
	signal clk : std_logic := '0';

 	--Outputs
   signal dout : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: s_box PORT MAP (
          addr => addr,
          dout => dout,
			 clk => clk
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
		

      wait for clk_period;
		addr <= X"0";
		assert dout = X"C"
			report "S_BOX Error(0)" severity FAILURE;

      wait for clk_period;
		
      wait for clk_period;
		addr <= X"1";

		assert dout = X"0"
			report "S_BOX Error(1)" severity FAILURE;

      wait for clk_period;
		

      wait for clk_period;
		addr <= X"2";
		assert dout = X"F"
			report "S_BOX Error(2)" severity FAILURE;

      wait for clk_period;
		addr <= X"3";

      wait for clk_period;

		assert dout = X"A"
			report "S_BOX Error(3)" severity FAILURE;

      wait for clk_period;
		addr <= X"4";

      wait for clk_period;

		assert dout = X"2"
			report "S_BOX Error(4)" severity FAILURE;

      wait for clk_period;
		addr <= X"5";

      wait for clk_period;

		assert dout = X"B"
			report "S_BOX Error(5)" severity FAILURE;

      wait for clk_period;
		addr <= X"6";

      wait for clk_period;

		assert dout = X"9"
			report "S_BOX Error(6)" severity FAILURE;

      wait for clk_period;
		addr <= X"7";

      wait for clk_period;

		assert dout = X"5"
			report "S_BOX Error(7)" severity FAILURE;

      wait for clk_period;
		addr <= X"8";

      wait for clk_period;

		assert dout = X"8"
			report "S_BOX Error(8)" severity FAILURE;

      wait for clk_period;
		addr <= X"9";

      wait for clk_period;

		assert dout = X"3"
			report "S_BOX Error(9)" severity FAILURE;

      wait for clk_period;
		addr <= X"A";

      wait for clk_period;

		assert dout = X"D"
			report "S_BOX Error(A)" severity FAILURE;

      wait for clk_period;
		addr <= X"B";

      wait for clk_period;

		assert dout = X"7"
			report "S_BOX Error(B)" severity FAILURE;

      wait for clk_period;
		addr <= X"C";

      wait for clk_period;

		assert dout = X"1"
			report "S_BOX Error(C)" severity FAILURE;

      wait for clk_period;
		addr <= X"D";

      wait for clk_period;

		assert dout = X"E"
			report "S_BOX Error(D)" severity FAILURE;

      wait for clk_period;
		addr <= X"E";

      wait for clk_period;

		assert dout = X"6"
			report "S_BOX Error(E)" severity FAILURE;

      wait for clk_period;
		addr <= X"F";

      wait for clk_period;

		assert dout = X"4"
			report "S_BOX Error(F)" severity FAILURE;

      wait for clk_period;
   end process;

END;
