# Bruce 2585 1myr Rotated Rupture Variability, SS

This exercise uses translations and rotations to estimate ground motion variability from different sources. We begin by selecting a subset of similar ruptures which match a set of criteria (in this case, Vertical Strike-Slip with Surface Rupture). Each rupture is then reoriented such that its strike (following the Aki & Richards 1980 convention) is 0 degrees (due North, dipping to the right for normal or reverse ruptures). For each site, ruptures are translated such that their scalar seismic moment centroid is directly North of the site, and their 3-dimensional distance (Rrup) is as specified (we consider 10 distance[s] here).

We then  perform various rotations. We rotate the rupture in place around its centroid, holding the site-to-source centroid path and Rrup constant (henceforth 'Rupture Strike'). We also rotate ruptures around the site, holding Rrup and source orientation relative to the site constant but sampling different various paths (henceforth 'Path'). We do this for each unique combination of Rupture Strike, Path, Distance, Site, and Rupture.

*NOTE: This page uses the SCEC BBP to simulate a 1-dimensional velocity structure. Thus we expect no path variability, and plots of path variabilitiy are included only as verification of the method.*

[RSQSim Catalog Details](../#bruce-2585-1myr)

## Table Of Contents
* [Rupture Rotation Parameters](#rupture-rotation-parameters)
* [SS RSQSim Rupture Match Criteria](#ss-rsqsim-rupture-match-criteria)
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
| Rupture | 100 | Unique (but similar in faulting style and magnitude) ruptures which match the given scenario. |
| Site | 1 | Unique site locations. If 3-d, each will have unique velocity profiles. |
| Rupture Strike | 36 | Rupture strike conforming to the Aki & Richards (1980) convention, where dipping faults dip to the right of the rupture. If path rotation is also performed, this azimuth is relative to the path. |
| Path | 1 | Path from the site to the centroid of the rupture, in azimuthal degrees (0 is North) |
| Distance | 20.0, 40.0, 60.0, 80.0, 100.0, 120.0, 140.0, 160.0, 180.0, 200.0 km | 3-dimensional distance between the site and the rupture surface. |
| **Total # Simulations** | **36000** | Total number of combinations of the above. |

## SS RSQSim Rupture Match Criteria
*[(top)](#table-of-contents)*

We condisder 100 events in the catalog which match the following criteria:

* Ztor=[0,1]
* Rake=[-180,-170] or [-10,10] or [170,180]
* Dip=90
* Linear rupture (max 5% deviation from ideal)

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
| Source-strike | &phi;<sub>s</sub> | 20 km | 0.4 | 0.39 | 0.3 | 0.22 |
| Source-strike | &phi;<sub>s</sub> | 40 km | 0.44 | 0.44 | 0.5 | 0.43 |
| Source-strike | &phi;<sub>s</sub> | 60 km | 0.45 | 0.48 | 0.48 | 0.53 |
| Source-strike | &phi;<sub>s</sub> | 80 km | 0.45 | 0.48 | 0.49 | 0.48 |
| Source-strike | &phi;<sub>s</sub> | 100 km | 0.45 | 0.51 | 0.54 | 0.48 |
| Source-strike | &phi;<sub>s</sub> | 120 km | 0.41 | 0.48 | 0.52 | 0.52 |
| Source-strike | &phi;<sub>s</sub> | 140 km | 0.37 | 0.5 | 0.53 | 0.54 |
| Source-strike | &phi;<sub>s</sub> | 160 km | 0.37 | 0.49 | 0.57 | 0.53 |
| Source-strike | &phi;<sub>s</sub> | 180 km | 0.39 | 0.5 | 0.55 | 0.53 |
| Source-strike | &phi;<sub>s</sub> | 200 km | 0.39 | 0.5 | 0.56 | 0.56 |
| Within-event, single-site | &phi;<sub>SS</sub> | 20 km | 0.4 | 0.39 | 0.3 | 0.22 |
| Within-event, single-site | &phi;<sub>SS</sub> | 40 km | 0.44 | 0.44 | 0.5 | 0.43 |
| Within-event, single-site | &phi;<sub>SS</sub> | 60 km | 0.45 | 0.48 | 0.48 | 0.53 |
| Within-event, single-site | &phi;<sub>SS</sub> | 80 km | 0.45 | 0.48 | 0.49 | 0.48 |
| Within-event, single-site | &phi;<sub>SS</sub> | 100 km | 0.45 | 0.51 | 0.54 | 0.48 |
| Within-event, single-site | &phi;<sub>SS</sub> | 120 km | 0.41 | 0.48 | 0.52 | 0.52 |
| Within-event, single-site | &phi;<sub>SS</sub> | 140 km | 0.37 | 0.5 | 0.53 | 0.54 |
| Within-event, single-site | &phi;<sub>SS</sub> | 160 km | 0.37 | 0.49 | 0.57 | 0.53 |
| Within-event, single-site | &phi;<sub>SS</sub> | 180 km | 0.39 | 0.5 | 0.55 | 0.53 |
| Within-event, single-site | &phi;<sub>SS</sub> | 200 km | 0.39 | 0.5 | 0.56 | 0.56 |
| Between-events | &tau; | 20 km | 0.27 | 0.32 | 0.39 | 0.41 |
| Between-events | &tau; | 40 km | 0.28 | 0.33 | 0.42 | 0.45 |
| Between-events | &tau; | 60 km | 0.28 | 0.34 | 0.42 | 0.46 |
| Between-events | &tau; | 80 km | 0.28 | 0.35 | 0.42 | 0.48 |
| Between-events | &tau; | 100 km | 0.25 | 0.36 | 0.43 | 0.48 |
| Between-events | &tau; | 120 km | 0.22 | 0.35 | 0.43 | 0.49 |
| Between-events | &tau; | 140 km | 0.22 | 0.35 | 0.43 | 0.49 |
| Between-events | &tau; | 160 km | 0.2 | 0.34 | 0.44 | 0.5 |
| Between-events | &tau; | 180 km | 0.21 | 0.35 | 0.44 | 0.5 |
| Between-events | &tau; | 200 km | 0.21 | 0.35 | 0.44 | 0.51 |

### M7 Result Summary Table
*[(top)](#table-of-contents)*

| Type | Notation | Distance | 3s Std. Dev. | 5s Std. Dev. | 7.5s Std. Dev. | 10s Std. Dev. |
|-----|-----|-----|-----|-----|-----|-----|
| Source-strike | &phi;<sub>s</sub> | 20 km | 0.43 | 0.43 | 0.37 | 0.31 |
| Source-strike | &phi;<sub>s</sub> | 40 km | 0.47 | 0.47 | 0.52 | 0.49 |
| Source-strike | &phi;<sub>s</sub> | 60 km | 0.49 | 0.51 | 0.52 | 0.56 |
| Source-strike | &phi;<sub>s</sub> | 80 km | 0.49 | 0.53 | 0.55 | 0.53 |
| Source-strike | &phi;<sub>s</sub> | 100 km | 0.48 | 0.54 | 0.58 | 0.54 |
| Source-strike | &phi;<sub>s</sub> | 120 km | 0.42 | 0.53 | 0.57 | 0.58 |
| Source-strike | &phi;<sub>s</sub> | 140 km | 0.39 | 0.53 | 0.59 | 0.6 |
| Source-strike | &phi;<sub>s</sub> | 160 km | 0.39 | 0.53 | 0.61 | 0.59 |
| Source-strike | &phi;<sub>s</sub> | 180 km | 0.4 | 0.54 | 0.61 | 0.59 |
| Source-strike | &phi;<sub>s</sub> | 200 km | 0.4 | 0.54 | 0.62 | 0.61 |
| Within-event, single-site | &phi;<sub>SS</sub> | 20 km | 0.43 | 0.43 | 0.37 | 0.31 |
| Within-event, single-site | &phi;<sub>SS</sub> | 40 km | 0.47 | 0.47 | 0.52 | 0.49 |
| Within-event, single-site | &phi;<sub>SS</sub> | 60 km | 0.49 | 0.51 | 0.52 | 0.56 |
| Within-event, single-site | &phi;<sub>SS</sub> | 80 km | 0.49 | 0.53 | 0.55 | 0.53 |
| Within-event, single-site | &phi;<sub>SS</sub> | 100 km | 0.48 | 0.54 | 0.58 | 0.54 |
| Within-event, single-site | &phi;<sub>SS</sub> | 120 km | 0.42 | 0.53 | 0.57 | 0.58 |
| Within-event, single-site | &phi;<sub>SS</sub> | 140 km | 0.39 | 0.53 | 0.59 | 0.6 |
| Within-event, single-site | &phi;<sub>SS</sub> | 160 km | 0.39 | 0.53 | 0.61 | 0.59 |
| Within-event, single-site | &phi;<sub>SS</sub> | 180 km | 0.4 | 0.54 | 0.61 | 0.59 |
| Within-event, single-site | &phi;<sub>SS</sub> | 200 km | 0.4 | 0.54 | 0.62 | 0.61 |
| Between-events | &tau; | 20 km | 0.22 | 0.24 | 0.25 | 0.27 |
| Between-events | &tau; | 40 km | 0.22 | 0.26 | 0.25 | 0.26 |
| Between-events | &tau; | 60 km | 0.22 | 0.26 | 0.26 | 0.28 |
| Between-events | &tau; | 80 km | 0.2 | 0.26 | 0.25 | 0.29 |
| Between-events | &tau; | 100 km | 0.17 | 0.26 | 0.27 | 0.3 |
| Between-events | &tau; | 120 km | 0.16 | 0.26 | 0.26 | 0.3 |
| Between-events | &tau; | 140 km | 0.18 | 0.26 | 0.27 | 0.3 |
| Between-events | &tau; | 160 km | 0.16 | 0.26 | 0.27 | 0.31 |
| Between-events | &tau; | 180 km | 0.16 | 0.26 | 0.27 | 0.31 |
| Between-events | &tau; | 200 km | 0.16 | 0.28 | 0.27 | 0.32 |

### M7.5 Result Summary Table
*[(top)](#table-of-contents)*

| Type | Notation | Distance | 3s Std. Dev. | 5s Std. Dev. | 7.5s Std. Dev. | 10s Std. Dev. |
|-----|-----|-----|-----|-----|-----|-----|
| Source-strike | &phi;<sub>s</sub> | 20 km | 0.46 | 0.49 | 0.37 | 0.32 |
| Source-strike | &phi;<sub>s</sub> | 40 km | 0.54 | 0.56 | 0.51 | 0.46 |
| Source-strike | &phi;<sub>s</sub> | 60 km | 0.55 | 0.62 | 0.53 | 0.52 |
| Source-strike | &phi;<sub>s</sub> | 80 km | 0.54 | 0.63 | 0.56 | 0.52 |
| Source-strike | &phi;<sub>s</sub> | 100 km | 0.5 | 0.63 | 0.59 | 0.55 |
| Source-strike | &phi;<sub>s</sub> | 120 km | 0.46 | 0.61 | 0.6 | 0.58 |
| Source-strike | &phi;<sub>s</sub> | 140 km | 0.47 | 0.65 | 0.61 | 0.59 |
| Source-strike | &phi;<sub>s</sub> | 160 km | 0.47 | 0.63 | 0.62 | 0.6 |
| Source-strike | &phi;<sub>s</sub> | 180 km | 0.46 | 0.65 | 0.63 | 0.6 |
| Source-strike | &phi;<sub>s</sub> | 200 km | 0.44 | 0.64 | 0.64 | 0.62 |
| Within-event, single-site | &phi;<sub>SS</sub> | 20 km | 0.46 | 0.49 | 0.37 | 0.32 |
| Within-event, single-site | &phi;<sub>SS</sub> | 40 km | 0.54 | 0.56 | 0.51 | 0.46 |
| Within-event, single-site | &phi;<sub>SS</sub> | 60 km | 0.55 | 0.62 | 0.53 | 0.52 |
| Within-event, single-site | &phi;<sub>SS</sub> | 80 km | 0.54 | 0.63 | 0.56 | 0.52 |
| Within-event, single-site | &phi;<sub>SS</sub> | 100 km | 0.5 | 0.63 | 0.59 | 0.55 |
| Within-event, single-site | &phi;<sub>SS</sub> | 120 km | 0.46 | 0.61 | 0.6 | 0.58 |
| Within-event, single-site | &phi;<sub>SS</sub> | 140 km | 0.47 | 0.65 | 0.61 | 0.59 |
| Within-event, single-site | &phi;<sub>SS</sub> | 160 km | 0.47 | 0.63 | 0.62 | 0.6 |
| Within-event, single-site | &phi;<sub>SS</sub> | 180 km | 0.46 | 0.65 | 0.63 | 0.6 |
| Within-event, single-site | &phi;<sub>SS</sub> | 200 km | 0.44 | 0.64 | 0.64 | 0.62 |
| Between-events | &tau; | 20 km | 0.14 | 0.22 | 0.26 | 0.27 |
| Between-events | &tau; | 40 km | 0.13 | 0.18 | 0.26 | 0.29 |
| Between-events | &tau; | 60 km | 0.13 | 0.18 | 0.27 | 0.29 |
| Between-events | &tau; | 80 km | 0.13 | 0.19 | 0.28 | 0.3 |
| Between-events | &tau; | 100 km | 0.12 | 0.18 | 0.28 | 0.29 |
| Between-events | &tau; | 120 km | 0.11 | 0.18 | 0.27 | 0.28 |
| Between-events | &tau; | 140 km | 0.11 | 0.19 | 0.26 | 0.29 |
| Between-events | &tau; | 160 km | 0.12 | 0.18 | 0.26 | 0.3 |
| Between-events | &tau; | 180 km | 0.13 | 0.19 | 0.27 | 0.3 |
| Between-events | &tau; | 200 km | 0.11 | 0.2 | 0.27 | 0.3 |

## Source-strike Variability
*[(top)](#table-of-contents)*

### Source-strike Variability Methodology
*[(top)](#table-of-contents)*

Source-strike variability, denoted &phi;<sub>s</sub> in Aki & Richards (1980), is computed separately for each:

* Site *[1 unique]*
* Distance *[10 unique]*

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
|  | 0.4 | 0.39 | 0.39 | [0.21 0.63] |  | 0.39 | 0.38 | 0.37 | [0.15 0.61] |  | 0.3 | 0.29 | 0.28 | [0.14 0.48] |  | 0.22 | 0.21 | 0.2 | [0.08 0.4] |

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
|  | 0.45 | 0.45 | 0.45 | [0.24 0.66] |  | 0.48 | 0.47 | 0.47 | [0.19 0.7] |  | 0.48 | 0.47 | 0.47 | [0.27 0.65] |  | 0.53 | 0.52 | 0.55 | [0.28 0.65] |

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
|  | 0.41 | 0.4 | 0.39 | [0.23 0.67] |  | 0.48 | 0.47 | 0.46 | [0.27 0.8] |  | 0.52 | 0.52 | 0.52 | [0.31 0.72] |  | 0.52 | 0.51 | 0.53 | [0.25 0.69] |

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
|  | 0.43 | 0.42 | 0.41 | [0.26 0.61] |  | 0.43 | 0.42 | 0.42 | [0.24 0.66] |  | 0.37 | 0.36 | 0.35 | [0.18 0.68] |  | 0.31 | 0.29 | 0.27 | [0.11 0.63] |

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
|  | 0.49 | 0.49 | 0.49 | [0.31 0.68] |  | 0.51 | 0.51 | 0.51 | [0.29 0.81] |  | 0.52 | 0.52 | 0.51 | [0.32 0.86] |  | 0.56 | 0.55 | 0.55 | [0.23 0.87] |

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
|  | 0.42 | 0.42 | 0.42 | [0.23 0.61] |  | 0.53 | 0.52 | 0.53 | [0.3 0.76] |  | 0.57 | 0.56 | 0.55 | [0.36 0.86] |  | 0.58 | 0.57 | 0.57 | [0.23 0.88] |

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
|  | 0.46 | 0.46 | 0.46 | [0.28 0.6] |  | 0.49 | 0.48 | 0.46 | [0.28 0.67] |  | 0.37 | 0.35 | 0.35 | [0.19 0.61] |  | 0.32 | 0.3 | 0.29 | [0.16 0.54] |

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
|  | 0.55 | 0.54 | 0.54 | [0.4 0.7] |  | 0.62 | 0.61 | 0.62 | [0.37 0.8] |  | 0.53 | 0.52 | 0.52 | [0.32 0.73] |  | 0.52 | 0.51 | 0.5 | [0.33 0.7] |

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
|  | 0.46 | 0.46 | 0.45 | [0.31 0.67] |  | 0.61 | 0.61 | 0.61 | [0.39 0.8] |  | 0.6 | 0.59 | 0.59 | [0.4 0.84] |  | 0.58 | 0.57 | 0.57 | [0.4 0.79] |

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
* Distance *[10 unique]*

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
|  | 0.4 | 0.39 | 0.39 | [0.21 0.63] |  | 0.39 | 0.38 | 0.37 | [0.15 0.61] |  | 0.3 | 0.29 | 0.28 | [0.14 0.48] |  | 0.22 | 0.21 | 0.2 | [0.08 0.4] |

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
|  | 0.45 | 0.45 | 0.45 | [0.24 0.66] |  | 0.48 | 0.47 | 0.47 | [0.19 0.7] |  | 0.48 | 0.47 | 0.47 | [0.27 0.65] |  | 0.53 | 0.52 | 0.55 | [0.28 0.65] |

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
|  | 0.41 | 0.4 | 0.39 | [0.23 0.67] |  | 0.48 | 0.47 | 0.46 | [0.27 0.8] |  | 0.52 | 0.52 | 0.52 | [0.31 0.72] |  | 0.52 | 0.51 | 0.53 | [0.25 0.69] |

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
|  | 0.43 | 0.42 | 0.41 | [0.26 0.61] |  | 0.43 | 0.42 | 0.42 | [0.24 0.66] |  | 0.37 | 0.36 | 0.35 | [0.18 0.68] |  | 0.31 | 0.29 | 0.27 | [0.11 0.63] |

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
|  | 0.49 | 0.49 | 0.49 | [0.31 0.68] |  | 0.51 | 0.51 | 0.51 | [0.29 0.81] |  | 0.52 | 0.52 | 0.51 | [0.32 0.86] |  | 0.56 | 0.55 | 0.55 | [0.23 0.87] |

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
|  | 0.42 | 0.42 | 0.42 | [0.23 0.61] |  | 0.53 | 0.52 | 0.53 | [0.3 0.76] |  | 0.57 | 0.56 | 0.55 | [0.36 0.86] |  | 0.58 | 0.57 | 0.57 | [0.23 0.88] |

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
|  | 0.46 | 0.46 | 0.46 | [0.28 0.6] |  | 0.49 | 0.48 | 0.46 | [0.28 0.67] |  | 0.37 | 0.35 | 0.35 | [0.19 0.61] |  | 0.32 | 0.3 | 0.29 | [0.16 0.54] |

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
|  | 0.55 | 0.54 | 0.54 | [0.4 0.7] |  | 0.62 | 0.61 | 0.62 | [0.37 0.8] |  | 0.53 | 0.52 | 0.52 | [0.32 0.73] |  | 0.52 | 0.51 | 0.5 | [0.33 0.7] |

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
|  | 0.46 | 0.46 | 0.45 | [0.31 0.67] |  | 0.61 | 0.61 | 0.61 | [0.39 0.8] |  | 0.6 | 0.59 | 0.59 | [0.4 0.84] |  | 0.58 | 0.57 | 0.57 | [0.4 0.79] |

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
* Distance *[10 unique]*

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
| 0.27 | -4.21 | [-4.72 -3.38] | 0.32 | -4.92 | [-5.71 -4.16] | 0.39 | -5.46 | [-6.2 -4.48] | 0.41 | -6.03 | [-6.8 -5.09] |


### 60.0 km M6.5 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m6.5_60km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.28 | -5.11 | [-5.66 -4.41] | 0.34 | -5.73 | [-6.51 -4.76] | 0.42 | -6.24 | [-7.3 -5.17] | 0.46 | -6.71 | [-7.66 -5.68] |


### 120.0 km M6.5 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m6.5_120km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.22 | -5.81 | [-6.26 -5.22] | 0.35 | -6.34 | [-7.14 -5.39] | 0.43 | -6.72 | [-7.66 -5.61] | 0.49 | -7.17 | [-8.09 -6.03] |


### 20.0 km M7 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m7_20km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.22 | -3.34 | [-3.85 -2.8] | 0.24 | -4.09 | [-4.69 -3.46] | 0.25 | -4.58 | [-5.27 -3.86] | 0.27 | -5.1 | [-5.94 -4.47] |


### 60.0 km M7 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m7_60km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.22 | -4.24 | [-4.84 -3.76] | 0.26 | -4.89 | [-5.41 -4.28] | 0.26 | -5.36 | [-6.13 -4.53] | 0.28 | -5.82 | [-6.48 -5.02] |


### 120.0 km M7 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m7_120km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.16 | -4.89 | [-5.38 -4.57] | 0.26 | -5.47 | [-6.03 -4.87] | 0.26 | -5.84 | [-6.61 -4.99] | 0.3 | -6.27 | [-7.03 -5.4] |


### 20.0 km M7.5 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m7.5_20km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.14 | -2.46 | [-2.76 -2.12] | 0.22 | -3.27 | [-3.69 -2.77] | 0.26 | -3.94 | [-4.53 -3.38] | 0.27 | -4.48 | [-5.03 -3.85] |


### 60.0 km M7.5 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m7.5_60km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.13 | -3.51 | [-3.85 -3.19] | 0.18 | -4.25 | [-4.72 -3.78] | 0.27 | -4.66 | [-5.29 -4.14] | 0.29 | -5.07 | [-5.67 -4.43] |


### 120.0 km M7.5 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m7.5_120km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.11 | -4.17 | [-4.43 -3.91] | 0.18 | -4.84 | [-5.34 -4.35] | 0.27 | -5.18 | [-5.88 -4.63] | 0.28 | -5.52 | [-6.2 -4.92] |


