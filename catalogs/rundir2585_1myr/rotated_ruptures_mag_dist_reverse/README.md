# Bruce 2585 1myr Rotated Rupture Variability, Reverse

This exercise uses translations and rotations to estimate ground motion variability from different sources. We begin by selecting a subset of similar ruptures which match a set of criteria (in this case, Reverse, Dip=45). Each rupture is then reoriented such that its strike (following the Aki & Richards 1980 convention) is 0 degrees (due North, dipping to the right for normal or reverse ruptures). For each site, ruptures are translated such that their scalar seismic moment centroid is directly North of the site, and their Joyner-Boore distance (rJB) is as specified (we consider 10 distance[s] here).

We then  perform various rotations. We rotate the rupture in place around its centroid, holding the site-to-source centroid path and rJB constant (henceforth 'Rupture Strike'). We also rotate ruptures around the site, holding rJB and source orientation relative to the site constant but sampling different various paths (henceforth 'Path'). We do this for each unique combination of Rupture Strike, Path, Joyner-Boore Distance, Site, and Rupture.

*NOTE: This page uses the SCEC BBP to simulate a 1-dimensional velocity structure. Thus we expect no path variability, and plots of path variabilitiy are included only as verification of the method.*

[RSQSim Catalog Details](../#bruce-2585-1myr)

## Table Of Contents
* [Rupture Rotation Parameters](#rupture-rotation-parameters)
* [Reverse RSQSim Rupture Match Criteria](#reverse-rsqsim-rupture-match-criteria)
* [Sites](#sites)
* [Result Summary Table](#result-summary-table)
* [M6.5 Result Summary Table](#m65-result-summary-table)
* [M7 Result Summary Table](#m7-result-summary-table)
* [Source-strike Variability](#source-strike-variability)
  * [Source-strike Variability Methodology](#source-strike-variability-methodology)
  * [Source-strike Variability Mag-Distance Plots](#source-strike-variability-mag-distance-plots)
  * [20.0 km M6.5 Source-strike Results](#200-km-m65-source-strike-results)
  * [40.0 km M6.5 Source-strike Results](#400-km-m65-source-strike-results)
  * [80.0 km M6.5 Source-strike Results](#800-km-m65-source-strike-results)
  * [160.0 km M6.5 Source-strike Results](#1600-km-m65-source-strike-results)
  * [20.0 km M7 Source-strike Results](#200-km-m7-source-strike-results)
  * [40.0 km M7 Source-strike Results](#400-km-m7-source-strike-results)
  * [80.0 km M7 Source-strike Results](#800-km-m7-source-strike-results)
  * [160.0 km M7 Source-strike Results](#1600-km-m7-source-strike-results)
* [Within-event Variability](#within-event-variability)
  * [Within-event Variability Methodology](#within-event-variability-methodology)
  * [Within-event Variability Mag-Distance Plots](#within-event-variability-mag-distance-plots)
  * [20.0 km M6.5 Within-event Results](#200-km-m65-within-event-results)
  * [40.0 km M6.5 Within-event Results](#400-km-m65-within-event-results)
  * [80.0 km M6.5 Within-event Results](#800-km-m65-within-event-results)
  * [160.0 km M6.5 Within-event Results](#1600-km-m65-within-event-results)
  * [20.0 km M7 Within-event Results](#200-km-m7-within-event-results)
  * [40.0 km M7 Within-event Results](#400-km-m7-within-event-results)
  * [80.0 km M7 Within-event Results](#800-km-m7-within-event-results)
  * [160.0 km M7 Within-event Results](#1600-km-m7-within-event-results)
* [Between-events, single-path Variability](#between-events-single-path-variability)
  * [Between-events, single-path Variability Methodology](#between-events-single-path-variability-methodology)
  * [Between-events, single-path Variability Mag-Distance Plots](#between-events-single-path-variability-mag-distance-plots)
  * [20.0 km M6.5 Between-events, single-path Results](#200-km-m65-between-events-single-path-results)
  * [40.0 km M6.5 Between-events, single-path Results](#400-km-m65-between-events-single-path-results)
  * [80.0 km M6.5 Between-events, single-path Results](#800-km-m65-between-events-single-path-results)
  * [160.0 km M6.5 Between-events, single-path Results](#1600-km-m65-between-events-single-path-results)
  * [20.0 km M7 Between-events, single-path Results](#200-km-m7-between-events-single-path-results)
  * [40.0 km M7 Between-events, single-path Results](#400-km-m7-between-events-single-path-results)
  * [80.0 km M7 Between-events, single-path Results](#800-km-m7-between-events-single-path-results)
  * [160.0 km M7 Between-events, single-path Results](#1600-km-m7-between-events-single-path-results)
* [Between-events Variability](#between-events-variability)
  * [Between-events Variability Methodology](#between-events-variability-methodology)
  * [Between-events Variability Mag-Distance Plots](#between-events-variability-mag-distance-plots)
  * [20.0 km M6.5 Between-events Results](#200-km-m65-between-events-results)
  * [40.0 km M6.5 Between-events Results](#400-km-m65-between-events-results)
  * [80.0 km M6.5 Between-events Results](#800-km-m65-between-events-results)
  * [160.0 km M6.5 Between-events Results](#1600-km-m65-between-events-results)
  * [20.0 km M7 Between-events Results](#200-km-m7-between-events-results)
  * [40.0 km M7 Between-events Results](#400-km-m7-between-events-results)
  * [80.0 km M7 Between-events Results](#800-km-m7-between-events-results)
  * [160.0 km M7 Between-events Results](#1600-km-m7-between-events-results)
## Rupture Rotation Parameters

| Quantity | Variations | Description |
|-----|-----|-----|
| Rupture | 10 - 100 | Unique (but similar in faulting style and magnitude) ruptures which match the given scenario. |
| Site | 1 | Unique site locations. If 3-d, each will have unique velocity profiles. |
| Rupture Strike | 36 | Rupture strike conforming to the Aki & Richards (1980) convention, where dipping faults dip to the right of the rupture. If path rotation is also performed, this azimuth is relative to the path. |
| Path | 1 | Path from the site to the centroid of the rupture, in azimuthal degrees (0 is North) |
| Joyner-Boore Distance | 20.0, 40.0, 60.0, 80.0, 100.0, 120.0, 140.0, 160.0, 180.0, 200.0 km | Shortest horizontal distance between the site and the surface projection of the rupture. |
| **Total # Simulations** | **21240** | Total number of combinations of the above. |

## Reverse RSQSim Rupture Match Criteria
*[(top)](#table-of-contents)*

We condisder 100 events in the catalog which match the following criteria:

* Ztor=[0,5]
* Rake=[75,105]
* Dip=[35,55]

## Sites

| Name | Location | Vs30 (m/s) | Z1.0 (km) | Z2.5 (km) |
|-----|-----|-----|-----|-----|
| USC | *34.0192, -118.286* | 863 | N/A | N/A |

## Result Summary Table

## M6.5 Result Summary Table

| Type | Notation | Distance | 3s Std. Dev. | 5s Std. Dev. | 7.5s Std. Dev. | 10s Std. Dev. |
|-----|-----|-----|-----|-----|-----|-----|
| Source-strike | &phi;<sub>s</sub> | 20 km | 0.35 | 0.36 | 0.35 | 0.32 |
| Source-strike | &phi;<sub>s</sub> | 40 km | 0.39 | 0.38 | 0.32 | 0.32 |
| Source-strike | &phi;<sub>s</sub> | 60 km | 0.37 | 0.36 | 0.37 | 0.32 |
| Source-strike | &phi;<sub>s</sub> | 80 km | 0.37 | 0.41 | 0.35 | 0.35 |
| Source-strike | &phi;<sub>s</sub> | 100 km | 0.37 | 0.4 | 0.35 | 0.35 |
| Source-strike | &phi;<sub>s</sub> | 120 km | 0.34 | 0.4 | 0.37 | 0.34 |
| Source-strike | &phi;<sub>s</sub> | 140 km | 0.33 | 0.4 | 0.36 | 0.35 |
| Source-strike | &phi;<sub>s</sub> | 160 km | 0.33 | 0.39 | 0.38 | 0.36 |
| Source-strike | &phi;<sub>s</sub> | 180 km | 0.33 | 0.4 | 0.38 | 0.35 |
| Source-strike | &phi;<sub>s</sub> | 200 km | 0.35 | 0.4 | 0.38 | 0.35 |
| Within-event | &phi; | 20 km | 0.35 | 0.36 | 0.35 | 0.32 |
| Within-event | &phi; | 40 km | 0.39 | 0.38 | 0.32 | 0.32 |
| Within-event | &phi; | 60 km | 0.37 | 0.36 | 0.37 | 0.32 |
| Within-event | &phi; | 80 km | 0.37 | 0.41 | 0.35 | 0.35 |
| Within-event | &phi; | 100 km | 0.37 | 0.4 | 0.35 | 0.35 |
| Within-event | &phi; | 120 km | 0.34 | 0.4 | 0.37 | 0.34 |
| Within-event | &phi; | 140 km | 0.33 | 0.4 | 0.36 | 0.35 |
| Within-event | &phi; | 160 km | 0.33 | 0.39 | 0.38 | 0.36 |
| Within-event | &phi; | 180 km | 0.33 | 0.4 | 0.38 | 0.35 |
| Within-event | &phi; | 200 km | 0.35 | 0.4 | 0.38 | 0.35 |
| Between-events, single-path | &tau;<sub>0</sub> | 20 km | 0.39 | 0.41 | 0.4 | 0.36 |
| Between-events, single-path | &tau;<sub>0</sub> | 40 km | 0.45 | 0.47 | 0.39 | 0.39 |
| Between-events, single-path | &tau;<sub>0</sub> | 60 km | 0.46 | 0.43 | 0.44 | 0.35 |
| Between-events, single-path | &tau;<sub>0</sub> | 80 km | 0.49 | 0.5 | 0.43 | 0.38 |
| Between-events, single-path | &tau;<sub>0</sub> | 100 km | 0.44 | 0.48 | 0.4 | 0.41 |
| Between-events, single-path | &tau;<sub>0</sub> | 120 km | 0.35 | 0.48 | 0.44 | 0.39 |
| Between-events, single-path | &tau;<sub>0</sub> | 140 km | 0.33 | 0.47 | 0.43 | 0.37 |
| Between-events, single-path | &tau;<sub>0</sub> | 160 km | 0.33 | 0.46 | 0.43 | 0.42 |
| Between-events, single-path | &tau;<sub>0</sub> | 180 km | 0.34 | 0.47 | 0.45 | 0.42 |
| Between-events, single-path | &tau;<sub>0</sub> | 200 km | 0.37 | 0.48 | 0.45 | 0.4 |
| Between-events | &tau; | 20 km | 0.44 | 0.46 | 0.46 | 0.42 |
| Between-events | &tau; | 40 km | 0.52 | 0.52 | 0.43 | 0.44 |
| Between-events | &tau; | 60 km | 0.52 | 0.48 | 0.49 | 0.41 |
| Between-events | &tau; | 80 km | 0.54 | 0.55 | 0.47 | 0.46 |
| Between-events | &tau; | 100 km | 0.49 | 0.52 | 0.46 | 0.47 |
| Between-events | &tau; | 120 km | 0.41 | 0.52 | 0.49 | 0.45 |
| Between-events | &tau; | 140 km | 0.39 | 0.51 | 0.47 | 0.45 |
| Between-events | &tau; | 160 km | 0.39 | 0.5 | 0.48 | 0.48 |
| Between-events | &tau; | 180 km | 0.4 | 0.51 | 0.5 | 0.48 |
| Between-events | &tau; | 200 km | 0.42 | 0.52 | 0.49 | 0.47 |

## M7 Result Summary Table

| Type | Notation | Distance | 3s Std. Dev. | 5s Std. Dev. | 7.5s Std. Dev. | 10s Std. Dev. |
|-----|-----|-----|-----|-----|-----|-----|
| Source-strike | &phi;<sub>s</sub> | 20 km | 0.38 | 0.39 | 0.4 | 0.38 |
| Source-strike | &phi;<sub>s</sub> | 40 km | 0.39 | 0.41 | 0.38 | 0.41 |
| Source-strike | &phi;<sub>s</sub> | 60 km | 0.37 | 0.38 | 0.42 | 0.4 |
| Source-strike | &phi;<sub>s</sub> | 80 km | 0.36 | 0.43 | 0.42 | 0.44 |
| Source-strike | &phi;<sub>s</sub> | 100 km | 0.35 | 0.4 | 0.4 | 0.44 |
| Source-strike | &phi;<sub>s</sub> | 120 km | 0.34 | 0.4 | 0.44 | 0.42 |
| Source-strike | &phi;<sub>s</sub> | 140 km | 0.33 | 0.39 | 0.42 | 0.43 |
| Source-strike | &phi;<sub>s</sub> | 160 km | 0.34 | 0.39 | 0.43 | 0.46 |
| Source-strike | &phi;<sub>s</sub> | 180 km | 0.34 | 0.4 | 0.45 | 0.45 |
| Source-strike | &phi;<sub>s</sub> | 200 km | 0.34 | 0.41 | 0.44 | 0.44 |
| Within-event | &phi; | 20 km | 0.38 | 0.39 | 0.4 | 0.38 |
| Within-event | &phi; | 40 km | 0.39 | 0.41 | 0.38 | 0.41 |
| Within-event | &phi; | 60 km | 0.37 | 0.38 | 0.42 | 0.4 |
| Within-event | &phi; | 80 km | 0.36 | 0.43 | 0.42 | 0.44 |
| Within-event | &phi; | 100 km | 0.35 | 0.4 | 0.4 | 0.44 |
| Within-event | &phi; | 120 km | 0.34 | 0.4 | 0.44 | 0.42 |
| Within-event | &phi; | 140 km | 0.33 | 0.39 | 0.42 | 0.43 |
| Within-event | &phi; | 160 km | 0.34 | 0.39 | 0.43 | 0.46 |
| Within-event | &phi; | 180 km | 0.34 | 0.4 | 0.45 | 0.45 |
| Within-event | &phi; | 200 km | 0.34 | 0.41 | 0.44 | 0.44 |
| Between-events, single-path | &tau;<sub>0</sub> | 20 km | 0.31 | 0.33 | 0.4 | 0.42 |
| Between-events, single-path | &tau;<sub>0</sub> | 40 km | 0.33 | 0.38 | 0.39 | 0.45 |
| Between-events, single-path | &tau;<sub>0</sub> | 60 km | 0.35 | 0.37 | 0.41 | 0.41 |
| Between-events, single-path | &tau;<sub>0</sub> | 80 km | 0.35 | 0.41 | 0.43 | 0.45 |
| Between-events, single-path | &tau;<sub>0</sub> | 100 km | 0.31 | 0.39 | 0.39 | 0.48 |
| Between-events, single-path | &tau;<sub>0</sub> | 120 km | 0.29 | 0.37 | 0.43 | 0.45 |
| Between-events, single-path | &tau;<sub>0</sub> | 140 km | 0.29 | 0.36 | 0.42 | 0.43 |
| Between-events, single-path | &tau;<sub>0</sub> | 160 km | 0.28 | 0.36 | 0.42 | 0.48 |
| Between-events, single-path | &tau;<sub>0</sub> | 180 km | 0.27 | 0.37 | 0.44 | 0.49 |
| Between-events, single-path | &tau;<sub>0</sub> | 200 km | 0.27 | 0.38 | 0.44 | 0.47 |
| Between-events | &tau; | 20 km | 0.42 | 0.44 | 0.49 | 0.48 |
| Between-events | &tau; | 40 km | 0.44 | 0.47 | 0.46 | 0.51 |
| Between-events | &tau; | 60 km | 0.44 | 0.45 | 0.49 | 0.49 |
| Between-events | &tau; | 80 km | 0.43 | 0.49 | 0.5 | 0.53 |
| Between-events | &tau; | 100 km | 0.39 | 0.47 | 0.47 | 0.55 |
| Between-events | &tau; | 120 km | 0.37 | 0.46 | 0.51 | 0.52 |
| Between-events | &tau; | 140 km | 0.36 | 0.45 | 0.49 | 0.51 |
| Between-events | &tau; | 160 km | 0.37 | 0.44 | 0.49 | 0.55 |
| Between-events | &tau; | 180 km | 0.37 | 0.46 | 0.52 | 0.56 |
| Between-events | &tau; | 200 km | 0.37 | 0.46 | 0.51 | 0.54 |

## Source-strike Variability
*[(top)](#table-of-contents)*

### Source-strike Variability Methodology
*[(top)](#table-of-contents)*

Source-strike variability, denoted &phi;<sub>s</sub> in Aki & Richards (1980), is computed from ground motion residuals where the following quantities are held constant:

* Site *[1 unique]*
* Joyner-Boore Distance *[10 unique]*
* Rupture *[59 unique]*
* Path *[1 unique]*

and the following quantities vary:

* Rupture Strike *[36 unique]*

Here is an exmample with 5 rotations, which would be repeated for each combination of [Site, Joyner-Boore Distance, Rupture, Path]. The site is shown with a blue square, and initially oriented rupture in bold with its hypocenter as a red star and centroid a green circle. Rotations of that rupture are in gray:

![Example](resources/example_source_strike.png)

Standard deviation is computed and tabulated separately for each site and distance, then a total standard deviation is computed from all sitess and reported in the "**ALL SITES**" row. Results are reported separately for each distance

### Source-strike Variability Mag-Distance Plots
*[(top)](#table-of-contents)*

| 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|
| ![Mag-Dist Plot](resources/source_strike_mag_dist_std_dev_3s.png) | ![Mag-Dist Plot](resources/source_strike_mag_dist_std_dev_5s.png) | ![Mag-Dist Plot](resources/source_strike_mag_dist_std_dev_7.5s.png) | ![Mag-Dist Plot](resources/source_strike_mag_dist_std_dev_10s.png) |

### 20.0 km M6.5 Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_m6.5_20km_std_dev.png)

| 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.35 | 0.35 | 0.34 | [0.22 0.56] |  | 0.36 | 0.35 | 0.35 | [0.16 0.64] |  | 0.35 | 0.34 | 0.33 | [0.13 0.71] |  | 0.32 | 0.31 | 0.3 | [0.15 0.56] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m6.5_20km_3s_hist.png) | ![5s](resources/source_strike_m6.5_20km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m6.5_20km_7.5s_hist.png) | ![10s](resources/source_strike_m6.5_20km_10s_hist.png) |


### 40.0 km M6.5 Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_m6.5_40km_std_dev.png)

| 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.39 | 0.39 | 0.37 | [0.24 0.68] |  | 0.38 | 0.37 | 0.37 | [0.21 0.69] |  | 0.32 | 0.31 | 0.3 | [0.17 0.64] |  | 0.32 | 0.31 | 0.3 | [0.19 0.61] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m6.5_40km_3s_hist.png) | ![5s](resources/source_strike_m6.5_40km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m6.5_40km_7.5s_hist.png) | ![10s](resources/source_strike_m6.5_40km_10s_hist.png) |


### 80.0 km M6.5 Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_m6.5_80km_std_dev.png)

| 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.37 | 0.37 | 0.34 | [0.22 0.76] |  | 0.41 | 0.4 | 0.39 | [0.14 0.72] |  | 0.35 | 0.34 | 0.31 | [0.14 0.69] |  | 0.35 | 0.35 | 0.33 | [0.2 0.74] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m6.5_80km_3s_hist.png) | ![5s](resources/source_strike_m6.5_80km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m6.5_80km_7.5s_hist.png) | ![10s](resources/source_strike_m6.5_80km_10s_hist.png) |


### 160.0 km M6.5 Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_m6.5_160km_std_dev.png)

| 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.33 | 0.33 | 0.32 | [0.17 0.56] |  | 0.39 | 0.38 | 0.38 | [0.15 0.73] |  | 0.38 | 0.37 | 0.35 | [0.16 0.73] |  | 0.36 | 0.35 | 0.34 | [0.22 0.73] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m6.5_160km_3s_hist.png) | ![5s](resources/source_strike_m6.5_160km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m6.5_160km_7.5s_hist.png) | ![10s](resources/source_strike_m6.5_160km_10s_hist.png) |


### 20.0 km M7 Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_m7_20km_std_dev.png)

| 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.38 | 0.38 | 0.37 | [0.23 0.56] |  | 0.39 | 0.39 | 0.37 | [0.2 0.64] |  | 0.4 | 0.4 | 0.4 | [0.21 0.66] |  | 0.38 | 0.37 | 0.36 | [0.19 0.72] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m7_20km_3s_hist.png) | ![5s](resources/source_strike_m7_20km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m7_20km_7.5s_hist.png) | ![10s](resources/source_strike_m7_20km_10s_hist.png) |


### 40.0 km M7 Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_m7_40km_std_dev.png)

| 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.39 | 0.39 | 0.38 | [0.23 0.54] |  | 0.41 | 0.41 | 0.41 | [0.22 0.64] |  | 0.38 | 0.37 | 0.37 | [0.18 0.62] |  | 0.41 | 0.4 | 0.4 | [0.19 0.69] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m7_40km_3s_hist.png) | ![5s](resources/source_strike_m7_40km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m7_40km_7.5s_hist.png) | ![10s](resources/source_strike_m7_40km_10s_hist.png) |


### 80.0 km M7 Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_m7_80km_std_dev.png)

| 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.36 | 0.36 | 0.34 | [0.2 0.55] |  | 0.43 | 0.42 | 0.42 | [0.22 0.72] |  | 0.42 | 0.41 | 0.4 | [0.2 0.74] |  | 0.44 | 0.43 | 0.42 | [0.2 0.71] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m7_80km_3s_hist.png) | ![5s](resources/source_strike_m7_80km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m7_80km_7.5s_hist.png) | ![10s](resources/source_strike_m7_80km_10s_hist.png) |


### 160.0 km M7 Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_m7_160km_std_dev.png)

| 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.34 | 0.34 | 0.33 | [0.22 0.56] |  | 0.39 | 0.39 | 0.38 | [0.22 0.61] |  | 0.43 | 0.42 | 0.42 | [0.23 0.7] |  | 0.46 | 0.45 | 0.45 | [0.22 0.73] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m7_160km_3s_hist.png) | ![5s](resources/source_strike_m7_160km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m7_160km_7.5s_hist.png) | ![10s](resources/source_strike_m7_160km_10s_hist.png) |


## Within-event Variability
*[(top)](#table-of-contents)*

### Within-event Variability Methodology
*[(top)](#table-of-contents)*

Within-event variability, denoted &phi; in Al Atik (2010), is computed from ground motion residuals where the following quantities are held constant:

* Site *[1 unique]*
* Joyner-Boore Distance *[10 unique]*
* Rupture *[59 unique]*

and the following quantities vary:

* Rupture Strike *[36 unique]*
* Path *[1 unique]*

Here is an exmample with 5 rotations, which would be repeated for each combination of [Site, Joyner-Boore Distance, Rupture]. The site is shown with a blue square, and initially oriented rupture in bold with its hypocenter as a red star and centroid a green circle. Rotations of that rupture are in gray:

![Example](resources/example_within_event.png)

Standard deviation is computed and tabulated separately for each site and distance, then a total standard deviation is computed from all sitess and reported in the "**ALL SITES**" row. Results are reported separately for each distance

### Within-event Variability Mag-Distance Plots
*[(top)](#table-of-contents)*

| 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|
| ![Mag-Dist Plot](resources/within_event_mag_dist_std_dev_3s.png) | ![Mag-Dist Plot](resources/within_event_mag_dist_std_dev_5s.png) | ![Mag-Dist Plot](resources/within_event_mag_dist_std_dev_7.5s.png) | ![Mag-Dist Plot](resources/within_event_mag_dist_std_dev_10s.png) |

### 20.0 km M6.5 Within-event Results
*[(top)](#table-of-contents)*

![Within-event Variability](resources/within_event_m6.5_20km_std_dev.png)

| 3s &phi; | Total | Mean | Median | Range | 5s &phi; | Total | Mean | Median | Range | 7.5s &phi; | Total | Mean | Median | Range | 10s &phi; | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.35 | 0.35 | 0.34 | [0.22 0.56] |  | 0.36 | 0.35 | 0.35 | [0.16 0.64] |  | 0.35 | 0.34 | 0.33 | [0.13 0.71] |  | 0.32 | 0.31 | 0.3 | [0.15 0.56] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_m6.5_20km_3s_hist.png) | ![5s](resources/within_event_m6.5_20km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_m6.5_20km_7.5s_hist.png) | ![10s](resources/within_event_m6.5_20km_10s_hist.png) |


### 40.0 km M6.5 Within-event Results
*[(top)](#table-of-contents)*

![Within-event Variability](resources/within_event_m6.5_40km_std_dev.png)

| 3s &phi; | Total | Mean | Median | Range | 5s &phi; | Total | Mean | Median | Range | 7.5s &phi; | Total | Mean | Median | Range | 10s &phi; | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.39 | 0.39 | 0.37 | [0.24 0.68] |  | 0.38 | 0.37 | 0.37 | [0.21 0.69] |  | 0.32 | 0.31 | 0.3 | [0.17 0.64] |  | 0.32 | 0.31 | 0.3 | [0.19 0.61] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_m6.5_40km_3s_hist.png) | ![5s](resources/within_event_m6.5_40km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_m6.5_40km_7.5s_hist.png) | ![10s](resources/within_event_m6.5_40km_10s_hist.png) |


### 80.0 km M6.5 Within-event Results
*[(top)](#table-of-contents)*

![Within-event Variability](resources/within_event_m6.5_80km_std_dev.png)

| 3s &phi; | Total | Mean | Median | Range | 5s &phi; | Total | Mean | Median | Range | 7.5s &phi; | Total | Mean | Median | Range | 10s &phi; | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.37 | 0.37 | 0.34 | [0.22 0.76] |  | 0.41 | 0.4 | 0.39 | [0.14 0.72] |  | 0.35 | 0.34 | 0.31 | [0.14 0.69] |  | 0.35 | 0.35 | 0.33 | [0.2 0.74] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_m6.5_80km_3s_hist.png) | ![5s](resources/within_event_m6.5_80km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_m6.5_80km_7.5s_hist.png) | ![10s](resources/within_event_m6.5_80km_10s_hist.png) |


### 160.0 km M6.5 Within-event Results
*[(top)](#table-of-contents)*

![Within-event Variability](resources/within_event_m6.5_160km_std_dev.png)

| 3s &phi; | Total | Mean | Median | Range | 5s &phi; | Total | Mean | Median | Range | 7.5s &phi; | Total | Mean | Median | Range | 10s &phi; | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.33 | 0.33 | 0.32 | [0.17 0.56] |  | 0.39 | 0.38 | 0.38 | [0.15 0.73] |  | 0.38 | 0.37 | 0.35 | [0.16 0.73] |  | 0.36 | 0.35 | 0.34 | [0.22 0.73] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_m6.5_160km_3s_hist.png) | ![5s](resources/within_event_m6.5_160km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_m6.5_160km_7.5s_hist.png) | ![10s](resources/within_event_m6.5_160km_10s_hist.png) |


### 20.0 km M7 Within-event Results
*[(top)](#table-of-contents)*

![Within-event Variability](resources/within_event_m7_20km_std_dev.png)

| 3s &phi; | Total | Mean | Median | Range | 5s &phi; | Total | Mean | Median | Range | 7.5s &phi; | Total | Mean | Median | Range | 10s &phi; | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.38 | 0.38 | 0.37 | [0.23 0.56] |  | 0.39 | 0.39 | 0.37 | [0.2 0.64] |  | 0.4 | 0.4 | 0.4 | [0.21 0.66] |  | 0.38 | 0.37 | 0.36 | [0.19 0.72] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_m7_20km_3s_hist.png) | ![5s](resources/within_event_m7_20km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_m7_20km_7.5s_hist.png) | ![10s](resources/within_event_m7_20km_10s_hist.png) |


### 40.0 km M7 Within-event Results
*[(top)](#table-of-contents)*

![Within-event Variability](resources/within_event_m7_40km_std_dev.png)

| 3s &phi; | Total | Mean | Median | Range | 5s &phi; | Total | Mean | Median | Range | 7.5s &phi; | Total | Mean | Median | Range | 10s &phi; | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.39 | 0.39 | 0.38 | [0.23 0.54] |  | 0.41 | 0.41 | 0.41 | [0.22 0.64] |  | 0.38 | 0.37 | 0.37 | [0.18 0.62] |  | 0.41 | 0.4 | 0.4 | [0.19 0.69] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_m7_40km_3s_hist.png) | ![5s](resources/within_event_m7_40km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_m7_40km_7.5s_hist.png) | ![10s](resources/within_event_m7_40km_10s_hist.png) |


### 80.0 km M7 Within-event Results
*[(top)](#table-of-contents)*

![Within-event Variability](resources/within_event_m7_80km_std_dev.png)

| 3s &phi; | Total | Mean | Median | Range | 5s &phi; | Total | Mean | Median | Range | 7.5s &phi; | Total | Mean | Median | Range | 10s &phi; | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.36 | 0.36 | 0.34 | [0.2 0.55] |  | 0.43 | 0.42 | 0.42 | [0.22 0.72] |  | 0.42 | 0.41 | 0.4 | [0.2 0.74] |  | 0.44 | 0.43 | 0.42 | [0.2 0.71] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_m7_80km_3s_hist.png) | ![5s](resources/within_event_m7_80km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_m7_80km_7.5s_hist.png) | ![10s](resources/within_event_m7_80km_10s_hist.png) |


### 160.0 km M7 Within-event Results
*[(top)](#table-of-contents)*

![Within-event Variability](resources/within_event_m7_160km_std_dev.png)

| 3s &phi; | Total | Mean | Median | Range | 5s &phi; | Total | Mean | Median | Range | 7.5s &phi; | Total | Mean | Median | Range | 10s &phi; | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.34 | 0.34 | 0.33 | [0.22 0.56] |  | 0.39 | 0.39 | 0.38 | [0.22 0.61] |  | 0.43 | 0.42 | 0.42 | [0.23 0.7] |  | 0.46 | 0.45 | 0.45 | [0.22 0.73] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_m7_160km_3s_hist.png) | ![5s](resources/within_event_m7_160km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_m7_160km_7.5s_hist.png) | ![10s](resources/within_event_m7_160km_10s_hist.png) |


## Between-events, single-path Variability
*[(top)](#table-of-contents)*

### Between-events, single-path Variability Methodology
*[(top)](#table-of-contents)*

Between-events, single-path variability, denoted &tau;<sub>0</sub> in Al Atik (2010), is computed from ground motion residuals where the following quantities are held constant:

* Site *[1 unique]*
* Joyner-Boore Distance *[10 unique]*
* Rupture Strike *[36 unique]*
* Path *[1 unique]*

and the following quantities vary:

* Rupture *[59 unique]*

Standard deviation is computed and tabulated separately for each site and distance, then a total standard deviation is computed from all sitess and reported in the "**ALL SITES**" row. Results are reported separately for each distance

### Between-events, single-path Variability Mag-Distance Plots
*[(top)](#table-of-contents)*

| 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|
| ![Mag-Dist Plot](resources/between_events_single_path_mag_dist_std_dev_3s.png) | ![Mag-Dist Plot](resources/between_events_single_path_mag_dist_std_dev_5s.png) | ![Mag-Dist Plot](resources/between_events_single_path_mag_dist_std_dev_7.5s.png) | ![Mag-Dist Plot](resources/between_events_single_path_mag_dist_std_dev_10s.png) |

### 20.0 km M6.5 Between-events, single-path Results
*[(top)](#table-of-contents)*

![Between-events, single-path Variability](resources/between_events_single_path_m6.5_20km_std_dev.png)

| 3s &tau;<sub>0</sub> | Total | Mean | Median | Range | 5s &tau;<sub>0</sub> | Total | Mean | Median | Range | 7.5s &tau;<sub>0</sub> | Total | Mean | Median | Range | 10s &tau;<sub>0</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.39 | 0.39 | 0.39 | [0.3 0.46] |  | 0.41 | 0.41 | 0.41 | [0.34 0.48] |  | 0.4 | 0.4 | 0.4 | [0.37 0.43] |  | 0.36 | 0.36 | 0.36 | [0.33 0.39] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/between_events_single_path_m6.5_20km_3s_hist.png) | ![5s](resources/between_events_single_path_m6.5_20km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/between_events_single_path_m6.5_20km_7.5s_hist.png) | ![10s](resources/between_events_single_path_m6.5_20km_10s_hist.png) |


### 40.0 km M6.5 Between-events, single-path Results
*[(top)](#table-of-contents)*

![Between-events, single-path Variability](resources/between_events_single_path_m6.5_40km_std_dev.png)

| 3s &tau;<sub>0</sub> | Total | Mean | Median | Range | 5s &tau;<sub>0</sub> | Total | Mean | Median | Range | 7.5s &tau;<sub>0</sub> | Total | Mean | Median | Range | 10s &tau;<sub>0</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.45 | 0.45 | 0.45 | [0.38 0.56] |  | 0.47 | 0.47 | 0.47 | [0.4 0.54] |  | 0.39 | 0.39 | 0.4 | [0.33 0.43] |  | 0.39 | 0.39 | 0.39 | [0.33 0.44] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/between_events_single_path_m6.5_40km_3s_hist.png) | ![5s](resources/between_events_single_path_m6.5_40km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/between_events_single_path_m6.5_40km_7.5s_hist.png) | ![10s](resources/between_events_single_path_m6.5_40km_10s_hist.png) |


### 80.0 km M6.5 Between-events, single-path Results
*[(top)](#table-of-contents)*

![Between-events, single-path Variability](resources/between_events_single_path_m6.5_80km_std_dev.png)

| 3s &tau;<sub>0</sub> | Total | Mean | Median | Range | 5s &tau;<sub>0</sub> | Total | Mean | Median | Range | 7.5s &tau;<sub>0</sub> | Total | Mean | Median | Range | 10s &tau;<sub>0</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.49 | 0.49 | 0.49 | [0.42 0.58] |  | 0.5 | 0.5 | 0.5 | [0.45 0.56] |  | 0.43 | 0.43 | 0.43 | [0.39 0.45] |  | 0.38 | 0.38 | 0.38 | [0.34 0.43] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/between_events_single_path_m6.5_80km_3s_hist.png) | ![5s](resources/between_events_single_path_m6.5_80km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/between_events_single_path_m6.5_80km_7.5s_hist.png) | ![10s](resources/between_events_single_path_m6.5_80km_10s_hist.png) |


### 160.0 km M6.5 Between-events, single-path Results
*[(top)](#table-of-contents)*

![Between-events, single-path Variability](resources/between_events_single_path_m6.5_160km_std_dev.png)

| 3s &tau;<sub>0</sub> | Total | Mean | Median | Range | 5s &tau;<sub>0</sub> | Total | Mean | Median | Range | 7.5s &tau;<sub>0</sub> | Total | Mean | Median | Range | 10s &tau;<sub>0</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.33 | 0.33 | 0.33 | [0.28 0.38] |  | 0.46 | 0.46 | 0.45 | [0.42 0.54] |  | 0.43 | 0.43 | 0.44 | [0.38 0.46] |  | 0.42 | 0.42 | 0.42 | [0.39 0.45] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/between_events_single_path_m6.5_160km_3s_hist.png) | ![5s](resources/between_events_single_path_m6.5_160km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/between_events_single_path_m6.5_160km_7.5s_hist.png) | ![10s](resources/between_events_single_path_m6.5_160km_10s_hist.png) |


### 20.0 km M7 Between-events, single-path Results
*[(top)](#table-of-contents)*

![Between-events, single-path Variability](resources/between_events_single_path_m7_20km_std_dev.png)

| 3s &tau;<sub>0</sub> | Total | Mean | Median | Range | 5s &tau;<sub>0</sub> | Total | Mean | Median | Range | 7.5s &tau;<sub>0</sub> | Total | Mean | Median | Range | 10s &tau;<sub>0</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.31 | 0.31 | 0.31 | [0.23 0.37] |  | 0.33 | 0.33 | 0.33 | [0.23 0.39] |  | 0.4 | 0.4 | 0.41 | [0.32 0.47] |  | 0.42 | 0.42 | 0.4 | [0.34 0.51] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/between_events_single_path_m7_20km_3s_hist.png) | ![5s](resources/between_events_single_path_m7_20km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/between_events_single_path_m7_20km_7.5s_hist.png) | ![10s](resources/between_events_single_path_m7_20km_10s_hist.png) |


### 40.0 km M7 Between-events, single-path Results
*[(top)](#table-of-contents)*

![Between-events, single-path Variability](resources/between_events_single_path_m7_40km_std_dev.png)

| 3s &tau;<sub>0</sub> | Total | Mean | Median | Range | 5s &tau;<sub>0</sub> | Total | Mean | Median | Range | 7.5s &tau;<sub>0</sub> | Total | Mean | Median | Range | 10s &tau;<sub>0</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.33 | 0.33 | 0.33 | [0.27 0.39] |  | 0.38 | 0.38 | 0.38 | [0.3 0.47] |  | 0.39 | 0.4 | 0.41 | [0.31 0.46] |  | 0.45 | 0.45 | 0.44 | [0.37 0.56] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/between_events_single_path_m7_40km_3s_hist.png) | ![5s](resources/between_events_single_path_m7_40km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/between_events_single_path_m7_40km_7.5s_hist.png) | ![10s](resources/between_events_single_path_m7_40km_10s_hist.png) |


### 80.0 km M7 Between-events, single-path Results
*[(top)](#table-of-contents)*

![Between-events, single-path Variability](resources/between_events_single_path_m7_80km_std_dev.png)

| 3s &tau;<sub>0</sub> | Total | Mean | Median | Range | 5s &tau;<sub>0</sub> | Total | Mean | Median | Range | 7.5s &tau;<sub>0</sub> | Total | Mean | Median | Range | 10s &tau;<sub>0</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.35 | 0.35 | 0.35 | [0.28 0.44] |  | 0.41 | 0.41 | 0.39 | [0.34 0.49] |  | 0.43 | 0.43 | 0.43 | [0.35 0.53] |  | 0.45 | 0.45 | 0.45 | [0.36 0.59] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/between_events_single_path_m7_80km_3s_hist.png) | ![5s](resources/between_events_single_path_m7_80km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/between_events_single_path_m7_80km_7.5s_hist.png) | ![10s](resources/between_events_single_path_m7_80km_10s_hist.png) |


### 160.0 km M7 Between-events, single-path Results
*[(top)](#table-of-contents)*

![Between-events, single-path Variability](resources/between_events_single_path_m7_160km_std_dev.png)

| 3s &tau;<sub>0</sub> | Total | Mean | Median | Range | 5s &tau;<sub>0</sub> | Total | Mean | Median | Range | 7.5s &tau;<sub>0</sub> | Total | Mean | Median | Range | 10s &tau;<sub>0</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.28 | 0.28 | 0.28 | [0.2 0.35] |  | 0.36 | 0.36 | 0.34 | [0.28 0.45] |  | 0.42 | 0.42 | 0.41 | [0.34 0.5] |  | 0.48 | 0.48 | 0.47 | [0.39 0.6] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/between_events_single_path_m7_160km_3s_hist.png) | ![5s](resources/between_events_single_path_m7_160km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/between_events_single_path_m7_160km_7.5s_hist.png) | ![10s](resources/between_events_single_path_m7_160km_10s_hist.png) |


## Between-events Variability
*[(top)](#table-of-contents)*

### Between-events Variability Methodology
*[(top)](#table-of-contents)*

Between-events variability, denoted &tau; in Al Atik (2010), is computed from ground motion residuals where the following quantities are held constant:

* Site *[1 unique]*
* Joyner-Boore Distance *[10 unique]*

and the following quantities vary:

* Rupture *[59 unique]*
* Rupture Strike *[36 unique]*
* Path *[1 unique]*

Standard deviation is computed and tabulated separately for each site and distance, then a total standard deviation is computed from all sitess and reported in the "**ALL SITES**" row. Results are reported separately for each distance

### Between-events Variability Mag-Distance Plots
*[(top)](#table-of-contents)*

| 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|
| ![Mag-Dist Plot](resources/between_events_mag_dist_std_dev_3s.png) | ![Mag-Dist Plot](resources/between_events_mag_dist_std_dev_5s.png) | ![Mag-Dist Plot](resources/between_events_mag_dist_std_dev_7.5s.png) | ![Mag-Dist Plot](resources/between_events_mag_dist_std_dev_10s.png) |

### 20.0 km M6.5 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m6.5_20km_std_dev.png)

| 3s &tau; | Total | Mean | Median | Range | 5s &tau; | Total | Mean | Median | Range | 7.5s &tau; | Total | Mean | Median | Range | 10s &tau; | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.44 | 0.44 | 0.44 | [0.44 0.44] |  | 0.46 | 0.46 | 0.46 | [0.46 0.46] |  | 0.46 | 0.46 | 0.46 | [0.46 0.46] |  | 0.42 | 0.42 | 0.42 | [0.42 0.42] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/between_events_m6.5_20km_3s_hist.png) | ![5s](resources/between_events_m6.5_20km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/between_events_m6.5_20km_7.5s_hist.png) | ![10s](resources/between_events_m6.5_20km_10s_hist.png) |


### 40.0 km M6.5 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m6.5_40km_std_dev.png)

| 3s &tau; | Total | Mean | Median | Range | 5s &tau; | Total | Mean | Median | Range | 7.5s &tau; | Total | Mean | Median | Range | 10s &tau; | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.52 | 0.52 | 0.52 | [0.52 0.52] |  | 0.52 | 0.52 | 0.52 | [0.52 0.52] |  | 0.43 | 0.43 | 0.43 | [0.43 0.43] |  | 0.44 | 0.44 | 0.44 | [0.44 0.44] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/between_events_m6.5_40km_3s_hist.png) | ![5s](resources/between_events_m6.5_40km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/between_events_m6.5_40km_7.5s_hist.png) | ![10s](resources/between_events_m6.5_40km_10s_hist.png) |


### 80.0 km M6.5 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m6.5_80km_std_dev.png)

| 3s &tau; | Total | Mean | Median | Range | 5s &tau; | Total | Mean | Median | Range | 7.5s &tau; | Total | Mean | Median | Range | 10s &tau; | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.54 | 0.54 | 0.54 | [0.54 0.54] |  | 0.55 | 0.55 | 0.55 | [0.55 0.55] |  | 0.47 | 0.47 | 0.47 | [0.47 0.47] |  | 0.46 | 0.46 | 0.46 | [0.46 0.46] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/between_events_m6.5_80km_3s_hist.png) | ![5s](resources/between_events_m6.5_80km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/between_events_m6.5_80km_7.5s_hist.png) | ![10s](resources/between_events_m6.5_80km_10s_hist.png) |


### 160.0 km M6.5 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m6.5_160km_std_dev.png)

| 3s &tau; | Total | Mean | Median | Range | 5s &tau; | Total | Mean | Median | Range | 7.5s &tau; | Total | Mean | Median | Range | 10s &tau; | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.39 | 0.39 | 0.39 | [0.39 0.39] |  | 0.5 | 0.5 | 0.5 | [0.5 0.5] |  | 0.48 | 0.48 | 0.48 | [0.48 0.48] |  | 0.48 | 0.48 | 0.48 | [0.48 0.48] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/between_events_m6.5_160km_3s_hist.png) | ![5s](resources/between_events_m6.5_160km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/between_events_m6.5_160km_7.5s_hist.png) | ![10s](resources/between_events_m6.5_160km_10s_hist.png) |


### 20.0 km M7 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m7_20km_std_dev.png)

| 3s &tau; | Total | Mean | Median | Range | 5s &tau; | Total | Mean | Median | Range | 7.5s &tau; | Total | Mean | Median | Range | 10s &tau; | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.42 | 0.42 | 0.42 | [0.42 0.42] |  | 0.44 | 0.44 | 0.44 | [0.44 0.44] |  | 0.49 | 0.49 | 0.49 | [0.49 0.49] |  | 0.48 | 0.48 | 0.48 | [0.48 0.48] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/between_events_m7_20km_3s_hist.png) | ![5s](resources/between_events_m7_20km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/between_events_m7_20km_7.5s_hist.png) | ![10s](resources/between_events_m7_20km_10s_hist.png) |


### 40.0 km M7 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m7_40km_std_dev.png)

| 3s &tau; | Total | Mean | Median | Range | 5s &tau; | Total | Mean | Median | Range | 7.5s &tau; | Total | Mean | Median | Range | 10s &tau; | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.44 | 0.44 | 0.44 | [0.44 0.44] |  | 0.47 | 0.47 | 0.47 | [0.47 0.47] |  | 0.46 | 0.46 | 0.46 | [0.46 0.46] |  | 0.51 | 0.51 | 0.51 | [0.51 0.51] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/between_events_m7_40km_3s_hist.png) | ![5s](resources/between_events_m7_40km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/between_events_m7_40km_7.5s_hist.png) | ![10s](resources/between_events_m7_40km_10s_hist.png) |


### 80.0 km M7 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m7_80km_std_dev.png)

| 3s &tau; | Total | Mean | Median | Range | 5s &tau; | Total | Mean | Median | Range | 7.5s &tau; | Total | Mean | Median | Range | 10s &tau; | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.43 | 0.43 | 0.43 | [0.43 0.43] |  | 0.49 | 0.49 | 0.49 | [0.49 0.49] |  | 0.5 | 0.5 | 0.5 | [0.5 0.5] |  | 0.53 | 0.53 | 0.53 | [0.53 0.53] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/between_events_m7_80km_3s_hist.png) | ![5s](resources/between_events_m7_80km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/between_events_m7_80km_7.5s_hist.png) | ![10s](resources/between_events_m7_80km_10s_hist.png) |


### 160.0 km M7 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m7_160km_std_dev.png)

| 3s &tau; | Total | Mean | Median | Range | 5s &tau; | Total | Mean | Median | Range | 7.5s &tau; | Total | Mean | Median | Range | 10s &tau; | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.37 | 0.37 | 0.37 | [0.37 0.37] |  | 0.44 | 0.44 | 0.44 | [0.44 0.44] |  | 0.49 | 0.49 | 0.49 | [0.49 0.49] |  | 0.55 | 0.55 | 0.55 | [0.55 0.55] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/between_events_m7_160km_3s_hist.png) | ![5s](resources/between_events_m7_160km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/between_events_m7_160km_7.5s_hist.png) | ![10s](resources/between_events_m7_160km_10s_hist.png) |


