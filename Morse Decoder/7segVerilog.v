`timescale 1ns / 1ps

module sevseg (
    input clk,
    input  [9:0] dr,
    output reg [11:0] IO_LED2 ,
    output [3:0] IO_SSEG_SEL, 
    output reg [6:0] IO_SSEG 
   
    );
    wire [9:0] di;
    assign di=dr;
    
    reg [18:0] counter = 0; 
    parameter max = 500000;
    
    assign IO_SSEG_SEL = 4'b1110;
                      	 
    always @(posedge clk) begin
       
              
		case(di)
		     10'b0000000001 : begin IO_SSEG <= 7'b1111111; end
             10'b0000000010 : begin IO_SSEG <= 7'b0100001; end
             10'b0000000011 : begin IO_SSEG <= 7'b1110111;end
             10'b0000110100 : begin  IO_SSEG <= 7'b0100000;  end //A
             10'b0101011100 : begin IO_SSEG <= 7'b0000011; IO_LED2<= 66; end //B
             10'b0111011100 : begin IO_SSEG <= 7'b1000110; IO_LED2<= 67; end //C
             10'b0001011100 : begin IO_SSEG <= 7'b0100001; IO_LED2<= 68; end //D
             10'b0000000100 : begin IO_SSEG <= 7'b0000110; IO_LED2<= 69; end //E
             10'b0111010100 : begin IO_SSEG <= 7'b0001110;IO_LED2<= 70; end //F
             10'b0001111100 : begin IO_SSEG <= 7'b1000010;IO_LED2<= 71; end //G
             10'b0101010100 : begin IO_SSEG <= 7'b0001011;IO_LED2<= 72; end //H
             10'b0000010100 : begin IO_SSEG <= 7'b1001111;IO_LED2<= 73; end //I
             10'b1111110100 : begin IO_SSEG <= 7'b1100001;IO_LED2<= 74; end //J
             10'b0011011100 : begin IO_LED2<= 75; end //K
             10'b0101110100 : begin IO_SSEG <= 7'b1000111;IO_LED2<= 76; end //L
             10'b0000111100 : begin IO_LED2<= 77; end //M
             10'b0000011100 : begin IO_SSEG <= 7'b0101011;IO_LED2<= 78; end //N
             10'b0011111100 : begin IO_SSEG <= 7'b1000000;IO_LED2<= 79; end //O
             10'b0111110100 : begin IO_SSEG <= 7'b0001100;IO_LED2<= 80; end //P
             10'b1101111100 : begin IO_SSEG <= 7'b0011000;IO_LED2<= 81; end //Q
             10'b0001110100 : begin IO_SSEG <= 7'b0101111;IO_LED2<= 82; end //R
             10'b0001010100 : begin IO_SSEG <= 7'b0010010;IO_LED2<= 83; end //S
             10'b0000001100 : begin IO_SSEG <= 7'b0000111;IO_LED2<= 84; end //T
             10'b0011010100 : begin IO_SSEG <= 7'b1000001;IO_LED2<= 85; end //U
             10'b1101010100 : begin IO_SSEG <= 7'b1100011;IO_LED2<= 86; end //V
             10'b0011110100 : begin IO_LED2<= 87; end //W
             10'b1101011100 : begin IO_LED2<= 88; end //X
             10'b1111011100 : begin  IO_SSEG <= 7'b0010001; IO_LED2<= 89; end //Y
             10'b0101111100 : begin IO_LED2<= 90; end //Z
		 endcase
        
       
    
    end    
endmodule
