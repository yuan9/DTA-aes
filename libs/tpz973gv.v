/////////////////////////////////////////////////////////////////////////////////////////////
/// TSMC Library/IP Product
/// Filename: tpz973gv.v
/// Technology: log018
/// Product Type: Standard I/O
/// Product Name: tpz973gv
/// Version: 270a
////////////////////////////////////////////////////////////////////////////////////////////
////
///  STATEMENT OF USE
///
///  This information contains confidential and proprietary information of TSMC.
///  No part of this information may be reproduced, transmitted, transcribed,
///  stored in a retrieval system, or translated into any human or computer
///  language, in any form or by any means, electronic, mechanical, magnetic,
///  optical, chemical, manual, or otherwise, without the prior written permission
///  of TSMC.  This information was prepared for informational purpose and is for
///  use by TSMC's customers only.  TSMC reserves the right to make changes in the
///  information at any time and without notice.
///
////////////////////////////////////////////////////////////////////////////////////////////
`timescale 1ns/10ps

`celldefine
module PCI33DGZ (I, OEN, PAD, C);
   input I, OEN;
   inout PAD;
   output C;
   bufif0               (PAD, I, OEN);
   buf                  (C, PAD);
   always @(PAD)
      begin
        if (!$test$plusargs("bus_conflict_off"))
           if ($countdrivers(PAD) && (PAD === 1'bx))
               $display("%t ++BUS CONFLICT++ : %m", $realtime);
      end
   specify
      (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
      (PAD => C)=(0, 0);
   endspecify
endmodule
`endcelldefine

`celldefine
module PCI33SDGZ (I, OEN, PAD, C);
   input I, OEN;
   inout PAD;
   output C;
   bufif0               (PAD, I, OEN);
   buf                  (C, PAD);
   always @(PAD)
      begin
        if (!$test$plusargs("bus_conflict_off"))
           if ($countdrivers(PAD) && (PAD === 1'bx))
               $display("%t ++BUS CONFLICT++ : %m", $realtime);
      end
   specify
      (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
      (PAD => C)=(0, 0);
   endspecify
endmodule
`endcelldefine

`celldefine
module PCI66DGZ (I, OEN, PAD, C);
   input I, OEN;
   inout PAD;
   output C;
   bufif0               (PAD, I, OEN);
   buf                  (C, PAD);
   always @(PAD)
      begin
        if (!$test$plusargs("bus_conflict_off"))
           if ($countdrivers(PAD) && (PAD === 1'bx))
               $display("%t ++BUS CONFLICT++ : %m", $realtime);
      end
   specify
      (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
      (PAD => C)=(0, 0);
   endspecify
endmodule
`endcelldefine

`celldefine
module PCI66SDGZ (I, OEN, PAD, C);
   input I, OEN;
   inout PAD;
   output C;
   bufif0               (PAD, I, OEN);
   buf                  (C, PAD);
   always @(PAD)
      begin
        if (!$test$plusargs("bus_conflict_off"))
           if ($countdrivers(PAD) && (PAD === 1'bx))
               $display("%t ++BUS CONFLICT++ : %m", $realtime);
      end
   specify
      (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
      (PAD => C)=(0, 0);
   endspecify
endmodule
`endcelldefine

`celldefine
module PDB02DGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    bufif0	(PAD, I, OEN);
    buf		(C, PAD);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PDB02SDGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    bufif0	(PAD, I, OEN);
    buf		(C, PAD);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PDB04DGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    bufif0	(PAD, I, OEN);
    buf		(C, PAD);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PDB04SDGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    bufif0	(PAD, I, OEN);
    buf		(C, PAD);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PDB08DGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    bufif0	(PAD, I, OEN);
    buf		(C, PAD);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PDB08SDGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    bufif0	(PAD, I, OEN);
    buf		(C, PAD);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PDB12DGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    bufif0	(PAD, I, OEN);
    buf		(C, PAD);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PDB12SDGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    bufif0	(PAD, I, OEN);
    buf		(C, PAD);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PDB16DGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    bufif0	(PAD, I, OEN);
    buf		(C, PAD);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PDB16SDGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    bufif0	(PAD, I, OEN);
    buf		(C, PAD);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PDB24DGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    bufif0	(PAD, I, OEN);
    buf		(C, PAD);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PDB24SDGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    bufif0	(PAD, I, OEN);
    buf		(C, PAD);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PDD02DGZ (I, OEN, PAD, C);
  inout PAD;
  input I, OEN;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0; 
    lastPAD=PAD;
 
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDD02SDGZ (I, OEN, PAD, C);
  inout PAD;
  input I, OEN;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0; 
    lastPAD=PAD;
 
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDD04DGZ (I, OEN, PAD, C);
  inout PAD;
  input I, OEN;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0; 
    lastPAD=PAD;
 
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDD04SDGZ (I, OEN, PAD, C);
  inout PAD;
  input I, OEN;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0; 
    lastPAD=PAD;
 
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDD08DGZ (I, OEN, PAD, C);
  inout PAD;
  input I, OEN;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0; 
    lastPAD=PAD;
 
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDD08SDGZ (I, OEN, PAD, C);
  inout PAD;
  input I, OEN;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0; 
    lastPAD=PAD;
 
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDD12DGZ (I, OEN, PAD, C);
  inout PAD;
  input I, OEN;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0; 
    lastPAD=PAD;
 
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDD12SDGZ (I, OEN, PAD, C);
  inout PAD;
  input I, OEN;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0; 
    lastPAD=PAD;
 
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDD16DGZ (I, OEN, PAD, C);
  inout PAD;
  input I, OEN;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0; 
    lastPAD=PAD;
 
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDD16SDGZ (I, OEN, PAD, C);
  inout PAD;
  input I, OEN;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0; 
    lastPAD=PAD;
 
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDD24DGZ (I, OEN, PAD, C);
  inout PAD;
  input I, OEN;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0; 
    lastPAD=PAD;
 
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDD24SDGZ (I, OEN, PAD, C);
  inout PAD;
  input I, OEN;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0; 
    lastPAD=PAD;
 
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDDDGZ (PAD, C);
  input PAD;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;
    lastPAD=PAD;
 
  end

  specify
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDDSDGZ (PAD, C);
  input PAD;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;
    lastPAD=PAD;
 
  end

  specify
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDDW02DGZ (I, OEN, REN, PAD, C);
   input I, OEN, REN;
   inout PAD;
   output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  not    (RE, REN);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD or RE) begin
    if (PAD === 1'bz && RE) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;
    lastPAD=PAD;
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDDW04DGZ (I, OEN, REN, PAD, C);
   input I, OEN, REN;
   inout PAD;
   output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  not    (RE, REN);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD or RE) begin
    if (PAD === 1'bz && RE) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;
    lastPAD=PAD;
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDDW08DGZ (I, OEN, REN, PAD, C);
   input I, OEN, REN;
   inout PAD;
   output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  not    (RE, REN);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD or RE) begin
    if (PAD === 1'bz && RE) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;
    lastPAD=PAD;
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDDW12DGZ (I, OEN, REN, PAD, C);
   input I, OEN, REN;
   inout PAD;
   output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  not    (RE, REN);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD or RE) begin
    if (PAD === 1'bz && RE) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;
    lastPAD=PAD;
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDDW16DGZ (I, OEN, REN, PAD, C);
   input I, OEN, REN;
   inout PAD;
   output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  not    (RE, REN);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD or RE) begin
    if (PAD === 1'bz && RE) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;
    lastPAD=PAD;
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDDW24DGZ (I, OEN, REN, PAD, C);
   input I, OEN, REN;
   inout PAD;
   output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  not    (RE, REN);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD or RE) begin
    if (PAD === 1'bz && RE) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;
    lastPAD=PAD;
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDDWDGZ (PAD, C, REN);
  input PAD,REN;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  not    (RE, REN);
  buf    (C, C_buf);
  pmos   (C_buf, PAD, 1'b0);
 
  always @(PAD or RE) begin
    if (PAD === 1'bz && RE) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;
    lastPAD=PAD;
  end

  specify
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDIDGZ (PAD, C);
   input PAD;
   output C;
   buf		(C, PAD);
   specify
      (PAD => C)=(0, 0);
   endspecify
endmodule
`endcelldefine

`celldefine
module PDISDGZ (PAD, C);
   input PAD;
   output C;
   buf		(C, PAD);
   specify
      (PAD => C)=(0, 0);
   endspecify
endmodule
`endcelldefine

`celldefine
module PDO02CDG (I, PAD);
    input I;
    output PAD;
    buf		(PAD, I);
    specify
       (I => PAD)=(0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PDO04CDG (I, PAD);
    input I;
    output PAD;
    buf		(PAD, I);
    specify
       (I => PAD)=(0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PDO08CDG (I, PAD);
    input I;
    output PAD;
    buf		(PAD, I);
    specify
       (I => PAD)=(0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PDO12CDG (I, PAD);
    input I;
    output PAD;
    buf		(PAD, I);
    specify
       (I => PAD)=(0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PDO16CDG (I, PAD);
    input I;
    output PAD;
    buf		(PAD, I);
    specify
       (I => PAD)=(0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PDO24CDG (I, PAD);
    input I;
    output PAD;
    buf		(PAD, I);
    specify
       (I => PAD)=(0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PDT02DGZ (I, OEN, PAD);
    input I, OEN;
    output PAD;
    bufif0	(PAD, I, OEN);
    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PDT04DGZ (I, OEN, PAD);
    input I, OEN;
    output PAD;
    bufif0	(PAD, I, OEN);
    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PDT08DGZ (I, OEN, PAD);
    input I, OEN;
    output PAD;
    bufif0	(PAD, I, OEN);
    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PDT12DGZ (I, OEN, PAD);
    input I, OEN;
    output PAD;
    bufif0	(PAD, I, OEN);
    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PDT16DGZ (I, OEN, PAD);
    input I, OEN;
    output PAD;
    bufif0	(PAD, I, OEN);
    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PDT24DGZ (I, OEN, PAD);
    input I, OEN;
    output PAD;
    bufif0	(PAD, I, OEN);
    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PDU02DGZ (I, OEN, PAD, C);
  input I, OEN;
  inout PAD;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;
 
    lastPAD=PAD;
 
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDU02SDGZ (I, OEN, PAD, C);
  input I, OEN;
  inout PAD;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;
 
    lastPAD=PAD;
 
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDU04DGZ (I, OEN, PAD, C);
  input I, OEN;
  inout PAD;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;
 
    lastPAD=PAD;
 
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDU04SDGZ (I, OEN, PAD, C);
  input I, OEN;
  inout PAD;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;
 
    lastPAD=PAD;
 
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDU08DGZ (I, OEN, PAD, C);
  input I, OEN;
  inout PAD;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;
 
    lastPAD=PAD;
 
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDU08SDGZ (I, OEN, PAD, C);
  input I, OEN;
  inout PAD;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;
 
    lastPAD=PAD;
 
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDU12DGZ (I, OEN, PAD, C);
  input I, OEN;
  inout PAD;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;
 
    lastPAD=PAD;
 
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDU12SDGZ (I, OEN, PAD, C);
  input I, OEN;
  inout PAD;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;
 
    lastPAD=PAD;
 
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDU16DGZ (I, OEN, PAD, C);
  input I, OEN;
  inout PAD;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;
 
    lastPAD=PAD;
 
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDU16SDGZ (I, OEN, PAD, C);
  input I, OEN;
  inout PAD;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;
 
    lastPAD=PAD;
 
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDU24DGZ (I, OEN, PAD, C);
  input I, OEN;
  inout PAD;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;
 
    lastPAD=PAD;
 
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDU24SDGZ (I, OEN, PAD, C);
  input I, OEN;
  inout PAD;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;
 
    lastPAD=PAD;
 
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDUDGZ (PAD, C);
  input PAD;
  output C;

  parameter PullTime = 100000;

  reg lastPAD,pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;
    lastPAD=PAD;
  end

  specify
     (PAD => C)=(0,0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDUSDGZ (PAD, C);
  input PAD;
  output C;

  parameter PullTime = 100000;

  reg lastPAD,pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;
    lastPAD=PAD;
  end

  specify
     (PAD => C)=(0,0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDUW02DGZ (I, OEN, REN, PAD, C);
  input I, OEN, REN;
  inout PAD;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  not    (RE, REN);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD or RE) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);

    if (PAD === 1'bz && RE) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDUW04DGZ (I, OEN, REN, PAD, C);
  input I, OEN, REN;
  inout PAD;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  not    (RE, REN);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD or RE) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);

    if (PAD === 1'bz && RE) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDUW08DGZ (I, OEN, REN, PAD, C);
  input I, OEN, REN;
  inout PAD;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  not    (RE, REN);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD or RE) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);

    if (PAD === 1'bz && RE) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDUW12DGZ (I, OEN, REN, PAD, C);
  input I, OEN, REN;
  inout PAD;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  not    (RE, REN);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD or RE) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);

    if (PAD === 1'bz && RE) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDUW16DGZ (I, OEN, REN, PAD, C);
  input I, OEN, REN;
  inout PAD;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  not    (RE, REN);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD or RE) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);

    if (PAD === 1'bz && RE) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDUW24DGZ (I, OEN, REN, PAD, C);
  input I, OEN, REN;
  inout PAD;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  not    (RE, REN);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD or RE) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);

    if (PAD === 1'bz && RE) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDUWDGZ (PAD, C, REN);
  input PAD,REN;
  output C;

  parameter PullTime = 100000;

  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  not    (RE, REN);
  buf    (C, C_buf);
  pmos	 (C_buf, PAD, 1'b0);

  always @(PAD or RE) begin
    if (PAD === 1'bz && RE) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;
    lastPAD=PAD;
  end

  specify
     (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PDXO01DG (XIN, XOUT, XC);
    input XIN;
    output XOUT, XC;
    not		(XOUT, XIN);
    not		(XC, XOUT);
    specify
       (XIN => XC)=(0, 0);
       (XIN => XOUT)=(0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PDXO02DG (XIN, XOUT, XC);
    input XIN;
    output XOUT, XC;
    not		(XOUT, XIN);
    not		(XC, XOUT);
    specify
       (XIN => XC)=(0, 0);
       (XIN => XOUT)=(0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PDXO03DG (XIN, XOUT, XC);
    input XIN;
    output XOUT, XC;
    not		(XOUT, XIN);
    not		(XC, XOUT);
    specify
       (XIN => XC)=(0, 0);
       (XIN => XOUT)=(0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PDXOE1DG (XC, XOUT, XIN, E);
    input XIN, E;
    output XC, XOUT;
    not                  (XC, XOUT);
    nand                 (XOUT, E, XIN);
    specify
       (E => XC)=(0, 0);
       (E => XOUT)=(0, 0);
       (XIN => XC)=(0, 0);
       (XIN => XOUT)=(0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PDXOE2DG (XC, XOUT, XIN, E);
    input XIN, E;
    output XC, XOUT;
    not                  (XC, XOUT);
    nand                 (XOUT, E, XIN);
    specify
       (E => XC)=(0, 0);
       (E => XOUT)=(0, 0);
       (XIN => XC)=(0, 0);
       (XIN => XOUT)=(0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PDXOE3DG (XC, XOUT, XIN, E);
    input XIN, E;
    output XC, XOUT;
    not                  (XC, XOUT);
    nand                 (XOUT, E, XIN);
    specify
       (E => XC)=(0, 0);
       (E => XOUT)=(0, 0);
       (XIN => XC)=(0, 0);
       (XIN => XOUT)=(0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PRB08DGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    bufif0	(PAD, I, OEN);
    buf		(C, PAD);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PRB08SDGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    bufif0	(PAD, I, OEN);
    buf		(C, PAD);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PRB12DGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    bufif0	(PAD, I, OEN);
    buf		(C, PAD);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PRB12SDGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    bufif0	(PAD, I, OEN);
    buf		(C, PAD);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PRB16DGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    bufif0	(PAD, I, OEN);
    buf		(C, PAD);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PRB16SDGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    bufif0	(PAD, I, OEN);
    buf		(C, PAD);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PRB24DGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    bufif0	(PAD, I, OEN);
    buf		(C, PAD);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PRB24SDGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    bufif0	(PAD, I, OEN);
    buf		(C, PAD);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PRCUT ();
endmodule
`endcelldefine

`celldefine
module PRD08DGZ (I, OEN, PAD, C);
  inout PAD;
  input I, OEN;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0; 
    lastPAD=PAD;
 
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PRD08SDGZ (I, OEN, PAD, C);
  inout PAD;
  input I, OEN;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0; 
    lastPAD=PAD;
 
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PRD12DGZ (I, OEN, PAD, C);
  inout PAD;
  input I, OEN;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0; 
    lastPAD=PAD;
 
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PRD12SDGZ (I, OEN, PAD, C);
  inout PAD;
  input I, OEN;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0; 
    lastPAD=PAD;
 
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PRD16DGZ (I, OEN, PAD, C);
  inout PAD;
  input I, OEN;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0; 
    lastPAD=PAD;
 
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PRD16SDGZ (I, OEN, PAD, C);
  inout PAD;
  input I, OEN;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0; 
    lastPAD=PAD;
 
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PRD24DGZ (I, OEN, PAD, C);
  inout PAD;
  input I, OEN;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0; 
    lastPAD=PAD;
 
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PRD24SDGZ (I, OEN, PAD, C);
  inout PAD;
  input I, OEN;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0; 
    lastPAD=PAD;
 
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PRDW08DGZ (I, OEN, REN, PAD, C);
   input I, OEN, REN;
   inout PAD;
   output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  not    (RE, REN);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD or RE) begin
    if (PAD === 1'bz && RE) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;
    lastPAD=PAD;
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PRDW12DGZ (I, OEN, REN, PAD, C);
   input I, OEN, REN;
   inout PAD;
   output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  not    (RE, REN);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD or RE) begin
    if (PAD === 1'bz && RE) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;
    lastPAD=PAD;
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PRDW16DGZ (I, OEN, REN, PAD, C);
   input I, OEN, REN;
   inout PAD;
   output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  not    (RE, REN);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD or RE) begin
    if (PAD === 1'bz && RE) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;
    lastPAD=PAD;
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PRDW24DGZ (I, OEN, REN, PAD, C);
   input I, OEN, REN;
   inout PAD;
   output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  not    (RE, REN);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD or RE) begin
    if (PAD === 1'bz && RE) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;
    lastPAD=PAD;
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PRO08CDG (I, PAD);
    input I;
    output PAD;
    buf		(PAD, I);
    specify
       (I => PAD)=(0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PRO12CDG (I, PAD);
    input I;
    output PAD;
    buf		(PAD, I);
    specify
       (I => PAD)=(0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PRO16CDG (I, PAD);
    input I;
    output PAD;
    buf		(PAD, I);
    specify
       (I => PAD)=(0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PRO24CDG (I, PAD);
    input I;
    output PAD;
    buf		(PAD, I);
    specify
       (I => PAD)=(0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PRT08DGZ (I, OEN, PAD);
    input I, OEN;
    output PAD;
    bufif0	(PAD, I, OEN);
    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PRT12DGZ (I, OEN, PAD);
    input I, OEN;
    output PAD;
    bufif0	(PAD, I, OEN);
    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PRT16DGZ (I, OEN, PAD);
    input I, OEN;
    output PAD;
    bufif0	(PAD, I, OEN);
    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PRT24DGZ (I, OEN, PAD);
    input I, OEN;
    output PAD;
    bufif0	(PAD, I, OEN);
    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    endspecify
endmodule
`endcelldefine

`celldefine
module PRU08DGZ (I, OEN, PAD, C);
  input I, OEN;
  inout PAD;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;
 
    lastPAD=PAD;
 
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PRU08SDGZ (I, OEN, PAD, C);
  input I, OEN;
  inout PAD;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;
 
    lastPAD=PAD;
 
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PRU12DGZ (I, OEN, PAD, C);
  input I, OEN;
  inout PAD;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;
 
    lastPAD=PAD;
 
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PRU12SDGZ (I, OEN, PAD, C);
  input I, OEN;
  inout PAD;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;
 
    lastPAD=PAD;
 
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PRU16DGZ (I, OEN, PAD, C);
  input I, OEN;
  inout PAD;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;
 
    lastPAD=PAD;
 
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PRU16SDGZ (I, OEN, PAD, C);
  input I, OEN;
  inout PAD;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;
 
    lastPAD=PAD;
 
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PRU24DGZ (I, OEN, PAD, C);
  input I, OEN;
  inout PAD;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;
 
    lastPAD=PAD;
 
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PRU24SDGZ (I, OEN, PAD, C);
  input I, OEN;
  inout PAD;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin
 
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);
 
    if (PAD === 1'bz) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;
 
    lastPAD=PAD;
 
  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PRUW08DGZ (I, OEN, REN, PAD, C);
  input I, OEN, REN;
  inout PAD;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  not    (RE, REN);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD or RE) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);

    if (PAD === 1'bz && RE) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PRUW12DGZ (I, OEN, REN, PAD, C);
  input I, OEN, REN;
  inout PAD;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  not    (RE, REN);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD or RE) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);

    if (PAD === 1'bz && RE) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PRUW16DGZ (I, OEN, REN, PAD, C);
  input I, OEN, REN;
  inout PAD;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  not    (RE, REN);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD or RE) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);

    if (PAD === 1'bz && RE) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PRUW24DGZ (I, OEN, REN, PAD, C);
  input I, OEN, REN;
  inout PAD;
  output C;

  parameter PullTime = 100000;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  not    (RE, REN);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD or RE) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t ++BUS CONFLICT++ : %m", $realtime);

    if (PAD === 1'bz && RE) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end

  specify
    (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify

endmodule
`endcelldefine

`celldefine
module PVDD1ANA (AVDD);
    inout   AVDD;
    tran (AVDD,AVDD);
endmodule
`endcelldefine

`celldefine
module PVDD1DGZ (VDD);
    inout   VDD;
    tran (VDD,VDD);
endmodule
`endcelldefine

`celldefine
module PVDD2ANA (AVDD);
    inout   AVDD;
    tran (AVDD,AVDD);
endmodule
`endcelldefine

`celldefine
module PVDD2DGZ (VD33);
    inout   VD33;
    tran (VD33,VD33);
endmodule
`endcelldefine

`celldefine
module PVDD2POC (VD33);
    inout   VD33;
    tran (VD33,VD33);
endmodule
`endcelldefine

`celldefine
module PVSS1ANA (AVSS);
    inout   AVSS;
    tran (AVSS,AVSS);
endmodule

`endcelldefine

`celldefine
module PVSS1DGZ (VSS);
    inout   VSS;
    tran (VSS,VSS);
endmodule
`endcelldefine

`celldefine
module PVSS2ANA (AVSS);
    inout   AVSS;
    tran (AVSS,AVSS);
endmodule

`endcelldefine

`celldefine
module PVSS2DGZ (VSSPST);
    inout   VSSPST;
    tran (VSSPST,VSSPST);
endmodule
`endcelldefine

`celldefine
module PVSS3DGZ (VSS);
    inout   VSS;
    tran (VSS,VSS);
endmodule
`endcelldefine

