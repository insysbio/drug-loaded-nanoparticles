%{
  This model was created by Heta compiler.
  Additional functions see in the directory
  export from : #export { format: Simbio, namespace: nameless, ...};
%}

sbioaddtolibrary(sbiounit('week', 'day', 7));

nameless_model = sbiomodel('nameless');

% Compartments
nameless.compartment.V_B = addcompartment(nameless_model, 'V_B', 'ConstantCapacity', false, 'CapacityUnits', 'millilitre', 'Notes', '', 'Tag', '');
nameless.compartment.V_L = addcompartment(nameless_model, 'V_L', 'ConstantCapacity', false, 'CapacityUnits', 'millilitre', 'Notes', '', 'Tag', '');
nameless.compartment.V_S = addcompartment(nameless_model, 'V_S', 'ConstantCapacity', false, 'CapacityUnits', 'millilitre', 'Notes', '', 'Tag', '');
nameless.compartment.V_T = addcompartment(nameless_model, 'V_T', 'ConstantCapacity', false, 'CapacityUnits', 'millilitre', 'Notes', '', 'Tag', '');
nameless.compartment.V_K = addcompartment(nameless_model, 'V_K', 'ConstantCapacity', false, 'CapacityUnits', 'millilitre', 'Notes', '', 'Tag', '');
nameless.compartment.V_U = addcompartment(nameless_model, 'V_U', 'ConstantCapacity', false, 'CapacityUnits', 'millilitre', 'Notes', '', 'Tag', '');
nameless.compartment.V_R = addcompartment(nameless_model, 'V_R', 'ConstantCapacity', false, 'CapacityUnits', 'millilitre', 'Notes', '', 'Tag', '');
nameless.compartment.V_P = addcompartment(nameless_model, 'V_P', 'ConstantCapacity', false, 'CapacityUnits', 'millilitre', 'Notes', '', 'Tag', '');

% Species
nameless.species.D_B = addspecies(nameless.compartment.V_B, 'D_B', 'ConstantAmount', false, 'InitialAmount', 0, 'InitialAmountUnits', 'microgram/millilitre', 'BoundaryCondition', false, 'Notes', '', 'Tag', '');
nameless.species.D_L = addspecies(nameless.compartment.V_L, 'D_L', 'ConstantAmount', false, 'InitialAmount', 0, 'InitialAmountUnits', 'microgram/millilitre', 'BoundaryCondition', false, 'Notes', '', 'Tag', '');
nameless.species.D_S = addspecies(nameless.compartment.V_S, 'D_S', 'ConstantAmount', false, 'InitialAmount', 0, 'InitialAmountUnits', 'microgram/millilitre', 'BoundaryCondition', false, 'Notes', '', 'Tag', '');
nameless.species.D_T = addspecies(nameless.compartment.V_T, 'D_T', 'ConstantAmount', false, 'InitialAmount', 0, 'InitialAmountUnits', 'microgram/millilitre', 'BoundaryCondition', false, 'Notes', '', 'Tag', '');
nameless.species.D_K = addspecies(nameless.compartment.V_K, 'D_K', 'ConstantAmount', false, 'InitialAmount', 0, 'InitialAmountUnits', 'microgram/millilitre', 'BoundaryCondition', false, 'Notes', '', 'Tag', '');
nameless.species.D_U = addspecies(nameless.compartment.V_U, 'D_U', 'ConstantAmount', false, 'InitialAmount', 0, 'InitialAmountUnits', 'microgram/millilitre', 'BoundaryCondition', false, 'Notes', '', 'Tag', '');
nameless.species.D_R = addspecies(nameless.compartment.V_R, 'D_R', 'ConstantAmount', false, 'InitialAmount', 0, 'InitialAmountUnits', 'microgram/millilitre', 'BoundaryCondition', false, 'Notes', '', 'Tag', '');
nameless.species.NP_B = addspecies(nameless.compartment.V_B, 'NP_B', 'ConstantAmount', false, 'InitialAmount', 0, 'InitialAmountUnits', 'microgram/millilitre', 'BoundaryCondition', false, 'Notes', '', 'Tag', '');
nameless.species.NP_L = addspecies(nameless.compartment.V_L, 'NP_L', 'ConstantAmount', false, 'InitialAmount', 0, 'InitialAmountUnits', 'microgram/millilitre', 'BoundaryCondition', false, 'Notes', '', 'Tag', '');
nameless.species.NP_S = addspecies(nameless.compartment.V_S, 'NP_S', 'ConstantAmount', false, 'InitialAmount', 0, 'InitialAmountUnits', 'microgram/millilitre', 'BoundaryCondition', false, 'Notes', '', 'Tag', '');
nameless.species.NP_T = addspecies(nameless.compartment.V_T, 'NP_T', 'ConstantAmount', false, 'InitialAmount', 0, 'InitialAmountUnits', 'microgram/millilitre', 'BoundaryCondition', false, 'Notes', '', 'Tag', '');
nameless.species.NP_K = addspecies(nameless.compartment.V_K, 'NP_K', 'ConstantAmount', false, 'InitialAmount', 0, 'InitialAmountUnits', 'microgram/millilitre', 'BoundaryCondition', false, 'Notes', '', 'Tag', '');
nameless.species.NP_U = addspecies(nameless.compartment.V_U, 'NP_U', 'ConstantAmount', false, 'InitialAmount', 0, 'InitialAmountUnits', 'microgram/millilitre', 'BoundaryCondition', false, 'Notes', '', 'Tag', '');
nameless.species.NP_R = addspecies(nameless.compartment.V_R, 'NP_R', 'ConstantAmount', false, 'InitialAmount', 0, 'InitialAmountUnits', 'microgram/millilitre', 'BoundaryCondition', false, 'Notes', '', 'Tag', '');

