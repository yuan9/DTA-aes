library verilog;
use verilog.vl_types.all;
entity PDUSDGZ is
    generic(
        PullTime        : integer := 100000
    );
    port(
        PAD             : in     vl_logic;
        C               : out    vl_logic
    );
end PDUSDGZ;
