module Cell(out, clk, neighbouringCells, initialState, initialize);
  input clk, initialState, initialize;
  input [7:0] neighbouringCells;
  output out;
  
  reg out;
  wire [3:0] liveCells;
  
  assign liveCells = neighbouringCells[0] + neighbouringCells[1] + neighbouringCells[2] + neighbouringCells[3] + neighbouringCells[4] + neighbouringCells[5] + neighbouringCells[6] + neighbouringCells[7];  
  always @ ( posedge clk)
    begin
      if(initialize)
          out = initialState;
      else if ( liveCells == 2'b11 )
        out = 1'b1;
      else if( liveCells != 2'b10 )
        out = 1'b0;
    end
endmodule
