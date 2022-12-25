vect = Array{Int64}(undef, 12)
leng = length(arr)
println(len)
for i in 1:leng
    vect[i] = rand(1:5)
end
function recursive_sum!(x::Array{Int64}, len)
    if len == 0
        return 0
    end
    return x[len] + recursive_sum!(x, len - 1)
end
for i in 1:leng
    println(vect[i], " ")
end
println(recursive_sum!(vect, leng))