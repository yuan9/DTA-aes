library verilog;
use verilog.vl_types.all;
entity RSLATNX4 is
    port(
        Q               : out    vl_logic;
        QN              : out    vl_logic;
        RN              : in     vl_logic;
        SN              : in     vl_logic
    );
end RSLATNX4;