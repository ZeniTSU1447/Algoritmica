struct Polynom{T}
    coeffs::Vector{T}

    function Polynom(coeffs::Vector{T}) where {T<:Number}
        while length(coeffs) > 1 && coeffs[end] == zero(T)
            pop!(coeffs)
        end
        return new{T}(coeffs)
    end
end

p = Polynom([1, 2, 3])

import Base: +, -, *, show

#Cложение
+(a::Polynom{T}, b::Polynom{T}) where {T<:Number} = Polynom{T}(a.coeffs + b.coeffs)

#Вычитание
-(a::Polynom{T}, b::Polynom{T}) where {T<:Number} = Polynom{T}(a.coeffs - b.coeffs)

#Унарный минус
-(a::Polynom{T}) where {T<:Number} = Polynom{T}(-a.coeffs)
