library verilog;
use verilog.vl_types.all;
entity wddl_precharge_pt is
    port(
        pt              : in     vl_logic_vector(127 downto 0);
        clk             : in     vl_logic;
        pt_precharged   : out    vl_logic_vector(127 downto 0)
    );
end wddl_precharge_pt;
