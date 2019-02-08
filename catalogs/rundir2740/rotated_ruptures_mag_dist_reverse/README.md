# Bruce 2740 Rotated Rupture Variability, Reverse

This exercise uses translations and rotations to estimate ground motion variability from different sources. We begin by selecting a subset of similar ruptures which match a set of criteria (in this case, Reverse, Dip=45). Each rupture is then reoriented such that its strike (following the Aki & Richards 1980 convention) is 0 degrees (due North, dipping to the right for normal or reverse ruptures). For each site, ruptures are translated such that their scalar seismic moment centroid is directly North of the site, and their 3-dimensional distance (Rrup) is as specified (we consider 8 distance[s] here).

We then  perform various rotations. We rotate the rupture in place around its centroid, holding the site-to-source centroid path and Rrup constant (henceforth 'Rupture Strike'). We also rotate ruptures around the site, holding Rrup and source orientation relative to the site constant but sampling different various paths (henceforth 'Path'). We do this for each unique combination of Rupture Strike, Path, Distance, Site, and Rupture.

*NOTE: This page uses the SCEC BBP to simulate a 1-dimensional velocity structure. Thus we expect no path variability, and plots of path variabilitiy are included only as verification of the method.*

[RSQSim Catalog Details](../#bruce-2740)

## Table Of Contents
* [Rupture Rotation Parameters](#rupture-rotation-parameters)
* [Reverse RSQSim Rupture Match Criteria](#reverse-rsqsim-rupture-match-criteria)
* [Sites](#sites)
* [Result Summary Table](#result-summary-table)
  * [Mag-Dist Plots](#mag-dist-plots)
  * [M6.5 Result Summary Table](#m65-result-summary-table)
  * [M7 Result Summary Table](#m7-result-summary-table)
  * [M7.5 Result Summary Table](#m75-result-summary-table)
* [Source-strike Variability](#source-strike-variability)
  * [Source-strike Variability Methodology](#source-strike-variability-methodology)
  * [Source-strike Variability Mag-Distance Plots](#source-strike-variability-mag-distance-plots)
  * [20.0 km M6.5 Source-strike Results](#200-km-m65-source-strike-results)
  * [60.0 km M6.5 Source-strike Results](#600-km-m65-source-strike-results)
  * [120.0 km M6.5 Source-strike Results](#1200-km-m65-source-strike-results)
  * [20.0 km M7 Source-strike Results](#200-km-m7-source-strike-results)
  * [60.0 km M7 Source-strike Results](#600-km-m7-source-strike-results)
  * [120.0 km M7 Source-strike Results](#1200-km-m7-source-strike-results)
  * [20.0 km M7.5 Source-strike Results](#200-km-m75-source-strike-results)
  * [60.0 km M7.5 Source-strike Results](#600-km-m75-source-strike-results)
  * [120.0 km M7.5 Source-strike Results](#1200-km-m75-source-strike-results)
* [Within-event, single-site Variability](#within-event-single-site-variability)
  * [Within-event, single-site Variability Methodology](#within-event-single-site-variability-methodology)
  * [Within-event, single-site Variability Mag-Distance Plots](#within-event-single-site-variability-mag-distance-plots)
  * [20.0 km M6.5 Within-event, single-site Results](#200-km-m65-within-event-single-site-results)
  * [60.0 km M6.5 Within-event, single-site Results](#600-km-m65-within-event-single-site-results)
  * [120.0 km M6.5 Within-event, single-site Results](#1200-km-m65-within-event-single-site-results)
  * [20.0 km M7 Within-event, single-site Results](#200-km-m7-within-event-single-site-results)
  * [60.0 km M7 Within-event, single-site Results](#600-km-m7-within-event-single-site-results)
  * [120.0 km M7 Within-event, single-site Results](#1200-km-m7-within-event-single-site-results)
  * [20.0 km M7.5 Within-event, single-site Results](#200-km-m75-within-event-single-site-results)
  * [60.0 km M7.5 Within-event, single-site Results](#600-km-m75-within-event-single-site-results)
  * [120.0 km M7.5 Within-event, single-site Results](#1200-km-m75-within-event-single-site-results)
* [Between-events Variability](#between-events-variability)
  * [Between-events Variability Methodology](#between-events-variability-methodology)
  * [Between-events Variability Mag-Distance Plots](#between-events-variability-mag-distance-plots)
  * [20.0 km M6.5 Between-events Results](#200-km-m65-between-events-results)
  * [60.0 km M6.5 Between-events Results](#600-km-m65-between-events-results)
  * [120.0 km M6.5 Between-events Results](#1200-km-m65-between-events-results)
  * [20.0 km M7 Between-events Results](#200-km-m7-between-events-results)
  * [60.0 km M7 Between-events Results](#600-km-m7-between-events-results)
  * [120.0 km M7 Between-events Results](#1200-km-m7-between-events-results)
  * [20.0 km M7.5 Between-events Results](#200-km-m75-between-events-results)
  * [60.0 km M7.5 Between-events Results](#600-km-m75-between-events-results)
  * [120.0 km M7.5 Between-events Results](#1200-km-m75-between-events-results)
## Rupture Rotation Parameters

| Quantity | Variations | Description |
|-----|-----|-----|
| Rupture | 62 - 100 | Unique (but similar in faulting style and magnitude) ruptures which match the given scenario. |
| Site | 1 | Unique site locations. If 3-d, each will have unique velocity profiles. |
| Rupture Strike | 36 | Rupture strike conforming to the Aki & Richards (1980) convention, where dipping faults dip to the right of the rupture. If path rotation is also performed, this azimuth is relative to the path. |
| Path | 1 | Path from the site to the centroid of the rupture, in azimuthal degrees (0 is North) |
| Distance | 20.0, 40.0, 60.0, 80.0, 100.0, 120.0, 140.0, 160.0 km | 3-dimensional distance between the site and the rupture surface. |
| **Total # Simulations** | **28800** | Total number of combinations of the above. |

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

### Mag-Dist Plots
*[(top)](#table-of-contents)*

| Type | Notation | 3s Std. Dev. | 5s Std. Dev. | 7.5s Std. Dev. | 10s Std. Dev. |
|-----|-----|-----|-----|-----|-----|
| Source-strike | &phi;<sub>s</sub> | ![Mag-Dist Plot](resources/source_strike_mag_dist_std_dev_3s_sim.png) | ![Mag-Dist Plot](resources/source_strike_mag_dist_std_dev_5s_sim.png) | ![Mag-Dist Plot](resources/source_strike_mag_dist_std_dev_7.5s_sim.png) | ![Mag-Dist Plot](resources/source_strike_mag_dist_std_dev_10s_sim.png) |
| Within-event, single-site | &phi;<sub>SS</sub> | ![Mag-Dist Plot](resources/within_event_ss_mag_dist_std_dev_3s_sim.png) | ![Mag-Dist Plot](resources/within_event_ss_mag_dist_std_dev_5s_sim.png) | ![Mag-Dist Plot](resources/within_event_ss_mag_dist_std_dev_7.5s_sim.png) | ![Mag-Dist Plot](resources/within_event_ss_mag_dist_std_dev_10s_sim.png) |
| Between-events | &tau; | ![Mag-Dist Plot](resources/between_events_mag_dist_std_dev_3s_sim.png) | ![Mag-Dist Plot](resources/between_events_mag_dist_std_dev_5s_sim.png) | ![Mag-Dist Plot](resources/between_events_mag_dist_std_dev_7.5s_sim.png) | ![Mag-Dist Plot](resources/between_events_mag_dist_std_dev_10s_sim.png) |

### M6.5 Result Summary Table
*[(top)](#table-of-contents)*

| Type | Notation | Distance | 3s Std. Dev. | 5s Std. Dev. | 7.5s Std. Dev. | 10s Std. Dev. |
|-----|-----|-----|-----|-----|-----|-----|
| Source-strike | &phi;<sub>s</sub> | 20 km | 0.41 | 0.42 | 0.43 | 0.39 |
| Source-strike | &phi;<sub>s</sub> | 40 km | 0.44 | 0.45 | 0.43 | 0.39 |
| Source-strike | &phi;<sub>s</sub> | 60 km | 0.44 | 0.45 | 0.48 | 0.4 |
| Source-strike | &phi;<sub>s</sub> | 80 km | 0.44 | 0.48 | 0.46 | 0.43 |
| Source-strike | &phi;<sub>s</sub> | 100 km | 0.44 | 0.48 | 0.47 | 0.42 |
| Source-strike | &phi;<sub>s</sub> | 120 km | 0.4 | 0.48 | 0.49 | 0.42 |
| Source-strike | &phi;<sub>s</sub> | 140 km | 0.38 | 0.48 | 0.49 | 0.43 |
| Source-strike | &phi;<sub>s</sub> | 160 km | 0.38 | 0.48 | 0.5 | 0.43 |
| Within-event, single-site | &phi;<sub>SS</sub> | 20 km | 0.41 | 0.42 | 0.43 | 0.39 |
| Within-event, single-site | &phi;<sub>SS</sub> | 40 km | 0.44 | 0.45 | 0.43 | 0.39 |
| Within-event, single-site | &phi;<sub>SS</sub> | 60 km | 0.44 | 0.45 | 0.48 | 0.4 |
| Within-event, single-site | &phi;<sub>SS</sub> | 80 km | 0.44 | 0.48 | 0.46 | 0.43 |
| Within-event, single-site | &phi;<sub>SS</sub> | 100 km | 0.44 | 0.48 | 0.47 | 0.42 |
| Within-event, single-site | &phi;<sub>SS</sub> | 120 km | 0.4 | 0.48 | 0.49 | 0.42 |
| Within-event, single-site | &phi;<sub>SS</sub> | 140 km | 0.38 | 0.48 | 0.49 | 0.43 |
| Within-event, single-site | &phi;<sub>SS</sub> | 160 km | 0.38 | 0.48 | 0.5 | 0.43 |
| Between-events | &tau; | 20 km | 0.25 | 0.28 | 0.29 | 0.28 |
| Between-events | &tau; | 40 km | 0.3 | 0.34 | 0.26 | 0.28 |
| Between-events | &tau; | 60 km | 0.32 | 0.31 | 0.33 | 0.25 |
| Between-events | &tau; | 80 km | 0.33 | 0.36 | 0.3 | 0.29 |
| Between-events | &tau; | 100 km | 0.27 | 0.34 | 0.28 | 0.3 |
| Between-events | &tau; | 120 km | 0.19 | 0.33 | 0.31 | 0.28 |
| Between-events | &tau; | 140 km | 0.19 | 0.31 | 0.3 | 0.27 |
| Between-events | &tau; | 160 km | 0.19 | 0.31 | 0.31 | 0.3 |

### M7 Result Summary Table
*[(top)](#table-of-contents)*

| Type | Notation | Distance | 3s Std. Dev. | 5s Std. Dev. | 7.5s Std. Dev. | 10s Std. Dev. |
|-----|-----|-----|-----|-----|-----|-----|
| Source-strike | &phi;<sub>s</sub> | 20 km | 0.43 | 0.4 | 0.39 | 0.38 |
| Source-strike | &phi;<sub>s</sub> | 40 km | 0.42 | 0.45 | 0.39 | 0.39 |
| Source-strike | &phi;<sub>s</sub> | 60 km | 0.42 | 0.43 | 0.45 | 0.41 |
| Source-strike | &phi;<sub>s</sub> | 80 km | 0.41 | 0.47 | 0.41 | 0.44 |
| Source-strike | &phi;<sub>s</sub> | 100 km | 0.38 | 0.45 | 0.42 | 0.43 |
| Source-strike | &phi;<sub>s</sub> | 120 km | 0.39 | 0.45 | 0.43 | 0.42 |
| Source-strike | &phi;<sub>s</sub> | 140 km | 0.39 | 0.45 | 0.43 | 0.44 |
| Source-strike | &phi;<sub>s</sub> | 160 km | 0.4 | 0.44 | 0.44 | 0.44 |
| Within-event, single-site | &phi;<sub>SS</sub> | 20 km | 0.43 | 0.4 | 0.39 | 0.38 |
| Within-event, single-site | &phi;<sub>SS</sub> | 40 km | 0.42 | 0.45 | 0.39 | 0.39 |
| Within-event, single-site | &phi;<sub>SS</sub> | 60 km | 0.42 | 0.43 | 0.45 | 0.41 |
| Within-event, single-site | &phi;<sub>SS</sub> | 80 km | 0.41 | 0.47 | 0.41 | 0.44 |
| Within-event, single-site | &phi;<sub>SS</sub> | 100 km | 0.38 | 0.45 | 0.42 | 0.43 |
| Within-event, single-site | &phi;<sub>SS</sub> | 120 km | 0.39 | 0.45 | 0.43 | 0.42 |
| Within-event, single-site | &phi;<sub>SS</sub> | 140 km | 0.39 | 0.45 | 0.43 | 0.44 |
| Within-event, single-site | &phi;<sub>SS</sub> | 160 km | 0.4 | 0.44 | 0.44 | 0.44 |
| Between-events | &tau; | 20 km | 0.2 | 0.19 | 0.22 | 0.24 |
| Between-events | &tau; | 40 km | 0.22 | 0.22 | 0.18 | 0.24 |
| Between-events | &tau; | 60 km | 0.22 | 0.19 | 0.22 | 0.2 |
| Between-events | &tau; | 80 km | 0.2 | 0.22 | 0.22 | 0.24 |
| Between-events | &tau; | 100 km | 0.17 | 0.2 | 0.19 | 0.26 |
| Between-events | &tau; | 120 km | 0.17 | 0.2 | 0.23 | 0.23 |
| Between-events | &tau; | 140 km | 0.16 | 0.2 | 0.21 | 0.22 |
| Between-events | &tau; | 160 km | 0.15 | 0.19 | 0.21 | 0.25 |

### M7.5 Result Summary Table
*[(top)](#table-of-contents)*

| Type | Notation | Distance | 3s Std. Dev. | 5s Std. Dev. | 7.5s Std. Dev. | 10s Std. Dev. |
|-----|-----|-----|-----|-----|-----|-----|
| Source-strike | &phi;<sub>s</sub> | 20 km | 0.41 | 0.37 | 0.37 | 0.37 |
| Source-strike | &phi;<sub>s</sub> | 40 km | 0.41 | 0.43 | 0.35 | 0.37 |
| Source-strike | &phi;<sub>s</sub> | 60 km | 0.42 | 0.39 | 0.38 | 0.36 |
| Source-strike | &phi;<sub>s</sub> | 80 km | 0.38 | 0.39 | 0.36 | 0.38 |
| Source-strike | &phi;<sub>s</sub> | 100 km | 0.34 | 0.38 | 0.35 | 0.39 |
| Source-strike | &phi;<sub>s</sub> | 120 km | 0.4 | 0.37 | 0.37 | 0.36 |
| Source-strike | &phi;<sub>s</sub> | 140 km | 0.46 | 0.37 | 0.35 | 0.37 |
| Source-strike | &phi;<sub>s</sub> | 160 km | 0.49 | 0.37 | 0.36 | 0.39 |
| Within-event, single-site | &phi;<sub>SS</sub> | 20 km | 0.41 | 0.37 | 0.37 | 0.37 |
| Within-event, single-site | &phi;<sub>SS</sub> | 40 km | 0.41 | 0.43 | 0.35 | 0.37 |
| Within-event, single-site | &phi;<sub>SS</sub> | 60 km | 0.42 | 0.39 | 0.38 | 0.36 |
| Within-event, single-site | &phi;<sub>SS</sub> | 80 km | 0.38 | 0.39 | 0.36 | 0.38 |
| Within-event, single-site | &phi;<sub>SS</sub> | 100 km | 0.34 | 0.38 | 0.35 | 0.39 |
| Within-event, single-site | &phi;<sub>SS</sub> | 120 km | 0.4 | 0.37 | 0.37 | 0.36 |
| Within-event, single-site | &phi;<sub>SS</sub> | 140 km | 0.46 | 0.37 | 0.35 | 0.37 |
| Within-event, single-site | &phi;<sub>SS</sub> | 160 km | 0.49 | 0.37 | 0.36 | 0.39 |
| Between-events | &tau; | 20 km | 0.09 | 0.13 | 0.15 | 0.19 |
| Between-events | &tau; | 40 km | 0.1 | 0.14 | 0.16 | 0.18 |
| Between-events | &tau; | 60 km | 0.12 | 0.15 | 0.17 | 0.19 |
| Between-events | &tau; | 80 km | 0.11 | 0.15 | 0.16 | 0.2 |
| Between-events | &tau; | 100 km | 0.1 | 0.15 | 0.17 | 0.2 |
| Between-events | &tau; | 120 km | 0.12 | 0.14 | 0.16 | 0.18 |
| Between-events | &tau; | 140 km | 0.13 | 0.14 | 0.16 | 0.19 |
| Between-events | &tau; | 160 km | 0.13 | 0.13 | 0.17 | 0.19 |

## Source-strike Variability
*[(top)](#table-of-contents)*

### Source-strike Variability Methodology
*[(top)](#table-of-contents)*

Source-strike variability, denoted &phi;<sub>s</sub> in Aki & Richards (1980), is computed separately for each:

* Site *[1 unique]*
* Distance *[8 unique]*

Then, for each unique combination of:

* Rupture *[100 unique]*
* Path *[1 unique]*

we compute residuals, &delta;W<sub>es</sub>, of the natural-log ground motions (relative to the median), computed across all 36 combinations of:

* Rupture Strike *[36 unique]*

We take &phi;<sub>s</sub> to be the standard deviation of all residuals, &delta;W<sub>es</sub>, across each combination of Rupture,Path.

Here is an exmample with 5 rotations, which would be repeated for each combination of [Rupture, Path]. The site is shown with a blue square, and initially oriented rupture in bold with its hypocenter as a red star and centroid a green circle. Rotations of that rupture are in gray:

![Example](resources/example_source_strike.png)


### Source-strike Variability Mag-Distance Plots
*[(top)](#table-of-contents)*

| Plot Type | 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|-----|
| **Simulated** | ![Mag-Dist Plot](resources/source_strike_mag_dist_std_dev_3s_sim.png) | ![Mag-Dist Plot](resources/source_strike_mag_dist_std_dev_5s_sim.png) | ![Mag-Dist Plot](resources/source_strike_mag_dist_std_dev_7.5s_sim.png) | ![Mag-Dist Plot](resources/source_strike_mag_dist_std_dev_10s_sim.png) |
| **GMPE** | ![Mag-Dist Plot](resources/source_strike_mag_dist_std_dev_3s_gmpe.png) | ![Mag-Dist Plot](resources/source_strike_mag_dist_std_dev_5s_gmpe.png) | ![Mag-Dist Plot](resources/source_strike_mag_dist_std_dev_7.5s_gmpe.png) | ![Mag-Dist Plot](resources/source_strike_mag_dist_std_dev_10s_gmpe.png) |
| **Simulated - GMPE** | ![Mag-Dist Plot](resources/source_strike_mag_dist_std_dev_3s_sim_gmpe_diff.png) | ![Mag-Dist Plot](resources/source_strike_mag_dist_std_dev_5s_sim_gmpe_diff.png) | ![Mag-Dist Plot](resources/source_strike_mag_dist_std_dev_7.5s_sim_gmpe_diff.png) | ![Mag-Dist Plot](resources/source_strike_mag_dist_std_dev_10s_sim_gmpe_diff.png) |
| **Sim Median SA** | ![Mag-Dist Plot](resources/source_strike_mag_dist_std_dev_3s_sim_median.png) | ![Mag-Dist Plot](resources/source_strike_mag_dist_std_dev_5s_sim_median.png) | ![Mag-Dist Plot](resources/source_strike_mag_dist_std_dev_7.5s_sim_median.png) | ![Mag-Dist Plot](resources/source_strike_mag_dist_std_dev_10s_sim_median.png) |

### 20.0 km M6.5 Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_m6.5_20km_std_dev.png)

| 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.41 | 0.39 | 0.4 | [0.17 0.6] |  | 0.42 | 0.39 | 0.38 | [0.17 0.67] |  | 0.43 | 0.4 | 0.38 | [0.15 0.72] |  | 0.39 | 0.37 | 0.36 | [0.2 0.59] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m6.5_20km_3s_hist.png) | ![5s](resources/source_strike_m6.5_20km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m6.5_20km_7.5s_hist.png) | ![10s](resources/source_strike_m6.5_20km_10s_hist.png) |

| 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|
| ![Scatter](resources/source_strike_scatter__v_prop_3s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_5s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_7.5s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_10s_std_dev.png) |
| ![Scatter](resources/source_strike_scatter__v_prop_3s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_5s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_7.5s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_10s_residual.png) |


### 60.0 km M6.5 Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_m6.5_60km_std_dev.png)

| 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.44 | 0.42 | 0.42 | [0.2 0.63] |  | 0.45 | 0.43 | 0.43 | [0.2 0.73] |  | 0.48 | 0.45 | 0.43 | [0.24 0.77] |  | 0.4 | 0.39 | 0.39 | [0.23 0.58] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m6.5_60km_3s_hist.png) | ![5s](resources/source_strike_m6.5_60km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m6.5_60km_7.5s_hist.png) | ![10s](resources/source_strike_m6.5_60km_10s_hist.png) |

| 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|
| ![Scatter](resources/source_strike_scatter__v_prop_3s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_5s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_7.5s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_10s_std_dev.png) |
| ![Scatter](resources/source_strike_scatter__v_prop_3s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_5s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_7.5s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_10s_residual.png) |


### 120.0 km M6.5 Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_m6.5_120km_std_dev.png)

| 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.4 | 0.39 | 0.39 | [0.2 0.62] |  | 0.48 | 0.46 | 0.45 | [0.2 0.8] |  | 0.49 | 0.46 | 0.45 | [0.22 0.87] |  | 0.42 | 0.41 | 0.4 | [0.23 0.61] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m6.5_120km_3s_hist.png) | ![5s](resources/source_strike_m6.5_120km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m6.5_120km_7.5s_hist.png) | ![10s](resources/source_strike_m6.5_120km_10s_hist.png) |

| 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|
| ![Scatter](resources/source_strike_scatter__v_prop_3s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_5s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_7.5s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_10s_std_dev.png) |
| ![Scatter](resources/source_strike_scatter__v_prop_3s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_5s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_7.5s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_10s_residual.png) |


### 20.0 km M7 Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_m7_20km_std_dev.png)

| 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.43 | 0.42 | 0.43 | [0.2 0.71] |  | 0.4 | 0.39 | 0.39 | [0.18 0.68] |  | 0.39 | 0.38 | 0.37 | [0.15 0.6] |  | 0.38 | 0.36 | 0.35 | [0.19 0.6] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m7_20km_3s_hist.png) | ![5s](resources/source_strike_m7_20km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m7_20km_7.5s_hist.png) | ![10s](resources/source_strike_m7_20km_10s_hist.png) |

| 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|
| ![Scatter](resources/source_strike_scatter__v_prop_3s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_5s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_7.5s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_10s_std_dev.png) |
| ![Scatter](resources/source_strike_scatter__v_prop_3s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_5s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_7.5s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_10s_residual.png) |


### 60.0 km M7 Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_m7_60km_std_dev.png)

| 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.42 | 0.41 | 0.41 | [0.25 0.68] |  | 0.43 | 0.42 | 0.42 | [0.21 0.67] |  | 0.45 | 0.43 | 0.42 | [0.19 0.7] |  | 0.41 | 0.4 | 0.4 | [0.19 0.66] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m7_60km_3s_hist.png) | ![5s](resources/source_strike_m7_60km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m7_60km_7.5s_hist.png) | ![10s](resources/source_strike_m7_60km_10s_hist.png) |

| 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|
| ![Scatter](resources/source_strike_scatter__v_prop_3s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_5s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_7.5s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_10s_std_dev.png) |
| ![Scatter](resources/source_strike_scatter__v_prop_3s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_5s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_7.5s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_10s_residual.png) |


### 120.0 km M7 Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_m7_120km_std_dev.png)

| 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.39 | 0.38 | 0.37 | [0.22 0.59] |  | 0.45 | 0.44 | 0.44 | [0.2 0.69] |  | 0.43 | 0.42 | 0.42 | [0.19 0.68] |  | 0.42 | 0.41 | 0.4 | [0.21 0.72] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m7_120km_3s_hist.png) | ![5s](resources/source_strike_m7_120km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m7_120km_7.5s_hist.png) | ![10s](resources/source_strike_m7_120km_10s_hist.png) |

| 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|
| ![Scatter](resources/source_strike_scatter__v_prop_3s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_5s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_7.5s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_10s_std_dev.png) |
| ![Scatter](resources/source_strike_scatter__v_prop_3s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_5s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_7.5s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_10s_residual.png) |


### 20.0 km M7.5 Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_m7.5_20km_std_dev.png)

| 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.41 | 0.41 | 0.41 | [0.3 0.54] |  | 0.37 | 0.37 | 0.37 | [0.25 0.58] |  | 0.37 | 0.36 | 0.36 | [0.17 0.63] |  | 0.37 | 0.36 | 0.35 | [0.21 0.64] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m7.5_20km_3s_hist.png) | ![5s](resources/source_strike_m7.5_20km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m7.5_20km_7.5s_hist.png) | ![10s](resources/source_strike_m7.5_20km_10s_hist.png) |

| 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|
| ![Scatter](resources/source_strike_scatter__v_prop_3s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_5s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_7.5s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_10s_std_dev.png) |
| ![Scatter](resources/source_strike_scatter__v_prop_3s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_5s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_7.5s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_10s_residual.png) |


### 60.0 km M7.5 Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_m7.5_60km_std_dev.png)

| 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.42 | 0.41 | 0.41 | [0.3 0.54] |  | 0.39 | 0.38 | 0.38 | [0.21 0.56] |  | 0.38 | 0.37 | 0.36 | [0.17 0.66] |  | 0.36 | 0.35 | 0.34 | [0.21 0.55] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m7.5_60km_3s_hist.png) | ![5s](resources/source_strike_m7.5_60km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m7.5_60km_7.5s_hist.png) | ![10s](resources/source_strike_m7.5_60km_10s_hist.png) |

| 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|
| ![Scatter](resources/source_strike_scatter__v_prop_3s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_5s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_7.5s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_10s_std_dev.png) |
| ![Scatter](resources/source_strike_scatter__v_prop_3s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_5s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_7.5s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_10s_residual.png) |


### 120.0 km M7.5 Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_m7.5_120km_std_dev.png)

| 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.4 | 0.39 | 0.39 | [0.25 0.52] |  | 0.37 | 0.36 | 0.36 | [0.22 0.55] |  | 0.37 | 0.36 | 0.35 | [0.18 0.62] |  | 0.36 | 0.35 | 0.33 | [0.14 0.55] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m7.5_120km_3s_hist.png) | ![5s](resources/source_strike_m7.5_120km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m7.5_120km_7.5s_hist.png) | ![10s](resources/source_strike_m7.5_120km_10s_hist.png) |

| 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|
| ![Scatter](resources/source_strike_scatter__v_prop_3s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_5s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_7.5s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_10s_std_dev.png) |
| ![Scatter](resources/source_strike_scatter__v_prop_3s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_5s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_7.5s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_10s_residual.png) |


## Within-event, single-site Variability
*[(top)](#table-of-contents)*

### Within-event, single-site Variability Methodology
*[(top)](#table-of-contents)*

Within-event, single-site variability, denoted &phi;<sub>SS</sub> in Al Atik (2010), is computed separately for each:

* Site *[1 unique]*
* Distance *[8 unique]*

Then, for each unique combination of:

* Rupture *[100 unique]*

we compute residuals, &delta;W<sub>es</sub>, of the natural-log ground motions (relative to the median), computed across all 36 combinations of:

* Rupture Strike *[36 unique]*
* Path *[1 unique]*

We take &phi;<sub>SS</sub> to be the standard deviation of all residuals, &delta;W<sub>es</sub>, across each combination of Rupture.

Here is an exmample with 5 rotations, which would be repeated for each combination of [Rupture]. The site is shown with a blue square, and initially oriented rupture in bold with its hypocenter as a red star and centroid a green circle. Rotations of that rupture are in gray:

![Example](resources/example_within_event_ss.png)


### Within-event, single-site Variability Mag-Distance Plots
*[(top)](#table-of-contents)*

| Plot Type | 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|-----|
| **Simulated** | ![Mag-Dist Plot](resources/within_event_ss_mag_dist_std_dev_3s_sim.png) | ![Mag-Dist Plot](resources/within_event_ss_mag_dist_std_dev_5s_sim.png) | ![Mag-Dist Plot](resources/within_event_ss_mag_dist_std_dev_7.5s_sim.png) | ![Mag-Dist Plot](resources/within_event_ss_mag_dist_std_dev_10s_sim.png) |
| **GMPE** | ![Mag-Dist Plot](resources/within_event_ss_mag_dist_std_dev_3s_gmpe.png) | ![Mag-Dist Plot](resources/within_event_ss_mag_dist_std_dev_5s_gmpe.png) | ![Mag-Dist Plot](resources/within_event_ss_mag_dist_std_dev_7.5s_gmpe.png) | ![Mag-Dist Plot](resources/within_event_ss_mag_dist_std_dev_10s_gmpe.png) |
| **Simulated - GMPE** | ![Mag-Dist Plot](resources/within_event_ss_mag_dist_std_dev_3s_sim_gmpe_diff.png) | ![Mag-Dist Plot](resources/within_event_ss_mag_dist_std_dev_5s_sim_gmpe_diff.png) | ![Mag-Dist Plot](resources/within_event_ss_mag_dist_std_dev_7.5s_sim_gmpe_diff.png) | ![Mag-Dist Plot](resources/within_event_ss_mag_dist_std_dev_10s_sim_gmpe_diff.png) |
| **Sim Median SA** | ![Mag-Dist Plot](resources/within_event_ss_mag_dist_std_dev_3s_sim_median.png) | ![Mag-Dist Plot](resources/within_event_ss_mag_dist_std_dev_5s_sim_median.png) | ![Mag-Dist Plot](resources/within_event_ss_mag_dist_std_dev_7.5s_sim_median.png) | ![Mag-Dist Plot](resources/within_event_ss_mag_dist_std_dev_10s_sim_median.png) |

### 20.0 km M6.5 Within-event, single-site Results
*[(top)](#table-of-contents)*

![Within-event, single-site Variability](resources/within_event_ss_m6.5_20km_std_dev.png)

| 3s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 10s &phi;<sub>SS</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.41 | 0.39 | 0.4 | [0.17 0.6] |  | 0.42 | 0.39 | 0.38 | [0.17 0.67] |  | 0.43 | 0.4 | 0.38 | [0.15 0.72] |  | 0.39 | 0.37 | 0.36 | [0.2 0.59] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_ss_m6.5_20km_3s_hist.png) | ![5s](resources/within_event_ss_m6.5_20km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_ss_m6.5_20km_7.5s_hist.png) | ![10s](resources/within_event_ss_m6.5_20km_10s_hist.png) |

| 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|
| ![Scatter](resources/within_event_ss_scatter__v_prop_3s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_5s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_7.5s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_10s_std_dev.png) |
| ![Scatter](resources/within_event_ss_scatter__v_prop_3s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_5s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_7.5s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_10s_residual.png) |


### 60.0 km M6.5 Within-event, single-site Results
*[(top)](#table-of-contents)*

![Within-event, single-site Variability](resources/within_event_ss_m6.5_60km_std_dev.png)

| 3s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 10s &phi;<sub>SS</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.44 | 0.42 | 0.42 | [0.2 0.63] |  | 0.45 | 0.43 | 0.43 | [0.2 0.73] |  | 0.48 | 0.45 | 0.43 | [0.24 0.77] |  | 0.4 | 0.39 | 0.39 | [0.23 0.58] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_ss_m6.5_60km_3s_hist.png) | ![5s](resources/within_event_ss_m6.5_60km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_ss_m6.5_60km_7.5s_hist.png) | ![10s](resources/within_event_ss_m6.5_60km_10s_hist.png) |

| 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|
| ![Scatter](resources/within_event_ss_scatter__v_prop_3s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_5s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_7.5s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_10s_std_dev.png) |
| ![Scatter](resources/within_event_ss_scatter__v_prop_3s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_5s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_7.5s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_10s_residual.png) |


### 120.0 km M6.5 Within-event, single-site Results
*[(top)](#table-of-contents)*

![Within-event, single-site Variability](resources/within_event_ss_m6.5_120km_std_dev.png)

| 3s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 10s &phi;<sub>SS</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.4 | 0.39 | 0.39 | [0.2 0.62] |  | 0.48 | 0.46 | 0.45 | [0.2 0.8] |  | 0.49 | 0.46 | 0.45 | [0.22 0.87] |  | 0.42 | 0.41 | 0.4 | [0.23 0.61] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_ss_m6.5_120km_3s_hist.png) | ![5s](resources/within_event_ss_m6.5_120km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_ss_m6.5_120km_7.5s_hist.png) | ![10s](resources/within_event_ss_m6.5_120km_10s_hist.png) |

| 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|
| ![Scatter](resources/within_event_ss_scatter__v_prop_3s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_5s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_7.5s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_10s_std_dev.png) |
| ![Scatter](resources/within_event_ss_scatter__v_prop_3s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_5s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_7.5s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_10s_residual.png) |


### 20.0 km M7 Within-event, single-site Results
*[(top)](#table-of-contents)*

![Within-event, single-site Variability](resources/within_event_ss_m7_20km_std_dev.png)

| 3s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 10s &phi;<sub>SS</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.43 | 0.42 | 0.43 | [0.2 0.71] |  | 0.4 | 0.39 | 0.39 | [0.18 0.68] |  | 0.39 | 0.38 | 0.37 | [0.15 0.6] |  | 0.38 | 0.36 | 0.35 | [0.19 0.6] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_ss_m7_20km_3s_hist.png) | ![5s](resources/within_event_ss_m7_20km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_ss_m7_20km_7.5s_hist.png) | ![10s](resources/within_event_ss_m7_20km_10s_hist.png) |

| 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|
| ![Scatter](resources/within_event_ss_scatter__v_prop_3s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_5s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_7.5s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_10s_std_dev.png) |
| ![Scatter](resources/within_event_ss_scatter__v_prop_3s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_5s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_7.5s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_10s_residual.png) |


### 60.0 km M7 Within-event, single-site Results
*[(top)](#table-of-contents)*

![Within-event, single-site Variability](resources/within_event_ss_m7_60km_std_dev.png)

| 3s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 10s &phi;<sub>SS</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.42 | 0.41 | 0.41 | [0.25 0.68] |  | 0.43 | 0.42 | 0.42 | [0.21 0.67] |  | 0.45 | 0.43 | 0.42 | [0.19 0.7] |  | 0.41 | 0.4 | 0.4 | [0.19 0.66] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_ss_m7_60km_3s_hist.png) | ![5s](resources/within_event_ss_m7_60km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_ss_m7_60km_7.5s_hist.png) | ![10s](resources/within_event_ss_m7_60km_10s_hist.png) |

| 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|
| ![Scatter](resources/within_event_ss_scatter__v_prop_3s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_5s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_7.5s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_10s_std_dev.png) |
| ![Scatter](resources/within_event_ss_scatter__v_prop_3s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_5s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_7.5s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_10s_residual.png) |


### 120.0 km M7 Within-event, single-site Results
*[(top)](#table-of-contents)*

![Within-event, single-site Variability](resources/within_event_ss_m7_120km_std_dev.png)

| 3s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 10s &phi;<sub>SS</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.39 | 0.38 | 0.37 | [0.22 0.59] |  | 0.45 | 0.44 | 0.44 | [0.2 0.69] |  | 0.43 | 0.42 | 0.42 | [0.19 0.68] |  | 0.42 | 0.41 | 0.4 | [0.21 0.72] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_ss_m7_120km_3s_hist.png) | ![5s](resources/within_event_ss_m7_120km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_ss_m7_120km_7.5s_hist.png) | ![10s](resources/within_event_ss_m7_120km_10s_hist.png) |

| 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|
| ![Scatter](resources/within_event_ss_scatter__v_prop_3s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_5s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_7.5s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_10s_std_dev.png) |
| ![Scatter](resources/within_event_ss_scatter__v_prop_3s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_5s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_7.5s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_10s_residual.png) |


### 20.0 km M7.5 Within-event, single-site Results
*[(top)](#table-of-contents)*

![Within-event, single-site Variability](resources/within_event_ss_m7.5_20km_std_dev.png)

| 3s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 10s &phi;<sub>SS</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.41 | 0.41 | 0.41 | [0.3 0.54] |  | 0.37 | 0.37 | 0.37 | [0.25 0.58] |  | 0.37 | 0.36 | 0.36 | [0.17 0.63] |  | 0.37 | 0.36 | 0.35 | [0.21 0.64] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_ss_m7.5_20km_3s_hist.png) | ![5s](resources/within_event_ss_m7.5_20km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_ss_m7.5_20km_7.5s_hist.png) | ![10s](resources/within_event_ss_m7.5_20km_10s_hist.png) |

| 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|
| ![Scatter](resources/within_event_ss_scatter__v_prop_3s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_5s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_7.5s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_10s_std_dev.png) |
| ![Scatter](resources/within_event_ss_scatter__v_prop_3s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_5s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_7.5s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_10s_residual.png) |


### 60.0 km M7.5 Within-event, single-site Results
*[(top)](#table-of-contents)*

![Within-event, single-site Variability](resources/within_event_ss_m7.5_60km_std_dev.png)

| 3s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 10s &phi;<sub>SS</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.42 | 0.41 | 0.41 | [0.3 0.54] |  | 0.39 | 0.38 | 0.38 | [0.21 0.56] |  | 0.38 | 0.37 | 0.36 | [0.17 0.66] |  | 0.36 | 0.35 | 0.34 | [0.21 0.55] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_ss_m7.5_60km_3s_hist.png) | ![5s](resources/within_event_ss_m7.5_60km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_ss_m7.5_60km_7.5s_hist.png) | ![10s](resources/within_event_ss_m7.5_60km_10s_hist.png) |

| 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|
| ![Scatter](resources/within_event_ss_scatter__v_prop_3s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_5s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_7.5s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_10s_std_dev.png) |
| ![Scatter](resources/within_event_ss_scatter__v_prop_3s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_5s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_7.5s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_10s_residual.png) |


### 120.0 km M7.5 Within-event, single-site Results
*[(top)](#table-of-contents)*

![Within-event, single-site Variability](resources/within_event_ss_m7.5_120km_std_dev.png)

| 3s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 10s &phi;<sub>SS</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.4 | 0.39 | 0.39 | [0.25 0.52] |  | 0.37 | 0.36 | 0.36 | [0.22 0.55] |  | 0.37 | 0.36 | 0.35 | [0.18 0.62] |  | 0.36 | 0.35 | 0.33 | [0.14 0.55] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_ss_m7.5_120km_3s_hist.png) | ![5s](resources/within_event_ss_m7.5_120km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_ss_m7.5_120km_7.5s_hist.png) | ![10s](resources/within_event_ss_m7.5_120km_10s_hist.png) |

| 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|
| ![Scatter](resources/within_event_ss_scatter__v_prop_3s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_5s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_7.5s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_10s_std_dev.png) |
| ![Scatter](resources/within_event_ss_scatter__v_prop_3s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_5s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_7.5s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_10s_residual.png) |


## Between-events Variability
*[(top)](#table-of-contents)*

### Between-events Variability Methodology
*[(top)](#table-of-contents)*

Between-events variability, denoted &tau; in Al Atik (2010), is computed separately for each:

* Site *[1 unique]*
* Distance *[8 unique]*

We first compute the median natural-log ground motion, &delta;B<sub>e</sub>, for each combination of:

* Rupture *[100 unique]*

That median, &delta;B<sub>e</sub>, is computed across all 36 combinations of:

* Rupture Strike *[36 unique]*
* Path *[1 unique]*

We take &tau; to be the standard deviation of all &delta;B<sub>e</sub>.

Here is an exmample with 5 rotations, which would be repeated for each combination of [Rupture]. The site is shown with a blue square, and initially oriented rupture in bold with its hypocenter as a red star and centroid a green circle. Rotations of that rupture are in gray:

![Example](resources/example_between_events.png)


### Between-events Variability Mag-Distance Plots
*[(top)](#table-of-contents)*

| Plot Type | 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|-----|
| **Simulated** | ![Mag-Dist Plot](resources/between_events_mag_dist_std_dev_3s_sim.png) | ![Mag-Dist Plot](resources/between_events_mag_dist_std_dev_5s_sim.png) | ![Mag-Dist Plot](resources/between_events_mag_dist_std_dev_7.5s_sim.png) | ![Mag-Dist Plot](resources/between_events_mag_dist_std_dev_10s_sim.png) |
| **GMPE** | ![Mag-Dist Plot](resources/between_events_mag_dist_std_dev_3s_gmpe.png) | ![Mag-Dist Plot](resources/between_events_mag_dist_std_dev_5s_gmpe.png) | ![Mag-Dist Plot](resources/between_events_mag_dist_std_dev_7.5s_gmpe.png) | ![Mag-Dist Plot](resources/between_events_mag_dist_std_dev_10s_gmpe.png) |
| **Simulated - GMPE** | ![Mag-Dist Plot](resources/between_events_mag_dist_std_dev_3s_sim_gmpe_diff.png) | ![Mag-Dist Plot](resources/between_events_mag_dist_std_dev_5s_sim_gmpe_diff.png) | ![Mag-Dist Plot](resources/between_events_mag_dist_std_dev_7.5s_sim_gmpe_diff.png) | ![Mag-Dist Plot](resources/between_events_mag_dist_std_dev_10s_sim_gmpe_diff.png) |
| **Sim Median SA** | ![Mag-Dist Plot](resources/between_events_mag_dist_std_dev_3s_sim_median.png) | ![Mag-Dist Plot](resources/between_events_mag_dist_std_dev_5s_sim_median.png) | ![Mag-Dist Plot](resources/between_events_mag_dist_std_dev_7.5s_sim_median.png) | ![Mag-Dist Plot](resources/between_events_mag_dist_std_dev_10s_sim_median.png) |

### 20.0 km M6.5 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m6.5_20km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.25 | -3.99 | [-4.62 -3.31] | 0.28 | -4.8 | [-5.56 -4.16] | 0.29 | -5.51 | [-6.29 -4.82] | 0.28 | -6.13 | [-6.75 -5.51] |


### 60.0 km M6.5 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m6.5_60km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.32 | -4.94 | [-5.7 -4.18] | 0.31 | -5.6 | [-6.65 -4.95] | 0.33 | -6.3 | [-7.22 -5.54] | 0.25 | -6.91 | [-7.48 -6.3] |


### 120.0 km M6.5 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m6.5_120km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.19 | -5.47 | [-5.92 -4.91] | 0.33 | -6.1 | [-6.91 -5.42] | 0.31 | -6.77 | [-7.57 -6.08] | 0.28 | -7.33 | [-7.88 -6.67] |


### 20.0 km M7 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m7_20km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.2 | -3.52 | [-3.99 -2.99] | 0.19 | -4.27 | [-4.83 -3.86] | 0.22 | -4.76 | [-5.19 -4.35] | 0.24 | -5.3 | [-5.83 -4.77] |


### 60.0 km M7 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m7_60km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.22 | -4.44 | [-5.04 -3.88] | 0.19 | -4.99 | [-5.62 -4.57] | 0.22 | -5.46 | [-5.91 -4.87] | 0.2 | -6.07 | [-6.54 -5.67] |


### 120.0 km M7 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m7_120km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.17 | -4.82 | [-5.3 -4.34] | 0.2 | -5.54 | [-6.12 -5] | 0.23 | -5.9 | [-6.4 -5.43] | 0.23 | -6.42 | [-7.03 -5.86] |


### 20.0 km M7.5 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m7.5_20km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.09 | -2.96 | [-3.18 -2.75] | 0.13 | -3.69 | [-3.93 -3.34] | 0.15 | -4.23 | [-4.65 -3.97] | 0.19 | -4.73 | [-5.23 -4.33] |


### 60.0 km M7.5 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m7.5_60km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.12 | -3.79 | [-4.09 -3.53] | 0.15 | -4.37 | [-4.7 -4.02] | 0.17 | -4.8 | [-5.24 -4.36] | 0.19 | -5.42 | [-5.95 -5.03] |


### 120.0 km M7.5 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m7.5_120km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.12 | -4.08 | [-4.4 -3.86] | 0.14 | -4.9 | [-5.14 -4.53] | 0.16 | -5.29 | [-5.69 -4.93] | 0.18 | -5.78 | [-6.26 -5.46] |


