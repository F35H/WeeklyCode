import time
from os import system
from statistics import stdev
from statistics import variance

import plotly.express as plots

import W0302
from W0303 import seedList

if __name__ == "__main__":
  system("cls")

  tStr = str( time.time() )
  t = int( tStr[-4:-2] + "1")       

  MDMethSet = W0302.MDMethod(t)
  MDWSeqSet = set()
  MDSqreSet = set()
        
  for i in range(20):
    MDWSeqSet.add( 
      W0302.MDWSeq( seedList[i + t] ) )  
    MDSqreSet.add( 
      W0302.MDSquares(t, seedList[i + t] ) )  
            
  print( str( MDMethSet ) + "\n" )     
  print( str( MDWSeqSet ) + "\n" )
  print( str( MDSqreSet ) + "\n" )
  
  print( "MDMethSet Variance: "
    + str( variance(MDMethSet) ))
  print( "MDMethSet Deviation: "
    + str( stdev(MDMethSet) ) + "\n")

  print( "MDWSeqSet Variance: " 
    + str( variance(MDWSeqSet) ))
  print( "MDWSeqSet Deviation: "
    + str( stdev(MDWSeqSet) ) + "\n")
  
  print( "MDSqreSet Variance: " 
    + str( variance(MDSqreSet) ))
  print( "MDSqreSet Deviation: "
    + str( stdev(MDSqreSet) ) + "\n")
  