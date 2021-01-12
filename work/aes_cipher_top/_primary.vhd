library verilog;
use verilog.vl_types.all;
entity aes_cipher_top is
    port(
        divclk          : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        ld              : in     vl_logic;
        done            : out    vl_logic;
        key             : in     vl_logic_vector(127 downto 0);
        text_in         : in     vl_logic_vector(127 downto 0);
        text_out        : out    vl_logic_vector(127 downto 0);
        m_in0_U179      : in     vl_logic;
        m_in1_U179      : in     vl_logic;
        m_out_U179      : in     vl_logic;
        precharge_lmdpl : in     vl_logic
    );
end aes_cipher_top;
