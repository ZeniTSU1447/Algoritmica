struct ModuloRingElement{T<:Integer}
    value::T
    modulus::T
    function ModuloRingElement(value::T, modulus::T) where {T<:Integer}
        return new(value % modulus, modulus)
    end
end

import Base: +, -, *, ^, inv, -, show
