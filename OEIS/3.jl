using Plots

#=
Another OEIS function. This one calculates the length of binary as a number continues upwards!

Plots wasn't working correctly here for some reason...
=#

println("Enter Maximum Number Please")



(function ()  
  maxNum = parse(UInt64, readline())
  mod = 0
  len = 1
  arr = Array{Int64}(undef, maxNum, 1)
   
  Threads.@threads for i in 1:maxNum
    if (i == len)
      mod += 1 
      len *= 2
    end
      
    arr[i] = mod
    println(i," ",mod)
  end

  println("Would you like to see the plot? [y or yes]")
  if (readline() == "y" || readline() == "yes")
    gui(plot(1:maxNum,arr))
    
  println("Would you like to save the plot? [y or yes]")
    if (readline() == "y" || readline() == "yes")
    
      println("Directory? [Use only backslashes]")
      r = readline()
      if (last(r) == \)
        png(string(raw"", readline(), "\")
      else
        png(string(raw"", readline(), "\\")
    end      
  end
  
end )()


