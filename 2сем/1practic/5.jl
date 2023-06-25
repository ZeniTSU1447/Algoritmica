struct ModuloRingElement{T<:Integer}
    value::T
    modulus::T
    function ModuloRingElement(value::T, modulus::T) where {T<:Integer}
        return new(value % modulus, modulus)
    end
end

import Base: +, -, *, ^, inv, -, show

#Cложение
+(a::ModuloRingElement, b::ModuloRingElement) = ModuloRingElement(a.value + b.value, a.modulus)

#Вычитание
-(a::ModuloRingElement, b::ModuloRingElement) = ModuloRingElement(a.value - b.value, a.modulus)

#Унарный минус
-(a::ModuloRingElement) = ModuloRingElement(-a.value, a.modulus)

#Умножение
*(a::ModuloRingElement, b::ModuloRingElement) = ModuloRingElement(a.value * b.value, a.modulus)

#Обратимые элементы
inv(a::ModuloRingElement) = ModuloRingElement(invmod(a.value, a.modulus), a.modulus)

#Вывод в REPL
show(io::IO, a::ModuloRingElement) = print(io, "$(a.value) mod $(a.modulus)")
