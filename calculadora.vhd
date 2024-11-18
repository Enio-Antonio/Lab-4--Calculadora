entity calculadora is
	port(na_1, na_2, na_3, na_4, na_5, na_6, nb_1, nb_2, nb_3, nb_4, nb_5, nb_6, sub : in bit; r1, r2, r3, r4, r5, r6 : out bit);
end calculadora;

architecture main of calculadora is
	signal co1 : bit;
	signal co2 : bit;
	signal co3 : bit;
	signal co4 : bit;
	signal co5 : bit;
	signal co6 : bit;
	signal s1 : bit;
	signal s2 : bit;
	signal s3 : bit;
	signal s4 : bit;
	signal s5 : bit;
	signal s6 : bit;
	
	component full_adder is
		port(a, b, ci : in bit; co, s : out bit);
	end component;
	
	component mult is
		port(a, b, switch : in bit; saida : out bit);
	end component;
begin
	mult_nb_1: mult port map(a => nb_1, b => not(nb_1), switch => sub, saida => s1);
	primeiro_bit: full_adder port map(a => na_1, b => s1, ci => sub, co => co1, s => r1);
	
	mult_nb_2: mult port map(a => nb_2, b => not(nb_2), switch => sub, saida => s2);
	segundo_bit: full_adder port map(a => na_2, b => s2, ci => co1, co => co2, s => r2);
	
	mult_nb_3: mult port map(a => nb_3, b => not(nb_3), switch => sub, saida => s3);
	terceiro_bit: full_adder port map(a => na_3, b => s3, ci => co2, co => co3, s => r3);
	
	mult_nb_4: mult port map(a => nb_4, b => not(nb_4), switch => sub, saida => s4);
	quarto_bit: full_adder port map(a => na_4, b => s4, ci => co3, co => co4, s => r4);
	
	mult_nb_5: mult port map(a => nb_5, b => not(nb_5), switch => sub, saida => s5);
	quinto_bit: full_adder port map(a => na_5, b => s5, ci => co4, co => co5, s => r5);
	
	mult_nb_6: mult port map(a => nb_6, b => not(nb_6), switch => sub, saida => s6);
	sexto_bit: full_adder port map(a => na_6, b => s6, ci => co5, co => co6, s => r6);
	
end architecture main;