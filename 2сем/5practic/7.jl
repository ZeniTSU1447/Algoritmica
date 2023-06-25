function calc_sort!(array::AbstractVector{T})::AbstractVector{T} where T <: Number
    min_val, max_val = extrema(array)
    num_val = zeros(T, max_val - min_val + 1) # - число всех возможных значений

    for val in array
        num_val[val-min_val+1] += 1
    end  
    k = 0

    for (i, num) in enumerate(num_val)
        array[k+1:k+num] .= min_val+i-1
        k += num
    end

    return array
end
