library verilog;
use verilog.vl_types.all;
entity g58_pulse_gen_test_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        press           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end g58_pulse_gen_test_vlg_sample_tst;