//usr/bin/env swift $0 $@;exit
import Foundation

let arr = [true]
let szero = arr.count
let sone = szero<<(szero)
let stwo = szero<<(szero+szero)
let sthree = szero<<(szero+szero+szero)
let sfour = szero<<(szero+szero+szero+szero)
let sfive = szero<<(szero+szero+szero+szero+szero)
let ssix = szero<<(szero+szero+szero+szero+szero+szero)
var data = ( NSMutableData(length:sthree|stwo) )!

//Swift2
//var bytes = UnsafeMutableBufferPointer(start:UnsafeMutablePointer<CChar>(data.bytes), count:data.length)
//var bytes = UnsafeMutablePointer<CChar>(data.bytes)

//Swift3
//both of these works.
//var bytes = UnsafeMutableBufferPointer(start:UnsafeMutablePointer<CChar>(mutating: data.bytes.assumingMemoryBound(to: CChar.self)), count:data.length)
var bytes = UnsafeMutablePointer<CChar>(mutating: data.bytes.assumingMemoryBound(to: CChar.self))

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

//Swift2
//NSFileHandle.fileHandleWithStandardOutput().writeData(data)
//print(( NSString(data:data, encoding:NSUTF8StringEncoding) )!,terminator:String())

//Swift3
//both of these works.
//FileHandle.standardOutput.write(data as Data)
print(( NSString(data:data as Data, encoding:String.Encoding.utf8.rawValue) )!,terminator:String())
