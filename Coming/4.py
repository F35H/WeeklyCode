import matplotlib.pyplot as plots

print("Enter Numer of DigSubtract Primes")
maxNum = int(input())

numArr = [1] * maxNum
tempArr = [0] * maxNum

def bLowTen(numArr):
  numArr[1] = 2
  numArr[2] = 3
  numArr[3] = 5
  numArr[4] = 7
  
  
def upTen(numArr, itr=5):           
  tempArr = range(numArr[itr - 1],
     maxNum + numArr[itr - 1])

  for i in tempArr[::2]:
    if (i % 3 == 0): continue
    if (i % 7 == 0): continue
    if (i % 5 == 0): continue
    if (i % 2 == 0): continue 
    
    numArr[itr] = i
    itr += 1
    
    if (numArr[-1] != 1):
      return
      
  try:    
    upTen(numArr, itr)  
  except:
    upTen(numArr, itr)
  
    
def printAll(numArr):
  itr = 1

  for i in numArr:
    print(str(itr) + ":" + str(i))    
    itr += 1
  
    
def digSub(numArr, lst = 1): 
  print("ITERATION")
  
  baseLen = len( str( numArr[-(lst)] ) )
  itr = lst
  
  for i in numArr[-(lst)::-1]:
    tempStr = str(i)
    if (len( tempStr ) < baseLen ):
      break
    else:
      tempArr[-(itr)] = i
      numArr[-(itr)] = 0
      itr += 1
      
  loc = 0
  while():   
    strng = str( tempArr[-(loc)] )
    
    if  (numArr[-(loc)] == 0 ):
      numArr[-(loc)] += int( strng[0] )
    else:
      numArr[-(loc)] -= int( strng[0] )
    loc += 1
     
    
  if (baseLen == 1):
    return

        
  return digSub(numArr, itr)          

    
       
bLowTen(numArr)
upTen(numArr)
printAll(numArr)

digSub(numArr)
printAll(numArr)
exit()