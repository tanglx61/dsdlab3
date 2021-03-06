library verilog;
use verilog.vl_types.all;
entity g58_testbed_vlg_check_tst is
    port(
        empty           : in     vl_logic;
        full            : in     vl_logic;
        num             : in     vl_logic_vector(5 downto 0);
        pulse           : in     vl_logic;
        segs_floor      : in     vl_logic_vector(6 downto 0);
        segs_mod        : in     vl_logic_vector(6 downto 0);
        value           : in     vl_logic_vector(5 downto 0);
        sampler_rx      : in     vl_logic
    );
end g58_testbed_vlg_check_tst;
