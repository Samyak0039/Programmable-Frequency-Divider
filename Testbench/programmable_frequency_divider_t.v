module programmable_frequency_divider_t;
reg clk, reset;
reg [3:0] N;
wire out;

programmable_frequency_divider uut(clk, reset, N, out);

initial
begin
    clk = 0;
    reset = 1;
    N = 4'b0001;

    #40
    reset = 0;

    #80
    reset = 1;
    N = 4'b0010;
    #40
    reset = 0;

    #160
    reset = 1;
    N = 4'b0011;
    #40
    reset = 0;

    #240
    reset = 1;
    N = 4'b0100;
    #40
    reset = 0;

    #320
    reset = 1;
    N = 4'b0101;
    #40
    reset = 0;

    #400
    reset = 1;
    N = 4'b0110;
    #40
    reset = 0;

    #480
    reset = 1;
    N = 4'b0111;
    #40
    reset = 0;

    #560
    reset = 1;
    N = 4'b1000;
    #40
    reset = 0;

    #640
    reset = 1;
    N = 4'b1001;
    #40
    reset = 0;

    #720
    reset = 1;
    N = 4'b1010;
    #40
    reset = 0;

    #800
    reset = 1;
    N = 4'b1011;
    #40
    reset = 0;

    #880
    reset = 1;
    N = 4'b1100;
    #40
    reset = 0;

    #960
    reset = 1;
    N = 4'b1101;
    #40
    reset = 0;

    #1040
    reset = 1;
    N = 4'b1110;
    #40
    reset = 0;

    #1120
    reset = 1;
    N = 4'b1111;
    #40
    reset = 0;

    // Reset during operation
    #40
    reset = 1;
    N = 4'b0001;
    #40
    reset = 0;

    #40
    reset = 1;
    #40
    reset = 0;

    // Test invalid input N = 0
    N = 4'b0000;
    #40

    $finish;
end
always #20 clk = ~clk;
endmodule