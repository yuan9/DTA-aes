library verilog;
use verilog.vl_types.all;
entity RSLATX4 is
    port(
        Q               : out    vl_logic;
        QN              : out    vl_logic;
        R               : in     vl_logic;
        S               : in     vl_logic
    );
end RSLATX4;
