#!/usr/bin/python
import heapq
heapq.cmp_lt = lambda x,y: x<y #(1)

#below is the test code
def entry_point(argv):
	heap=[]
	lst=[3,5,2,1,4]
	for e in lst: heapq.heappush(heap,e)
	while heap: print(heapq.heappop(heap))
	return 0

def target(*args): return entry_point
if __name__=='__main__': entry_point(__import__('sys').argv)