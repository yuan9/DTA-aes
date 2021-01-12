library verilog;
use verilog.vl_types.all;
entity xorshift_prng is
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        rng_out         : out    vl_logic_vector(31 downto 0)
    );
end xorshift_prng;
