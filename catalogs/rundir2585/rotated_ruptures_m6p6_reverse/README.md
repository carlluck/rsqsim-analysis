# Bruce 2585 Rotated Rupture Variability, M6.6 Reverse

[Catalog Details](../#bruce-2585)

## Table Of Contents
* [Rupture Rotation Parameters](#rupture-rotation-parameters)
* [Sites](#sites)
* [Path Variability](#path-variability)
  * [Path Variability Methodology](#path-variability-methodology)
  * [20.0 km Path Residuals](#200-km-path-residuals)
  * [50.0 km Path Residuals](#500-km-path-residuals)
* [Source-strike Variability](#source-strike-variability)
  * [Source-strike Variability Methodology](#source-strike-variability-methodology)
  * [Source-strike Variability Results](#source-strike-variability-results)
* [Within-event Variability](#within-event-variability)
  * [Within-event Variability Methodology](#within-event-variability-methodology)
  * [Within-event Variability Results](#within-event-variability-results)
## Rupture Rotation Parameters

| Events | 75 |
|-----|-----|
| Sites | 10 |
| Source Rotation Azimuths | 36 |
| Site-To-Source Path Azimuths | 4 |
| Source-Site Distance[s] | 20.0,50.0 km |
| Total # Simulations | 216000 |

## Sites

| Name | Location | Vs30 (m/s) | Z1.0 (km) | Z2.5 (km) |
|-----|-----|-----|-----|-----|
| LAPD | *34.557, -118.125* | 863 | N/A | N/A |
| PAS | *34.148426, -118.17119* | 863 | N/A | N/A |
| SBSM | *34.064987, -117.29201* | 863 | N/A | N/A |
| SMCA | *34.00909, -118.48939* | 863 | N/A | N/A |
| STNI | *33.93088, -118.17881* | 863 | N/A | N/A |
| USC | *34.0192, -118.286* | 863 | N/A | N/A |
| WNGC | *34.041824, -118.0653* | 863 | N/A | N/A |
| s119 | *34.55314, -118.72826* | 863 | N/A | N/A |
| s279 | *34.37809, -118.34757* | 863 | N/A | N/A |
| s480 | *34.15755, -117.87389* | 863 | N/A | N/A |
## Path Variability
*[(top)](#table-of-contents)*

### Path Variability Methodology
*[(top)](#table-of-contents)*

Path variability, denoted &phi;<sub>P2P</sub> in Al Atik 2010, is computed from ground motion residuals where the following quantities are held constant:

* Site *[10 unique]*
* Joyner-Boore Distance *[2 unique]*
* Rupture *[75 unique]*
* Rupture Strike (Aki & Richards 1980 convention) *[36 unique]*

and the following quantities vary:

* Path (from site to rupture centroid) *[4 unique]*

Here is an exmample with 5 rotations:
![Example](resources/example_path.png)

Standard deviation is computed and tabulated separately for each site and distance, then a total standard deviation is computed from all site and distances and reported in the "**ALL SITES**" row.

### 20.0 km Path Residuals
*[(top)](#table-of-contents)*

![Path Variability](resources/path_std_dev.png)

| Site | 3s Std. Dev. | 3s Residual Range | 5s Std. Dev. | 5s Residual Range | 7.5s Std. Dev. | 7.5s Residual Range | 10s Std. Dev. | 10s Residual Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| LAPD | 0 | [-0.03 0.03] | 0 | [-0.02 0.02] | 0 | [-0.01 0.01] | 0 | [-0.01 0.01] |
| PAS | 0 | [-0.03 0.04] | 0 | [-0.01 0.01] | 0 | [-0.01 0.02] | 0 | [-0.01 0.02] |
| SBSM | 0 | [-0.05 0.03] | 0 | [-0.01 0.01] | 0 | [-0.01 0.01] | 0 | [-0.01 0.01] |
| SMCA | 0 | [-0.03 0.03] | 0 | [-0.03 0.02] | 0 | [-0.01 0.01] | 0 | [-0.01 0.01] |
| STNI | 0 | [-0.03 0.04] | 0 | [-0.01 0.02] | 0 | [-0.02 0.02] | 0 | [-0.01 0.01] |
| USC | 0 | [-0.04 0.03] | 0 | [-0.02 0.02] | 0 | [-0.01 0.02] | 0 | [-0.01 0.02] |
| WNGC | 0 | [-0.02 0.02] | 0 | [-0.02 0.02] | 0 | [-0.01 0.01] | 0 | [-0.01 0.01] |
| s119 | 0 | [-0.06 0.03] | 0 | [-0.01 0.01] | 0 | [-0.01 0.02] | 0 | [-0.01 0.01] |
| s279 | 0 | [-0.03 0.04] | 0 | [-0.02 0.01] | 0 | [-0.01 0.01] | 0 | [-0.02 0.01] |
| s480 | 0 | [-0.03 0.03] | 0 | [-0.01 0.01] | 0 | [-0.01 0.01] | 0 | [-0.01 0.02] |
| **ALL SITES** | **0** | **[-0.06 0.04]** | **0** | **[-0.03 0.02]** | **0** | **[-0.02 0.02]** | **0** | **[-0.02 0.02]** |

### 50.0 km Path Residuals
*[(top)](#table-of-contents)*

![Path Variability](resources/path_std_dev.png)

| Site | 3s Std. Dev. | 3s Residual Range | 5s Std. Dev. | 5s Residual Range | 7.5s Std. Dev. | 7.5s Residual Range | 10s Std. Dev. | 10s Residual Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| LAPD | 0 | [-0.04 0.05] | 0 | [-0.03 0.03] | 0 | [-0.02 0.02] | 0 | [-0.02 0.01] |
| PAS | 0 | [-0.1 0.05] | 0 | [-0.04 0.04] | 0 | [-0.03 0.02] | 0 | [-0.01 0.03] |
| SBSM | 0 | [-0.1 0.06] | 0 | [-0.04 0.03] | 0 | [-0.02 0.02] | 0 | [-0.02 0.01] |
| SMCA | 0 | [-0.09 0.07] | 0 | [-0.04 0.03] | 0 | [-0.03 0.02] | 0 | [-0.01 0.01] |
| STNI | 0 | [-0.08 0.05] | 0 | [-0.03 0.05] | 0 | [-0.02 0.02] | 0 | [-0.02 0.02] |
| USC | 0 | [-0.07 0.06] | 0 | [-0.04 0.03] | 0 | [-0.03 0.02] | 0 | [-0.02 0.02] |
| WNGC | 0 | [-0.04 0.05] | 0 | [-0.04 0.04] | 0 | [-0.01 0.03] | 0 | [-0.01 0.02] |
| s119 | 0 | [-0.07 0.09] | 0 | [-0.04 0.03] | 0 | [-0.03 0.03] | 0 | [-0.03 0.02] |
| s279 | 0 | [-0.07 0.1] | 0 | [-0.03 0.05] | 0 | [-0.02 0.03] | 0 | [-0.02 0.02] |
| s480 | 0 | [-0.08 0.07] | 0 | [-0.04 0.03] | 0 | [-0.01 0.02] | 0 | [-0.02 0.02] |
| **ALL SITES** | **0** | **[-0.1 0.1]** | **0** | **[-0.04 0.05]** | **0** | **[-0.03 0.03]** | **0** | **[-0.03 0.03]** |

## Source-strike Variability
*[(top)](#table-of-contents)*

### Source-strike Variability Methodology
*[(top)](#table-of-contents)*

Source-strike variability, denoted &phi;<sub>s</sub>, is computed from ground motion residuals where the following quantities are held constant:

* Site *[10 unique]*
* Joyner-Boore Distance *[2 unique]*
* Rupture *[75 unique]*
* Path (from site to rupture centroid) *[4 unique]*

and the following quantities vary:

* Rupture Strike (Aki & Richards 1980 convention) *[36 unique]*

Standard deviation is computed and tabulated separately for each site, then a total standard deviation is computed from all sites and reported in the "**ALL SITES**" row.

### Source-strike Variability Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_std_dev.png)

| Site | 3s Std. Dev. | 3s Residual Range | 5s Std. Dev. | 5s Residual Range | 7.5s Std. Dev. | 7.5s Residual Range | 10s Std. Dev. | 10s Residual Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| LAPD | 0.35 | [-1.31 1.18] | 0.39 | [-1.44 1.3] | 0.37 | [-1.27 1.21] | 0.34 | [-1.22 0.97] |
| PAS | 0.35 | [-1.32 1.19] | 0.39 | [-1.44 1.29] | 0.37 | [-1.28 1.21] | 0.34 | [-1.22 0.97] |
| SBSM | 0.35 | [-1.32 1.19] | 0.39 | [-1.44 1.3] | 0.37 | [-1.27 1.21] | 0.34 | [-1.22 0.97] |
| SMCA | 0.35 | [-1.3 1.19] | 0.39 | [-1.44 1.29] | 0.37 | [-1.29 1.21] | 0.34 | [-1.22 0.97] |
| STNI | 0.35 | [-1.32 1.19] | 0.39 | [-1.44 1.29] | 0.37 | [-1.28 1.21] | 0.34 | [-1.22 0.97] |
| USC | 0.35 | [-1.32 1.19] | 0.39 | [-1.44 1.29] | 0.37 | [-1.29 1.21] | 0.34 | [-1.22 0.97] |
| WNGC | 0.35 | [-1.32 1.19] | 0.39 | [-1.44 1.29] | 0.37 | [-1.28 1.21] | 0.34 | [-1.22 0.97] |
| s119 | 0.35 | [-1.29 1.2] | 0.39 | [-1.43 1.29] | 0.37 | [-1.29 1.21] | 0.34 | [-1.23 0.98] |
| s279 | 0.35 | [-1.32 1.18] | 0.39 | [-1.44 1.29] | 0.37 | [-1.29 1.21] | 0.34 | [-1.22 0.97] |
| s480 | 0.35 | [-1.32 1.19] | 0.39 | [-1.44 1.3] | 0.37 | [-1.27 1.21] | 0.34 | [-1.22 0.97] |
| **ALL SITES** | **0.35** | **[-1.32 1.2]** | **0.39** | **[-1.44 1.3]** | **0.37** | **[-1.29 1.21]** | **0.34** | **[-1.23 0.98]** |

## Within-event Variability
*[(top)](#table-of-contents)*

### Within-event Variability Methodology
*[(top)](#table-of-contents)*

Within-event variability, denoted &phi; in Al Atik 2010, is computed from ground motion residuals where the following quantities are held constant:

* Site *[10 unique]*
* Joyner-Boore Distance *[2 unique]*
* Rupture Strike (Aki & Richards 1980 convention) *[36 unique]*
* Path (from site to rupture centroid) *[4 unique]*

and the following quantities vary:

* Rupture *[75 unique]*

Standard deviation is computed and tabulated separately for each site, then a total standard deviation is computed from all sites and reported in the "**ALL SITES**" row.

### Within-event Variability Results
*[(top)](#table-of-contents)*

![Within-event Variability](resources/within_event_std_dev.png)

| Site | 3s Std. Dev. | 3s Residual Range | 5s Std. Dev. | 5s Residual Range | 7.5s Std. Dev. | 7.5s Residual Range | 10s Std. Dev. | 10s Residual Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| LAPD | 0.43 | [-1.44 1.49] | 0.44 | [-1.48 1.62] | 0.4 | [-1.43 1.15] | 0.38 | [-1.24 1.12] |
| PAS | 0.43 | [-1.44 1.49] | 0.44 | [-1.49 1.62] | 0.4 | [-1.45 1.15] | 0.38 | [-1.24 1.12] |
| SBSM | 0.43 | [-1.46 1.49] | 0.44 | [-1.48 1.62] | 0.4 | [-1.45 1.15] | 0.38 | [-1.24 1.12] |
| SMCA | 0.43 | [-1.44 1.49] | 0.44 | [-1.46 1.62] | 0.4 | [-1.43 1.15] | 0.38 | [-1.25 1.12] |
| STNI | 0.43 | [-1.44 1.49] | 0.44 | [-1.48 1.62] | 0.4 | [-1.44 1.14] | 0.38 | [-1.25 1.12] |
| USC | 0.43 | [-1.44 1.49] | 0.44 | [-1.46 1.62] | 0.4 | [-1.45 1.15] | 0.38 | [-1.25 1.12] |
| WNGC | 0.43 | [-1.44 1.49] | 0.44 | [-1.49 1.62] | 0.4 | [-1.44 1.14] | 0.38 | [-1.24 1.12] |
| s119 | 0.43 | [-1.44 1.49] | 0.44 | [-1.47 1.62] | 0.4 | [-1.41 1.15] | 0.38 | [-1.25 1.13] |
| s279 | 0.43 | [-1.44 1.49] | 0.44 | [-1.47 1.62] | 0.4 | [-1.42 1.15] | 0.38 | [-1.24 1.12] |
| s480 | 0.43 | [-1.47 1.48] | 0.44 | [-1.49 1.62] | 0.4 | [-1.44 1.15] | 0.38 | [-1.24 1.12] |
| **ALL SITES** | **0.43** | **[-1.47 1.49]** | **0.44** | **[-1.49 1.62]** | **0.4** | **[-1.45 1.15]** | **0.38** | **[-1.25 1.13]** |

