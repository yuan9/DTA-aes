//---------------------------------------------------------------------
//               Copyright(c) Synopsys, Inc.                           
//     All Rights reserved - Unpublished -rights reserved under        
//     the Copyright laws of the United States of America.             
//                                                                     
//  U.S. Patents: 7,093,156 B1 and 7,406,620 B2 (and more pending).    
//                                                                     
//  This file includes the Confidential information of Synopsys, Inc.  
//  and TSMC.                                                          
//  The receiver of this Confidential Information shall not disclose   
//  it to any third party and shall protect its confidentiality by     
//  using the same degree of care, but not less than a reasonable      
//  degree of care, as the receiver uses to protect receiver's own     
//  Confidential Information.                                          
//  Licensee acknowledges and agrees that all output generated for     
//  Licensee by Synopsys, Inc. as described in the pertinent Program   
//  Schedule(s), or generated by Licensee through use of any Compiler  
//  licensed hereunder contains information that complies with the     
//  Virtual Component Identification Physical Tagging Standard (VCID)  
//  as maintained by the Virtual Socket Interface Alliance (VSIA).     
//  Such information may be expressed in GDSII Layer 63 or other such  
//  layer designated by the VSIA, hardware definition languages, or    
//  other formats.  Licensee is not authorized to alter or change any  
//  such information.                                                  
//---------------------------------------------------------------------
//                                                                     
//  Built for linux64 and running on linux64.                          
//                                                                     
//  Software           : Rev: Q-2020.03                                
//  Library Format     : Rev: 1.05.00                                  
//  Compiler Name      : ts18ugfs1p11aspul512sa05                      
//  Platform           : Linux3.10.0-1062.18.1.el7.x86_64              
//                     : #1 SMP Tue Mar 17 23:49:17 UTC 2020x86_64     
//  Date of Generation : Tue Apr 28 17:11:51 EDT 2020                  
//                                                                     
//---------------------------------------------------------------------
//   --------------------------------------------------------------     
//                       Template Revision : 1.2.7                      
//   --------------------------------------------------------------     


//                      * Synchronous, 1-Port ULP *                   
//                THIS IS A SYNCHRONOUS 1-PORT MEMORY MODEL           
//                                                                    
//   Memory Name:aspulsgfs1p16384x8cm16sw0                            
//   Memory Size:16384 words x 8 bits                                 
//                                                                    
//                               PORT NAME                            
//                               ---------                            
//               Output Ports                                         
//                                   Q[7:0]                           
//               Input Ports:                                         
//                                   ADR[13:0]                        
//                                   D[7:0]                           
//                                   WE                               
//                                   OE                               
//                                   ME                               
//                                   CLK                              



`resetall 

`timescale 1 ns / 1 ps 
`celldefine 

`define True    1'b1
`define False   1'b0

module aspulsgfs1p16384x8cm16sw0 ( Q, ADR, D, WE, OE, ME, CLK);


output  [7:0] Q;
input  [13:0] ADR;
input  [7:0] D;
input WE;
input OE;
input ME;
input CLK;


// Local registers, wires, etc
`ifdef MEM_CHECK_OFF
parameter MES_ALL = "OFF";
`else
parameter MES_ALL = "ON";
`endif

wire WE_buf;
assign WE_buf =  WE;  
wire OE_buf;
assign OE_buf =  OE;  
wire ME_buf;
assign ME_buf =  ME;  

generic_aspulsgfs1p16384x8cm16sw0  #(MES_ALL) uut (Q,ADR,D,WE_buf,OE_buf,ME_buf,CLK);

endmodule



module generic_aspulsgfs1p16384x8cm16sw0 ( Q, ADR, D, WE, OE, ME, CLK);
parameter MES_ALL = "ON";
parameter A_addr=14, I_bit=8, I_word=16384,  rm_bit=4, wem_bit=0;

output [I_bit-1:0] Q;
input [A_addr-1:0] ADR;
input [I_bit-1:0] D;
input WE;
input OE;
input ME;
input CLK;

reg [I_bit-1:0] Q;



reg [I_bit-1:0] QI;
reg [I_bit-1:0] allX,allZ;
reg oldCLK;
reg [I_bit-1:0] mem_core_array_tmp;
real OUT_risetime;
reg [I_bit-1:0] mem_core_array [I_word-1:0];
reg OE_old ;
reg WE_old ;
reg ME_old ;
reg [13:0] ADR_old ;
reg [7:0] D_old ;

