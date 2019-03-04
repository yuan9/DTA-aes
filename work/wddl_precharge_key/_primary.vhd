library verilog;
use verilog.vl_types.all;
entity wddl_precharge_key is
    port(
        in_key          : in     vl_logic_vector(127 downto 0);
        clk             : in     vl_logic;
        key_precharged  : out    vl_logic_vector(127 downto 0)
    );
end wddl_precharge_key;
