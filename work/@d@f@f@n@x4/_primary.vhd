library verilog;
use verilog.vl_types.all;
entity DFFNX4 is
    port(
        Q               : out    vl_logic;
        QN              : out    vl_logic;
        CKN             : in     vl_logic;
        D               : in     vl_logic
    );
end DFFNX4;
