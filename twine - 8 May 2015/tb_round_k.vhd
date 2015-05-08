-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY tb_round_k IS
  END tb_round_k;

  ARCHITECTURE behavior OF tb_round_k IS 

  -- Component Declaration
component round_k is 
	Port ( clk : in std_logic;
			  addr: in STD_LOGIC_VECTOR (5 downto 0);
			  key_in: in  STD_LOGIC_VECTOR (79 downto 0);
			  key_out: out  STD_LOGIC_VECTOR (79 downto 0));
			  
end component;


          SIGNAL clk :  std_logic;
          SIGNAL addr:  std_logic_vector(5 downto 0);
			 SIGNAL key_in: STD_LOGIC_VECTOR (79 downto 0);
			 SIGNAL key_out: STD_LOGIC_VECTOR (79 downto 0);
          constant clk_period : time := 10 ns;
          

  BEGIN

  -- Component Instantiation
          uut: round_k PORT MAP(
                  clk => clk,
                  addr => addr,
						key_in => key_in,
						key_out => key_out
          );


  --  Test Bench Statements
   clk_process :process
	begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
	
     tb : PROCESS
     BEGIN
		key_in <= X"00112233445566778899";
		addr <= "000000";
        wait for 100 ns; -- wait until global set/reset completes
		assert key_out = X"a233445566778898c110"
			report "Round 0 error:" severity FAILURE;
		
		key_in <= key_out;
		addr <="000001";
		wait for 100 ns;
		assert key_out = X"545566778898c112f33a"
			report "Round 1 error:" severity FAILURE;
		
		key_in <= key_out;
		addr <="000010";
		wait for 100 ns;
		assert key_out = X"26778898c112f33ef555"
			report "Round 2 error:" severity FAILURE;
		
		key_in <= key_out;
		addr <="000011";
		wait for 100 ns;
		assert key_out = X"c899c112f33ef5559772"
			report "Round 3 error:" severity FAILURE;
		
		key_in <= key_out;
		addr <="000100";
		wait for 100 ns;
		assert key_out = X"f110f33ef5559772999c"
			report "Round 4 error:" severity FAILURE;
		
		key_in <= key_out;
		addr <="000101";
		wait for 100 ns;
		assert key_out = X"c33af5559772999c510f"
			report "Round 5 error:" severity FAILURE;
		
		key_in <= key_out;
		addr <="000110";
		wait for 100 ns;
		assert key_out = X"45559772999c510c23ac"
			report "Round 6 error:" severity FAILURE;
		
		key_in <= key_out;
		addr <="000111";
		wait for 100 ns;
		assert key_out = X"6772999c510c23aa7554"
			report "Round 7 error:" severity FAILURE;
		
		key_in <= key_out;
		addr <="001000";
		wait for 100 ns;
		assert key_out = X"c99d510c23aa7550e726"
			report "Round 8 error:" severity FAILURE;
		
		key_in <= key_out;
		addr <="001001";
		wait for 100 ns;
		assert key_out = X"310f23aa7550e72689dc"
			report "Round 9 error:" severity FAILURE;
		
		key_in <= key_out;
		addr <="001010";
		wait for 100 ns;
		assert key_out = X"a3ac7550e72689dcb0f3"
			report "Round 10 error:" severity FAILURE;
		
		key_in <= key_out;
		addr <="001011";
		wait for 100 ns;
		assert key_out = X"0554e72689dcb0f0eaca"
			report "Round 11 error:" severity FAILURE;
		
		key_in <= key_out;
		addr <="001100";
		wait for 100 ns;
		assert key_out = X"872689dcb0f0eacf9540"
			report "Round 12 error:" severity FAILURE;
		
		key_in <= key_out;
		addr <="001101";
		wait for 100 ns;
		assert key_out = X"b9ddb0f0eacf9542f268"
			report "Round 13 error:" severity FAILURE;
		
		key_in <= key_out;
		addr <="001110";
		wait for 100 ns;
		assert key_out = X"f0f2eacf9542f26ceddb"
			report "Round 14 error:" severity FAILURE;
		
		key_in <= key_out;
		addr <="001111";
		wait for 100 ns;
		assert key_out = X"8aca9542f26ceddb4f2f"
			report "Round 15 error:" severity FAILURE;
		
		key_in <= key_out;
		addr <="010000";
		wait for 100 ns;
		assert key_out = X"b540f26ceddb4f2c2ca8"
			report "Round 16 error:" severity FAILURE;
		
		key_in <= key_out;
		addr <="010001";
		wait for 100 ns;
		assert key_out = X"0268eddb4f2c2cae240b"
			report "Round 17 error:" severity FAILURE;
		
		key_in <= key_out;
		addr <="010010";
		wait for 100 ns;
		assert key_out = X"1dda4f2c2cae240ce680"
			report "Round 18 error:" severity FAILURE;
		
		key_in <= key_out;
		addr <="010011";
		wait for 100 ns;
		assert key_out = X"2f2f2cae240ce686dda1"
			report "Round 19 error:" severity FAILURE;
		
		key_in <= key_out;
		addr <="010100";
		wait for 100 ns;
		assert key_out = X"cca9240ce686dda502f2"
			report "Round 20 error:" severity FAILURE;
		
		key_in <= key_out;
		addr <="010101";
		wait for 100 ns;
		assert key_out = X"e40be686dda502f1da9c"
			report "Round 21 error:" severity FAILURE;
		
		key_in <= key_out;
		addr <="010110";
		wait for 100 ns;
		assert key_out = X"0680dda502f1da9920be"
			report "Round 22 error:" severity FAILURE;
		
		key_in <= key_out;
		addr <="010111";
		wait for 100 ns;
		assert key_out = X"2da002f1da9920bfa800"
			report "Round 23 error:" severity FAILURE;
		
		key_in <= key_out;
		addr <="011000";
		wait for 100 ns;
		assert key_out = X"d2f3da9920bfa8012a02"
			report "Round 24 error:" severity FAILURE;
		
		key_in <= key_out;
		addr <="011001";
		wait for 100 ns;
		assert key_out = X"2a9d20bfa8012a00cf3d"
			report "Round 25 error:" severity FAILURE;
		
		key_in <= key_out;
		addr <="011010";
		wait for 100 ns;
		assert key_out = X"30bfa8012a00cf3a59d2"
			report "Round 26 error:" severity FAILURE;
		
		key_in <= key_out;
		addr <="011011";
		wait for 100 ns;
		assert key_out = X"18002a00cf3a59d4abf3"
			report "Round 27 error:" severity FAILURE;
		
		key_in <= key_out;
		addr <="011100";
		wait for 100 ns;
		assert key_out = X"fa03cf3a59d4abf78001"
			report "Round 28 error:" severity FAILURE;
		
		key_in <= key_out;
		addr <="011101";
		wait for 100 ns;
		assert key_out = X"4f3d59d4abf78001e03f"
			report "Round 29 error:" severity FAILURE;
		
		key_in <= key_out;
		addr <="011110";
		wait for 100 ns;
		assert key_out = X"39d2abf78001e03cd3d4"
			report "Round 30 error:" severity FAILURE;
		
		key_in <= key_out;
		addr <="011111";
		wait for 100 ns;
		assert key_out = X"4bf38001e03cd3d13d23"
			report "Round 31 error:" severity FAILURE;
		
		key_in <= key_out;
		addr <="100000";
		wait for 100 ns;
		assert key_out = X"2000e03cd3d13d229f34"
			report "Round 32 error:" severity FAILURE;
		
		key_in <= key_out;
		addr <="100001";
		wait for 100 ns;
		assert key_out = X"d03ed3d13d229f36f002"
			report "Round 33 error:" severity FAILURE;
		
		key_in <= key_out;
		addr <="100010";
		wait for 100 ns;
		assert key_out = X"93d53d229f36f006e3ed"
			report "Round 34 error:" severity FAILURE;
      

		-- Add user defined stimulus here

        wait; -- will wait forever
     END PROCESS tb;
  --  End Test Bench 

  END;
