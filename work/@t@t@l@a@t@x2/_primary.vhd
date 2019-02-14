library verilog;
use verilog.vl_types.all;
entity TTLATX2 is
    port(
        Q               : out    vl_logic;
        D               : in     vl_logic;
        G               : in     vl_logic;
        OE              : in     vl_logic
    );
end TTLATX2;
