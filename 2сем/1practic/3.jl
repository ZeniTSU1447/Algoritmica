function invmod_(a::T, M::T) where T
    d, x, y = extended_gcd(a, M)
    if d == 1
        return rem(x, M)
    else
        return nothing
    end
end
