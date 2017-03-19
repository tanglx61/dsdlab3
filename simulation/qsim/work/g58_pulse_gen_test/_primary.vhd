library verilog;
use verilog.vl_types.all;
entity g58_pulse_gen_test is
    port(
        pulse           : out    vl_logic;
        button          : in     vl_logic;
        clk             : in     vl_logic
    );
end g58_pulse_gen_test;
