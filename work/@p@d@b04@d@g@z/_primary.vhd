library verilog;
use verilog.vl_types.all;
entity PDB04DGZ is
    port(
        I               : in     vl_logic;
        OEN             : in     vl_logic;
        PAD             : inout  vl_logic;
        C               : out    vl_logic
    );
end PDB04DGZ;