library verilog;
use verilog.vl_types.all;
entity DFFNXL is
    port(
        Q               : out    vl_logic;
        QN              : out    vl_logic;
        CKN             : in     vl_logic;
        D               : in     vl_logic
    );
end DFFNXL;
