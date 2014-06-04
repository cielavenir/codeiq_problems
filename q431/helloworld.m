#if 0 //Objective-C 1.x
#import <Foundation/Foundation.h>
#else
#import <Foundation/NSFileHandle.h>
#import <Foundation/NSAutoreleasePool.h>
#import <Foundation/NSString.h>
#import <Foundation/NSNull.h>
#import <Foundation/NSData.h>
#endif

int main(){
	id pool = [[NSAutoreleasePool alloc] init];
	NSFileHandle *output = [NSFileHandle fileHandleWithStandardOutput];
	NSArray *arr = @[@YES];
	int szero = [arr count];
	int sone = szero<<(szero);
	int stwo = szero<<(szero+szero);
	int sthree = szero<<(szero+szero+szero);
	int sfour = szero<<(szero+szero+szero+szero);
	int sfive = szero<<(szero+szero+szero+szero+szero);
	int ssix = szero<<(szero+szero+szero+szero+szero+szero);
	NSMutableData *data = [[NSMutableData alloc] initWithLength:sthree|stwo];
	Byte* bytes = [data mutableBytes];
	bytes[szero-szero] = ssix|sthree;
	bytes[szero] = ssix|sfive|stwo|szero;
	bytes[sone] = ssix|sfive|sthree|stwo;
	bytes[sone|szero] = ssix|sfive|sthree|stwo;
	bytes[stwo] = ssix|sfive|sthree|stwo|sone|szero;
	bytes[stwo|szero] = sfive;
	bytes[stwo|sone] = ssix|sfour|stwo|sone|szero;
	bytes[stwo|sone|szero] = ssix|sfive|sthree|stwo|sone|szero;
	bytes[sthree] = ssix|sfive|sfour|sone;
	bytes[sthree|szero] = ssix|sfive|sthree|stwo;
	bytes[sthree|sone] = ssix|sfive|stwo;
	bytes[sthree|sone|szero] = sthree|sone;
	[output writeData:data];

	[pool release];
	return szero-szero;
}