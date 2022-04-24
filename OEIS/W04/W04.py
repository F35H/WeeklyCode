import matplotlib as mpl
import matplotlib.pyplot as plt

"""
This follows OEIS entry A185107
Difference of digits of nth prime
"""


print("Enter Numer of DigSubtract Primes")
maxNum = int(input())
var = 1

numArr = [1] * maxNum
tempArr = [0] * maxNum


def bLowTen(numArr):
  for i in range( maxNum ) :
    match i:
      case 1: numArr[1] = 2
      case 2: numArr[2] = 3
      case 3: numArr[3] = 5
      case 4: numArr[4] = 7


def upTen(numArr, itr=5, rcrd=10):           
  tempArr = range(rcrd + 1,
     maxNum + var + numArr[itr - 1])

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
    upTen(numArr, itr, tempArr[-1])  
  except:
    upTen(numArr, itr, tempArr[-1])


def printAll(numArr):
  itr = 1

  for i in numArr:
    print(str(itr) + ":" + str(i))    
    itr += 1


def digSub(i):         
  if i < 10:
    return i
  return (digSub( i // 10) - (i % 10) )



bLowTen(numArr)

if (maxNum > 10):
  if (maxNum % 2 == 0):
    var = 0
    
  upTen(numArr)
  
printAll(numArr)

for i in range( len( numArr ) ):
  numArr[i] = digSub( numArr[i])
  
printAll(numArr)


mpl.use("TkAgg")
plt.style.use("fast")
  
f, plts = plt.subplots()
  
plts.plot(range(len(numArr)),
  numArr, color="r")      
plt.show()


exit()