module HelloWorld
	sub Main(ByVal args() as String)
		dim szero,sone,stwo,sthree,sfour,sfive,ssix as integer
		szero=(new integer(){}).Length.ToString().Length
		sone=szero<<szero
		stwo=szero<<(szero+szero)
		sthree=szero<<(szero+szero+szero)
		sfour=szero<<(szero+szero+szero+szero)
		sfive=szero<<(szero+szero+szero+szero+szero)
		ssix=szero<<(szero+szero+szero+szero+szero+szero)

		Console.Write(Chr(ssix+sthree))
		Console.Write(Chr(ssix+sfive+stwo+szero))
		Console.Write(Chr(ssix+sfive+sthree+stwo))
		Console.Write(Chr(ssix+sfive+sthree+stwo))
		Console.Write(Chr(ssix+sfive+sthree+stwo+sone+szero))
		Console.Write(Chr(sfive))
		Console.Write(Chr(ssix+sfour+stwo+sone+szero))
		Console.Write(Chr(ssix+sfive+sthree+stwo+sone+szero))
		Console.Write(Chr(ssix+sfive+sfour+sone))
		Console.Write(Chr(ssix+sfive+sthree+stwo))
		Console.Write(Chr(ssix+sfive+stwo))
		Console.WriteLine()
	end sub
end module