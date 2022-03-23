using Plots

#=
Continuation of Three. I thought of a different one
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
      
     dnIArr[I] = length( string( parse(Int64,  bitstring(dnI) )))
     dnI -= 1
      I -= 1
          
      upIArr[upI] = length( string( parse(Int64, bitstring(upI) ) ))
      upI += 1
    
  end
  
  println(dnIArr; upIArr)
  
end)()




