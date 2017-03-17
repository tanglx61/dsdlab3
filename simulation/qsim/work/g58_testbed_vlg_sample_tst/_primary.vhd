library verilog;
use verilog.vl_types.all;
entity g58_testbed_vlg_sample_tst is
    port(
        addr            : in     vl_logic_vector(5 downto 0);
        clk             : in     vl_logic;
        data            : in     vl_logic_vector(5 downto 0);
        disp_mode       : in     vl_logic;
        mode            : in     vl_logic_vector(1 downto 0);
        press           : in     vl_logic;
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end g58_testbed_vlg_sample_tst;
