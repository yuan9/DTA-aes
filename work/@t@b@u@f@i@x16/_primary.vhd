library verilog;
use verilog.vl_types.all;
entity TBUFIX16 is
    port(
        Y               : out    vl_logic;
        A               : in     vl_logic;
        OE              : in     vl_logic
    );
end TBUFIX16;