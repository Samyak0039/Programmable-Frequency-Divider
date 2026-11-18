module programmable_frequency_divider(clk, reset, N, out);
    input clk, reset;
    input [3:0] N;
    output out;
    
    reg [3:0] count;
    reg out;
    
    always @(posedge clk)
    begin
        if (reset == 1'b1)
        begin
            count <= 4'b0000;
            out <= 1'b0;
        end
    
        else if (N == 4'b0000)
        begin
            count <= 4'b0000;
            out <= 1'b0;
        end
    
        else if (count == N - 1'b1)
        begin
            count <= 4'b0000;
            out <= ~out;
        end
    
        else
            count <= count + 1'b1;
    end
endmodule