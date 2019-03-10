library verilog;
use verilog.vl_types.all;
entity WDDLDFFHQX2 is
    port(
        D               : in     vl_logic;
        Dinv            : in     vl_logic;
        CLK             : in     vl_logic;
        PRECLK          : in     vl_logic;
        Q               : out    vl_logic
    );
end WDDLDFFHQX2;
