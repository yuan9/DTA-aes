library verilog;
use verilog.vl_types.all;
entity nand_tablegen is
    port(
        m_in0           : in     vl_logic;
        m_in1           : in     vl_logic;
        m_out           : in     vl_logic;
        \t[7]\          : out    vl_logic;
        \t[6]\          : out    vl_logic;
        \t[5]\          : out    vl_logic;
        \t[4]\          : out    vl_logic;
        \t[3]_BAR\      : out    vl_logic;
        \t[2]_BAR\      : out    vl_logic;
        \t[1]_BAR\      : out    vl_logic;
        \t[0]_BAR\      : out    vl_logic
    );
end nand_tablegen;
