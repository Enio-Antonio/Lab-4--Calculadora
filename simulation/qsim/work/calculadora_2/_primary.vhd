library verilog;
use verilog.vl_types.all;
entity calculadora_2 is
    port(
        a               : in     vl_logic_vector(5 downto 0);
        b               : in     vl_logic_vector(5 downto 0);
        sub             : in     vl_logic;
        sum             : out    vl_logic_vector(5 downto 0);
        overflow        : out    vl_logic
    );
end calculadora_2;
