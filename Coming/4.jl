using Plots

#=
Guassian Elimination Demonstration
=#
mode = 0;

varSet = Set();
funcSet = Set();

matrxArry = ones(Int64,
length(funcSet),
length(varSet) + 1 )

function inpt(mode=0)
  if (mode == 0)
    println("Enter Variable Names.")
    println("Type \"done\" when finished.")
    
    while true
      ln = readline();
    
      if (ln  == "done" ) break 
      else  push!(varSet, ln) 
      end
    end
    
  else
    println("Please enter a Linear Function")
    println("Type \"done\" when finished.")
   
    while(true)
      ln = readline();
    
      if (ln  == "done" ) break 
      else  push!(funcSet, ln) 
      end
    end
  end
end

#=

function deterVars(str, endRec = 0, itr = 1)
  num = ""

  if(endRec >= length(varSet) - 1) endRec = 0
  end

  for i in range(itr, length(str))
    if (in(str[i] == varArry[endRec])
      endRec += 1
      matrxArry[ 
      length(funcSet - 1) 
      ][endRec] = parse(Int64, num) 
      break
    end
    
    try
      parse(Int8, str[i])
    catch
      continue
    finally
      itr += 1          
    end
    
    num * string(str[i])
  end
  if (itr == len(str)) return
  end
  return deterVars(str, endRec, itr)
end    
#Guassian elimination
=+
#Recycle This - replace function with something that works for sets.



inpt()
inpt(1)
println("Computing...")

for elmnt in funcSet 
  deterVars(elmnt)
  delete!(funcSet,elmnt)
end

println(mtrxArry)

