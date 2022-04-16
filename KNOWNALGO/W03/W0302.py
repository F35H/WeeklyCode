from ctypes import *

def MDMethod(seed=1234): #Middle Square Method RNG
  retrnNum = seed
  seenNum = set()
  counter = 0
  
  while retrnNum not in seenNum:
     counter += 1
     seenNum.add(retrnNum)
     retrnNum = int(str(retrnNum * retrnNum).zfill(8)[2:6])    
  
  return seenNum
        
def MDWSeq(seed=0xb5ad4eceda1ce2a9): #Middle Square Weyl Squence RNG
  w = c_ulonglong(0)
  x = c_ulonglong(0)
  s = c_ulonglong(seed)
  
  x.value *= x.value
  w.value += s.value
  x.value += w.value
  x.value = (x.value >> 32) | (x.value <<32)
  
  return x.value
  
def MDSquares(ctr=0, seed=0xb5ad4eceda1ce2a9): #Squares Mehtod
  x = c_ulonglong(0)
  y = c_ulonglong(0)
  z = c_ulonglong(0)
  w = c_ulonglong(ctr)
  s = c_ulonglong(seed)  
  
  w.value *= s.value
  y.value = w.value
  z.value = y.value + s.value
  
  x.value  = x.value * x.value + y.value
  x.value  = (x.value >> 32) | (x.value << 32)
  
  x.value  = x.value * x.value + z.value
  x.value  = (x.value >> 32) | (x.value << 32)
  
  x.value  = x.value * x.value + y.value
  x.value  = (x.value >> 32) | (x.value << 32)
  
  return x.value  