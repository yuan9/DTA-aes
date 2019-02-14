library verilog;
use verilog.vl_types.all;
entity DFFRHQXL is
    port(
        Q               : out    vl_logic;
        CK              : in     vl_logic;
        D               : in     vl_logic;
        RN              : in     vl_logic
    );
end DFFRHQXL;
