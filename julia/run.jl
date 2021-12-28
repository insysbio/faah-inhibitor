using HetaSimulator, Plots

model = load_jlmodel("../dist/julia/model.jl")

res = Scenario(model; tspan = (0,340)) |> sim

plotd = plot(res; vars = [:P_p, :A_p, :O_p])
savefig(plotd, "julia-plot-1.png")

plotd = plot(res; vars = [:PFM_p])
savefig(plotd, "julia-plot-2.png")
