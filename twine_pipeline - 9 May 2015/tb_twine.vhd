-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY tb_twine IS
  END tb_twine;

  ARCHITECTURE behavior OF tb_twine IS 

  -- Component Declaration
          COMPONENT twine
          PORT(clk : in  STD_LOGIC;
					rst_key : in  STD_LOGIC;
					rst_ed : in  STD_LOGIC;
					enc : in  STD_LOGIC;
					p_text : in  STD_LOGIC_VECTOR (63 downto 0);
					key : in STD_LOGIC_VECTOR (79 downto 0);
					c_out : out  STD_LOGIC_VECTOR (63 downto 0);
					addr_out_test: out STD_LOGIC_VECTOR(5 downto 0);
					rk_out_test: out STD_LOGIC_VECTOR(31 downto 0));
          END COMPONENT;
			
			--inputs
					signal clk : STD_LOGIC;
					signal rst_key : STD_LOGIC;
					signal rst_ed :  STD_LOGIC;
					signal enc :  STD_LOGIC;
					signal p_text :  STD_LOGIC_VECTOR (63 downto 0);
					signal key : STD_LOGIC_VECTOR (79 downto 0);
					
			--outputs
					signal c_out :  STD_LOGIC_VECTOR (63 downto 0);
					signal addr_out_test:  STD_LOGIC_VECTOR(5 downto 0);
					signal rk_out_test:  STD_LOGIC_VECTOR(31 downto 0);
					
			--clock
					constant clk_period : time := 10 ns;
          

  BEGIN

  -- Component Instantiation
          uut: twine PORT MAP(
                  clk => clk,
                  rst_key => rst_key,
						rst_ed => rst_ed,
						enc => enc,
						p_text => p_text,
						key => key,
						c_out => c_out,
						addr_out_test => addr_out_test,
						rk_out_test => rk_out_test
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
	  
			rst_ed <= '1';
			rst_key <= '0';
			p_text <= X"7c1f0f80b1df9c28";
			--p_text <= X"0123456789abcdef";
			key <= X"00112233445566778899";
			enc <= '0';
       wait for clk_period*2*40; -- wait until global set/reset completes
			rst_ed <= '0';
        -- Add user defined stimulus here

        wait for clk_period*2*40;
		  
	  END PROCESS tb;
  --  End Test Bench 

  END;
