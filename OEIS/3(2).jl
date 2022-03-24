using Plots

#=
Continuation of Three. I thought of a different one

This is unfinished. I got stuck on converting the binary [hence the mess in the while loop].
I believe I'm going to have to manually make a binary conversion.
Maybe I'll return to it.
=#

(function () 
  println("Enter Binary Length Please")
  binLen = parse(UInt64, readline())
  
  flBinHalf = convert(UInt64, floor(((2^(binLen - 1))/2)))
  clBinHalf = convert(UInt64, ceil(((2^(binLen - 1))/2)))
  
  dnI = flBinHalf * 2
  upI = 1
  I = flBinHalf 
  
  dnIArr = zeros(UInt64, flBinHalf)
  upIArr = zeros(UInt64, clBinHalf)
  
  while (dnI != clBinHalf && upI != flBinHalf)
      
     dnIArr[I] = length( string(dnI, base=2))
     dnI -= 1
      I -= 1
          
      upIArr[upI] = length( string(upI, base=2))
      upI += 1
    
  end
  
  
end)()




