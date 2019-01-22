# Bruce 2585 Rotated Rupture Variability, M6.6 SS

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
  * [20.0 km Source-strike Residuals](#200-km-source-strike-residuals)
  * [50.0 km Source-strike Residuals](#500-km-source-strike-residuals)
* [Within-event Variability](#within-event-variability)
  * [Within-event Variability Methodology](#within-event-variability-methodology)
  * [20.0 km Within-event Residuals](#200-km-within-event-residuals)
  * [50.0 km Within-event Residuals](#500-km-within-event-residuals)
## Rupture Rotation Parameters

| Events | 100 |
|-----|-----|
| Sites | 10 |
| Source Rotation Azimuths | 36 |
| Site-To-Source Path Azimuths | 4 |
| Source-Site Distance[s] | 20.0,50.0 km |
| Total # Simulations | 288000 |

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
* Rupture *[100 unique]*
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
| LAPD | 0 | [-0.04 0.05] | 0 | [-0.04 0.06] | 0 | [-0.01 0.03] | 0 | [-0.01 0.01] |
| PAS | 0 | [-0.03 0.05] | 0 | [-0.01 0.04] | 0 | [-0.01 0.01] | 0 | [-0.01 0.02] |
| SBSM | 0 | [-0.04 0.05] | 0 | [-0.02 0.03] | 0 | [-0.01 0.02] | 0 | [-0.02 0.02] |
| SMCA | 0 | [-0.04 0.05] | 0 | [-0.02 0.03] | 0 | [-0.02 0.01] | 0 | [-0.02 0.02] |
| STNI | 0 | [-0.03 0.04] | 0 | [-0.02 0.03] | 0 | [-0.01 0.01] | 0 | [-0.02 0.02] |
| USC | 0 | [-0.05 0.05] | 0 | [-0.03 0.04] | 0 | [-0.01 0.01] | 0 | [-0.02 0.03] |
| WNGC | 0 | [-0.04 0.05] | 0 | [-0.02 0.03] | 0 | [-0.01 0.02] | 0 | [-0.02 0.01] |
| s119 | 0 | [-0.05 0.04] | 0 | [-0.04 0.03] | 0 | [-0.01 0.02] | 0 | [-0.02 0.01] |
| s279 | 0 | [-0.05 0.04] | 0 | [-0.02 0.03] | 0 | [-0.01 0.03] | 0 | [-0.02 0.02] |
| s480 | 0 | [-0.03 0.05] | 0 | [-0.02 0.03] | 0 | [-0.03 0.02] | 0 | [-0.02 0.01] |
| **ALL SITES** | **0** | **[-0.05 0.05]** | **0** | **[-0.04 0.06]** | **0** | **[-0.03 0.03]** | **0** | **[-0.02 0.03]** |

### 50.0 km Path Residuals
*[(top)](#table-of-contents)*

![Path Variability](resources/path_std_dev.png)

| Site | 3s Std. Dev. | 3s Residual Range | 5s Std. Dev. | 5s Residual Range | 7.5s Std. Dev. | 7.5s Residual Range | 10s Std. Dev. | 10s Residual Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| LAPD | 0 | [-0.06 0.09] | 0 | [-0.05 0.02] | 0 | [-0.03 0.03] | 0 | [-0.02 0.02] |
| PAS | 0 | [-0.04 0.09] | 0 | [-0.07 0.03] | 0 | [-0.03 0.02] | 0 | [-0.01 0.02] |
| SBSM | 0 | [-0.11 0.11] | 0 | [-0.04 0.04] | 0 | [-0.02 0.03] | 0 | [-0.02 0.02] |
| SMCA | 0 | [-0.17 0.07] | 0 | [-0.07 0.04] | 0 | [-0.02 0.02] | 0 | [-0.02 0.01] |
| STNI | 0 | [-0.17 0.08] | 0 | [-0.07 0.06] | 0 | [-0.05 0.03] | 0 | [-0.03 0.01] |
| USC | 0 | [-0.17 0.11] | 0 | [-0.07 0.05] | 0 | [-0.04 0.02] | 0 | [-0.02 0.02] |
| WNGC | 0 | [-0.06 0.07] | 0 | [-0.05 0.05] | 0 | [-0.04 0.04] | 0 | [-0.04 0.04] |
| s119 | 0 | [-0.1 0.09] | 0 | [-0.03 0.05] | 0 | [-0.02 0.02] | 0 | [-0.03 0.03] |
| s279 | 0 | [-0.08 0.09] | 0 | [-0.07 0.06] | 0 | [-0.02 0.03] | 0 | [-0.02 0.02] |
| s480 | 0 | [-0.13 0.11] | 0 | [-0.04 0.04] | 0 | [-0.02 0.04] | 0 | [-0.02 0.02] |
| **ALL SITES** | **0** | **[-0.17 0.11]** | **0** | **[-0.07 0.06]** | **0** | **[-0.05 0.04]** | **0** | **[-0.04 0.04]** |

## Source-strike Variability
*[(top)](#table-of-contents)*

### Source-strike Variability Methodology
*[(top)](#table-of-contents)*

Source-strike variability, denoted &phi;<sub>s</sub>, is computed from ground motion residuals where the following quantities are held constant:

* Site *[10 unique]*
* Joyner-Boore Distance *[2 unique]*
* Rupture *[100 unique]*
* Path (from site to rupture centroid) *[4 unique]*

and the following quantities vary:

* Rupture Strike (Aki & Richards 1980 convention) *[36 unique]*

Here is an exmample with 5 rotations:
![Example](resources/example_source_strike.png)

Standard deviation is computed and tabulated separately for each site and distance, then a total standard deviation is computed from all site and distances and reported in the "**ALL SITES**" row.

### 20.0 km Source-strike Residuals
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_std_dev.png)

| Site | 3s Std. Dev. | 3s Residual Range | 5s Std. Dev. | 5s Residual Range | 7.5s Std. Dev. | 7.5s Residual Range | 10s Std. Dev. | 10s Residual Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| LAPD | 0.37 | [-1.22 1.14] | 0.4 | [-1.55 1.07] | 0.31 | [-1.1 1.09] | 0.23 | [-0.96 0.86] |
| PAS | 0.37 | [-1.22 1.14] | 0.4 | [-1.54 1.07] | 0.31 | [-1.09 1.09] | 0.23 | [-0.95 0.86] |
| SBSM | 0.37 | [-1.2 1.14] | 0.4 | [-1.53 1.07] | 0.31 | [-1.13 1.09] | 0.23 | [-0.95 0.86] |
| SMCA | 0.37 | [-1.22 1.14] | 0.4 | [-1.55 1.07] | 0.31 | [-1.08 1.09] | 0.23 | [-0.96 0.86] |
| STNI | 0.37 | [-1.22 1.14] | 0.4 | [-1.54 1.07] | 0.31 | [-1.08 1.08] | 0.23 | [-0.95 0.86] |
| USC | 0.37 | [-1.22 1.14] | 0.4 | [-1.54 1.07] | 0.31 | [-1.08 1.09] | 0.23 | [-0.95 0.86] |
| WNGC | 0.37 | [-1.22 1.14] | 0.4 | [-1.54 1.07] | 0.31 | [-1.09 1.09] | 0.23 | [-0.95 0.86] |
| s119 | 0.37 | [-1.22 1.14] | 0.4 | [-1.55 1.08] | 0.31 | [-1.08 1.09] | 0.23 | [-0.96 0.86] |
| s279 | 0.37 | [-1.22 1.14] | 0.4 | [-1.55 1.07] | 0.31 | [-1.08 1.09] | 0.23 | [-0.96 0.86] |
| s480 | 0.37 | [-1.22 1.14] | 0.4 | [-1.54 1.07] | 0.31 | [-1.1 1.09] | 0.23 | [-0.95 0.86] |
| **ALL SITES** | **0.37** | **[-1.22 1.14]** | **0.4** | **[-1.55 1.08]** | **0.31** | **[-1.13 1.09]** | **0.23** | **[-0.96 0.86]** |

### 50.0 km Source-strike Residuals
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_std_dev.png)

| Site | 3s Std. Dev. | 3s Residual Range | 5s Std. Dev. | 5s Residual Range | 7.5s Std. Dev. | 7.5s Residual Range | 10s Std. Dev. | 10s Residual Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| LAPD | 0.45 | [-1.34 1.42] | 0.48 | [-1.6 1.34] | 0.51 | [-1.85 1.35] | 0.53 | [-1.55 1.28] |
| PAS | 0.45 | [-1.34 1.43] | 0.48 | [-1.6 1.34] | 0.51 | [-1.85 1.34] | 0.53 | [-1.55 1.28] |
| SBSM | 0.45 | [-1.34 1.42] | 0.48 | [-1.61 1.34] | 0.51 | [-1.85 1.34] | 0.53 | [-1.55 1.28] |
| SMCA | 0.45 | [-1.34 1.43] | 0.48 | [-1.6 1.34] | 0.51 | [-1.84 1.34] | 0.53 | [-1.54 1.27] |
| STNI | 0.45 | [-1.34 1.43] | 0.48 | [-1.6 1.33] | 0.51 | [-1.85 1.34] | 0.53 | [-1.55 1.27] |
| USC | 0.45 | [-1.34 1.43] | 0.48 | [-1.6 1.33] | 0.51 | [-1.85 1.34] | 0.53 | [-1.54 1.27] |
| WNGC | 0.45 | [-1.34 1.43] | 0.48 | [-1.6 1.34] | 0.51 | [-1.85 1.34] | 0.53 | [-1.55 1.28] |
| s119 | 0.45 | [-1.34 1.43] | 0.48 | [-1.59 1.34] | 0.51 | [-1.84 1.34] | 0.53 | [-1.54 1.28] |
| s279 | 0.45 | [-1.34 1.43] | 0.48 | [-1.6 1.34] | 0.51 | [-1.84 1.34] | 0.53 | [-1.54 1.28] |
| s480 | 0.45 | [-1.34 1.43] | 0.48 | [-1.6 1.34] | 0.51 | [-1.85 1.34] | 0.53 | [-1.55 1.28] |
| **ALL SITES** | **0.45** | **[-1.34 1.43]** | **0.48** | **[-1.61 1.34]** | **0.51** | **[-1.85 1.35]** | **0.53** | **[-1.55 1.28]** |

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

* Rupture *[100 unique]*

Standard deviation is computed and tabulated separately for each site and distance, then a total standard deviation is computed from all site and distances and reported in the "**ALL SITES**" row.

### 20.0 km Within-event Residuals
*[(top)](#table-of-contents)*

![Within-event Variability](resources/within_event_std_dev.png)

| Site | 3s Std. Dev. | 3s Residual Range | 5s Std. Dev. | 5s Residual Range | 7.5s Std. Dev. | 7.5s Residual Range | 10s Std. Dev. | 10s Residual Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| LAPD | 0.33 | [-1.11 1.32] | 0.35 | [-1.2 0.96] | 0.42 | [-1.34 0.94] | 0.42 | [-1.77 0.91] |
| PAS | 0.33 | [-1.11 1.31] | 0.35 | [-1.21 0.95] | 0.42 | [-1.34 0.94] | 0.42 | [-1.77 0.91] |
| SBSM | 0.33 | [-1.11 1.31] | 0.35 | [-1.21 0.95] | 0.42 | [-1.34 0.94] | 0.42 | [-1.77 0.91] |
| SMCA | 0.33 | [-1.11 1.31] | 0.35 | [-1.2 0.96] | 0.42 | [-1.34 0.94] | 0.42 | [-1.77 0.91] |
| STNI | 0.33 | [-1.11 1.31] | 0.35 | [-1.21 0.95] | 0.42 | [-1.34 0.94] | 0.42 | [-1.77 0.91] |
| USC | 0.33 | [-1.11 1.31] | 0.35 | [-1.2 0.95] | 0.42 | [-1.34 0.94] | 0.42 | [-1.77 0.91] |
| WNGC | 0.33 | [-1.11 1.31] | 0.35 | [-1.21 0.95] | 0.42 | [-1.34 0.94] | 0.42 | [-1.78 0.91] |
| s119 | 0.33 | [-1.11 1.32] | 0.35 | [-1.2 0.96] | 0.42 | [-1.34 0.94] | 0.42 | [-1.77 0.91] |
| s279 | 0.33 | [-1.11 1.31] | 0.35 | [-1.2 0.97] | 0.42 | [-1.34 0.94] | 0.42 | [-1.77 0.91] |
| s480 | 0.33 | [-1.11 1.31] | 0.35 | [-1.21 0.95] | 0.42 | [-1.34 0.94] | 0.42 | [-1.77 0.91] |
| **ALL SITES** | **0.33** | **[-1.11 1.32]** | **0.35** | **[-1.21 0.97]** | **0.42** | **[-1.34 0.94]** | **0.42** | **[-1.78 0.91]** |

### 50.0 km Within-event Residuals
*[(top)](#table-of-contents)*

![Within-event Variability](resources/within_event_std_dev.png)

| Site | 3s Std. Dev. | 3s Residual Range | 5s Std. Dev. | 5s Residual Range | 7.5s Std. Dev. | 7.5s Residual Range | 10s Std. Dev. | 10s Residual Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| LAPD | 0.33 | [-0.99 1.44] | 0.4 | [-1.39 1] | 0.44 | [-1.51 1.05] | 0.43 | [-1.59 0.97] |
| PAS | 0.33 | [-0.99 1.44] | 0.4 | [-1.39 1] | 0.44 | [-1.51 1.05] | 0.43 | [-1.59 0.97] |
| SBSM | 0.33 | [-0.99 1.45] | 0.4 | [-1.39 1] | 0.44 | [-1.51 1.05] | 0.43 | [-1.59 0.97] |
| SMCA | 0.33 | [-0.98 1.45] | 0.4 | [-1.39 1] | 0.44 | [-1.51 1.05] | 0.43 | [-1.59 0.97] |
| STNI | 0.33 | [-0.98 1.45] | 0.4 | [-1.39 1] | 0.44 | [-1.51 1.05] | 0.43 | [-1.59 0.97] |
| USC | 0.33 | [-0.99 1.45] | 0.4 | [-1.39 1] | 0.44 | [-1.51 1.05] | 0.43 | [-1.59 0.97] |
| WNGC | 0.33 | [-0.99 1.44] | 0.4 | [-1.39 1] | 0.44 | [-1.51 1.05] | 0.43 | [-1.59 0.97] |
| s119 | 0.33 | [-0.99 1.44] | 0.4 | [-1.39 1] | 0.44 | [-1.51 1.05] | 0.43 | [-1.59 0.97] |
| s279 | 0.33 | [-0.99 1.44] | 0.4 | [-1.39 1] | 0.44 | [-1.51 1.05] | 0.43 | [-1.59 0.97] |
| s480 | 0.33 | [-0.99 1.44] | 0.4 | [-1.39 1] | 0.44 | [-1.51 1.05] | 0.43 | [-1.59 0.97] |
| **ALL SITES** | **0.33** | **[-0.99 1.45]** | **0.4** | **[-1.39 1]** | **0.44** | **[-1.51 1.05]** | **0.43** | **[-1.59 0.97]** |

