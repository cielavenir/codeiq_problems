implicit none
integer::szero,sone,stwo,sthree,sfour,sfive,ssix
character::H,e,l,o,sp,W,r,d,lp,rp,a
szero=szero/szero !lol
sone=szero+szero
stwo=sone+sone
sthree=stwo+stwo
sfour=sthree+sthree
sfive=sfour+sfour
ssix=sfive+sfive
H=char(ssix+sthree)
e=char(ssix+sfive+stwo+szero)
l=char(ssix+sfive+sthree+stwo)
o=char(ssix+sfive+sthree+stwo+sone+szero)
sp=char(sfive)
W=char(ssix+sfour+stwo+sone+szero)
r=char(ssix+sfive+sfour+sone)
d=char(ssix+sfive+stwo)
lp=char(sfive+sthree)
rp=char(sfive+sthree+szero)
a=char(ssix+sfive+szero)
write(*,lp//a//rp),H//e//l//l//o//sp//W//o//r//l//d
end