library verilog;
use verilog.vl_types.all;
entity JKFFRX4 is
    port(
        Q               : out    vl_logic;
        QN              : out    vl_logic;
        CK              : in     vl_logic;
        J               : in     vl_logic;
        K               : in     vl_logic;
        RN              : in     vl_logic
    );
end JKFFRX4;
