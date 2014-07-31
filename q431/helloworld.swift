import Foundation

let arr = [true]
let szero = arr.count
let sone = szero<<(szero)
let stwo = szero<<(szero+szero)
let sthree = szero<<(szero+szero+szero)
let sfour = szero<<(szero+szero+szero+szero)
let sfive = szero<<(szero+szero+szero+szero+szero)
let ssix = szero<<(szero+szero+szero+szero+szero+szero)
var data = NSMutableData(length:sthree|stwo)
//var bytes = UnsafeArray(start:UnsafePointer<CChar>(data.bytes), length:data.length)
var bytes = UnsafePointer<CChar>(data.bytes)
//must cast to CChar explicitly.
bytes[szero-szero] = CChar(ssix|sthree)
bytes[szero] = CChar(ssix|sfive|stwo|szero)
bytes[sone] = CChar(ssix|sfive|sthree|stwo)
bytes[sone|szero] = CChar(ssix|sfive|sthree|stwo)
bytes[stwo] = CChar(ssix|sfive|sthree|stwo|sone|szero)
bytes[stwo|szero] = CChar(sfive)
bytes[stwo|sone] = CChar(ssix|sfour|stwo|sone|szero)
bytes[stwo|sone|szero] = CChar(ssix|sfive|sthree|stwo|sone|szero)
bytes[sthree] = CChar(ssix|sfive|sfour|sone)
bytes[sthree|szero] = CChar(ssix|sfive|sthree|stwo)
bytes[sthree|sone] = CChar(ssix|sfive|stwo)
bytes[sthree|sone|szero] = CChar(sthree|sone)

//both of these works.
//NSFileHandle.fileHandleWithStandardOutput().writeData(data)
//print(NSString(data:data, encoding:NSUTF8StringEncoding))
