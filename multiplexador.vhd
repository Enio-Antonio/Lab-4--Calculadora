entity mult is 
	port(a, b, switch : in bit; saida : out bit);
end mult;

architecture main of mult is
	signal s1 : bit;
	signal s2 : bit;
begin
	s1 <= a and not(switch);
	s2 <= b and switch;
	saida <= s1 or s2;
end architecture main;