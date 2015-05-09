-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;
  USE ieee.std_logic_textio.ALL;

  ENTITY tb_keygen IS
  END tb_keygen;

  ARCHITECTURE behavior OF tb_keygen IS 

  -- Component Declaration
   COMPONENT keygen PORT(
			  key : in  STD_LOGIC_VECTOR (79 downto 0);
           clk : in  STD_LOGIC;
           flag : out  STD_LOGIC;
			  addr: out STD_LOGIC_VECTOR(5 downto 0);
			  rk: out STD_LOGIC_VECTOR(31 downto 0);
			  rst: in STD_LOGIC);
          END COMPONENT;

		--inputs
			 SIGNAL rst :  std_logic;-- := '0';
          SIGNAL clk :  std_logic;-- := '0';
          SIGNAL key :  std_logic_vector(79 downto 0);-- := (others => '0');
			 
		--outputs
			 SIGNAL addr: STD_LOGIC_VECTOR(5 downto 0);
			 SIGNAL rk: STD_LOGIC_VECTOR(31 downto 0);
          SIGNAL flag :  std_logic;
		--clock
          constant clk_period : time := 10 ns;
			 
			 function vec2str (vec: std_logic_vector) RETURN string is
				variable stmp: string(vec'LEFT+1 DOWNTO 1);
			 BEGIN
				for i in vec'reverse_range loop
					if vec(i) = '1' then
						stmp(i+1) := '1';
					elsif vec(i) = '0' then
						stmp(i+1) := '0';
					else
						stmp(i+1) := 'X';
					end if;
				end loop;
				return stmp;
			end vec2str;

  BEGIN

  -- Component Instantiation
          uut: keygen PORT MAP(
						key => key,
						clk => clk,
						flag => flag,
						addr => addr,
						rk => rk,
						rst => rst
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

			key <= X"00112233445566778899";
			rst <= '0';
--        wait for 15 ns;
--		  assert rk = X"01236778"
--				report "keygen_error 0"&vec2str(rk) severity FAILURE;
--				
--		  wait for clk_period*2;
--		  assert rk = X"2345898c"
--				report "keygen_error 1" severity FAILURE;
--				
--		  wait for clk_period*2;
--		  assert rk = X"4567112f"
--				report "keygen_error 2" severity FAILURE;
--				
--		  wait for clk_period*2;
--		  assert rk = X"678933ef"
--				report "keygen_error 3" severity FAILURE;
--				
--		  wait for clk_period*2;
--		  assert rk = X"89c15559"
--				report "keygen_error 4" severity FAILURE;
--				
--		  wait for clk_period*2;
--		  assert rk = X"10f37729"
--				report "keygen_error 5" severity FAILURE;
--				
--		  wait for clk_period*2;
--		  assert rk = X"3af599c5"
--				report "keygen_error 6" severity FAILURE;
--				
--		  wait for clk_period*2;
--		  assert rk = X"559710c2"
--				report "keygen_error 7" severity FAILURE;
--				
--		  wait for clk_period*2;
--		  assert rk = X"72993aa7"
--				report "keygen_error 8" severity FAILURE;
--				
--		  wait for clk_period*2;
--		  assert rk = X"9d50550e"
--				report "keygen_error 9" severity FAILURE;
--				
--		  wait for clk_period*2;
--		  assert rk = X"1f2a7268"
--				report "keygen_error 10" severity FAILURE;
--				
--		  wait for clk_period*2;
--		  assert rk = X"3c759dcb"
--				report "keygen_error 11" severity FAILURE;
--				
--		  wait for clk_period*2;
--		  assert rk = X"54e20f0e"
--				report "keygen_error 12" severity FAILURE;
--				
--		  wait for clk_period*2;
--		  assert rk = X"768dacf9"
--				report "keygen_error 13" severity FAILURE;
--				
--		  wait for clk_period*2;
--		  assert rk = X"9dbf542f"
--				report "keygen_error 14" severity FAILURE;
--				
--		  wait for clk_period*2;
--		  assert rk = X"02ec26ce"
--				report "keygen_error 15" severity FAILURE;
--				
--		  wait for clk_period*2;
--		  assert rk = X"aa94ddb4"
--				report "keygen_error 16" severity FAILURE;
--				
--		  wait for clk_period*2;
--		  assert rk = X"50f6f2c2"
--				report "keygen_error 17" severity FAILURE;
--				
--		  wait for clk_period*2;
--		  assert rk = X"28edcae2"
--				report "keygen_error 18" severity FAILURE;
--				
--		  wait for clk_period*2;
--		  assert rk = X"da4240ce"
--				report "keygen_error 19" severity FAILURE;
--				
--		  wait for clk_period*2;
--		  assert rk = X"ff2a686d"
--				report "keygen_error 20" severity FAILURE;
--				
--		  wait for clk_period*2;
--		  assert rk = X"c920da50"
--				report "keygen_error 21" severity FAILURE;
--				
--		  wait for clk_period*2;
--		  assert rk = X"4be82f1d"
--				report "keygen_error 22" severity FAILURE;
--				
--		  wait for clk_period*2;
--		  assert rk = X"60daa992"
--				report "keygen_error 23" severity FAILURE;
--				
--		  wait for clk_period*2;
--		  assert rk = X"d00f0bfa"
--				report "keygen_error 24" severity FAILURE;
--				
--		  wait for clk_period*2;
--		  assert rk = X"23d98012"
--				report "keygen_error 25" severity FAILURE;
--				
--		  wait for clk_period*2;
--		  assert rk = X"ad2ba00c"
--				report "keygen_error 26" severity FAILURE;
--				
--		  wait for clk_period*2;
--		  assert rk = X"0fa0f3a5"
--				report "keygen_error 27" severity FAILURE;
--				
--		  wait for clk_period*2;
--		  assert rk = X"80209d4a"
--				report "keygen_error 28" severity FAILURE;
--				
--		  wait for clk_period*2;
--		  assert rk = X"a3c3bf78"
--				report "keygen_error 29" severity FAILURE;
--				
--		  wait for clk_period*2;
--		  assert rk = X"fd5d001e"
--				report "keygen_error 30" severity FAILURE;
--				
--		  wait for clk_period*2;
--		  assert rk = X"92af03cd"
--				report "keygen_error 31" severity FAILURE;
--				
--		  wait for clk_period*2;
--		  assert rk = X"b3803d13"
--				report "keygen_error 32" severity FAILURE;
--				
--		  wait for clk_period*2;
--		  assert rk = X"00e3d229"
--				report "keygen_error 33" severity FAILURE;
--				
--		  wait for clk_period*2;
--		  assert rk = X"0eddf36f"
--				report "keygen_error 34" severity FAILURE;
				
		  wait for clk_period*2*36;
		  assert rk = X"3532006e"
				report "keygen_error 35"&vec2str(rk) severity FAILURE;
				
     END PROCESS;
  --  End Test Bench 

  END;
