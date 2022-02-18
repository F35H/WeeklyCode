using Random
using Plots
#=
Julia Func A:
https://cdn.discordapp.com/attachments/769031254959587330/943626247479636008/Screenshot_20220216-120314_Instagram.jpg 

It's a trick question. The equation always equals zero. 
This is because the b value is negated twice and natural numbers are never negative or zero.
Even if they could be zero, it'd never be zero because the rational function leaves a limit at x = 0 that equals infinity.
=#

#Eulers
e = exp(1) 

#Maximum calculations
tauMax = 10

#Variables
n = 1:tauMax

#SubVars
tauDivs = zeros(Float64, 3)
tauVals = zeros(Float64, tauMax)
imNums = zeros(Float64, tauMax)

function TauCalc(tauMax::Int, tauDivs::Array, tauVals::Array)
    global n #Can't Stop Me
    if tauMax > 0
        for i in n
            itr = i
            i^=2
            var = -1/i
            tauDivs[1] = (e*i)^2
            tauDivs[1] /= 24 
            tauDivs[2] = (var*i)
            tauDivs[3] = (589*sqrt(complex(-var)))
            tauDivs[3] /= 20
            tauVals[itr] = sum(tauDivs)
        end
    else
    println("Natural Numbers can't be lower than One")
    end
end

function ASum(imNums::Array)
    i = 1
    for var in tauVals
        if(typeof(var) == Complex)
            imNums[i] = var
            i += 1
        end
    end
end

function TauPlot(tauVals::Array, n)
println("Would you like to see a Plot for n to x values? y/n")
    if (readline() == "y")
        println("Enter Character in Console to Exit")
        gui(plot(1:tauMax,tauVals))
    else
        exit()
    end
    readline()
end

TauCalc(tauMax, tauDivs, tauVals)
ASum(imNums)
TauPlot(tauVals, n)
exit()
