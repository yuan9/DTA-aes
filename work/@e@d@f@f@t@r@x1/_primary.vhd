library verilog;
use verilog.vl_types.all;
entity EDFFTRX1 is
    port(
        Q               : out    vl_logic;
        QN              : out    vl_logic;
        CK              : in     vl_logic;
        D               : in     vl_logic;
        E               : in     vl_logic;
        RN              : in     vl_logic
    );
end EDFFTRX1;
