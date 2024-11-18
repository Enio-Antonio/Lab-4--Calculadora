entity full_adder is 
	port(a, b, ci : in bit; co, s : out bit);
end full_adder;

architecture main of full_adder is
begin
	co <= (not(a) and b and ci) or (a and not(b) and ci) or (a and b and not(ci)) or (a and b and ci);
	s <= (not(a) and not(b) and ci) or (not(a) and b and not(ci)) 	or (a and not(b) and not(ci)) or (a and b and ci);
end architecture main;	