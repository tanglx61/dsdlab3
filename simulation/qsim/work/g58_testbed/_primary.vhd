library verilog;
use verilog.vl_types.all;
entity g58_testbed is
    port(
        empty           : out    vl_logic;
        clk             : in     vl_logic;
        button          : in     vl_logic;
        rst             : in     vl_logic;
        disp_mode       : in     vl_logic;
        addr            : in     vl_logic_vector(5 downto 0);
        mode            : in     vl_logic_vector(1 downto 0);
        full            : out    vl_logic;
        pulse           : out    vl_logic;
        num             : out    vl_logic_vector(5 downto 0);
        segs_floor      : out    vl_logic_vector(6 downto 0);
        segs_mod        : out    vl_logic_vector(6 downto 0);
        value           : out    vl_logic_vector(5 downto 0)
    );
end g58_testbed;
