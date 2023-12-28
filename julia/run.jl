using HetaSimulator, Plots
ENV["GKSwstype"] = "100"

p = load_platform("..")
model = models(p)[:nameless]

res = Scenario(model, (0,340)) |> sim

plotd = plot(res; vars = [:P_p, :A_p, :O_p])
savefig(plotd, "julia-plot-1.png")

plotd = plot(res; vars = [:PFM_p])
savefig(plotd, "julia-plot-2.png")
