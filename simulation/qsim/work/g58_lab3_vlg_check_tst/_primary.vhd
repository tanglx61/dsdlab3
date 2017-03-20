library verilog;
use verilog.vl_types.all;
entity g58_lab3_vlg_check_tst is
    port(
        empty           : in     vl_logic;
        full            : in     vl_logic;
        num             : in     vl_logic_vector(5 downto 0);
        pulse           : in     vl_logic;
        value           : in     vl_logic_vector(5 downto 0);
        sampler_rx      : in     vl_logic
    );
end g58_lab3_vlg_check_tst;