% Parameters
nameless.parameter.rho_avg = addparameter(nameless_model, 'rho_avg', 'ConstantValue', false, 'ValueUnits', 'gram/millilitre', 'Notes', '<p>average tissues density</p>
', 'Tag', '');
nameless.parameter.response = addparameter(nameless_model, 'response', 'ConstantValue', false, 'Value', 0, 'ValueUnits', 'dimensionless', 'Notes', '', 'Tag', '');
nameless.parameter.dose_D_ug = addparameter(nameless_model, 'dose_D_ug', 'ConstantValue', false, 'ValueUnits', 'microgram/millilitre', 'Notes', '', 'Tag', '');
nameless.parameter.D_P = addparameter(nameless_model, 'D_P', 'ConstantValue', false, 'ValueUnits', 'microgram/millilitre', 'Notes', '', 'Tag', '');
nameless.parameter.PS_L = addparameter(nameless_model, 'PS_L', 'ConstantValue', false, 'ValueUnits', 'millilitre/hour', 'Notes', '', 'Tag', '');
nameless.parameter.PS_S = addparameter(nameless_model, 'PS_S', 'ConstantValue', false, 'ValueUnits', 'millilitre/hour', 'Notes', '', 'Tag', '');
nameless.parameter.PS_T = addparameter(nameless_model, 'PS_T', 'ConstantValue', false, 'ValueUnits', 'millilitre/hour', 'Notes', '', 'Tag', '');
nameless.parameter.PS_K = addparameter(nameless_model, 'PS_K', 'ConstantValue', false, 'ValueUnits', 'millilitre/hour', 'Notes', '', 'Tag', '');
nameless.parameter.PS_U = addparameter(nameless_model, 'PS_U', 'ConstantValue', false, 'ValueUnits', 'millilitre/hour', 'Notes', '', 'Tag', '');
nameless.parameter.PS_R = addparameter(nameless_model, 'PS_R', 'ConstantValue', false, 'ValueUnits', 'millilitre/hour', 'Notes', '', 'Tag', '');
nameless.parameter.w_R = addparameter(nameless_model, 'w_R', 'ConstantValue', false, 'ValueUnits', 'dimensionless', 'Notes', '', 'Tag', '');
nameless.parameter.w_R_061 = addparameter(nameless_model, 'w_R_061', 'ConstantValue', false, 'ValueUnits', 'dimensionless', 'Notes', '', 'Tag', '');
nameless.parameter.Q_T = addparameter(nameless_model, 'Q_T', 'ConstantValue', false, 'ValueUnits', 'millilitre/hour', 'Notes', '', 'Tag', '');
nameless.parameter.dose_NP_ug = addparameter(nameless_model, 'dose_NP_ug', 'ConstantValue', false, 'ValueUnits', 'microgram/millilitre', 'Notes', '', 'Tag', '');
nameless.parameter.NP_P = addparameter(nameless_model, 'NP_P', 'ConstantValue', false, 'ValueUnits', 'microgram/millilitre', 'Notes', '', 'Tag', '');
nameless.parameter.v = addparameter(nameless_model, 'v', 'ConstantValue', false, 'ValueUnits', 'dimensionless', 'Notes', '', 'Tag', '');
nameless.parameter.vrel = addparameter(nameless_model, 'vrel', 'ConstantValue', false, 'ValueUnits', '1/hour', 'Notes', '', 'Tag', '');
nameless.parameter.D_all_in_NP = addparameter(nameless_model, 'D_all_in_NP', 'ConstantValue', false, 'ValueUnits', 'dimensionless', 'Notes', '', 'Tag', '');
nameless.parameter.NP_L_aver = addparameter(nameless_model, 'NP_L_aver', 'ConstantValue', false, 'ValueUnits', 'microgram/millilitre', 'Notes', '', 'Tag', '');
nameless.parameter.NP_S_aver = addparameter(nameless_model, 'NP_S_aver', 'ConstantValue', false, 'ValueUnits', 'microgram/millilitre', 'Notes', '', 'Tag', '');
nameless.parameter.NP_T_aver = addparameter(nameless_model, 'NP_T_aver', 'ConstantValue', false, 'ValueUnits', 'microgram/millilitre', 'Notes', '', 'Tag', '');
nameless.parameter.NP_K_aver = addparameter(nameless_model, 'NP_K_aver', 'ConstantValue', false, 'ValueUnits', 'microgram/millilitre', 'Notes', '', 'Tag', '');
nameless.parameter.NP_U_aver = addparameter(nameless_model, 'NP_U_aver', 'ConstantValue', false, 'ValueUnits', 'microgram/millilitre', 'Notes', '', 'Tag', '');
nameless.parameter.NP_L_cap = addparameter(nameless_model, 'NP_L_cap', 'ConstantValue', false, 'ValueUnits', 'microgram/millilitre', 'Notes', '', 'Tag', '');
nameless.parameter.NP_S_cap = addparameter(nameless_model, 'NP_S_cap', 'ConstantValue', false, 'ValueUnits', 'microgram/millilitre', 'Notes', '', 'Tag', '');
nameless.parameter.NP_T_cap = addparameter(nameless_model, 'NP_T_cap', 'ConstantValue', false, 'ValueUnits', 'microgram/millilitre', 'Notes', '', 'Tag', '');
nameless.parameter.NP_K_cap = addparameter(nameless_model, 'NP_K_cap', 'ConstantValue', false, 'ValueUnits', 'microgram/millilitre', 'Notes', '', 'Tag', '');
nameless.parameter.NP_U_cap = addparameter(nameless_model, 'NP_U_cap', 'ConstantValue', false, 'ValueUnits', 'microgram/millilitre', 'Notes', '', 'Tag', '');
nameless.parameter.NP_L_tissue = addparameter(nameless_model, 'NP_L_tissue', 'ConstantValue', false, 'ValueUnits', 'microgram/millilitre', 'Notes', '', 'Tag', '');
nameless.parameter.NP_S_tissue = addparameter(nameless_model, 'NP_S_tissue', 'ConstantValue', false, 'ValueUnits', 'microgram/millilitre', 'Notes', '', 'Tag', '');
nameless.parameter.NP_T_tissue = addparameter(nameless_model, 'NP_T_tissue', 'ConstantValue', false, 'ValueUnits', 'microgram/millilitre', 'Notes', '', 'Tag', '');
nameless.parameter.NP_K_tissue = addparameter(nameless_model, 'NP_K_tissue', 'ConstantValue', false, 'ValueUnits', 'microgram/millilitre', 'Notes', '', 'Tag', '');
nameless.parameter.NP_U_tissue = addparameter(nameless_model, 'NP_U_tissue', 'ConstantValue', false, 'ValueUnits', 'microgram/millilitre', 'Notes', '', 'Tag', '');
nameless.parameter.D_L_free = addparameter(nameless_model, 'D_L_free', 'ConstantValue', false, 'ValueUnits', 'microgram/millilitre', 'Notes', '', 'Tag', '');
nameless.parameter.D_S_free = addparameter(nameless_model, 'D_S_free', 'ConstantValue', false, 'ValueUnits', 'microgram/millilitre', 'Notes', '', 'Tag', '');
nameless.parameter.D_T_free = addparameter(nameless_model, 'D_T_free', 'ConstantValue', false, 'ValueUnits', 'microgram/millilitre', 'Notes', '', 'Tag', '');
nameless.parameter.D_K_free = addparameter(nameless_model, 'D_K_free', 'ConstantValue', false, 'ValueUnits', 'microgram/millilitre', 'Notes', '', 'Tag', '');
nameless.parameter.D_U_free = addparameter(nameless_model, 'D_U_free', 'ConstantValue', false, 'ValueUnits', 'microgram/millilitre', 'Notes', '', 'Tag', '');
nameless.parameter.D_L_aver0 = addparameter(nameless_model, 'D_L_aver0', 'ConstantValue', false, 'ValueUnits', 'microgram/millilitre', 'Notes', '', 'Tag', '');
nameless.parameter.D_S_aver0 = addparameter(nameless_model, 'D_S_aver0', 'ConstantValue', false, 'ValueUnits', 'microgram/millilitre', 'Notes', '', 'Tag', '');
nameless.parameter.D_T_aver0 = addparameter(nameless_model, 'D_T_aver0', 'ConstantValue', false, 'ValueUnits', 'microgram/millilitre', 'Notes', '', 'Tag', '');
nameless.parameter.D_K_aver0 = addparameter(nameless_model, 'D_K_aver0', 'ConstantValue', false, 'ValueUnits', 'microgram/millilitre', 'Notes', '', 'Tag', '');
nameless.parameter.D_U_aver0 = addparameter(nameless_model, 'D_U_aver0', 'ConstantValue', false, 'ValueUnits', 'microgram/millilitre', 'Notes', '', 'Tag', '');
nameless.parameter.D_P_aver0 = addparameter(nameless_model, 'D_P_aver0', 'ConstantValue', false, 'ValueUnits', 'microgram/millilitre', 'Notes', '', 'Tag', '');
nameless.parameter.D_L_aver = addparameter(nameless_model, 'D_L_aver', 'ConstantValue', false, 'ValueUnits', 'microgram/millilitre', 'Notes', '', 'Tag', '');
nameless.parameter.D_S_aver = addparameter(nameless_model, 'D_S_aver', 'ConstantValue', false, 'ValueUnits', 'microgram/millilitre', 'Notes', '', 'Tag', '');
nameless.parameter.D_T_aver = addparameter(nameless_model, 'D_T_aver', 'ConstantValue', false, 'ValueUnits', 'microgram/millilitre', 'Notes', '', 'Tag', '');
nameless.parameter.D_K_aver = addparameter(nameless_model, 'D_K_aver', 'ConstantValue', false, 'ValueUnits', 'microgram/millilitre', 'Notes', '', 'Tag', '');
nameless.parameter.D_U_aver = addparameter(nameless_model, 'D_U_aver', 'ConstantValue', false, 'ValueUnits', 'microgram/millilitre', 'Notes', '', 'Tag', '');
nameless.parameter.D_P_aver = addparameter(nameless_model, 'D_P_aver', 'ConstantValue', false, 'ValueUnits', 'microgram/millilitre', 'Notes', '', 'Tag', '');
nameless.parameter.v_ir = addparameter(nameless_model, 'v_ir', 'ConstantValue', false, 'ValueUnits', '1/hour', 'Notes', '', 'Tag', '');
nameless.parameter.W_animal_061 = addparameter(nameless_model, 'W_animal_061', 'ConstantValue', true, 'Value', 20.8, 'ValueUnits', 'gram', 'Notes', '<p>Animal weight</p>
', 'Tag', '');
nameless.parameter.W_T_061 = addparameter(nameless_model, 'W_T_061', 'ConstantValue', true, 'Value', 0.366, 'ValueUnits', 'gram', 'Notes', '<p>Tumor weight (reference value)</p>
', 'Tag', '');
nameless.parameter.w_L_061 = addparameter(nameless_model, 'w_L_061', 'ConstantValue', true, 'Value', 0.0538, 'ValueUnits', 'dimensionless', 'Notes', '<p>Liver to whole animal weight ratio (reference value)</p>
', 'Tag', '');
nameless.parameter.w_S_061 = addparameter(nameless_model, 'w_S_061', 'ConstantValue', true, 'Value', 0.00601, 'ValueUnits', 'dimensionless', 'Notes', '<p>Spleen to whole animal weight ratio (reference value)</p>
', 'Tag', '');
nameless.parameter.w_K_061 = addparameter(nameless_model, 'w_K_061', 'ConstantValue', true, 'Value', 0.0142, 'ValueUnits', 'dimensionless', 'Notes', '<p>Kidney to whole animal weight ratio (reference value)</p>
', 'Tag', '');
nameless.parameter.w_U_061 = addparameter(nameless_model, 'w_U_061', 'ConstantValue', true, 'Value', 0.00679, 'ValueUnits', 'dimensionless', 'Notes', '<p>Lungs to whole animal weight ratio (reference value)</p>
', 'Tag', '');
nameless.parameter.w_B_061 = addparameter(nameless_model, 'w_B_061', 'ConstantValue', true, 'Value', 0.0814, 'ValueUnits', 'dimensionless', 'Notes', '<p>Blood to whole animal weight ratio</p>
', 'Tag', '');
nameless.parameter.delta = addparameter(nameless_model, 'delta', 'ConstantValue', true, 'Value', 0.0075, 'ValueUnits', 'dimensionless', 'Notes', '<p>&quot;Burst&quot; coefficient for release</p>
', 'Tag', '');
nameless.parameter.kdiff = addparameter(nameless_model, 'kdiff', 'ConstantValue', true, 'Value', 0.00549, 'ValueUnits', '1/hour^0.43', 'Notes', '<p>Diffusion coefficient for release</p>
', 'Tag', '');
nameless.parameter.gamma = addparameter(nameless_model, 'gamma', 'ConstantValue', true, 'Value', 0.57, 'ValueUnits', 'dimensionless', 'Notes', '<p>Concentration-time coefficient for release</p>
', 'Tag', '');
nameless.parameter.W_animal = addparameter(nameless_model, 'W_animal', 'ConstantValue', true, 'Value', 20.8, 'ValueUnits', 'gram', 'Notes', '<p>Animal weight</p>
', 'Tag', '');
nameless.parameter.W_T = addparameter(nameless_model, 'W_T', 'ConstantValue', true, 'Value', 0.366, 'ValueUnits', 'gram', 'Notes', '<p>Tumor weight</p>
', 'Tag', '');
nameless.parameter.w_L = addparameter(nameless_model, 'w_L', 'ConstantValue', true, 'Value', 0.0538, 'ValueUnits', 'dimensionless', 'Notes', '<p>Liver to whole animal weight ratio</p>
', 'Tag', '');
nameless.parameter.w_S = addparameter(nameless_model, 'w_S', 'ConstantValue', true, 'Value', 0.00601, 'ValueUnits', 'dimensionless', 'Notes', '<p>Spleen to whole animal weight ratio</p>
', 'Tag', '');
nameless.parameter.w_K = addparameter(nameless_model, 'w_K', 'ConstantValue', true, 'Value', 0.0142, 'ValueUnits', 'dimensionless', 'Notes', '<p>Kidney to whole animal weight ratio</p>
', 'Tag', '');
nameless.parameter.w_U = addparameter(nameless_model, 'w_U', 'ConstantValue', true, 'Value', 0.00679, 'ValueUnits', 'dimensionless', 'Notes', '<p>Lungs to whole animal weight ratio</p>
', 'Tag', '');
nameless.parameter.PS_K_061 = addparameter(nameless_model, 'PS_K_061', 'ConstantValue', true, 'Value', 0.000927, 'ValueUnits', 'millilitre/hour', 'Notes', '<p>Diffusion coefficient for kidney</p>
', 'Tag', '');
nameless.parameter.PS_L_061 = addparameter(nameless_model, 'PS_L_061', 'ConstantValue', true, 'Value', 0.0214, 'ValueUnits', 'millilitre/hour', 'Notes', '<p>Diffusion coefficient for liver</p>
', 'Tag', '');
nameless.parameter.PS_R_061 = addparameter(nameless_model, 'PS_R_061', 'ConstantValue', true, 'Value', 0.0579, 'ValueUnits', 'millilitre/hour', 'Notes', '<p>Diffusion coefficient for rest of body</p>
', 'Tag', '');
nameless.parameter.PS_S_061 = addparameter(nameless_model, 'PS_S_061', 'ConstantValue', true, 'Value', 0.00202, 'ValueUnits', 'millilitre/hour', 'Notes', '<p>Diffusion coefficient for spleen</p>
', 'Tag', '');
nameless.parameter.PS_T_061 = addparameter(nameless_model, 'PS_T_061', 'ConstantValue', true, 'Value', 0.00131, 'ValueUnits', 'millilitre/hour', 'Notes', '<p>Diffusion coefficient for tumor</p>
', 'Tag', '');
nameless.parameter.PS_U_061 = addparameter(nameless_model, 'PS_U_061', 'ConstantValue', true, 'Value', 0.000122, 'ValueUnits', 'millilitre/hour', 'Notes', '<p>Diffusion coefficient for lungs</p>
', 'Tag', '');
nameless.parameter.dose_D_ug_g = addparameter(nameless_model, 'dose_D_ug_g', 'ConstantValue', true, 'Value', 2.5, 'ValueUnits', 'microgram/gram', 'Notes', '<p>selected based on experimental conditions, per body weight</p>
', 'Tag', '');
nameless.parameter.w_B = addparameter(nameless_model, 'w_B', 'ConstantValue', true, 'Value', 0.0814, 'ValueUnits', 'dimensionless', 'Notes', '', 'Tag', '');
nameless.parameter.Q_L = addparameter(nameless_model, 'Q_L', 'ConstantValue', true, 'Value', 181.92, 'ValueUnits', 'millilitre/hour', 'Notes', '<p>Blood flux through liver</p>
', 'Tag', '');
nameless.parameter.Q_S = addparameter(nameless_model, 'Q_S', 'ConstantValue', true, 'Value', 14.88, 'ValueUnits', 'millilitre/hour', 'Notes', '<p>Blood flux through spleen</p>
', 'Tag', '');
nameless.parameter.Q_K = addparameter(nameless_model, 'Q_K', 'ConstantValue', true, 'Value', 124.6, 'ValueUnits', 'millilitre/hour', 'Notes', '<p>Blood flux through kidney</p>
', 'Tag', '');
nameless.parameter.Q_U = addparameter(nameless_model, 'Q_U', 'ConstantValue', true, 'Value', 678, 'ValueUnits', 'millilitre/hour', 'Notes', '<p>Blood flux through lungs</p>
', 'Tag', '');
nameless.parameter.Q_R = addparameter(nameless_model, 'Q_R', 'ConstantValue', true, 'Value', 371.48, 'ValueUnits', 'millilitre/hour', 'Notes', '<p>Blood flux through rest of body</p>
', 'Tag', '');
nameless.parameter.Q_T_g = addparameter(nameless_model, 'Q_T_g', 'ConstantValue', true, 'Value', 2.06, 'ValueUnits', 'millilitre/hour/gram', 'Notes', '<p>Blood flux through tumor per gram of tumor</p>
', 'Tag', '');
nameless.parameter.kel_L_D = addparameter(nameless_model, 'kel_L_D', 'ConstantValue', true, 'Value', 4.75, 'ValueUnits', '1/hour', 'Notes', '<p>Coefficient of drug elimination in liver</p>
', 'Tag', '');
nameless.parameter.bto_K = addparameter(nameless_model, 'bto_K', 'ConstantValue', true, 'Value', 0.0858, 'ValueUnits', 'dimensionless', 'Notes', '<p>Blood in organ to whole kidneys volume ratio</p>
', 'Tag', '');
nameless.parameter.bto_L = addparameter(nameless_model, 'bto_L', 'ConstantValue', true, 'Value', 0.141, 'ValueUnits', 'dimensionless', 'Notes', '<p>Blood in organ to whole liver volume ratio</p>
', 'Tag', '');
nameless.parameter.bto_S = addparameter(nameless_model, 'bto_S', 'ConstantValue', true, 'Value', 0.153, 'ValueUnits', 'dimensionless', 'Notes', '<p>Blood in organ to whole spleen volume ratio</p>
', 'Tag', '');
nameless.parameter.bto_T = addparameter(nameless_model, 'bto_T', 'ConstantValue', true, 'Value', 0.00996, 'ValueUnits', 'dimensionless', 'Notes', '<p>Blood in organ to whole tumor volume ratio</p>
', 'Tag', '');
nameless.parameter.bto_U = addparameter(nameless_model, 'bto_U', 'ConstantValue', true, 'Value', 0.223, 'ValueUnits', 'dimensionless', 'Notes', '<p>Blood in organ to whole lungs volume ratio</p>
', 'Tag', '');
nameless.parameter.hemato = addparameter(nameless_model, 'hemato', 'ConstantValue', true, 'Value', 0.45, 'ValueUnits', 'dimensionless', 'Notes', '', 'Tag', '');
nameless.parameter.Kp_BC_D = addparameter(nameless_model, 'Kp_BC_D', 'ConstantValue', true, 'Value', 3.9, 'ValueUnits', 'dimensionless', 'Notes', '<p>Equilibrium partition coefficient (blood cells vs plasma) for drug, drug-type dependent.</p>
', 'Tag', '');
nameless.parameter.Kp_S_D = addparameter(nameless_model, 'Kp_S_D', 'ConstantValue', true, 'Value', 64.8, 'ValueUnits', 'dimensionless', 'Notes', '<p>Partition coefficient for drug in spleen</p>
', 'Tag', '');
nameless.parameter.Kp_K_D = addparameter(nameless_model, 'Kp_K_D', 'ConstantValue', true, 'Value', 55.6, 'ValueUnits', 'dimensionless', 'Notes', '<p>Partition coefficient for drug in kidneys</p>
', 'Tag', '');
nameless.parameter.Kp_U_D = addparameter(nameless_model, 'Kp_U_D', 'ConstantValue', true, 'Value', 76.4, 'ValueUnits', 'dimensionless', 'Notes', '<p>Partition coefficient for drug in lungs</p>
', 'Tag', '');
nameless.parameter.Kp_L_D = addparameter(nameless_model, 'Kp_L_D', 'ConstantValue', true, 'Value', 42, 'ValueUnits', 'dimensionless', 'Notes', '<p>Partition coefficient for drug in liver</p>
', 'Tag', '');
nameless.parameter.Kp_R_D = addparameter(nameless_model, 'Kp_R_D', 'ConstantValue', true, 'Value', 55.6, 'ValueUnits', 'dimensionless', 'Notes', '<p>Partition coefficient for drug in rest of body</p>
', 'Tag', '');
nameless.parameter.Kp_T_D = addparameter(nameless_model, 'Kp_T_D', 'ConstantValue', true, 'Value', 63.2, 'ValueUnits', 'dimensionless', 'Notes', '<p>Partition coefficient for drug in tumor</p>
', 'Tag', '');
nameless.parameter.b_PS = addparameter(nameless_model, 'b_PS', 'ConstantValue', true, 'Value', 1, 'ValueUnits', 'dimensionless', 'Notes', '<p>Scaling factor for PS parameters</p>
', 'Tag', '');
nameless.parameter.koef_resp_K = addparameter(nameless_model, 'koef_resp_K', 'ConstantValue', true, 'Value', 79.3, 'ValueUnits', 'dimensionless', 'Notes', '<p>Coefficient describing response action on kidneys</p>
', 'Tag', '');
nameless.parameter.koef_resp_L = addparameter(nameless_model, 'koef_resp_L', 'ConstantValue', true, 'Value', 209, 'ValueUnits', 'dimensionless', 'Notes', '<p>Coefficient describing response action on liver</p>
', 'Tag', '');
nameless.parameter.koef_resp_R = addparameter(nameless_model, 'koef_resp_R', 'ConstantValue', true, 'Value', 246, 'ValueUnits', 'dimensionless', 'Notes', '<p>Coefficient describing response action on rest of body</p>
', 'Tag', '');
nameless.parameter.syn_resp = addparameter(nameless_model, 'syn_resp', 'ConstantValue', true, 'Value', 1, 'ValueUnits', 'millilitre/microgram/hour', 'Notes', '<p>&quot;Synthesis&quot; of indirect response coefficient</p>
', 'Tag', '');
nameless.parameter.deg_resp = addparameter(nameless_model, 'deg_resp', 'ConstantValue', true, 'Value', 2.46, 'ValueUnits', '1/hour', 'Notes', '<p>&quot;Degradation&quot; of indirect response coefficient</p>
', 'Tag', '');
nameless.parameter.zero_rate = addparameter(nameless_model, 'zero_rate', 'ConstantValue', true, 'Value', 0, 'ValueUnits', 'microgram/hour', 'Notes', '<p>Constant equal to zero to pass units checking for reactions.</p>
', 'Tag', '');
nameless.parameter.dose_NP_ug_g = addparameter(nameless_model, 'dose_NP_ug_g', 'ConstantValue', true, 'Value', 30, 'ValueUnits', 'microgram/gram', 'Notes', '<p>selected based on experimental conditions, per body weight</p>
', 'Tag', '');
nameless.parameter.Kp_BC_NP = addparameter(nameless_model, 'Kp_BC_NP', 'ConstantValue', true, 'Value', 0, 'ValueUnits', 'dimensionless', 'Notes', '<p>Equilibrium partition coefficient (blood cells vs plasma) for nanoparticles, fixed.</p>
', 'Tag', '');
nameless.parameter.Kp_L_NP = addparameter(nameless_model, 'Kp_L_NP', 'ConstantValue', true, 'Value', 1000, 'ValueUnits', 'dimensionless', 'Notes', '<p>Partition coefficient for nanoparticles in liver</p>
', 'Tag', '');
nameless.parameter.Kp_S_NP = addparameter(nameless_model, 'Kp_S_NP', 'ConstantValue', true, 'Value', 1000, 'ValueUnits', 'dimensionless', 'Notes', '<p>Partition coefficient for nanoparticles in spleen</p>
', 'Tag', '');
nameless.parameter.Kp_T_NP = addparameter(nameless_model, 'Kp_T_NP', 'ConstantValue', true, 'Value', 1000, 'ValueUnits', 'dimensionless', 'Notes', '<p>Partition coefficient for nanoparticles in tumor</p>
', 'Tag', '');
nameless.parameter.Kp_K_NP = addparameter(nameless_model, 'Kp_K_NP', 'ConstantValue', true, 'Value', 1000, 'ValueUnits', 'dimensionless', 'Notes', '<p>Partition coefficient for nanoparticles in kidneys</p>
', 'Tag', '');
nameless.parameter.Kp_U_NP = addparameter(nameless_model, 'Kp_U_NP', 'ConstantValue', true, 'Value', 1000, 'ValueUnits', 'dimensionless', 'Notes', '<p>Partition coefficient for nanoparticles in lungs</p>
', 'Tag', '');
nameless.parameter.Kp_R_NP = addparameter(nameless_model, 'Kp_R_NP', 'ConstantValue', true, 'Value', 1000, 'ValueUnits', 'dimensionless', 'Notes', '<p>Partition coefficient for nanoparticles in rest of body</p>
', 'Tag', '');
nameless.parameter.timezero = addparameter(nameless_model, 'timezero', 'ConstantValue', true, 'Value', 1e-12, 'ValueUnits', 'hour', 'Notes', '<p>Minimal time value to use expressions like pow(t + timezero, -gamma, see &quot;vrel&quot;.</p>
', 'Tag', '');
nameless.parameter.conczero = addparameter(nameless_model, 'conczero', 'ConstantValue', true, 'Value', 1e-9, 'ValueUnits', 'microgram/millilitre', 'Notes', '<p>Constant that was included to plot in log scale only</p>
', 'Tag', '');
nameless.parameter.sigma_K = addparameter(nameless_model, 'sigma_K', 'ConstantValue', true, 'Value', 0.1, 'Notes', '', 'Tag', '');
nameless.parameter.sigma_L = addparameter(nameless_model, 'sigma_L', 'ConstantValue', true, 'Value', 0.1, 'Notes', '', 'Tag', '');
nameless.parameter.sigma_S = addparameter(nameless_model, 'sigma_S', 'ConstantValue', true, 'Value', 0.1, 'Notes', '', 'Tag', '');
nameless.parameter.sigma_T = addparameter(nameless_model, 'sigma_T', 'ConstantValue', true, 'Value', 0.1, 'Notes', '', 'Tag', '');
nameless.parameter.sigma_U = addparameter(nameless_model, 'sigma_U', 'ConstantValue', true, 'Value', 0.1, 'Notes', '', 'Tag', '');
nameless.parameter.sigma_P = addparameter(nameless_model, 'sigma_P', 'ConstantValue', true, 'Value', 0.1, 'Notes', '', 'Tag', '');

% Reactions
nameless.reaction.vdist_D_L = addreaction(nameless_model, 'null -> null', 'Name', 'vdist_D_L', 'Active', true, 'Reversible', true, 'ReactionRate', '(Q_L - Q_S) * (D_B) - Q_L * (D_L / Kp_L_D * (hemato * Kp_BC_D + 1 - hemato))', 'Notes', '', 'Tag', '');
  addreactant(nameless.reaction.vdist_D_L, [nameless.species.D_B, ], [1, ]);
  addproduct(nameless.reaction.vdist_D_L, [nameless.species.D_L, ], [1, ]);
nameless.reaction.vdist_D_S = addreaction(nameless_model, 'null -> null', 'Name', 'vdist_D_S', 'Active', true, 'Reversible', false, 'ReactionRate', 'Q_S * (D_B)', 'Notes', '', 'Tag', '');
  addreactant(nameless.reaction.vdist_D_S, [nameless.species.D_B, ], [1, ]);
  addproduct(nameless.reaction.vdist_D_S, [nameless.species.D_S, ], [1, ]);
nameless.reaction.vdist_D_SL = addreaction(nameless_model, 'null -> null', 'Name', 'vdist_D_SL', 'Active', true, 'Reversible', false, 'ReactionRate', 'Q_S * (D_S / Kp_S_D * (hemato * Kp_BC_D + 1 - hemato))', 'Notes', '', 'Tag', '');
  addreactant(nameless.reaction.vdist_D_SL, [nameless.species.D_S, ], [1, ]);
  addproduct(nameless.reaction.vdist_D_SL, [nameless.species.D_L, ], [1, ]);
nameless.reaction.vdist_D_T = addreaction(nameless_model, 'null -> null', 'Name', 'vdist_D_T', 'Active', true, 'Reversible', true, 'ReactionRate', 'Q_T * (D_B - D_T / Kp_T_D * (hemato * Kp_BC_D + 1 - hemato))', 'Notes', '', 'Tag', '');
  addreactant(nameless.reaction.vdist_D_T, [nameless.species.D_B, ], [1, ]);
  addproduct(nameless.reaction.vdist_D_T, [nameless.species.D_T, ], [1, ]);
nameless.reaction.vdist_D_K = addreaction(nameless_model, 'null -> null', 'Name', 'vdist_D_K', 'Active', true, 'Reversible', true, 'ReactionRate', 'Q_K * (D_B - D_K / Kp_K_D * (hemato * Kp_BC_D + 1 - hemato))', 'Notes', '', 'Tag', '');
  addreactant(nameless.reaction.vdist_D_K, [nameless.species.D_B, ], [1, ]);
  addproduct(nameless.reaction.vdist_D_K, [nameless.species.D_K, ], [1, ]);
nameless.reaction.vdist_D_U = addreaction(nameless_model, 'null -> null', 'Name', 'vdist_D_U', 'Active', true, 'Reversible', true, 'ReactionRate', 'Q_U * (D_B - D_U / Kp_U_D * (hemato * Kp_BC_D + 1 - hemato))', 'Notes', '', 'Tag', '');
  addreactant(nameless.reaction.vdist_D_U, [nameless.species.D_B, ], [1, ]);
  addproduct(nameless.reaction.vdist_D_U, [nameless.species.D_U, ], [1, ]);
nameless.reaction.vdist_D_R = addreaction(nameless_model, 'null -> null', 'Name', 'vdist_D_R', 'Active', true, 'Reversible', true, 'ReactionRate', 'Q_R * (D_B - D_R / Kp_R_D * (hemato * Kp_BC_D + 1 - hemato))', 'Notes', '', 'Tag', '');
  addreactant(nameless.reaction.vdist_D_R, [nameless.species.D_B, ], [1, ]);
  addproduct(nameless.reaction.vdist_D_R, [nameless.species.D_R, ], [1, ]);
nameless.reaction.vcl_D_L = addreaction(nameless_model, 'null -> null', 'Name', 'vcl_D_L', 'Active', true, 'Reversible', false, 'ReactionRate', 'V_L * (kel_L_D * D_L)', 'Notes', '', 'Tag', '');
  addreactant(nameless.reaction.vcl_D_L, [nameless.species.D_L, ], [1, ]);
nameless.reaction.vcl_D_S = addreaction(nameless_model, 'null -> null', 'Name', 'vcl_D_S', 'Active', true, 'Reversible', false, 'ReactionRate', 'zero_rate', 'Notes', '', 'Tag', '');
  addreactant(nameless.reaction.vcl_D_S, [nameless.species.D_S, ], [1, ]);
nameless.reaction.vcl_D_T = addreaction(nameless_model, 'null -> null', 'Name', 'vcl_D_T', 'Active', true, 'Reversible', false, 'ReactionRate', 'zero_rate', 'Notes', '', 'Tag', '');
  addreactant(nameless.reaction.vcl_D_T, [nameless.species.D_T, ], [1, ]);
nameless.reaction.vcl_D_K = addreaction(nameless_model, 'null -> null', 'Name', 'vcl_D_K', 'Active', true, 'Reversible', false, 'ReactionRate', 'zero_rate', 'Notes', '', 'Tag', '');
  addreactant(nameless.reaction.vcl_D_K, [nameless.species.D_K, ], [1, ]);
nameless.reaction.vcl_D_U = addreaction(nameless_model, 'null -> null', 'Name', 'vcl_D_U', 'Active', true, 'Reversible', false, 'ReactionRate', 'zero_rate', 'Notes', '', 'Tag', '');
  addreactant(nameless.reaction.vcl_D_U, [nameless.species.D_U, ], [1, ]);
nameless.reaction.vcl_D_R = addreaction(nameless_model, 'null -> null', 'Name', 'vcl_D_R', 'Active', true, 'Reversible', false, 'ReactionRate', 'zero_rate', 'Notes', '', 'Tag', '');
  addreactant(nameless.reaction.vcl_D_R, [nameless.species.D_R, ], [1, ]);
nameless.reaction.vcl_D_B = addreaction(nameless_model, 'null -> null', 'Name', 'vcl_D_B', 'Active', true, 'Reversible', false, 'ReactionRate', 'zero_rate', 'Notes', '', 'Tag', '');
  addreactant(nameless.reaction.vcl_D_B, [nameless.species.D_B, ], [1, ]);
nameless.reaction.vdist_NP_L = addreaction(nameless_model, 'null -> null', 'Name', 'vdist_NP_L', 'Active', true, 'Reversible', true, 'ReactionRate', 'PS_L * (NP_P - NP_L / Kp_L_NP)', 'Notes', '', 'Tag', '');
  addreactant(nameless.reaction.vdist_NP_L, [nameless.species.NP_B, ], [1, ]);
  addproduct(nameless.reaction.vdist_NP_L, [nameless.species.NP_L, ], [1, ]);
nameless.reaction.vdist_NP_S = addreaction(nameless_model, 'null -> null', 'Name', 'vdist_NP_S', 'Active', true, 'Reversible', true, 'ReactionRate', 'PS_S * (NP_P - NP_S / Kp_S_NP)', 'Notes', '', 'Tag', '');
  addreactant(nameless.reaction.vdist_NP_S, [nameless.species.NP_B, ], [1, ]);
  addproduct(nameless.reaction.vdist_NP_S, [nameless.species.NP_S, ], [1, ]);
nameless.reaction.vdist_NP_T = addreaction(nameless_model, 'null -> null', 'Name', 'vdist_NP_T', 'Active', true, 'Reversible', true, 'ReactionRate', 'PS_T * (NP_P - NP_T / Kp_T_NP)', 'Notes', '', 'Tag', '');
  addreactant(nameless.reaction.vdist_NP_T, [nameless.species.NP_B, ], [1, ]);
  addproduct(nameless.reaction.vdist_NP_T, [nameless.species.NP_T, ], [1, ]);
nameless.reaction.vdist_NP_K = addreaction(nameless_model, 'null -> null', 'Name', 'vdist_NP_K', 'Active', true, 'Reversible', true, 'ReactionRate', 'PS_K * (NP_P - NP_K / Kp_K_NP)', 'Notes', '', 'Tag', '');
  addreactant(nameless.reaction.vdist_NP_K, [nameless.species.NP_B, ], [1, ]);
  addproduct(nameless.reaction.vdist_NP_K, [nameless.species.NP_K, ], [1, ]);
nameless.reaction.vdist_NP_U = addreaction(nameless_model, 'null -> null', 'Name', 'vdist_NP_U', 'Active', true, 'Reversible', true, 'ReactionRate', 'PS_U * (NP_P - NP_U / Kp_U_NP)', 'Notes', '', 'Tag', '');
  addreactant(nameless.reaction.vdist_NP_U, [nameless.species.NP_B, ], [1, ]);
  addproduct(nameless.reaction.vdist_NP_U, [nameless.species.NP_U, ], [1, ]);
nameless.reaction.vdist_NP_R = addreaction(nameless_model, 'null -> null', 'Name', 'vdist_NP_R', 'Active', true, 'Reversible', true, 'ReactionRate', 'PS_R * (NP_P - NP_R / Kp_R_NP)', 'Notes', '', 'Tag', '');
  addreactant(nameless.reaction.vdist_NP_R, [nameless.species.NP_B, ], [1, ]);
  addproduct(nameless.reaction.vdist_NP_R, [nameless.species.NP_R, ], [1, ]);
nameless.reaction.vcl_NP_L = addreaction(nameless_model, 'null -> null', 'Name', 'vcl_NP_L', 'Active', true, 'Reversible', false, 'ReactionRate', 'zero_rate', 'Notes', '', 'Tag', '');
  addreactant(nameless.reaction.vcl_NP_L, [nameless.species.NP_L, ], [1, ]);
nameless.reaction.vcl_NP_S = addreaction(nameless_model, 'null -> null', 'Name', 'vcl_NP_S', 'Active', true, 'Reversible', false, 'ReactionRate', 'zero_rate', 'Notes', '', 'Tag', '');
  addreactant(nameless.reaction.vcl_NP_S, [nameless.species.NP_S, ], [1, ]);
nameless.reaction.vcl_NP_T = addreaction(nameless_model, 'null -> null', 'Name', 'vcl_NP_T', 'Active', true, 'Reversible', false, 'ReactionRate', 'zero_rate', 'Notes', '', 'Tag', '');
  addreactant(nameless.reaction.vcl_NP_T, [nameless.species.NP_T, ], [1, ]);
nameless.reaction.vcl_NP_K = addreaction(nameless_model, 'null -> null', 'Name', 'vcl_NP_K', 'Active', true, 'Reversible', false, 'ReactionRate', 'zero_rate', 'Notes', '', 'Tag', '');
  addreactant(nameless.reaction.vcl_NP_K, [nameless.species.NP_K, ], [1, ]);
nameless.reaction.vcl_NP_U = addreaction(nameless_model, 'null -> null', 'Name', 'vcl_NP_U', 'Active', true, 'Reversible', false, 'ReactionRate', 'zero_rate', 'Notes', '', 'Tag', '');
  addreactant(nameless.reaction.vcl_NP_U, [nameless.species.NP_U, ], [1, ]);
nameless.reaction.vcl_NP_R = addreaction(nameless_model, 'null -> null', 'Name', 'vcl_NP_R', 'Active', true, 'Reversible', false, 'ReactionRate', 'zero_rate', 'Notes', '', 'Tag', '');
  addreactant(nameless.reaction.vcl_NP_R, [nameless.species.NP_R, ], [1, ]);
nameless.reaction.vcl_NP_B = addreaction(nameless_model, 'null -> null', 'Name', 'vcl_NP_B', 'Active', true, 'Reversible', false, 'ReactionRate', 'zero_rate', 'Notes', '', 'Tag', '');
  addreactant(nameless.reaction.vcl_NP_B, [nameless.species.NP_B, ], [1, ]);
nameless.reaction.vrel_L = addreaction(nameless_model, 'null -> null', 'Name', 'vrel_L', 'Active', true, 'Reversible', false, 'ReactionRate', 'V_L * NP_L * vrel * dose_D_ug_g / dose_NP_ug_g', 'Notes', '', 'Tag', '');
  addproduct(nameless.reaction.vrel_L, [nameless.species.D_L, ], [1, ]);
nameless.reaction.vrel_S = addreaction(nameless_model, 'null -> null', 'Name', 'vrel_S', 'Active', true, 'Reversible', false, 'ReactionRate', 'V_S * NP_S * vrel * dose_D_ug_g / dose_NP_ug_g', 'Notes', '', 'Tag', '');
  addproduct(nameless.reaction.vrel_S, [nameless.species.D_S, ], [1, ]);
nameless.reaction.vrel_T = addreaction(nameless_model, 'null -> null', 'Name', 'vrel_T', 'Active', true, 'Reversible', false, 'ReactionRate', 'V_T * NP_T * vrel * dose_D_ug_g / dose_NP_ug_g', 'Notes', '', 'Tag', '');
  addproduct(nameless.reaction.vrel_T, [nameless.species.D_T, ], [1, ]);
nameless.reaction.vrel_K = addreaction(nameless_model, 'null -> null', 'Name', 'vrel_K', 'Active', true, 'Reversible', false, 'ReactionRate', 'V_K * NP_K * vrel * dose_D_ug_g / dose_NP_ug_g', 'Notes', '', 'Tag', '');
  addproduct(nameless.reaction.vrel_K, [nameless.species.D_K, ], [1, ]);
nameless.reaction.vrel_U = addreaction(nameless_model, 'null -> null', 'Name', 'vrel_U', 'Active', true, 'Reversible', false, 'ReactionRate', 'V_U * NP_U * vrel * dose_D_ug_g / dose_NP_ug_g', 'Notes', '', 'Tag', '');
  addproduct(nameless.reaction.vrel_U, [nameless.species.D_U, ], [1, ]);
nameless.reaction.vrel_R = addreaction(nameless_model, 'null -> null', 'Name', 'vrel_R', 'Active', true, 'Reversible', false, 'ReactionRate', 'V_R * NP_R * vrel * dose_D_ug_g / dose_NP_ug_g', 'Notes', '', 'Tag', '');
  addproduct(nameless.reaction.vrel_R, [nameless.species.D_R, ], [1, ]);
nameless.reaction.vrel_B = addreaction(nameless_model, 'null -> null', 'Name', 'vrel_B', 'Active', true, 'Reversible', false, 'ReactionRate', 'V_B * NP_B * vrel * dose_D_ug_g / dose_NP_ug_g', 'Notes', '', 'Tag', '');
  addproduct(nameless.reaction.vrel_B, [nameless.species.D_B, ], [1, ]);

% Rules
addrule(nameless_model, 'rho_avg = 1', 'repeatedAssignment');
addrule(nameless_model, 'V_B = W_animal / rho_avg * (w_B + w_L * bto_L + w_S * bto_S + w_K * bto_K + w_U * bto_U) + W_T / rho_avg * bto_T', 'repeatedAssignment');
addrule(nameless_model, 'V_L = W_animal / rho_avg * w_L * (1 - bto_L)', 'repeatedAssignment');
addrule(nameless_model, 'V_S = W_animal / rho_avg * w_S * (1 - bto_S)', 'repeatedAssignment');
addrule(nameless_model, 'V_T = W_T / rho_avg * (1 - bto_T)', 'repeatedAssignment');
addrule(nameless_model, 'V_K = W_animal / rho_avg * w_K * (1 - bto_K)', 'repeatedAssignment');
addrule(nameless_model, 'V_U = W_animal / rho_avg * w_U * (1 - bto_U)', 'repeatedAssignment');
addrule(nameless_model, 'V_R = W_animal / rho_avg * w_R', 'repeatedAssignment');
addrule(nameless_model, 'V_P = V_B * (1 - hemato)', 'repeatedAssignment');
addrule(nameless_model, 'dose_D_ug = delta * dose_D_ug_g * W_animal / V_B', 'repeatedAssignment');
addrule(nameless_model, 'D_P = D_B / (hemato * Kp_BC_D + 1 - hemato)', 'repeatedAssignment');
addrule(nameless_model, 'PS_L = PS_L_061 * power(w_L * W_animal / w_L_061 / W_animal_061, b_PS) * exp(-koef_resp_L * response)', 'repeatedAssignment');
addrule(nameless_model, 'PS_S = PS_S_061 * power(w_S * W_animal / w_S_061 / W_animal_061, b_PS)', 'repeatedAssignment');
addrule(nameless_model, 'PS_T = PS_T_061 * power(W_T / W_T_061, b_PS)', 'repeatedAssignment');
addrule(nameless_model, 'PS_K = PS_K_061 * power(w_K * W_animal / w_K_061 / W_animal_061, b_PS) * exp(-koef_resp_K * response)', 'repeatedAssignment');
addrule(nameless_model, 'PS_U = PS_U_061 * power(w_U * W_animal / w_U_061 / W_animal_061, b_PS)', 'repeatedAssignment');
addrule(nameless_model, 'PS_R = PS_R_061 * power(w_R * W_animal / w_R_061 / W_animal_061, b_PS) * exp(-koef_resp_R * response)', 'repeatedAssignment');
addrule(nameless_model, 'w_R = 1 - w_L - w_S - w_K - w_U - w_B - W_T / W_animal', 'repeatedAssignment');
addrule(nameless_model, 'w_R_061 = 1 - w_L_061 - w_S_061 - w_K_061 - w_U_061 - w_B_061 - W_T_061 / W_animal_061', 'repeatedAssignment');
addrule(nameless_model, 'Q_T = Q_T_g * W_T', 'repeatedAssignment');
addrule(nameless_model, 'v_ir = syn_resp * D_P - deg_resp * response', 'repeatedAssignment');
addrule(nameless_model, 'dose_NP_ug = dose_NP_ug_g * W_animal / V_B', 'repeatedAssignment');
addrule(nameless_model, 'NP_P = NP_B / (hemato * Kp_BC_NP + 1 - hemato)', 'repeatedAssignment');
addrule(nameless_model, 'v = exp(-kdiff / (1 - gamma) * power(time + timezero, 1 - gamma))', 'repeatedAssignment');
addrule(nameless_model, 'vrel = kdiff * power(time + timezero, -gamma) * v * (1 - delta)', 'repeatedAssignment');
addrule(nameless_model, 'D_all_in_NP = (1 - delta) * v', 'repeatedAssignment');
addrule(nameless_model, 'NP_L_aver = (NP_L * V_L + NP_B * W_animal / rho_avg * w_L * bto_L) / (W_animal / rho_avg * w_L)', 'repeatedAssignment');
addrule(nameless_model, 'NP_S_aver = (NP_S * V_S + NP_B * W_animal / rho_avg * w_S * bto_S) / (W_animal / rho_avg * w_S)', 'repeatedAssignment');
addrule(nameless_model, 'NP_T_aver = (NP_T * V_T + NP_B * W_T / rho_avg * bto_T) / (W_T / rho_avg)', 'repeatedAssignment');
addrule(nameless_model, 'NP_K_aver = (NP_K * V_K + NP_B * W_animal / rho_avg * w_K * bto_K) / (W_animal / rho_avg * w_K)', 'repeatedAssignment');
addrule(nameless_model, 'NP_U_aver = (NP_U * V_U + NP_B * W_animal / rho_avg * w_U * bto_U) / (W_animal / rho_avg * w_U)', 'repeatedAssignment');
addrule(nameless_model, 'NP_L_cap = (NP_B * W_animal * w_L * bto_L) / (W_animal * w_L)', 'repeatedAssignment');
addrule(nameless_model, 'NP_S_cap = (NP_B * W_animal * w_S * bto_S) / (W_animal * w_S)', 'repeatedAssignment');
addrule(nameless_model, 'NP_T_cap = (NP_B * W_T * bto_T) / (W_T)', 'repeatedAssignment');
addrule(nameless_model, 'NP_K_cap = (NP_B * W_animal * w_K * bto_K) / (W_animal * w_K)', 'repeatedAssignment');
addrule(nameless_model, 'NP_U_cap = (NP_B * W_animal * w_U * bto_U) / (W_animal * w_U)', 'repeatedAssignment');
addrule(nameless_model, 'NP_L_tissue = (NP_L * V_L) / (W_animal / rho_avg * w_L)', 'repeatedAssignment');
addrule(nameless_model, 'NP_S_tissue = (NP_S * V_S) / (W_animal / rho_avg * w_S)', 'repeatedAssignment');
addrule(nameless_model, 'NP_T_tissue = (NP_T * V_T) / (W_T / rho_avg)', 'repeatedAssignment');
addrule(nameless_model, 'NP_K_tissue = (NP_K * V_K) / (W_animal / rho_avg * w_K)', 'repeatedAssignment');
addrule(nameless_model, 'NP_U_tissue = (NP_U * V_U) / (W_animal / rho_avg * w_U)', 'repeatedAssignment');
addrule(nameless_model, 'D_L_free = (D_L * V_L + D_B * W_animal / rho_avg * w_L * bto_L) / (V_L + W_animal / rho_avg * w_L * bto_L)', 'repeatedAssignment');
addrule(nameless_model, 'D_S_free = (D_S * V_S + D_B * W_animal / rho_avg * w_S * bto_S) / (V_S + W_animal / rho_avg * w_S * bto_S)', 'repeatedAssignment');
addrule(nameless_model, 'D_T_free = (D_T * V_T + D_B * W_T / rho_avg * bto_T) / (V_T + W_T / rho_avg * bto_T)', 'repeatedAssignment');
addrule(nameless_model, 'D_K_free = (D_K * V_K + D_B * W_animal / rho_avg * w_K * bto_K) / (V_K + W_animal / rho_avg * w_K * bto_K)', 'repeatedAssignment');
addrule(nameless_model, 'D_U_free = (D_U * V_U + D_B * W_animal / rho_avg * w_U * bto_U) / (V_U + W_animal / rho_avg * w_U * bto_U)', 'repeatedAssignment');
addrule(nameless_model, 'D_L_aver0 = NP_L_aver * D_all_in_NP * dose_D_ug_g / dose_NP_ug_g', 'repeatedAssignment');
addrule(nameless_model, 'D_S_aver0 = NP_S_aver * D_all_in_NP * dose_D_ug_g / dose_NP_ug_g', 'repeatedAssignment');
addrule(nameless_model, 'D_T_aver0 = NP_T_aver * D_all_in_NP * dose_D_ug_g / dose_NP_ug_g', 'repeatedAssignment');
addrule(nameless_model, 'D_K_aver0 = NP_K_aver * D_all_in_NP * dose_D_ug_g / dose_NP_ug_g', 'repeatedAssignment');
addrule(nameless_model, 'D_U_aver0 = NP_U_aver * D_all_in_NP * dose_D_ug_g / dose_NP_ug_g', 'repeatedAssignment');
addrule(nameless_model, 'D_P_aver0 = NP_P * D_all_in_NP * dose_D_ug_g / dose_NP_ug_g', 'repeatedAssignment');
addrule(nameless_model, 'D_L_aver = D_L_aver0 + D_L_free', 'repeatedAssignment');
addrule(nameless_model, 'D_S_aver = D_S_aver0 + D_S_free', 'repeatedAssignment');
addrule(nameless_model, 'D_T_aver = D_T_aver0 + D_T_free', 'repeatedAssignment');
addrule(nameless_model, 'D_K_aver = D_K_aver0 + D_K_free', 'repeatedAssignment');
addrule(nameless_model, 'D_U_aver = D_U_aver0 + D_U_free', 'repeatedAssignment');
addrule(nameless_model, 'D_P_aver = D_P_aver0 + D_P', 'repeatedAssignment');
addrule(nameless_model, 'response = 1*v_ir', 'rate');

% Time Events
nameless.event.single_dose_sw = addevent(nameless_model, 'time >= 0 && (time - 0) /  - floor((time - 0) /  + 0.5) >= 0', {'D_B = dose_D_ug', 'NP_B = dose_NP_ug', }, 'Active', true, 'Notes', '<p>Switcher describing single dose at 0 time.</p>
', 'Tag', '');






% Update simulation config
nameless.config = getconfigset(nameless_model)
set(nameless.config.SolverOptions, 'AbsoluteToleranceScaling', false)
set(nameless.config, 'TimeUnits', 'hour')
