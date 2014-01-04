#!/usr/bin/env elixir
defmodule HelloWorld do
	def one() do size {{}} end
	def two() do one()+one() end
	def x(n) do two()*n end
	def y(n) do two()*n+one() end
	def greet() do
		IO.puts elem(String.from_char_list([
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
			x(x(y(x(x(y(one()))))))
		]),1)
	end
end
HelloWorld.greet