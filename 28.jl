function fibonacci!(n::Int64) #рекурсия
    if n == 0 || n == 1
        return 1
    end
    return fibonacci!(n-1) + fibonacci!(n-2)
end

n = readline()
n = parse(Int64, n)
println(fibonacci!(n-1))

n = readline() # без рекурсии
n = parse(Int64, n)
arr = Array{Int64}(undef, n)
arr[1] = arr[2] = 1
for i in 3:n
    arr[i] = arr[i-1] + arr[i-2]
end

println(arr[n])

n = readline() # мемоизация
n = parse(Int64, n)
check_arr = Array{Int64}(undef, n)
for i in 1:n
    check_arr[i] = 0
end


function fibonacci_mem!(n::Int64)
    if n <= 1
        return n
    else 
        if check_arr[n] == 0
            check_arr[n] = fibonacci_mem!(n-1) + fibonacci_mem!(n-2)
        end
    end
    return check_arr[n]
end

println(fibonacci_mem!(n))