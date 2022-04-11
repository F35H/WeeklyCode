using Random
using Plots
#=
Julia Func B:
 This is a sequence of numbers I found on the OEIS and expanded to large porportions.
 I was shocked to find the minimum would always be -199.
 
 Perhaps I'll come back and redo this one later. i got a little frustrated, so this looks pretty bad
 with how the variables are laid out.
=#

numMax = 200

nums = ( function ()
  global lpMax
  maxiNum::UInt64 = (2^(63)-1)
  arrPos = 1 
  numArr = zeros(Int64, numMax)
  itrcnt = 3
  chck = true
  i = 1
  num = 0
  str = 0
  while i <= numMax
  
    if (chck == true)
     str = string(-(i))
     num = parse(Int64, str[1:2])
     chck = false
   else
     num += parse(Int8, str[itrcnt])
     itrcnt += 1
   end
      
   if (itrcnt > length(str))
   num ^= 2
   num += -(i)
     if ((string(num))[1] != '-' && num != 0 ) numArr[arrPos] = -(i)     
     println(arrPos, " ", -(i))
     arrPos += 1
     end  
     chck = true
     itrcnt = 3
     i += 1
   end 
   @assert (num >= maxiNum)  ? false : true (string( "Input too high; Num: ", num))
   
  end
return numArr
end)()
   
function Plot(maxNums, nums)
  println("Would you like to see the plot?")
  if (readline() == "y")
    println("Enter Character in Console to Exit")
    gui(plot(1:maxNums,nums))
  else
    exit()
  end
  readline()
end

Plot(numMax, nums)
exit()
