module traffic_controller (
    input clk,
    input reset,
    output reg [2:0] NS,
    output reg [2:0] EW
);

    localparam RED = 3'b100;
    localparam YELLOW = 3'b010;
    localparam GREEN = 3'b001;

    localparam T_GREEN = 5;
    localparam T_YELLOW = 2;

    reg [3:0] timer;
    reg [1:0] state;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= 0;
            timer <= 0;
            NS <= GREEN;
            EW <= RED;
        end else begin
            timer <= timer + 1;
            case(state)
                0: begin
                    NS <= GREEN; EW <= RED;
                    if (timer == T_GREEN) begin
                        state <= 1; timer <= 0;
                    end
                end
                1: begin
                    NS <= YELLOW; EW <= RED;
                    if (timer == T_YELLOW) begin
                        state <= 2; timer <= 0;
                    end
                end
                2: begin
                    NS <= RED; EW <= GREEN;
                    if (timer == T_GREEN) begin
                        state <= 3; timer <= 0;
                    end
                end
                3: begin
                    NS <= RED; EW <= YELLOW;
                    if (timer == T_YELLOW) begin
                        state <= 0; timer <= 0;
                    end
                end
            endcase
        end
    end
endmodule
