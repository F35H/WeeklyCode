function bin_length_long(s::AbstractString)  
  binNum = parse(UInt, s)
  
  finNum = 0
  seq = 1
   
  for i in 1:binNum
    if (i == seq)
      finNum += 1 
      seq *= 2
    end
  end

  return string( finNum ) 
end


function bin_length_short(s::AbstractString)  
  binNum = parse(UInt, s)
  
  finNum = 0
  i = 1
  
  while i <= binNum
    i *= 2
     finNum += 1
  end

  return string( finNum ) 
end


function bin_length_shift(s::AbstractString)  
  binNum = parse(UInt, s)
  i = 1
  finNum = 1  
 
  while(i < binNum)
    i = i << 1
    finNum += 1 
  end
    
  return string( finNum ) 
end

