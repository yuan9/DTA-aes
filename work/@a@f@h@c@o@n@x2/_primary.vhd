library verilog;
use verilog.vl_types.all;
entity AFHCONX2 is
    port(
        CON             : out    vl_logic;
        S               : out    vl_logic;
        A               : in     vl_logic;
        B               : in     vl_logic;
        CI              : in     vl_logic
    );
end AFHCONX2;