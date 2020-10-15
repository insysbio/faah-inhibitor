#=
  default run
=#
using SimSolver, Plots

# This loads SimSolverPlatform Module
include("model.jl")
using Main.SimSolverPlatform

### use first model in platform
nameless = models.nameless
nameless_default = tasks.nameless_default

### solve and plot default
solution = solve_task(nameless_default)
plot(solution)
