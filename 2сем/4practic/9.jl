using LinearAlgebra
function determinant(A)
    det = 1
    for i = 1:n
       det = det * A[i, i]
    end
    return det
end

A = [1 2 4 ; 3 5 2 ; 2 6 7]

println(gaussian_elimination(A))
println(A)
