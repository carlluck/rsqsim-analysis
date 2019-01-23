# Bruce 2585 Rotated Rupture Variability, M6.6 SS

[Catalog Details](../#bruce-2585)

## Table Of Contents
* [Rupture Rotation Parameters](#rupture-rotation-parameters)
* [Sites](#sites)
* [Path-to-path Variability](#path-to-path-variability)
  * [Path-to-path Variability Methodology](#path-to-path-variability-methodology)
  * [20.0 km Path-to-path Results](#200-km-path-to-path-results)
  * [50.0 km Path-to-path Results](#500-km-path-to-path-results)
* [Source-strike Variability](#source-strike-variability)
  * [Source-strike Variability Methodology](#source-strike-variability-methodology)
  * [20.0 km Source-strike Results](#200-km-source-strike-results)
  * [50.0 km Source-strike Results](#500-km-source-strike-results)
* [Within-event Variability](#within-event-variability)
  * [Within-event Variability Methodology](#within-event-variability-methodology)
  * [20.0 km Within-event Results](#200-km-within-event-results)
  * [50.0 km Within-event Results](#500-km-within-event-results)
* [Between-events, single-path Variability](#between-events-single-path-variability)
  * [Between-events, single-path Variability Methodology](#between-events-single-path-variability-methodology)
  * [20.0 km Between-events, single-path Results](#200-km-between-events-single-path-results)
  * [50.0 km Between-events, single-path Results](#500-km-between-events-single-path-results)
* [Between-events Variability](#between-events-variability)
  * [Between-events Variability Methodology](#between-events-variability-methodology)
  * [20.0 km Between-events Results](#200-km-between-events-results)
  * [50.0 km Between-events Results](#500-km-between-events-results)
* [Site-to-site Variability](#site-to-site-variability)
  * [Site-to-site Variability Methodology](#site-to-site-variability-methodology)
  * [20.0 km Site-to-site Results](#200-km-site-to-site-results)
  * [50.0 km Site-to-site Results](#500-km-site-to-site-results)
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
## Path-to-path Variability
*[(top)](#table-of-contents)*

### Path-to-path Variability Methodology
*[(top)](#table-of-contents)*

Path-to-path variability, denoted &phi;<sub>P2P</sub> in Al Atik 2010, is computed from ground motion residuals where the following quantities are held constant:

* Site *[10 unique]*
* Joyner-Boore Distance *[2 unique]*
* Rupture *[100 unique]*
* Rupture Strike (Aki & Richards 1980 convention) *[36 unique]*

and the following quantities vary:

* Path (from site to rupture centroid) *[4 unique]*

Here is an exmample with 5 rotations:
![Example](resources/example_path.png)

Standard deviation is computed and tabulated separately for each site and distance, then a total standard deviation is computed from all site and distances and reported in the "**ALL SITES**" row.

### 20.0 km Path-to-path Results
*[(top)](#table-of-contents)*

![Path-to-path Variability](resources/path_20km_std_dev.png)

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

### 50.0 km Path-to-path Results
*[(top)](#table-of-contents)*

![Path-to-path Variability](resources/path_50km_std_dev.png)

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

### 20.0 km Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_20km_std_dev.png)

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

### 50.0 km Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_50km_std_dev.png)

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
* Rupture *[100 unique]*

and the following quantities vary:

* Rupture Strike (Aki & Richards 1980 convention) *[36 unique]*
* Path (from site to rupture centroid) *[4 unique]*

Here is an exmample with 5 rotations:
![Example](resources/example_within_event.png)

Standard deviation is computed and tabulated separately for each site and distance, then a total standard deviation is computed from all site and distances and reported in the "**ALL SITES**" row.

### 20.0 km Within-event Results
*[(top)](#table-of-contents)*

![Within-event Variability](resources/within_event_20km_std_dev.png)

| Site | 3s Std. Dev. | 3s Residual Range | 5s Std. Dev. | 5s Residual Range | 7.5s Std. Dev. | 7.5s Residual Range | 10s Std. Dev. | 10s Residual Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| LAPD | 0.37 | [-1.22 1.13] | 0.4 | [-1.55 1.07] | 0.31 | [-1.1 1.09] | 0.23 | [-0.96 0.86] |
| PAS | 0.37 | [-1.22 1.14] | 0.4 | [-1.54 1.07] | 0.31 | [-1.09 1.09] | 0.23 | [-0.95 0.86] |
| SBSM | 0.37 | [-1.2 1.14] | 0.4 | [-1.53 1.07] | 0.31 | [-1.13 1.09] | 0.23 | [-0.95 0.86] |
| SMCA | 0.37 | [-1.22 1.14] | 0.4 | [-1.55 1.07] | 0.31 | [-1.08 1.08] | 0.23 | [-0.96 0.86] |
| STNI | 0.37 | [-1.22 1.14] | 0.4 | [-1.54 1.07] | 0.31 | [-1.08 1.08] | 0.23 | [-0.95 0.86] |
| USC | 0.37 | [-1.22 1.14] | 0.4 | [-1.54 1.07] | 0.31 | [-1.08 1.09] | 0.23 | [-0.95 0.86] |
| WNGC | 0.37 | [-1.22 1.14] | 0.4 | [-1.54 1.07] | 0.31 | [-1.09 1.09] | 0.23 | [-0.95 0.86] |
| s119 | 0.37 | [-1.22 1.14] | 0.4 | [-1.55 1.08] | 0.31 | [-1.08 1.09] | 0.23 | [-0.96 0.86] |
| s279 | 0.37 | [-1.22 1.14] | 0.4 | [-1.55 1.07] | 0.31 | [-1.08 1.09] | 0.23 | [-0.96 0.86] |
| s480 | 0.37 | [-1.22 1.14] | 0.4 | [-1.54 1.07] | 0.31 | [-1.1 1.09] | 0.23 | [-0.95 0.86] |
| **ALL SITES** | **0.37** | **[-1.22 1.14]** | **0.4** | **[-1.55 1.08]** | **0.31** | **[-1.13 1.09]** | **0.23** | **[-0.96 0.86]** |

### 50.0 km Within-event Results
*[(top)](#table-of-contents)*

![Within-event Variability](resources/within_event_50km_std_dev.png)

| Site | 3s Std. Dev. | 3s Residual Range | 5s Std. Dev. | 5s Residual Range | 7.5s Std. Dev. | 7.5s Residual Range | 10s Std. Dev. | 10s Residual Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| LAPD | 0.45 | [-1.34 1.42] | 0.48 | [-1.6 1.34] | 0.51 | [-1.85 1.35] | 0.53 | [-1.55 1.28] |
| PAS | 0.45 | [-1.34 1.43] | 0.48 | [-1.6 1.34] | 0.51 | [-1.85 1.34] | 0.53 | [-1.55 1.28] |
| SBSM | 0.45 | [-1.34 1.42] | 0.48 | [-1.61 1.34] | 0.51 | [-1.85 1.34] | 0.53 | [-1.55 1.28] |
| SMCA | 0.45 | [-1.34 1.43] | 0.48 | [-1.6 1.33] | 0.51 | [-1.84 1.34] | 0.53 | [-1.54 1.27] |
| STNI | 0.45 | [-1.34 1.43] | 0.48 | [-1.6 1.33] | 0.51 | [-1.85 1.34] | 0.53 | [-1.55 1.27] |
| USC | 0.45 | [-1.34 1.43] | 0.48 | [-1.6 1.33] | 0.51 | [-1.85 1.34] | 0.53 | [-1.54 1.27] |
| WNGC | 0.45 | [-1.34 1.43] | 0.48 | [-1.6 1.34] | 0.51 | [-1.85 1.34] | 0.53 | [-1.55 1.28] |
| s119 | 0.45 | [-1.34 1.43] | 0.48 | [-1.59 1.34] | 0.51 | [-1.84 1.34] | 0.53 | [-1.54 1.28] |
| s279 | 0.45 | [-1.34 1.43] | 0.48 | [-1.6 1.34] | 0.51 | [-1.84 1.34] | 0.53 | [-1.54 1.28] |
| s480 | 0.45 | [-1.34 1.43] | 0.48 | [-1.6 1.34] | 0.51 | [-1.85 1.34] | 0.53 | [-1.55 1.28] |
| **ALL SITES** | **0.45** | **[-1.34 1.43]** | **0.48** | **[-1.61 1.34]** | **0.51** | **[-1.85 1.35]** | **0.53** | **[-1.55 1.28]** |

## Between-events, single-path Variability
*[(top)](#table-of-contents)*

### Between-events, single-path Variability Methodology
*[(top)](#table-of-contents)*

Between-events, single-path variability, denoted &tau;<sub>0</sub> in Al Atik 2010, is computed from ground motion residuals where the following quantities are held constant:

* Site *[10 unique]*
* Joyner-Boore Distance *[2 unique]*
* Rupture Strike (Aki & Richards 1980 convention) *[36 unique]*
* Path (from site to rupture centroid) *[4 unique]*

and the following quantities vary:

* Rupture *[100 unique]*

Standard deviation is computed and tabulated separately for each site and distance, then a total standard deviation is computed from all site and distances and reported in the "**ALL SITES**" row.

### 20.0 km Between-events, single-path Results
*[(top)](#table-of-contents)*

![Between-events, single-path Variability](resources/between_events_single_path_20km_std_dev.png)

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

### 50.0 km Between-events, single-path Results
*[(top)](#table-of-contents)*

![Between-events, single-path Variability](resources/between_events_single_path_50km_std_dev.png)

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

## Between-events Variability
*[(top)](#table-of-contents)*

### Between-events Variability Methodology
*[(top)](#table-of-contents)*

Between-events variability, denoted &tau; in Al Atik 2010, is computed from ground motion residuals where the following quantities are held constant:

* Site *[10 unique]*
* Joyner-Boore Distance *[2 unique]*

and the following quantities vary:

* Rupture *[100 unique]*
* Rupture Strike (Aki & Richards 1980 convention) *[36 unique]*
* Path (from site to rupture centroid) *[4 unique]*

Standard deviation is computed and tabulated separately for each site and distance, then a total standard deviation is computed from all site and distances and reported in the "**ALL SITES**" row.

### 20.0 km Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_20km_std_dev.png)

| Site | 3s Std. Dev. | 3s Residual Range | 5s Std. Dev. | 5s Residual Range | 7.5s Std. Dev. | 7.5s Residual Range | 10s Std. Dev. | 10s Residual Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| LAPD | 0.44 | [-1.16 1.7] | 0.46 | [-1.61 1.26] | 0.48 | [-1.51 1.26] | 0.45 | [-1.94 1.13] |
| PAS | 0.44 | [-1.13 1.7] | 0.46 | [-1.61 1.26] | 0.48 | [-1.52 1.26] | 0.45 | [-1.94 1.13] |
| SBSM | 0.44 | [-1.13 1.7] | 0.46 | [-1.62 1.26] | 0.48 | [-1.52 1.26] | 0.45 | [-1.95 1.13] |
| SMCA | 0.44 | [-1.16 1.7] | 0.46 | [-1.6 1.26] | 0.49 | [-1.5 1.25] | 0.45 | [-1.94 1.12] |
| STNI | 0.44 | [-1.13 1.7] | 0.46 | [-1.61 1.26] | 0.49 | [-1.52 1.25] | 0.45 | [-1.94 1.12] |
| USC | 0.44 | [-1.13 1.7] | 0.46 | [-1.61 1.26] | 0.49 | [-1.52 1.26] | 0.45 | [-1.94 1.13] |
| WNGC | 0.44 | [-1.13 1.7] | 0.46 | [-1.61 1.26] | 0.49 | [-1.52 1.26] | 0.45 | [-1.95 1.13] |
| s119 | 0.44 | [-1.16 1.7] | 0.46 | [-1.65 1.26] | 0.48 | [-1.51 1.26] | 0.45 | [-1.94 1.13] |
| s279 | 0.44 | [-1.16 1.7] | 0.46 | [-1.61 1.26] | 0.48 | [-1.52 1.26] | 0.45 | [-1.94 1.13] |
| s480 | 0.44 | [-1.13 1.7] | 0.46 | [-1.63 1.26] | 0.48 | [-1.52 1.26] | 0.45 | [-1.95 1.13] |
| **ALL SITES** | **0.44** | **[-1.16 1.7]** | **0.46** | **[-1.65 1.26]** | **0.48** | **[-1.52 1.26]** | **0.45** | **[-1.95 1.13]** |

### 50.0 km Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_50km_std_dev.png)

| Site | 3s Std. Dev. | 3s Residual Range | 5s Std. Dev. | 5s Residual Range | 7.5s Std. Dev. | 7.5s Residual Range | 10s Std. Dev. | 10s Residual Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| LAPD | 0.5 | [-1.5 1.76] | 0.55 | [-1.85 1.32] | 0.62 | [-1.88 1.5] | 0.64 | [-1.77 1.47] |
| PAS | 0.5 | [-1.5 1.76] | 0.55 | [-1.85 1.32] | 0.62 | [-1.88 1.5] | 0.64 | [-1.77 1.47] |
| SBSM | 0.5 | [-1.5 1.76] | 0.55 | [-1.86 1.32] | 0.62 | [-1.88 1.5] | 0.64 | [-1.78 1.47] |
| SMCA | 0.5 | [-1.5 1.76] | 0.55 | [-1.85 1.32] | 0.62 | [-1.88 1.49] | 0.64 | [-1.77 1.47] |
| STNI | 0.5 | [-1.5 1.76] | 0.55 | [-1.85 1.32] | 0.62 | [-1.88 1.49] | 0.64 | [-1.77 1.47] |
| USC | 0.5 | [-1.5 1.76] | 0.55 | [-1.85 1.32] | 0.62 | [-1.88 1.49] | 0.64 | [-1.77 1.47] |
| WNGC | 0.5 | [-1.5 1.76] | 0.55 | [-1.85 1.32] | 0.62 | [-1.88 1.49] | 0.64 | [-1.77 1.47] |
| s119 | 0.5 | [-1.49 1.76] | 0.55 | [-1.85 1.32] | 0.62 | [-1.88 1.5] | 0.64 | [-1.77 1.47] |
| s279 | 0.5 | [-1.5 1.76] | 0.55 | [-1.85 1.32] | 0.62 | [-1.88 1.5] | 0.64 | [-1.77 1.47] |
| s480 | 0.5 | [-1.5 1.76] | 0.55 | [-1.85 1.32] | 0.62 | [-1.88 1.5] | 0.64 | [-1.77 1.47] |
| **ALL SITES** | **0.5** | **[-1.5 1.76]** | **0.55** | **[-1.86 1.32]** | **0.62** | **[-1.88 1.5]** | **0.64** | **[-1.78 1.47]** |

## Site-to-site Variability
*[(top)](#table-of-contents)*

### Site-to-site Variability Methodology
*[(top)](#table-of-contents)*

Site-to-site variability, denoted &phi;<sub>S2S</sub> in Al Atik 2010, is computed from ground motion residuals where the following quantities are held constant:

* Joyner-Boore Distance *[2 unique]*
* Rupture *[100 unique]*
* Rupture Strike (Aki & Richards 1980 convention) *[36 unique]*
* Path (from site to rupture centroid) *[4 unique]*

and the following quantities vary:

* Site *[10 unique]*

Standard deviation is computed and tabulated separately for each distance, then a total standard deviation is computed from all distances and reported in the "**ALL SITES**" row.

### 20.0 km Site-to-site Results
*[(top)](#table-of-contents)*

![Site-to-site Variability](resources/site_to_site_20km_std_dev.png)

| 3s Std. Dev. | 3s Residual Range | 5s Std. Dev. | 5s Residual Range | 7.5s Std. Dev. | 7.5s Residual Range | 10s Std. Dev. | 10s Residual Range |
|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.01 | [-0.1 0.13] | 0 | [-0.08 0.06] | 0 | [-0.05 0.04] | 0 | [-0.04 0.03] |

### 50.0 km Site-to-site Results
*[(top)](#table-of-contents)*

![Site-to-site Variability](resources/site_to_site_50km_std_dev.png)

| 3s Std. Dev. | 3s Residual Range | 5s Std. Dev. | 5s Residual Range | 7.5s Std. Dev. | 7.5s Residual Range | 10s Std. Dev. | 10s Residual Range |
|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.01 | [-0.21 0.13] | 0.01 | [-0.08 0.11] | 0 | [-0.07 0.05] | 0 | [-0.06 0.05] |

