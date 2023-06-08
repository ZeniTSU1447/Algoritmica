function extended_gcd(a::Int, b::Int)
    if b == 0
        return (a, 1, 0)
    else
        d, x, y = extended_gcd(b, rem(a, b))
        return (d, y, x - div(a, b) * y)
    end
end
