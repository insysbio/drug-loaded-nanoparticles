using HetaSimulator
using Plots

p = load_platform("./src")

m = p.models[:nameless]

Scenario(m, (0, 50)) |> sim |> plot

### Add scenarios

scenarios_df = read_scenarios("./data/scenarios.csv")
add_scenarios!(p, scenarios_df)

### Add measurements
data1 = read_measurements("./data/NoNP_67.csv")
data2 = read_measurements("./data/U16c_61.csv")
data3 = read_measurements("./data/U16p_61.csv")
data4 = read_measurements("./data/T_67.csv")
add_measurements!(p, data1)
add_measurements!(p, data2)
add_measurements!(p, data3)
add_measurements!(p, data4)

# measurements1 = measurements(scenarios(p)[:T_67_low])

res = sim(p)
plotd = plot(res, yscale=:log10, ylims=(1e-1,1e3))
#savefig(plotd, "sim1.png")

### fitting

# to_fit = read_parameters("./julia/parameters.csv")
# to_fit = read_as_heta("./julia/parameters.csv")

to_fit = [
    :sigma_K => 0.1,
    :sigma_L => 0.1,
    :sigma_S => 0.1,
    :sigma_T => 0.1,
    :sigma_U => 0.1,
    :sigma_P => 0.1,

    :Kp_K_D => 5.562383e+01,
    :Kp_R_D => 5.562383e+01,
    :Kp_L_D => 4.196478e+01,
    :Kp_S_D => 6.475789e+01,
    :Kp_T_D => 6.322612e+01,
    :Kp_U_D => 7.643254e+01,
    :PS_K_061 => 9.271306e-04,
    :PS_L_061 => 2.142868e-02,
    :PS_R_061 => 5.792745e-02,
    :PS_S_061 => 2.022008e-03,
    :PS_T_061 => 1.305856e-03,
    :PS_U_061 => 1.217994e-04,
    :Q_T_g => 2.062306e+00,
    :bto_K => 8.579112e-02,
    :bto_L => 1.408861e-01,
    :bto_S => 1.529400e-01,
    :bto_T => 9.959412e-03,
    :bto_U => 2.230023e-01,
    :deg_resp => 2.455650e+00,
    :kel_L_D => 4.749195e+00,
    :koef_resp_K => 7.934936e+01,
    :koef_resp_L => 2.091350e+02,
    :koef_resp_R => 2.456379e+02,
    #:tar_S => 9.044673e-01,
    :w_B => 8.138074e-02
]
# OFV: 2584 => 6410 (v0.4.15) => 6409 (v0.6.0)
fit_res = fit(p, to_fit)

optim(fit_res)
# save_as_heta("julia/fitted.heta", fit_res)

res_optim = sim(p; parameters = optim(fit_res))
#res_optim = sim(p; parameters = to_fit)
plot(res_optim, yscale=:log10, ylims=(1e-4,1e3))

## plot fitted results in files
plot1 = plot(res_optim[1:3], yscale=:log10, ylims=(1e-1,1e3))
plot2 = plot(res_optim[4:6], yscale=:log10, ylims=(1e-1,1e3))
plot3 = plot(res_optim[7:9], yscale=:log10, ylims=(1e-1,1e3))
plot4 = plot(res_optim[10:11], yscale=:log10, ylims=(1e-4,1e3))

savefig(plot1, "diagnostics/heta-simulator/U16c_61.png")
savefig(plot2, "diagnostics/heta-simulator/U16p_61.png")
savefig(plot3, "diagnostics/heta-simulator/T_67.png")
savefig(plot4, "diagnostics/heta-simulator/NoNP_67.png")
