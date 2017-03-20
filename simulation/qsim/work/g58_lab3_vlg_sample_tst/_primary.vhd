library verilog;
use verilog.vl_types.all;
entity g58_lab3_vlg_sample_tst is
    port(
        addr            : in     vl_logic_vector(5 downto 0);
        button          : in     vl_logic;
        clk             : in     vl_logic;
        data            : in     vl_logic_vector(5 downto 0);
        mode            : in     vl_logic_vector(1 downto 0);
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end g58_lab3_vlg_sample_tst;
