library verilog;
use verilog.vl_types.all;
entity TBUFIX1 is
    port(
        Y               : out    vl_logic;
        A               : in     vl_logic;
        OE              : in     vl_logic
    );
end TBUFIX1;
