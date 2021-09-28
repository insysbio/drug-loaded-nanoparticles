using HetaSimulator
using Plots

p = load_platform("./src")

m = p.models[:nameless]

Scenario(m, tspan = (0, 50)) |> sim |> plot

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

# measure = get_measuments(p, scenarios=[:T_67_low])
# measure1 = get_measuments(scenarios(p)[:T_67_low])

# measure2 = get_measurements(res)
# simulate2 = DataFrame(res)

res = sim(p)
plot(res, yscale=:log10, ylims=(1e-1,1e3))
#plotd = plot(res)
#savefig(plotd, "sim1.png")

### fitting

# to_fit = read_parameters("./julia/parameters.csv")

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
    :bto_K_m => 8.579112e-02,
    :bto_L_m => 1.408861e-01,
    :bto_S_m => 1.529400e-01,
    :bto_T_m => 9.959412e-03,
    :bto_U_m => 2.230023e-01,
    :deg_resp => 2.455650e+00,
    :kel_L_D_m => 4.749195e+00,
    :koef_resp_K => 7.934936e+01,
    :koef_resp_L => 2.091350e+02,
    :koef_resp_R => 2.456379e+02,
    :tar_S => 9.044673e-01,
    :w_B_m => 8.138074e-02
]
fit_res = fit(p, to_fit)

optim(fit_res)
# save_heta("fitted.heta", it_res)

res_optim = sim(p, parameters_upd = optim(fit_res))
plot(res_optim, yscale=:log10, ylims=(1e-1,1e3))
