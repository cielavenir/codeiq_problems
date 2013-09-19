#!/usr/bin/python
#compat with Python3
def first(iter):
	for e in iter:
		return e
	return None

#t=ord(first(iter(str(True))))
#szero=-~t-t
szero=len(str(len([])))
#szero=int(True)
sone=szero<<szero
stwo=szero<<(szero+szero)
sthree=szero<<(szero+szero+szero)
sfour=szero<<(szero+szero+szero+szero)
sfive=szero<<(szero+szero+szero+szero+szero)
ssix=szero<<(szero+szero+szero+szero+szero+szero)

str=chr(ssix|sthree)
str+=chr(ssix|sfive|stwo|szero)
str+=chr(ssix|sfive|sthree|stwo)
str+=chr(ssix|sfive|sthree|stwo)
str+=chr(ssix|sfive|sthree|stwo|sone|szero)
str+=chr(sfive)
str+=chr(ssix|sfour|stwo|sone|szero)
str+=chr(ssix|sfive|sthree|stwo|sone|szero)
str+=chr(ssix|sfive|sfour|sone)
str+=chr(ssix|sfive|sthree|stwo)
str+=chr(ssix|sfive|stwo)
print(str)