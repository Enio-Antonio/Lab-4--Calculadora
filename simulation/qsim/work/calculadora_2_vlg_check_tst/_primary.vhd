library verilog;
use verilog.vl_types.all;
entity calculadora_2_vlg_check_tst is
    port(
        overflow        : in     vl_logic;
        sum             : in     vl_logic_vector(5 downto 0);
        sampler_rx      : in     vl_logic
    );
end calculadora_2_vlg_check_tst;
