using HetaSimulator
using Plots

p = load_platform("./src")

m = p.models[:nameless]

sim(m, tspan = (0, 50)) |> plot

### Add conditions

conditions_df = read_conditions("./julia/conditions.csv")
add_conditions!(p, conditions_df)

conditions(p)

res = sim(p)

plot(res, yscale=:log, ylims=(1e-1,1e3))

plotd = plot(res)
savefig(plotd, "sim1.png")