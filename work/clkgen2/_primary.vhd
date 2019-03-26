library verilog;
use verilog.vl_types.all;
entity clkgen2 is
    port(
        reset           : in     vl_logic;
        clk             : out    vl_logic
    );
end clkgen2;
