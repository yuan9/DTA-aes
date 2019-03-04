library verilog;
use verilog.vl_types.all;
entity WDDLINV is
    port(
        A               : in     vl_logic;
        clkinv          : in     vl_logic;
        Y               : out    vl_logic
    );
end WDDLINV;
