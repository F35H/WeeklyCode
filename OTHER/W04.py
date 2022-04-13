import time
from queue import LifoQueue
from random import sample

dckSize = int(input( "Enter Deck Size:" ))
shufDck = LifoQueue(dckSize)

def PokShuf():
  dckSplit = dckSize//2
  newDckOne = list( range(dckSplit) )
  newDckTwo = list( range(dckSplit + 1, dckSize) )
  
  for in in range(dckSize):
  
  #Split Deck in Half
  #Determine packets
    newDeck[]


