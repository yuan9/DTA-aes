library verilog;
use verilog.vl_types.all;
entity AHHCINX4 is
    port(
        CO              : out    vl_logic;
        S               : out    vl_logic;
        A               : in     vl_logic;
        CIN             : in     vl_logic
    );
end AHHCINX4;
