-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY tb_round_f IS
  END tb_round_f;

  ARCHITECTURE behavior OF tb_round_f IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT round_f
    PORT(
         clk : IN  std_logic;
         a_in : IN  std_logic_vector(63 downto 0);
         k_mux : IN  std_logic_vector(31 downto 0);
         a_out : OUT  std_logic_vector(63 downto 0));
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal a_in : std_logic_vector(63 downto 0) := (others => '0');
   signal k_mux : std_logic_vector(31 downto 0) := (others => '0');
   
 	--Outputs
   signal a_out : std_logic_vector(63 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: round_f PORT MAP (
          clk => clk,
          a_in => a_in,
          k_mux => k_mux,
          a_out => a_out
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
      
		a_in <= X"2222222222222222";
		k_mux <= X"11111111";
		
		wait for clk_period;

		assert a_out = X"2828282828282828"
			report "round_f Error" severity FAILURE;

      wait;
   end process;

END;
