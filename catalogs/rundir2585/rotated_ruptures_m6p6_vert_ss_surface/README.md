# Bruce 2585 Rotated Rupture Variability, M6.6 SS

This exercise uses translations and rotations to estimate ground motion variability from different sources. We begin by selecting a subset of similar ruptures which match a set of criteria (in this case, M6.6, Vertical Strike-Slip with Surface Rupture). Each rupture is then reoriented such that its strike (following the Aki & Richards 1980 convention) is 0 degrees (due North, dipping to the right for normal or reverse ruptures). For each site, ruptures are translated such that their centroid is directly North of the site, and their Joyner-Boore distance  (rJB) is as specified (we consider 2 distance[s] here).

We then  perform various rotations. We rotate the rupture in place around its centroid, holding the site-to-source centroid path and rJB constant (henceforth 'Rupture Strike'). We also rotate ruptures around the site, holding rJB and source orientation relative to the site constant but sampling different various paths (henceforth 'Path'). We do this for each unique combination of Rupture Strike, Path, Joyner-Boore Distance, Site, and Rupture.

*NOTE: This page uses the SCEC BBP to simulate a 1-dimensional velocity structure. Thus we expect no path variability, and plots of path variabilitiy are included only as verification of the method.*

[RSQSim Catalog Details](../#bruce-2585)

## Table Of Contents
* [Rupture Rotation Parameters](#rupture-rotation-parameters)
* [M6.6 SS RSQSim Rupture Match Criteria](#m66-ss-rsqsim-rupture-match-criteria)
* [Sites](#sites)
* [Result Summary Table](#result-summary-table)
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

| Quantity | Variations | Description |
|-----|-----|-----|
| Rupture | 100 | Unique (but similar in faulting style and magnitude) ruptures which match the given scenario. |
| Site | 10 | Unique site locations. If 3-d, each will have unique velocity profiles. |
| Rupture Strike | 36 | Rupture strike conforming to the Aki & Richards (1980) convention, where dipping faults dip to the right of the rupture. If also rotated about a site, this azimuth is relative to the path. |
| Path | 4 | Path from the site to the centroid of the rupture, in azimuthal degrees (0 is North) |
| Joyner-Boore Distance | 20.0, 50.0 km | Shortest horizontal distance between the site and the surface projection of the rupture. |
| **Total # Simulations** | **288000** | Total number of combinations of the above. |

## M6.6 SS RSQSim Rupture Match Criteria
*[(top)](#table-of-contents)*

We condisder 100 events in the catalog match the following criteria:

* M=[6.55,6.65]
* Ztor=[0,1]
* Rake=[-180,-170] or [-10,10] or [170,180]
* Dip=90
* Linear rupture (max 0.5km deviation from ideal)

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

## Result Summary Table

| Type | Notation | Distance | 3s Std. Dev. | 5s Std. Dev. | 7.5s Std. Dev. | 10s Std. Dev. |
|-----|-----|-----|-----|-----|-----|-----|
| Path-to-path | &phi;<sub>P2P</sub> | 20 km | 0 | 0 | 0 | 0 |
| Path-to-path | &phi;<sub>P2P</sub> | 50 km | 0 | 0 | 0 | 0 |
| Source-strike | &phi;<sub>s</sub> | 20 km | 0.37 | 0.4 | 0.31 | 0.23 |
| Source-strike | &phi;<sub>s</sub> | 50 km | 0.45 | 0.48 | 0.51 | 0.53 |
| Within-event | &phi; | 20 km | 0.37 | 0.4 | 0.31 | 0.23 |
| Within-event | &phi; | 50 km | 0.45 | 0.48 | 0.51 | 0.53 |
| Between-events, single-path | &tau;<sub>0</sub> | 20 km | 0.33 | 0.35 | 0.42 | 0.42 |
| Between-events, single-path | &tau;<sub>0</sub> | 50 km | 0.33 | 0.4 | 0.44 | 0.43 |
| Between-events | &tau; | 20 km | 0.44 | 0.46 | 0.48 | 0.45 |
| Between-events | &tau; | 50 km | 0.5 | 0.55 | 0.62 | 0.64 |
| Site-to-site | &phi;<sub>S2S</sub> | 20 km | 0.01 | 0 | 0 | 0 |
| Site-to-site | &phi;<sub>S2S</sub> | 50 km | 0.01 | 0.01 | 0 | 0 |

## Path-to-path Variability
*[(top)](#table-of-contents)*

### Path-to-path Variability Methodology
*[(top)](#table-of-contents)*

Path-to-path variability, denoted &phi;<sub>P2P</sub> in Al Atik (2010), is computed from ground motion residuals where the following quantities are held constant:

* Site *[10 unique]*
* Joyner-Boore Distance *[2 unique]*
* Rupture *[100 unique]*
* Rupture Strike *[36 unique]*

and the following quantities vary:

* Path *[4 unique]*

Here is an exmample with 5 rotations, which would be repeated for each combination of [Site, Joyner-Boore Distance, Rupture, Rupture Strike]. The site is shown with a blue square, and initially oriented rupture in bold with its hypocenter as a red star and centroid a green circle. Rotations of that rupture are in gray:

![Example](resources/example_path.png)

Standard deviation is computed and tabulated separately for each site and distance, then a total standard deviation is computed from all sitess and reported in the "**ALL SITES**" row. Results are reported separately for each distance

### 20.0 km Path-to-path Results
*[(top)](#table-of-contents)*

![Path-to-path Variability](resources/path_20km_std_dev.png)

| Site | 3s &phi;<sub>P2P</sub> | Total | Mean | Median | Range | 5s &phi;<sub>P2P</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>P2P</sub> | Total | Mean | Median | Range | 10s &phi;<sub>P2P</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| LAPD |  | 0 | 0 | 0 | [0 0.04] |  | 0 | 0 | 0 | [0 0.04] |  | 0 | 0 | 0 | [0 0.02] |  | 0 | 0 | 0 | [0 0.01] |
| PAS |  | 0 | 0 | 0 | [0 0.04] |  | 0 | 0 | 0 | [0 0.02] |  | 0 | 0 | 0 | [0 0.01] |  | 0 | 0 | 0 | [0 0.01] |
| SBSM |  | 0 | 0 | 0 | [0 0.04] |  | 0 | 0 | 0 | [0 0.03] |  | 0 | 0 | 0 | [0 0.02] |  | 0 | 0 | 0 | [0 0.01] |
| SMCA |  | 0 | 0 | 0 | [0 0.04] |  | 0 | 0 | 0 | [0 0.03] |  | 0 | 0 | 0 | [0 0.01] |  | 0 | 0 | 0 | [0 0.02] |
| STNI |  | 0 | 0 | 0 | [0 0.04] |  | 0 | 0 | 0 | [0 0.03] |  | 0 | 0 | 0 | [0 0.01] |  | 0 | 0 | 0 | [0 0.01] |
| USC |  | 0 | 0 | 0 | [0 0.04] |  | 0 | 0 | 0 | [0 0.03] |  | 0 | 0 | 0 | [0 0.01] |  | 0 | 0 | 0 | [0 0.02] |
| WNGC |  | 0 | 0 | 0 | [0 0.04] |  | 0 | 0 | 0 | [0 0.03] |  | 0 | 0 | 0 | [0 0.02] |  | 0 | 0 | 0 | [0 0.01] |
| s119 |  | 0 | 0 | 0 | [0 0.04] |  | 0 | 0 | 0 | [0 0.03] |  | 0 | 0 | 0 | [0 0.01] |  | 0 | 0 | 0 | [0 0.01] |
| s279 |  | 0 | 0 | 0 | [0 0.04] |  | 0 | 0 | 0 | [0 0.03] |  | 0 | 0 | 0 | [0 0.02] |  | 0 | 0 | 0 | [0 0.01] |
| s480 |  | 0 | 0 | 0 | [0 0.03] |  | 0 | 0 | 0 | [0 0.03] |  | 0 | 0 | 0 | [0 0.02] |  | 0 | 0 | 0 | [0 0.01] |
| **ALL SITES** |  | **0** | **0** | **0** | **[0 0.04]** |  | **0** | **0** | **0** | **[0 0.04]** |  | **0** | **0** | **0** | **[0 0.02]** |  | **0** | **0** | **0** | **[0 0.02]** |

| 3s | 5s |
|-----|-----|
| ![3s](resources/path_20km_3s_hist.png) | ![5s](resources/path_20km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/path_20km_7.5s_hist.png) | ![10s](resources/path_20km_10s_hist.png) |


### 50.0 km Path-to-path Results
*[(top)](#table-of-contents)*

![Path-to-path Variability](resources/path_50km_std_dev.png)

| Site | 3s &phi;<sub>P2P</sub> | Total | Mean | Median | Range | 5s &phi;<sub>P2P</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>P2P</sub> | Total | Mean | Median | Range | 10s &phi;<sub>P2P</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| LAPD |  | 0 | 0 | 0 | [0 0.06] |  | 0 | 0 | 0 | [0 0.03] |  | 0 | 0 | 0 | [0 0.02] |  | 0 | 0 | 0 | [0 0.01] |
| PAS |  | 0 | 0 | 0 | [0 0.06] |  | 0 | 0 | 0 | [0 0.05] |  | 0 | 0 | 0 | [0 0.02] |  | 0 | 0 | 0 | [0 0.01] |
| SBSM |  | 0 | 0 | 0 | [0 0.13] |  | 0 | 0 | 0 | [0 0.05] |  | 0 | 0 | 0 | [0 0.02] |  | 0 | 0 | 0 | [0 0.01] |
| SMCA |  | 0 | 0 | 0 | [0 0.11] |  | 0 | 0 | 0 | [0 0.04] |  | 0 | 0 | 0 | [0 0.02] |  | 0 | 0 | 0 | [0 0.02] |
| STNI |  | 0 | 0 | 0 | [0 0.11] |  | 0 | 0 | 0 | [0 0.06] |  | 0 | 0 | 0 | [0 0.03] |  | 0 | 0 | 0 | [0 0.02] |
| USC |  | 0 | 0 | 0 | [0 0.11] |  | 0 | 0 | 0 | [0 0.05] |  | 0 | 0 | 0 | [0 0.03] |  | 0 | 0 | 0 | [0 0.01] |
| WNGC |  | 0 | 0 | 0 | [0 0.05] |  | 0 | 0 | 0 | [0 0.06] |  | 0 | 0 | 0 | [0 0.04] |  | 0 | 0 | 0 | [0 0.05] |
| s119 |  | 0 | 0 | 0 | [0 0.08] |  | 0 | 0 | 0 | [0 0.04] |  | 0 | 0 | 0 | [0 0.02] |  | 0 | 0 | 0 | [0 0.03] |
| s279 |  | 0 | 0 | 0 | [0 0.06] |  | 0 | 0 | 0 | [0 0.04] |  | 0 | 0 | 0 | [0 0.02] |  | 0 | 0 | 0 | [0 0.02] |
| s480 |  | 0 | 0 | 0 | [0 0.09] |  | 0 | 0 | 0 | [0 0.05] |  | 0 | 0 | 0 | [0 0.03] |  | 0 | 0 | 0 | [0 0.02] |
| **ALL SITES** |  | **0** | **0** | **0** | **[0 0.13]** |  | **0** | **0** | **0** | **[0 0.06]** |  | **0** | **0** | **0** | **[0 0.04]** |  | **0** | **0** | **0** | **[0 0.05]** |

| 3s | 5s |
|-----|-----|
| ![3s](resources/path_50km_3s_hist.png) | ![5s](resources/path_50km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/path_50km_7.5s_hist.png) | ![10s](resources/path_50km_10s_hist.png) |


## Source-strike Variability
*[(top)](#table-of-contents)*

### Source-strike Variability Methodology
*[(top)](#table-of-contents)*

Source-strike variability, denoted &phi;<sub>s</sub> in Aki & Richards (1980), is computed from ground motion residuals where the following quantities are held constant:

* Site *[10 unique]*
* Joyner-Boore Distance *[2 unique]*
* Rupture *[100 unique]*
* Path *[4 unique]*

and the following quantities vary:

* Rupture Strike *[36 unique]*

Here is an exmample with 5 rotations, which would be repeated for each combination of [Site, Joyner-Boore Distance, Rupture, Path]. The site is shown with a blue square, and initially oriented rupture in bold with its hypocenter as a red star and centroid a green circle. Rotations of that rupture are in gray:

![Example](resources/example_source_strike.png)

Standard deviation is computed and tabulated separately for each site and distance, then a total standard deviation is computed from all sitess and reported in the "**ALL SITES**" row. Results are reported separately for each distance

### 20.0 km Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_20km_std_dev.png)

| Site | 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| LAPD |  | 0.37 | 0.37 | 0.36 | [0.17 0.6] |  | 0.4 | 0.39 | 0.39 | [0.16 0.6] |  | 0.31 | 0.31 | 0.3 | [0.09 0.52] |  | 0.23 | 0.22 | 0.2 | [0.1 0.41] |
| PAS |  | 0.37 | 0.37 | 0.36 | [0.17 0.6] |  | 0.4 | 0.39 | 0.39 | [0.16 0.6] |  | 0.31 | 0.31 | 0.3 | [0.09 0.52] |  | 0.23 | 0.22 | 0.2 | [0.1 0.41] |
| SBSM |  | 0.37 | 0.37 | 0.36 | [0.17 0.6] |  | 0.4 | 0.39 | 0.39 | [0.16 0.6] |  | 0.31 | 0.31 | 0.3 | [0.09 0.52] |  | 0.23 | 0.22 | 0.21 | [0.1 0.41] |
| SMCA |  | 0.37 | 0.37 | 0.36 | [0.17 0.6] |  | 0.4 | 0.39 | 0.39 | [0.16 0.6] |  | 0.31 | 0.31 | 0.3 | [0.09 0.52] |  | 0.23 | 0.22 | 0.2 | [0.1 0.41] |
| STNI |  | 0.37 | 0.37 | 0.36 | [0.17 0.61] |  | 0.4 | 0.39 | 0.39 | [0.16 0.6] |  | 0.31 | 0.31 | 0.3 | [0.09 0.52] |  | 0.23 | 0.22 | 0.2 | [0.1 0.41] |
| USC |  | 0.37 | 0.37 | 0.36 | [0.16 0.6] |  | 0.4 | 0.39 | 0.39 | [0.16 0.6] |  | 0.31 | 0.31 | 0.3 | [0.09 0.52] |  | 0.23 | 0.22 | 0.2 | [0.1 0.41] |
| WNGC |  | 0.37 | 0.37 | 0.36 | [0.17 0.6] |  | 0.4 | 0.39 | 0.39 | [0.16 0.6] |  | 0.31 | 0.31 | 0.3 | [0.09 0.52] |  | 0.23 | 0.22 | 0.2 | [0.1 0.41] |
| s119 |  | 0.37 | 0.37 | 0.36 | [0.17 0.61] |  | 0.4 | 0.39 | 0.39 | [0.16 0.6] |  | 0.31 | 0.31 | 0.3 | [0.09 0.52] |  | 0.23 | 0.22 | 0.2 | [0.1 0.41] |
| s279 |  | 0.37 | 0.37 | 0.36 | [0.17 0.6] |  | 0.4 | 0.39 | 0.39 | [0.16 0.6] |  | 0.31 | 0.31 | 0.3 | [0.08 0.52] |  | 0.23 | 0.22 | 0.2 | [0.1 0.41] |
| s480 |  | 0.37 | 0.37 | 0.36 | [0.17 0.6] |  | 0.4 | 0.39 | 0.39 | [0.16 0.6] |  | 0.31 | 0.31 | 0.3 | [0.09 0.52] |  | 0.23 | 0.22 | 0.2 | [0.1 0.41] |
| **ALL SITES** |  | **0.37** | **0.37** | **0.36** | **[0.16 0.61]** |  | **0.4** | **0.39** | **0.39** | **[0.16 0.6]** |  | **0.31** | **0.31** | **0.3** | **[0.08 0.52]** |  | **0.23** | **0.22** | **0.2** | **[0.1 0.41]** |

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_20km_3s_hist.png) | ![5s](resources/source_strike_20km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_20km_7.5s_hist.png) | ![10s](resources/source_strike_20km_10s_hist.png) |


### 50.0 km Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_50km_std_dev.png)

| Site | 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| LAPD |  | 0.45 | 0.45 | 0.44 | [0.25 0.68] |  | 0.48 | 0.47 | 0.47 | [0.29 0.74] |  | 0.51 | 0.51 | 0.51 | [0.31 0.71] |  | 0.53 | 0.53 | 0.56 | [0.2 0.67] |
| PAS |  | 0.45 | 0.45 | 0.45 | [0.25 0.68] |  | 0.48 | 0.47 | 0.47 | [0.29 0.74] |  | 0.51 | 0.51 | 0.51 | [0.31 0.71] |  | 0.53 | 0.53 | 0.56 | [0.19 0.67] |
| SBSM |  | 0.45 | 0.45 | 0.44 | [0.25 0.68] |  | 0.48 | 0.47 | 0.47 | [0.29 0.74] |  | 0.51 | 0.51 | 0.51 | [0.31 0.71] |  | 0.53 | 0.53 | 0.56 | [0.19 0.67] |
| SMCA |  | 0.45 | 0.45 | 0.45 | [0.25 0.68] |  | 0.48 | 0.47 | 0.47 | [0.29 0.74] |  | 0.51 | 0.51 | 0.51 | [0.31 0.71] |  | 0.53 | 0.53 | 0.56 | [0.19 0.67] |
| STNI |  | 0.45 | 0.45 | 0.45 | [0.25 0.68] |  | 0.48 | 0.47 | 0.47 | [0.29 0.74] |  | 0.51 | 0.51 | 0.51 | [0.31 0.71] |  | 0.53 | 0.53 | 0.56 | [0.19 0.67] |
| USC |  | 0.45 | 0.45 | 0.45 | [0.25 0.68] |  | 0.48 | 0.47 | 0.47 | [0.29 0.74] |  | 0.51 | 0.51 | 0.51 | [0.31 0.71] |  | 0.53 | 0.53 | 0.56 | [0.19 0.67] |
| WNGC |  | 0.45 | 0.45 | 0.45 | [0.25 0.68] |  | 0.48 | 0.47 | 0.47 | [0.29 0.74] |  | 0.51 | 0.51 | 0.51 | [0.31 0.71] |  | 0.53 | 0.53 | 0.56 | [0.19 0.67] |
| s119 |  | 0.45 | 0.45 | 0.44 | [0.25 0.68] |  | 0.48 | 0.47 | 0.47 | [0.29 0.74] |  | 0.51 | 0.51 | 0.51 | [0.31 0.7] |  | 0.53 | 0.53 | 0.56 | [0.19 0.67] |
| s279 |  | 0.45 | 0.45 | 0.44 | [0.25 0.68] |  | 0.48 | 0.47 | 0.47 | [0.29 0.74] |  | 0.51 | 0.51 | 0.51 | [0.31 0.71] |  | 0.53 | 0.53 | 0.56 | [0.2 0.67] |
| s480 |  | 0.45 | 0.45 | 0.45 | [0.25 0.68] |  | 0.48 | 0.47 | 0.47 | [0.29 0.74] |  | 0.51 | 0.51 | 0.51 | [0.31 0.71] |  | 0.53 | 0.53 | 0.56 | [0.19 0.67] |
| **ALL SITES** |  | **0.45** | **0.45** | **0.45** | **[0.25 0.68]** |  | **0.48** | **0.47** | **0.47** | **[0.29 0.74]** |  | **0.51** | **0.51** | **0.51** | **[0.31 0.71]** |  | **0.53** | **0.53** | **0.56** | **[0.19 0.67]** |

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_50km_3s_hist.png) | ![5s](resources/source_strike_50km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_50km_7.5s_hist.png) | ![10s](resources/source_strike_50km_10s_hist.png) |


## Within-event Variability
*[(top)](#table-of-contents)*

### Within-event Variability Methodology
*[(top)](#table-of-contents)*

Within-event variability, denoted &phi; in Al Atik (2010), is computed from ground motion residuals where the following quantities are held constant:

* Site *[10 unique]*
* Joyner-Boore Distance *[2 unique]*
* Rupture *[100 unique]*

and the following quantities vary:

* Rupture Strike *[36 unique]*
* Path *[4 unique]*

Here is an exmample with 5 rotations, which would be repeated for each combination of [Site, Joyner-Boore Distance, Rupture]. The site is shown with a blue square, and initially oriented rupture in bold with its hypocenter as a red star and centroid a green circle. Rotations of that rupture are in gray:

![Example](resources/example_within_event.png)

Standard deviation is computed and tabulated separately for each site and distance, then a total standard deviation is computed from all sitess and reported in the "**ALL SITES**" row. Results are reported separately for each distance

### 20.0 km Within-event Results
*[(top)](#table-of-contents)*

![Within-event Variability](resources/within_event_20km_std_dev.png)

| Site | 3s &phi; | Total | Mean | Median | Range | 5s &phi; | Total | Mean | Median | Range | 7.5s &phi; | Total | Mean | Median | Range | 10s &phi; | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| LAPD |  | 0.37 | 0.37 | 0.36 | [0.17 0.6] |  | 0.4 | 0.39 | 0.39 | [0.16 0.59] |  | 0.31 | 0.31 | 0.3 | [0.08 0.51] |  | 0.23 | 0.22 | 0.2 | [0.1 0.41] |
| PAS |  | 0.37 | 0.37 | 0.36 | [0.17 0.6] |  | 0.4 | 0.39 | 0.39 | [0.16 0.59] |  | 0.31 | 0.31 | 0.3 | [0.08 0.51] |  | 0.23 | 0.22 | 0.2 | [0.1 0.41] |
| SBSM |  | 0.37 | 0.37 | 0.36 | [0.17 0.6] |  | 0.4 | 0.39 | 0.38 | [0.16 0.59] |  | 0.31 | 0.31 | 0.3 | [0.08 0.51] |  | 0.23 | 0.22 | 0.2 | [0.1 0.41] |
| SMCA |  | 0.37 | 0.37 | 0.36 | [0.16 0.6] |  | 0.4 | 0.39 | 0.39 | [0.16 0.6] |  | 0.31 | 0.31 | 0.3 | [0.09 0.51] |  | 0.23 | 0.22 | 0.2 | [0.1 0.41] |
| STNI |  | 0.37 | 0.37 | 0.36 | [0.16 0.6] |  | 0.4 | 0.39 | 0.39 | [0.16 0.59] |  | 0.31 | 0.31 | 0.3 | [0.08 0.51] |  | 0.23 | 0.22 | 0.2 | [0.1 0.41] |
| USC |  | 0.37 | 0.37 | 0.36 | [0.16 0.6] |  | 0.4 | 0.39 | 0.39 | [0.16 0.6] |  | 0.31 | 0.31 | 0.3 | [0.08 0.51] |  | 0.23 | 0.22 | 0.2 | [0.1 0.41] |
| WNGC |  | 0.37 | 0.37 | 0.36 | [0.17 0.6] |  | 0.4 | 0.39 | 0.39 | [0.16 0.59] |  | 0.31 | 0.31 | 0.3 | [0.08 0.51] |  | 0.23 | 0.22 | 0.2 | [0.1 0.41] |
| s119 |  | 0.37 | 0.37 | 0.36 | [0.17 0.6] |  | 0.4 | 0.39 | 0.39 | [0.16 0.59] |  | 0.31 | 0.31 | 0.3 | [0.08 0.51] |  | 0.23 | 0.22 | 0.2 | [0.1 0.41] |
| s279 |  | 0.37 | 0.37 | 0.36 | [0.17 0.6] |  | 0.4 | 0.39 | 0.38 | [0.16 0.59] |  | 0.31 | 0.31 | 0.3 | [0.08 0.51] |  | 0.23 | 0.22 | 0.2 | [0.1 0.41] |
| s480 |  | 0.37 | 0.37 | 0.36 | [0.17 0.6] |  | 0.4 | 0.39 | 0.39 | [0.16 0.59] |  | 0.31 | 0.31 | 0.3 | [0.08 0.51] |  | 0.23 | 0.22 | 0.2 | [0.1 0.41] |
| **ALL SITES** |  | **0.37** | **0.37** | **0.36** | **[0.16 0.6]** |  | **0.4** | **0.39** | **0.39** | **[0.16 0.6]** |  | **0.31** | **0.31** | **0.3** | **[0.08 0.51]** |  | **0.23** | **0.22** | **0.2** | **[0.1 0.41]** |

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_20km_3s_hist.png) | ![5s](resources/within_event_20km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_20km_7.5s_hist.png) | ![10s](resources/within_event_20km_10s_hist.png) |


### 50.0 km Within-event Results
*[(top)](#table-of-contents)*

![Within-event Variability](resources/within_event_50km_std_dev.png)

| Site | 3s &phi; | Total | Mean | Median | Range | 5s &phi; | Total | Mean | Median | Range | 7.5s &phi; | Total | Mean | Median | Range | 10s &phi; | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| LAPD |  | 0.45 | 0.44 | 0.44 | [0.24 0.68] |  | 0.48 | 0.47 | 0.46 | [0.28 0.73] |  | 0.51 | 0.5 | 0.5 | [0.3 0.7] |  | 0.53 | 0.52 | 0.55 | [0.19 0.66] |
| PAS |  | 0.45 | 0.44 | 0.44 | [0.24 0.68] |  | 0.48 | 0.47 | 0.47 | [0.28 0.73] |  | 0.51 | 0.5 | 0.5 | [0.3 0.7] |  | 0.53 | 0.52 | 0.55 | [0.19 0.66] |
| SBSM |  | 0.45 | 0.44 | 0.44 | [0.24 0.67] |  | 0.48 | 0.47 | 0.47 | [0.28 0.73] |  | 0.51 | 0.5 | 0.5 | [0.3 0.7] |  | 0.53 | 0.52 | 0.55 | [0.19 0.66] |
| SMCA |  | 0.45 | 0.44 | 0.44 | [0.24 0.68] |  | 0.48 | 0.47 | 0.47 | [0.28 0.73] |  | 0.51 | 0.5 | 0.5 | [0.3 0.7] |  | 0.53 | 0.52 | 0.55 | [0.19 0.66] |
| STNI |  | 0.45 | 0.44 | 0.44 | [0.24 0.68] |  | 0.48 | 0.47 | 0.47 | [0.28 0.73] |  | 0.51 | 0.5 | 0.5 | [0.3 0.7] |  | 0.53 | 0.52 | 0.55 | [0.19 0.66] |
| USC |  | 0.45 | 0.44 | 0.44 | [0.24 0.68] |  | 0.48 | 0.47 | 0.47 | [0.28 0.73] |  | 0.51 | 0.5 | 0.5 | [0.3 0.7] |  | 0.53 | 0.52 | 0.55 | [0.19 0.66] |
| WNGC |  | 0.45 | 0.44 | 0.44 | [0.24 0.68] |  | 0.48 | 0.47 | 0.47 | [0.28 0.73] |  | 0.51 | 0.5 | 0.5 | [0.3 0.7] |  | 0.53 | 0.52 | 0.55 | [0.19 0.66] |
| s119 |  | 0.45 | 0.44 | 0.44 | [0.24 0.68] |  | 0.48 | 0.47 | 0.46 | [0.28 0.73] |  | 0.51 | 0.5 | 0.5 | [0.3 0.7] |  | 0.53 | 0.52 | 0.55 | [0.19 0.66] |
| s279 |  | 0.45 | 0.44 | 0.44 | [0.24 0.68] |  | 0.48 | 0.47 | 0.47 | [0.28 0.73] |  | 0.51 | 0.5 | 0.5 | [0.3 0.7] |  | 0.53 | 0.52 | 0.55 | [0.19 0.66] |
| s480 |  | 0.45 | 0.44 | 0.44 | [0.24 0.68] |  | 0.48 | 0.47 | 0.47 | [0.28 0.73] |  | 0.51 | 0.5 | 0.5 | [0.3 0.7] |  | 0.53 | 0.52 | 0.55 | [0.19 0.66] |
| **ALL SITES** |  | **0.45** | **0.44** | **0.44** | **[0.24 0.68]** |  | **0.48** | **0.47** | **0.47** | **[0.28 0.73]** |  | **0.51** | **0.5** | **0.5** | **[0.3 0.7]** |  | **0.53** | **0.52** | **0.55** | **[0.19 0.66]** |

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_50km_3s_hist.png) | ![5s](resources/within_event_50km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_50km_7.5s_hist.png) | ![10s](resources/within_event_50km_10s_hist.png) |


## Between-events, single-path Variability
*[(top)](#table-of-contents)*

### Between-events, single-path Variability Methodology
*[(top)](#table-of-contents)*

Between-events, single-path variability, denoted &tau;<sub>0</sub> in Al Atik (2010), is computed from ground motion residuals where the following quantities are held constant:

* Site *[10 unique]*
* Joyner-Boore Distance *[2 unique]*
* Rupture Strike *[36 unique]*
* Path *[4 unique]*

and the following quantities vary:

* Rupture *[100 unique]*

Standard deviation is computed and tabulated separately for each site and distance, then a total standard deviation is computed from all sitess and reported in the "**ALL SITES**" row. Results are reported separately for each distance

### 20.0 km Between-events, single-path Results
*[(top)](#table-of-contents)*

![Between-events, single-path Variability](resources/between_events_single_path_20km_std_dev.png)

| Site | 3s &tau;<sub>0</sub> | Total | Mean | Median | Range | 5s &tau;<sub>0</sub> | Total | Mean | Median | Range | 7.5s &tau;<sub>0</sub> | Total | Mean | Median | Range | 10s &tau;<sub>0</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| LAPD |  | 0.33 | 0.33 | 0.33 | [0.28 0.37] |  | 0.35 | 0.35 | 0.35 | [0.3 0.41] |  | 0.42 | 0.42 | 0.41 | [0.4 0.48] |  | 0.42 | 0.42 | 0.42 | [0.39 0.47] |
| PAS |  | 0.33 | 0.33 | 0.33 | [0.28 0.37] |  | 0.35 | 0.35 | 0.35 | [0.3 0.41] |  | 0.42 | 0.42 | 0.42 | [0.4 0.48] |  | 0.42 | 0.42 | 0.42 | [0.39 0.47] |
| SBSM |  | 0.33 | 0.33 | 0.33 | [0.28 0.37] |  | 0.35 | 0.35 | 0.35 | [0.3 0.41] |  | 0.42 | 0.42 | 0.41 | [0.4 0.48] |  | 0.42 | 0.42 | 0.41 | [0.39 0.47] |
| SMCA |  | 0.33 | 0.33 | 0.33 | [0.28 0.37] |  | 0.35 | 0.35 | 0.35 | [0.3 0.41] |  | 0.42 | 0.42 | 0.42 | [0.4 0.48] |  | 0.42 | 0.42 | 0.42 | [0.39 0.47] |
| STNI |  | 0.33 | 0.33 | 0.33 | [0.28 0.37] |  | 0.35 | 0.35 | 0.35 | [0.3 0.41] |  | 0.42 | 0.42 | 0.42 | [0.4 0.48] |  | 0.42 | 0.42 | 0.42 | [0.39 0.47] |
| USC |  | 0.33 | 0.33 | 0.33 | [0.28 0.37] |  | 0.35 | 0.35 | 0.35 | [0.3 0.41] |  | 0.42 | 0.42 | 0.42 | [0.4 0.48] |  | 0.42 | 0.42 | 0.42 | [0.39 0.47] |
| WNGC |  | 0.33 | 0.33 | 0.33 | [0.28 0.37] |  | 0.35 | 0.35 | 0.35 | [0.3 0.41] |  | 0.42 | 0.42 | 0.42 | [0.4 0.48] |  | 0.42 | 0.42 | 0.42 | [0.39 0.47] |
| s119 |  | 0.33 | 0.33 | 0.33 | [0.28 0.37] |  | 0.35 | 0.35 | 0.35 | [0.3 0.41] |  | 0.42 | 0.42 | 0.42 | [0.4 0.48] |  | 0.42 | 0.42 | 0.42 | [0.39 0.47] |
| s279 |  | 0.33 | 0.33 | 0.33 | [0.28 0.37] |  | 0.35 | 0.35 | 0.35 | [0.3 0.41] |  | 0.42 | 0.42 | 0.42 | [0.4 0.48] |  | 0.42 | 0.42 | 0.42 | [0.39 0.47] |
| s480 |  | 0.33 | 0.33 | 0.33 | [0.28 0.37] |  | 0.35 | 0.35 | 0.35 | [0.3 0.41] |  | 0.42 | 0.42 | 0.42 | [0.4 0.48] |  | 0.42 | 0.42 | 0.42 | [0.39 0.47] |
| **ALL SITES** |  | **0.33** | **0.33** | **0.33** | **[0.28 0.37]** |  | **0.35** | **0.35** | **0.35** | **[0.3 0.41]** |  | **0.42** | **0.42** | **0.42** | **[0.4 0.48]** |  | **0.42** | **0.42** | **0.42** | **[0.39 0.47]** |

| 3s | 5s |
|-----|-----|
| ![3s](resources/between_events_single_path_20km_3s_hist.png) | ![5s](resources/between_events_single_path_20km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/between_events_single_path_20km_7.5s_hist.png) | ![10s](resources/between_events_single_path_20km_10s_hist.png) |


### 50.0 km Between-events, single-path Results
*[(top)](#table-of-contents)*

![Between-events, single-path Variability](resources/between_events_single_path_50km_std_dev.png)

| Site | 3s &tau;<sub>0</sub> | Total | Mean | Median | Range | 5s &tau;<sub>0</sub> | Total | Mean | Median | Range | 7.5s &tau;<sub>0</sub> | Total | Mean | Median | Range | 10s &tau;<sub>0</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| LAPD |  | 0.33 | 0.33 | 0.33 | [0.29 0.37] |  | 0.4 | 0.4 | 0.41 | [0.33 0.47] |  | 0.44 | 0.44 | 0.45 | [0.35 0.5] |  | 0.43 | 0.42 | 0.44 | [0.29 0.5] |
| PAS |  | 0.33 | 0.33 | 0.33 | [0.29 0.37] |  | 0.4 | 0.4 | 0.41 | [0.33 0.47] |  | 0.44 | 0.44 | 0.45 | [0.35 0.5] |  | 0.43 | 0.42 | 0.44 | [0.29 0.5] |
| SBSM |  | 0.33 | 0.33 | 0.33 | [0.29 0.37] |  | 0.4 | 0.4 | 0.41 | [0.33 0.47] |  | 0.44 | 0.44 | 0.45 | [0.35 0.5] |  | 0.43 | 0.42 | 0.44 | [0.29 0.5] |
| SMCA |  | 0.33 | 0.33 | 0.33 | [0.29 0.37] |  | 0.4 | 0.4 | 0.41 | [0.33 0.47] |  | 0.44 | 0.44 | 0.45 | [0.35 0.49] |  | 0.43 | 0.42 | 0.44 | [0.29 0.5] |
| STNI |  | 0.33 | 0.33 | 0.33 | [0.29 0.37] |  | 0.4 | 0.4 | 0.41 | [0.33 0.47] |  | 0.44 | 0.44 | 0.45 | [0.35 0.5] |  | 0.43 | 0.42 | 0.44 | [0.29 0.5] |
| USC |  | 0.33 | 0.33 | 0.33 | [0.29 0.37] |  | 0.4 | 0.4 | 0.41 | [0.33 0.47] |  | 0.44 | 0.44 | 0.45 | [0.35 0.49] |  | 0.43 | 0.42 | 0.44 | [0.29 0.5] |
| WNGC |  | 0.33 | 0.33 | 0.33 | [0.29 0.37] |  | 0.4 | 0.4 | 0.41 | [0.33 0.47] |  | 0.44 | 0.44 | 0.45 | [0.35 0.5] |  | 0.43 | 0.42 | 0.44 | [0.29 0.5] |
| s119 |  | 0.33 | 0.33 | 0.33 | [0.29 0.37] |  | 0.4 | 0.4 | 0.41 | [0.33 0.47] |  | 0.44 | 0.44 | 0.45 | [0.35 0.49] |  | 0.43 | 0.42 | 0.44 | [0.29 0.5] |
| s279 |  | 0.33 | 0.33 | 0.33 | [0.29 0.37] |  | 0.4 | 0.4 | 0.41 | [0.33 0.47] |  | 0.44 | 0.44 | 0.45 | [0.35 0.49] |  | 0.43 | 0.42 | 0.44 | [0.29 0.5] |
| s480 |  | 0.33 | 0.33 | 0.33 | [0.29 0.37] |  | 0.4 | 0.4 | 0.41 | [0.33 0.47] |  | 0.44 | 0.44 | 0.45 | [0.35 0.5] |  | 0.43 | 0.42 | 0.44 | [0.29 0.5] |
| **ALL SITES** |  | **0.33** | **0.33** | **0.33** | **[0.29 0.37]** |  | **0.4** | **0.4** | **0.41** | **[0.33 0.47]** |  | **0.44** | **0.44** | **0.45** | **[0.35 0.5]** |  | **0.43** | **0.42** | **0.44** | **[0.29 0.5]** |

| 3s | 5s |
|-----|-----|
| ![3s](resources/between_events_single_path_50km_3s_hist.png) | ![5s](resources/between_events_single_path_50km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/between_events_single_path_50km_7.5s_hist.png) | ![10s](resources/between_events_single_path_50km_10s_hist.png) |


## Between-events Variability
*[(top)](#table-of-contents)*

### Between-events Variability Methodology
*[(top)](#table-of-contents)*

Between-events variability, denoted &tau; in Al Atik (2010), is computed from ground motion residuals where the following quantities are held constant:

* Site *[10 unique]*
* Joyner-Boore Distance *[2 unique]*

and the following quantities vary:

* Rupture *[100 unique]*
* Rupture Strike *[36 unique]*
* Path *[4 unique]*

Standard deviation is computed and tabulated separately for each site and distance, then a total standard deviation is computed from all sitess and reported in the "**ALL SITES**" row. Results are reported separately for each distance

### 20.0 km Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_20km_std_dev.png)

| Site | 3s &tau; | Total | Mean | Median | Range | 5s &tau; | Total | Mean | Median | Range | 7.5s &tau; | Total | Mean | Median | Range | 10s &tau; | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| LAPD |  | 0.44 | 0.44 | 0.44 | [0.44 0.44] |  | 0.46 | 0.46 | 0.46 | [0.46 0.46] |  | 0.48 | 0.48 | 0.48 | [0.48 0.48] |  | 0.45 | 0.45 | 0.45 | [0.45 0.45] |
| PAS |  | 0.44 | 0.44 | 0.44 | [0.44 0.44] |  | 0.46 | 0.46 | 0.46 | [0.46 0.46] |  | 0.48 | 0.48 | 0.48 | [0.48 0.48] |  | 0.45 | 0.45 | 0.45 | [0.45 0.45] |
| SBSM |  | 0.44 | 0.44 | 0.44 | [0.44 0.44] |  | 0.46 | 0.46 | 0.46 | [0.46 0.46] |  | 0.48 | 0.48 | 0.48 | [0.48 0.48] |  | 0.45 | 0.45 | 0.45 | [0.45 0.45] |
| SMCA |  | 0.44 | 0.44 | 0.44 | [0.44 0.44] |  | 0.46 | 0.46 | 0.46 | [0.46 0.46] |  | 0.49 | 0.49 | 0.49 | [0.49 0.49] |  | 0.45 | 0.45 | 0.45 | [0.45 0.45] |
| STNI |  | 0.44 | 0.44 | 0.44 | [0.44 0.44] |  | 0.46 | 0.46 | 0.46 | [0.46 0.46] |  | 0.49 | 0.49 | 0.49 | [0.49 0.49] |  | 0.45 | 0.45 | 0.45 | [0.45 0.45] |
| USC |  | 0.44 | 0.44 | 0.44 | [0.44 0.44] |  | 0.46 | 0.46 | 0.46 | [0.46 0.46] |  | 0.49 | 0.49 | 0.49 | [0.49 0.49] |  | 0.45 | 0.45 | 0.45 | [0.45 0.45] |
| WNGC |  | 0.44 | 0.44 | 0.44 | [0.44 0.44] |  | 0.46 | 0.46 | 0.46 | [0.46 0.46] |  | 0.49 | 0.49 | 0.49 | [0.49 0.49] |  | 0.45 | 0.45 | 0.45 | [0.45 0.45] |
| s119 |  | 0.44 | 0.44 | 0.44 | [0.44 0.44] |  | 0.46 | 0.46 | 0.46 | [0.46 0.46] |  | 0.48 | 0.48 | 0.48 | [0.48 0.48] |  | 0.45 | 0.45 | 0.45 | [0.45 0.45] |
| s279 |  | 0.44 | 0.44 | 0.44 | [0.44 0.44] |  | 0.46 | 0.46 | 0.46 | [0.46 0.46] |  | 0.48 | 0.48 | 0.48 | [0.48 0.48] |  | 0.45 | 0.45 | 0.45 | [0.45 0.45] |
| s480 |  | 0.44 | 0.44 | 0.44 | [0.44 0.44] |  | 0.46 | 0.46 | 0.46 | [0.46 0.46] |  | 0.48 | 0.48 | 0.48 | [0.48 0.48] |  | 0.45 | 0.45 | 0.45 | [0.45 0.45] |
| **ALL SITES** |  | **0.44** | **0.44** | **0.44** | **[0.44 0.44]** |  | **0.46** | **0.46** | **0.46** | **[0.46 0.46]** |  | **0.48** | **0.48** | **0.48** | **[0.48 0.49]** |  | **0.45** | **0.45** | **0.45** | **[0.45 0.45]** |

| 3s | 5s |
|-----|-----|
| ![3s](resources/between_events_20km_3s_hist.png) | ![5s](resources/between_events_20km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/between_events_20km_7.5s_hist.png) | ![10s](resources/between_events_20km_10s_hist.png) |


### 50.0 km Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_50km_std_dev.png)

| Site | 3s &tau; | Total | Mean | Median | Range | 5s &tau; | Total | Mean | Median | Range | 7.5s &tau; | Total | Mean | Median | Range | 10s &tau; | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| LAPD |  | 0.5 | 0.5 | 0.5 | [0.5 0.5] |  | 0.55 | 0.55 | 0.55 | [0.55 0.55] |  | 0.62 | 0.62 | 0.62 | [0.62 0.62] |  | 0.64 | 0.64 | 0.64 | [0.64 0.64] |
| PAS |  | 0.5 | 0.5 | 0.5 | [0.5 0.5] |  | 0.55 | 0.55 | 0.55 | [0.55 0.55] |  | 0.62 | 0.62 | 0.62 | [0.62 0.62] |  | 0.64 | 0.64 | 0.64 | [0.64 0.64] |
| SBSM |  | 0.5 | 0.5 | 0.5 | [0.5 0.5] |  | 0.55 | 0.55 | 0.55 | [0.55 0.55] |  | 0.62 | 0.62 | 0.62 | [0.62 0.62] |  | 0.64 | 0.64 | 0.64 | [0.64 0.64] |
| SMCA |  | 0.5 | 0.5 | 0.5 | [0.5 0.5] |  | 0.55 | 0.55 | 0.55 | [0.55 0.55] |  | 0.62 | 0.62 | 0.62 | [0.62 0.62] |  | 0.64 | 0.64 | 0.64 | [0.64 0.64] |
| STNI |  | 0.5 | 0.5 | 0.5 | [0.5 0.5] |  | 0.55 | 0.55 | 0.55 | [0.55 0.55] |  | 0.62 | 0.62 | 0.62 | [0.62 0.62] |  | 0.64 | 0.64 | 0.64 | [0.64 0.64] |
| USC |  | 0.5 | 0.5 | 0.5 | [0.5 0.5] |  | 0.55 | 0.55 | 0.55 | [0.55 0.55] |  | 0.62 | 0.62 | 0.62 | [0.62 0.62] |  | 0.64 | 0.64 | 0.64 | [0.64 0.64] |
| WNGC |  | 0.5 | 0.5 | 0.5 | [0.5 0.5] |  | 0.55 | 0.55 | 0.55 | [0.55 0.55] |  | 0.62 | 0.62 | 0.62 | [0.62 0.62] |  | 0.64 | 0.64 | 0.64 | [0.64 0.64] |
| s119 |  | 0.5 | 0.5 | 0.5 | [0.5 0.5] |  | 0.55 | 0.55 | 0.55 | [0.55 0.55] |  | 0.62 | 0.62 | 0.62 | [0.62 0.62] |  | 0.64 | 0.64 | 0.64 | [0.64 0.64] |
| s279 |  | 0.5 | 0.5 | 0.5 | [0.5 0.5] |  | 0.55 | 0.55 | 0.55 | [0.55 0.55] |  | 0.62 | 0.62 | 0.62 | [0.62 0.62] |  | 0.64 | 0.64 | 0.64 | [0.64 0.64] |
| s480 |  | 0.5 | 0.5 | 0.5 | [0.5 0.5] |  | 0.55 | 0.55 | 0.55 | [0.55 0.55] |  | 0.62 | 0.62 | 0.62 | [0.62 0.62] |  | 0.64 | 0.64 | 0.64 | [0.64 0.64] |
| **ALL SITES** |  | **0.5** | **0.5** | **0.5** | **[0.5 0.5]** |  | **0.55** | **0.55** | **0.55** | **[0.55 0.55]** |  | **0.62** | **0.62** | **0.62** | **[0.62 0.62]** |  | **0.64** | **0.64** | **0.64** | **[0.64 0.64]** |

| 3s | 5s |
|-----|-----|
| ![3s](resources/between_events_50km_3s_hist.png) | ![5s](resources/between_events_50km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/between_events_50km_7.5s_hist.png) | ![10s](resources/between_events_50km_10s_hist.png) |


## Site-to-site Variability
*[(top)](#table-of-contents)*

### Site-to-site Variability Methodology
*[(top)](#table-of-contents)*

Site-to-site variability, denoted &phi;<sub>S2S</sub> in Al Atik (2010), is computed from ground motion residuals where the following quantities are held constant:

* Joyner-Boore Distance *[2 unique]*
* Rupture *[100 unique]*
* Rupture Strike *[36 unique]*
* Path *[4 unique]*

and the following quantities vary:

* Site *[10 unique]*

Standard deviation is computed and tabulated separately for each distance. Results are reported separately for each distance

### 20.0 km Site-to-site Results
*[(top)](#table-of-contents)*

![Site-to-site Variability](resources/site_to_site_20km_std_dev.png)

| 3s &phi;<sub>S2S</sub> | Total | Mean | Median | Range | 5s &phi;<sub>S2S</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>S2S</sub> | Total | Mean | Median | Range | 10s &phi;<sub>S2S</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.01 | 0.01 | 0 | [0 0.06] |  | 0 | 0 | 0 | [0 0.04] |  | 0 | 0 | 0 | [0 0.03] |  | 0 | 0 | 0 | [0 0.02] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/site_to_site_20km_3s_hist.png) | ![5s](resources/site_to_site_20km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/site_to_site_20km_7.5s_hist.png) | ![10s](resources/site_to_site_20km_10s_hist.png) |


### 50.0 km Site-to-site Results
*[(top)](#table-of-contents)*

![Site-to-site Variability](resources/site_to_site_50km_std_dev.png)

| 3s &phi;<sub>S2S</sub> | Total | Mean | Median | Range | 5s &phi;<sub>S2S</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>S2S</sub> | Total | Mean | Median | Range | 10s &phi;<sub>S2S</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.01 | 0.01 | 0 | [0 0.1] |  | 0.01 | 0 | 0 | [0 0.06] |  | 0 | 0 | 0 | [0 0.04] |  | 0 | 0 | 0 | [0 0.04] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/site_to_site_50km_3s_hist.png) | ![5s](resources/site_to_site_50km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/site_to_site_50km_7.5s_hist.png) | ![10s](resources/site_to_site_50km_10s_hist.png) |


