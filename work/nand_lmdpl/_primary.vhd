library verilog;
use verilog.vl_types.all;
entity nand_lmdpl is
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        precharge       : in     vl_logic;
        in0             : in     vl_logic;
        in1             : in     vl_logic;
        m_in0           : in     vl_logic;
        m_in1           : in     vl_logic;
        m_out           : in     vl_logic;
        \out\           : out    vl_logic
    );
end nand_lmdpl;
