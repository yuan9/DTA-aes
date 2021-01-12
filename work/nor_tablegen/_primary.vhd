library verilog;
use verilog.vl_types.all;
entity nor_tablegen is
    port(
        m_in0           : in     vl_logic;
        m_in1           : in     vl_logic;
        m_out           : in     vl_logic;
        t               : out    vl_logic_vector(7 downto 0)
    );
end nor_tablegen;
