library verilog;
use verilog.vl_types.all;
entity JKFFX2 is
    port(
        Q               : out    vl_logic;
        QN              : out    vl_logic;
        CK              : in     vl_logic;
        J               : in     vl_logic;
        K               : in     vl_logic
    );
end JKFFX2;
