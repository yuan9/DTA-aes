library verilog;
use verilog.vl_types.all;
entity BENCX4 is
    port(
        A               : out    vl_logic;
        S               : out    vl_logic;
        X2              : out    vl_logic;
        M0              : in     vl_logic;
        M1              : in     vl_logic;
        M2              : in     vl_logic
    );
end BENCX4;
