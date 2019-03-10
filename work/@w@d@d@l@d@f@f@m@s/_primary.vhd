library verilog;
use verilog.vl_types.all;
entity WDDLDFFMS is
    port(
        D               : in     vl_logic;
        CK              : in     vl_logic;
        Q               : out    vl_logic
    );
end WDDLDFFMS;
