library verilog;
use verilog.vl_types.all;
entity g58_pulse_gen_test_vlg_sample_tst is
    port(
        button          : in     vl_logic;
        clk             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end g58_pulse_gen_test_vlg_sample_tst;
