library verilog;
use verilog.vl_types.all;
entity DFFNRX4 is
    port(
        Q               : out    vl_logic;
        QN              : out    vl_logic;
        CKN             : in     vl_logic;
        D               : in     vl_logic;
        RN              : in     vl_logic
    );
end DFFNRX4;
