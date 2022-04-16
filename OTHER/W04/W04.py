import time
from queue import LifoQueue
from random import sample

dckSize = int(input( "Enter Deck Size:" ))

dckSplit = dckSize//2
newDckOne = list( range(dckSplit) )
newDckTwo = list( range(dckSplit + 1, dckSize) )

pcks = sample(range(5), dckSize)

def PokShuf():
  shufDck = LifoQueue(dckSize)

  i = 0
  tcks = 1
  flip = false
  while(len(shufDeck ) != dckSize):
    if(tcks > pcks[i]):
      tcks = 1
      i += 1
         
    if (flip == false):       
      shufdck.put(newDeckOne[i])
    else:
      shufdck.put(newDeckTwo[i])   

    tcks += 1
    
return

def HandShuf():
  i = 0
  tcks = 1
  flip = false
  while(len(shufDeck ) != dckSize):
    if(tcks > pcks[i]):
      tcks = 1
      i += 1
         
    if (flip == false):       
      shufdck.put(newDeckOne[i])
    else:
      shufdck.put(newDeckTwo[i])   

    tcks += 1
    

    

