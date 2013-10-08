#!/usr/bin/booi
import System
szero=len(len([]).ToString())
sone=szero<<szero
stwo=szero<<(szero+szero)
sthree=szero<<(szero+szero+szero)
sfour=szero<<(szero+szero+szero+szero)
sfive=szero<<(szero+szero+szero+szero+szero)
ssix=szero<<(szero+szero+szero+szero+szero+szero)

str=Convert.ToChar(ssix|sthree).ToString()
str+=Convert.ToChar(ssix|sfive|stwo|szero).ToString()
str+=Convert.ToChar(ssix|sfive|sthree|stwo).ToString()
str+=Convert.ToChar(ssix|sfive|sthree|stwo).ToString()
str+=Convert.ToChar(ssix|sfive|sthree|stwo|sone|szero).ToString()
str+=Convert.ToChar(sfive).ToString()
str+=Convert.ToChar(ssix|sfour|stwo|sone|szero).ToString()
str+=Convert.ToChar(ssix|sfive|sthree|stwo|sone|szero).ToString()
str+=Convert.ToChar(ssix|sfive|sfour|sone).ToString()
str+=Convert.ToChar(ssix|sfive|sthree|stwo).ToString()
str+=Convert.ToChar(ssix|sfive|stwo).ToString()
print(str)