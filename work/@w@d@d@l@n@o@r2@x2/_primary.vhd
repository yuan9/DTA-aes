library verilog;
use verilog.vl_types.all;
entity WDDLNOR2X2 is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        clkinv          : in     vl_logic;
        Y               : out    vl_logic
    );
end WDDLNOR2X2;
