function FibMat(n)
    m = [1 1; 1 0]
    m = myfastpow(m,n)
    return m[1,1]
end

print(FibMat(9))
