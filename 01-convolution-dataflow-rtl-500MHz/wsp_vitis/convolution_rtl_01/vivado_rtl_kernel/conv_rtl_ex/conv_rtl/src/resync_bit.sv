

`timescale 1ns / 1ns 

module resync_bit
(
    input       clk,
    output      q,
    input       d
);

(* async_reg = "true" *) logic   data0;
(* async_reg = "true" *) logic   data1;

always @ (posedge clk) begin
        data0 <= #1 d;
        data1 <= #1 data0;
end

assign q = data1;

endmodule