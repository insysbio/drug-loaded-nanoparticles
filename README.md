# Drug Loaded Nanoparticles

[![Heta project](https://img.shields.io/badge/%CD%B1-Heta_project-blue)](https://hetalang.github.io/)
[![Build and Share](https://github.com/insysbio/drug-loaded-nanoparticles/actions/workflows/build-and-share.yml/badge.svg)](https://github.com/insysbio/drug-loaded-nanoparticles/actions/workflows/build-and-share.yml)
[![GitHub license](https://img.shields.io/github/license/insysbio/drug-loaded-nanoparticles.svg)](https://github.com/insysbio/drug-loaded-nanoparticles/blob/master/LICENSE)
[![DOI:10.1016/j.jconrel.2017.06.006](https://zenodo.org/badge/DOI/10.1016/j.jconrel.2017.06.006.svg)](https://doi.org/10.1016/j.jconrel.2017.06.006)

PBPK Modeling For Therapeutic Nanoparticles Loaded With Drug

This repository includes the model reproduced from the the paper and datasets from figures and the supplementary materials:

> Shalgunov et al. _Comprehensive study of the drug delivery properties of poly(l-lactide)-poly(ethylene glycol) nanoparticles in rats and tumor-bearing mice._ 2017 __Journal of Controlled Release 261.__ DOI: [10.1016/j.jconrel.2017.06.006](http://dx.doi.org/10.1016/j.jconrel.2017.06.006)

## Known restrictions

- "Units inconsistency" messages for some records: `v`, `vrel` because of limited support of fractional units in Heta. But this doesn't affect simulation results.

## Diagnostics

Simulated vs measured dependence of average VCR concentration for the NP of type U16c.

![U16c D_L_log](diagnostics/reproduced%20model/U16c%20D_L_log.png)

You find other diagnostic plots in the directory [/diagnostics/reproduced model/](https://github.com/insysbio/drug-loaded-nanoparticles/tree/main/diagnostics/reproduced%20model)

## Exported formats

See [dist branch](https://github.com/insysbio/drug-loaded-nanoparticles/tree/dist)

## TODO

- [x] Simulations and experimental data in HetaSimulator
- [x] Share the datasets
- [ ] Reproduce fitting

## Contributors

[Evgeny Metelkin](https://github.com/metelkin) is the author of the Heta-based modeling code.

The model and data in the study were reproduced from the published study.
The authors of the original study are:
V. Shalgunov, D. Zaytseva-Zotova, A. Zintchenko,
T. Levada, Y. Shilov, D. Andreyev,
D. Dzhumashev, E. Metelkin, A. Urusova,
O. Demin, K. McDonnell, G. Troiano,
S. Zale, E. Safarovа