reg OE_latched ;
reg WE_latched ;
reg ME_latched ;
reg [13:0]ADR_latched ;
reg [7:0]D_latched ;

integer tempcnt;
reg [I_bit-1:0] mem_fault_array_XOR[0:I_word-1 ];
initial
begin
for (tempcnt=0; tempcnt<= I_word-1; tempcnt=tempcnt+1)
mem_fault_array_XOR[tempcnt]=0;
  `ifdef MEMFAULTINJ
    if ($test$plusargs("asap_error")) 
         mem_fault_array_XOR[0] = 1'b1 << 7;
   `endif
end

reg mes_all_valid;



integer i,j;
//-- Initialization Valiable
initial begin
         mes_all_valid = 1'b0;
        $timeformat(-9,3," ns",8);
        for ( i=0; i < I_bit ; i=i+1 ) begin
                allX[i] = 1'bx ; allZ[i] = 1'bz ;
        end
end 
always @( OE or negedge CLK )
begin
  if ( CLK == 1'b0)
    OE_old  =  OE ;
end

always @( WE or negedge CLK )
begin
  if ( CLK == 1'b0)
    WE_old  =  WE ;
end

always @( ME or negedge CLK )
begin
  if ( CLK == 1'b0)
    ME_old  =  ME ;
end

always @( ADR or negedge CLK )
begin
  if ( CLK == 1'b0)
    ADR_old  =  ADR ;
end

always @( D or negedge CLK )
begin
  if ( CLK == 1'b0)
    D_old  =  D ;
end


   
//====< Aport >====
//-- Aport Data Output
always @ ( OE or QI ) begin
                if( OE ) begin
                    Q <= QI;
                end
                else if( !OE ) begin
                    Q <= allZ;
                end
                else if( OE===1'bx ) begin
                         if( MES_ALL=="ON" && CLK===1'b1 && OUT_risetime !=$realtime && $realtime != 0 && mes_all_valid) begin
                                 $display("<<OE unknown>>");
                                 $display("      time=%t; instance=%m (ULP)",$realtime);
                         end
                        Q <= allX;
                end
                OUT_risetime <= $realtime;
end


//-- Internal Data Set
always @( posedge CLK )
begin
     OE_latched  =  OE_old ;
     WE_latched  =  WE_old ;
     ME_latched  =  ME_old ;
     ADR_latched  =  ADR_old ;
     D_latched  =  D_old ;
    oldCLK <= CLK;
    if( CLK===1'bx ) 
    begin   //CLK="0->X"
      if( MES_ALL=="ON"  && mes_all_valid)
      begin
        $display("<<CLK unknown>>");
        $display("      time=%t; instance=%m (ULP)",$realtime);
      end
      for ( i=0; i<I_word ; i=i+1 ) begin
                 mem_core_array[i] <= allX;
             end
      QI <= allX;
    end
    else if( oldCLK===1'bx && CLK===1'b1 )
    begin
      QI <= allX;
    end
//---- Normal Mode
    else
    begin
      if( ME_latched===1'bx )
      begin // ME=X
        `ifdef virage_ignore_read_addx
         if( WE_latched  !== 1'b0 )
         begin
           for ( i=0; i<I_word ; i=i+1 ) begin
               mem_core_array[i] <= allX;
           end
         end
        `else
           for ( i=0; i<I_word ; i=i+1 ) begin
               mem_core_array[i] <= allX;
           end
        `endif
          if( MES_ALL=="ON"  && mes_all_valid)
          begin
              $display("<<ME unknown>>");
            $display("      time=%t; instance=%m (ULP)",$realtime);
          end
        if( WE_latched!==0 )
        begin //WE != 0
          if( ^ADR_latched===1'bx )
          begin    //Memory Break(All)
              if( MES_ALL=="ON"  && mes_all_valid)
              begin
                  $display("<<ADR unknown , memory broken>>") ;
                $display("      time=%t; instance=%m (ULP)",$realtime);
              end
 `ifdef virage_ignore_read_addx
`else
           for ( i=0; i<I_word ; i=i+1 ) begin
               mem_core_array[i] <= allX;
           end
`endif
          end
          else if(  ADR_latched >= I_word )
          begin
              if( MES_ALL=="ON"  && mes_all_valid) 
              begin
                  $display("<<ADR Fix, But memory broken>>") ;
                $display("      time=%t; instance=%m (ULP)",$realtime);
              end
     for ( i=0; i<I_word ; i=i+1 ) begin
          mem_core_array[i] <= allX;
     end
          end
        end // WE != 0
        if( WE_latched == 1'b0 )
          QI <= allX;
      end // ME = X
      else if( ME_latched )
      begin //ME=1
        if( !WE_latched )
        begin
          if(^ADR_latched===1'bx ) 
          begin  //Memory Break(All)
              if( MES_ALL=="ON"  && mes_all_valid)
              begin
                  $display("<<ADR unknown>>") ;
                $display("      time=%t; instance=%m (ULP)",$realtime);
              end
 `ifdef virage_ignore_read_addx
 `else
            for ( i=0; i<I_word ; i=i+1 ) begin
                mem_core_array[i] <= allX;
            end
 `endif
            QI <= allX;
          end
          else if( ADR_latched >= I_word )
          begin
            if( MES_ALL=="ON"  && mes_all_valid) 
            begin
              $display("<<No memory cell at Address=%b ( %d )>>",ADR,ADR);
              $display("      time=%t; instance=%m (ULP)",$realtime);
            end
            QI <= allX;
          end
          else 
          begin
            QI <= mem_core_array[ADR_latched]^mem_fault_array_XOR[ADR_latched]; 
          end    //ADR switch
        end    //WE switch
//---- WriteMode
        else if( WE_latched )
        begin
          if(^ADR_latched===1'bx )
          begin
              if( MES_ALL=="ON"  && mes_all_valid)
              begin
                $display("<<ADR unknown , memory broken>>") ;
                $display("      time=%t; instance=%m (ULP)",$realtime);
              end
             for ( i=0; i<I_word ; i=i+1 ) begin
                mem_core_array[i] <= allX;
             end
             if( WE_latched == 1'b0 )
             QI <= allX;
          end
          else if( ADR_latched >= I_word )
          begin
            if( MES_ALL=="ON"  && mes_all_valid)
            begin
              $display("<<No memory cell at Address=%b ( %d )>>",ADR,ADR);
              $display("      time=%t; instance=%m (ULP)",$realtime);
            end
            QI <= allX;
          end
          else 
          begin
         //NormalWrite
                    mem_core_array[ADR_latched] <= D_latched;
                    if (!mes_all_valid )
                      mes_all_valid = 1'b1;
          end  //ADR switch
        end   //WE switch
        else if( WE===1'bx )
        begin
            if( MES_ALL=="ON"  && mes_all_valid)
            begin
                $display("<<WE unknown>>");
              $display("      time=%t; instance=%m (ULP)",$realtime);
            end
          if( ^ADR===1'bx )
          begin   //Memory Break(All)
              if( MES_ALL=="ON"  && mes_all_valid)
              begin
                  $display("<<ADR unknown , memory broken>>") ;
                $display("      time=%t; instance=%m (ULP)",$realtime);
              end
          for ( i=0; i<I_word ; i=i+1 ) begin
               mem_core_array[i] <= allX;
          end
             QI <= allX;
           end
           else if( ADR_latched >= I_word )
           begin
             if( MES_ALL=="ON"  && mes_all_valid)
             begin
               $display("<<No memory cell at Address=%b ( %d )>>",ADR,ADR);
               $display("      time=%t; instance=%m (ULP)",$realtime);
             end
             QI <= allX;
           end
           else 
           begin
             mem_core_array[ADR_latched] <= allX;
           end //ADR switch
         end  //WE switch
       end
     end
 end

//---- Clock Negative Edge
always @( negedge CLK ) begin
        oldCLK <= CLK;
        if( oldCLK===1'b1 && CLK===1'bx ) begin
                if( MES_ALL=="ON"  && mes_all_valid) begin
                        $display("<<CLK unknown>>");
                        $display("      time=%t; instance=%m (ULP)",$realtime);
                end
                 for ( i=0; i<I_word ; i=i+1 ) begin     //Memory Broken
                        mem_core_array[i] <= allX;
                 end
                QI <= allX;
        end
  end

endmodule
`endcelldefine
