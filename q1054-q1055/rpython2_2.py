#!/usr/bin/python
import types
from rpython.rlib.rrandom import Random
def random_randint(self,a,b):
	return int(a+self.random()*(b-a+1))
Random.randint=types.MethodType(random_randint,None,Random)

#below is the test code
import time,os
def entry_point(argv):
	seed = int(time.time())^(os.getpid()<<16)
	rnd = Random(seed)
	for i in range(50): print(rnd.randint(1,10))
	return 0

def target(*args): return entry_point
if __name__=='__main__': entry_point(__import__('sys').argv)