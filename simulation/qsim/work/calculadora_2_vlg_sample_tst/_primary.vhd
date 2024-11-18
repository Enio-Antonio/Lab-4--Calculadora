library verilog;
use verilog.vl_types.all;
entity calculadora_2_vlg_sample_tst is
    port(
        a               : in     vl_logic_vector(5 downto 0);
        b               : in     vl_logic_vector(5 downto 0);
        sub             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end calculadora_2_vlg_sample_tst;
