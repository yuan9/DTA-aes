library verilog;
use verilog.vl_types.all;
entity or4_lib is
    port(
        in0             : in     vl_logic;
        in1             : in     vl_logic;
        in2             : in     vl_logic;
        in3             : in     vl_logic;
        \out\           : out    vl_logic
    );
end or4_lib;
