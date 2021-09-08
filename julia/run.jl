using HetaSimulator
using Plots

p = load_platform("./src")

m = p.models[:nameless]

sim(m, tspan = (0, 50)) |> plot

### Add conditions

conditions_df = read_conditions("./data/conditions.csv")
add_conditions!(p, conditions_df)

### Add measurements
data1 = read_measurements("./data/NoNP_67.csv")
data2 = read_measurements("./data/U16c_61.csv")
data3 = read_measurements("./data/U16p_61.csv")
data4 = read_measurements("./data/T_67.csv")
add_measurements!(p, data1)
add_measurements!(p, data2)
add_measurements!(p, data3)
add_measurements!(p, data4)

res = sim(p)

plot(res, yscale=:log, ylims=(1e-1,1e3))
#plotd = plot(res)
#savefig(plotd, "sim1.png")
