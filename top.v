module top(
    input [7:0] sw,
    output [5:0] led
);

light cir1(
    .A(sw[0]),
    .B(sw[1]),
    .Y(led[0])
);

adder cir2(
    .A(sw[2]),
    .B(sw[3]),
    .Y(led[1]),
    .Carry(led[2])
);

wire C;
full_adder cir3(
    .A(sw[4]),
    .B(sw[6]),
    .Cin(0),
    .Cout(C),
    .Y(led[3])
);
full_adder cir4(
    .A(sw[5]),
    .B(sw[7]),
    .Cin(C),
    .Cout(led[5]),
    .Y(led[4])
);


endmodule
