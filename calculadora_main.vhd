
entity calculadora_main is
	port( 
		clk		: in bit;
		a 	 		: in bit_vector  (5 downto 0);
		b 	 		: in bit_vector  (5 downto 0);
		sub 		: in bit;
		
		sum 		: out bit_vector (5 downto 0);
		overflow : out bit  -- é o carry out do somador
	);
	
end entity;

architecture main of calculadora_main is

signal sum_signal : bit_vector (5 downto 0);

component calculadora_2 is
	port( 
		a 	 		: in bit_vector  (5 downto 0);
		b 	 		: in bit_vector  (5 downto 0);
		sub 		: in bit;
		
		sum 		: out bit_vector (5 downto 0);
		overflow : out bit  -- é o carry out do somador
	);
	
end component;

component reg6 is
    Port (
        clk : in bit;                                         
        data_in : in bit_vector(5 downto 0); 
        data_out : out bit_vector(5 downto 0)
    );
end component;

begin

	calc : calculadora_2
	port map (
		a => a,
		b => b,
		sub => sub,
		sum => sum_signal,
		overflow => overflow
	);
	
	reg : reg6
	port map (
		clk => clk,
		data_in => sum_signal,
		data_out => sum
	);

end architecture;