# watch https://github.com/FluxML/Zygote.jl/pull/623

using Zygote

ignore(f) = f()
Zygote.@adjoint ignore(f) = ignore(f), _ -> nothing