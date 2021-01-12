library verilog;
use verilog.vl_types.all;
entity lmdpl_nl_gate is
    port(
        t               : in     vl_logic_vector(7 downto 0);
        a_m             : in     vl_logic;
        a_m_bar         : in     vl_logic;
        b_m             : in     vl_logic;
        b_m_bar         : in     vl_logic;
        q_m             : out    vl_logic;
        q_m_bar         : out    vl_logic
    );
end lmdpl_nl_gate;
