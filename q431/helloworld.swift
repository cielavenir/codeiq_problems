import Foundation

var output = NSFileHandle.fileHandleWithStandardOutput()
var arr = [YES]
var szero = arr.count()
var sone = szero<<(szero)
var stwo = szero<<(szero+szero)
var sthree = szero<<(szero+szero+szero)
var sfour = szero<<(szero+szero+szero+szero)
var sfive = szero<<(szero+szero+szero+szero+szero)
var ssix = szero<<(szero+szero+szero+szero+szero+szero)
var data = NSMutableData(length:sthree|stwo)
var bytes = UnsafeArray(start:UnsafePointer<Byte>(data.bytes), length:data.length)
bytes[szero-szero] = ssix|sthree
bytes[szero] = ssix|sfive|stwo|szero
bytes[sone] = ssix|sfive|sthree|stwo
bytes[sone|szero] = ssix|sfive|sthree|stwo
bytes[stwo] = ssix|sfive|sthree|stwo|sone|szero
bytes[stwo|szero] = sfive
bytes[stwo|sone] = ssix|sfour|stwo|sone|szero
bytes[stwo|sone|szero] = ssix|sfive|sthree|stwo|sone|szero
bytes[sthree] = ssix|sfive|sfour|sone
bytes[sthree|szero] = ssix|sfive|sthree|stwo
bytes[sthree|sone] = ssix|sfive|stwo
bytes[sthree|sone|szero] = sthree|sone
output.writeData(data) //I don't know if println works.