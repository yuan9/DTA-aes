library verilog;
use verilog.vl_types.all;
entity WDDLDFFMSMUX is
    port(
        D               : in     vl_logic;
        CK              : in     vl_logic;
        PRECLK          : in     vl_logic;
        Q               : out    vl_logic
    );
end WDDLDFFMSMUX;
