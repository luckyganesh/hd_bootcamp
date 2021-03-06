module Cell(out, clk, neighbouringCells, initialState);
  input clk, initialState;
  input [7:0] neighbouringCells;
  output out;
  
  reg out, initialized;
  wire [3:0] liveCells;
  
  initial begin
    initialized = 0;
  end
  
  assign liveCells = neighbouringCells[0] + neighbouringCells[1] + neighbouringCells[2] + neighbouringCells[3] + neighbouringCells[4] + neighbouringCells[5] + neighbouringCells[6] + neighbouringCells[7];  
  always @ ( posedge clk)
    begin
      if(initialized == 0)
        begin 
          out = initialState;
          initialized = 1;
        end
      else if ( liveCells == 2'b11 )
        out = 1'b1;
      else if( liveCells != 2'b10 )
        out = 1'b0;
    end
endmodule
