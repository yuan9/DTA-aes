library verilog;
use verilog.vl_types.all;
entity DFFHQX2 is
    port(
        Q               : out    vl_logic;
        CK              : in     vl_logic;
        D               : in     vl_logic
    );
end DFFHQX2;
