library verilog;
use verilog.vl_types.all;
entity CLKBUFXL is
    port(
        Y               : out    vl_logic;
        A               : in     vl_logic
    );
end CLKBUFXL;