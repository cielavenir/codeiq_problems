//usr/bin/env fsharpi $0 $@;exit
let rec one () = Array.length [|true|];;
let rec two () = one()+one();;
let rec x (n) = two()*n;;
let rec y (n) = two()*n+one();;
System.Console.Write(char(x(x(x(y(x(x(one()))))))));;
System.Console.Write(char(y(x(y(x(x(y(one()))))))));;
System.Console.Write(char(x(x(y(y(x(y(one()))))))));;
System.Console.Write(char(x(x(y(y(x(y(one()))))))));;
System.Console.Write(char(y(y(y(y(x(y(one()))))))));;
System.Console.Write(char(x(x(x(x(x(one())))))));;
System.Console.Write(char(y(y(y(x(y(x(one()))))))));;
System.Console.Write(char(y(y(y(y(x(y(one()))))))));;
System.Console.Write(char(x(y(x(x(y(y(one()))))))));;
System.Console.Write(char(x(x(y(y(x(y(one()))))))));;
System.Console.Write(char(x(x(y(x(x(y(one()))))))));;
System.Console.Write(char(x(y(x(one())))));;