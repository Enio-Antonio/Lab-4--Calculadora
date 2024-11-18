entity full_adder is 
	port(
			a 		: in bit;
			b 		: in bit;
			ci 	: in bit; 	-- carry_in
			
			s	 	: out bit; -- sum result
			co  	: out bit  -- carry_out
		);
			
end entity;

architecture main of full_adder is
begin
	co <= (not(a) and b and ci ) or 
			(a and not(b) and ci ) or 
			(a and b  and not(ci)) or 
			(a and b and ci);
						
	s <= (not(a) and not(b) and ci) or
		  (not(a) and b and not(ci)) or
		  (a and not(b) and not(ci)) or
		  (a and b and ci);
		  
end architecture main;	