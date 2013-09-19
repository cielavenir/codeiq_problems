-module(prog).
-export([main/0]).

one() -> size({true}).
two() -> one()*one()+one().
x(N) -> two()*N.
y(N) -> two()*N+one().

main() -> io:put_chars([
	x(x(x(y(x(x(one())))))),
	y(x(y(x(x(y(one())))))),
	x(x(y(y(x(y(one())))))),
	x(x(y(y(x(y(one())))))),
	y(y(y(y(x(y(one())))))),
	x(x(x(x(x(one()))))),
	y(y(y(x(y(x(one())))))),
	y(y(y(y(x(y(one())))))),
	x(y(x(x(y(y(one())))))),
	x(x(y(y(x(y(one())))))),
	x(x(y(x(x(y(one())))))),
	x(y(x(one())))
]).