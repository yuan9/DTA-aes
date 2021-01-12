library verilog;
use verilog.vl_types.all;
entity aes_sbox_8 is
    port(
        a               : in     vl_logic_vector(7 downto 0);
        d               : out    vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        preclkbar       : in     vl_logic;
        m_in0_U179      : in     vl_logic;
        m_in1_U179      : in     vl_logic;
        m_out_U179      : in     vl_logic;
        precharge_lmdpl : in     vl_logic
    );
end aes_sbox_8;
