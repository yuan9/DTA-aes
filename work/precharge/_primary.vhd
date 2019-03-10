library verilog;
use verilog.vl_types.all;
entity precharge is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        preclk          : out    vl_logic
    );
end precharge;
