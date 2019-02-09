# Bruce 2740 Rotated Rupture Variability, Normal

This exercise uses translations and rotations to estimate ground motion variability from different sources. We begin by selecting a subset of similar ruptures which match a set of criteria (in this case, Normal, Dip=45). Each rupture is then reoriented such that its strike (following the Aki & Richards 1980 convention) is 0 degrees (due North, dipping to the right for normal or reverse ruptures). For each site, ruptures are translated such that their scalar seismic moment centroid is directly North of the site, and their 3-dimensional distance (Rrup) is as specified (we consider 8 distance[s] here).

We then  perform various rotations. We rotate the rupture in place around its centroid, holding the site-to-source centroid path and Rrup constant (henceforth 'Rupture Strike'). We also rotate ruptures around the site, holding Rrup and source orientation relative to the site constant but sampling different various paths (henceforth 'Path'). We do this for each unique combination of Rupture Strike, Path, Distance, Site, and Rupture.

*NOTE: This page uses the SCEC BBP to simulate a 1-dimensional velocity structure. Thus we expect no path variability, and plots of path variabilitiy are included only as verification of the method.*

[RSQSim Catalog Details](../#bruce-2740)

## Table Of Contents
* [Rupture Rotation Parameters](#rupture-rotation-parameters)
* [Normal RSQSim Rupture Match Criteria](#normal-rsqsim-rupture-match-criteria)
* [Sites](#sites)
* [Result Summary Table](#result-summary-table)
  * [Mag-Dist Plots](#mag-dist-plots)
  * [M6.5 Result Summary Table](#m65-result-summary-table)
    * [M6.5 Dist-Dependent Plot Table](#m65-dist-dependent-plot-table)
  * [M7 Result Summary Table](#m7-result-summary-table)
    * [M7 Dist-Dependent Plot Table](#m7-dist-dependent-plot-table)
  * [M7.5 Result Summary Table](#m75-result-summary-table)
    * [M7.5 Dist-Dependent Plot Table](#m75-dist-dependent-plot-table)
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
| Rupture | 24 - 100 | Unique (but similar in faulting style and magnitude) ruptures which match the given scenario. |
| Site | 1 | Unique site locations. If 3-d, each will have unique velocity profiles. |
| Rupture Strike | 36 | Rupture strike conforming to the Aki & Richards (1980) convention, where dipping faults dip to the right of the rupture. If path rotation is also performed, this azimuth is relative to the path. |
| Path | 1 | Path from the site to the centroid of the rupture, in azimuthal degrees (0 is North) |
| Distance | 20.0, 40.0, 60.0, 80.0, 100.0, 120.0, 140.0, 160.0 km | 3-dimensional distance between the site and the rupture surface. |
| **Total # Simulations** | **28800** | Total number of combinations of the above. |

## Normal RSQSim Rupture Match Criteria
*[(top)](#table-of-contents)*

We condisder 100 events in the catalog which match the following criteria:

* Ztor=[0,5]
* Rake=[-105,-75]
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
| [Source-strike](#source-strike-variability) | &phi;<sub>s</sub> | ![Mag-Dist Plot](resources/source_strike_mag_dist_std_dev_3s_sim.png) | ![Mag-Dist Plot](resources/source_strike_mag_dist_std_dev_5s_sim.png) | ![Mag-Dist Plot](resources/source_strike_mag_dist_std_dev_7.5s_sim.png) | ![Mag-Dist Plot](resources/source_strike_mag_dist_std_dev_10s_sim.png) |
| [Within-event, single-site](#within-event-single-site-variability) | &phi;<sub>SS</sub> | ![Mag-Dist Plot](resources/within_event_ss_mag_dist_std_dev_3s_sim.png) | ![Mag-Dist Plot](resources/within_event_ss_mag_dist_std_dev_5s_sim.png) | ![Mag-Dist Plot](resources/within_event_ss_mag_dist_std_dev_7.5s_sim.png) | ![Mag-Dist Plot](resources/within_event_ss_mag_dist_std_dev_10s_sim.png) |
| [Between-events](#between-events-variability) | &tau; | ![Mag-Dist Plot](resources/between_events_mag_dist_std_dev_3s_sim.png) | ![Mag-Dist Plot](resources/between_events_mag_dist_std_dev_5s_sim.png) | ![Mag-Dist Plot](resources/between_events_mag_dist_std_dev_7.5s_sim.png) | ![Mag-Dist Plot](resources/between_events_mag_dist_std_dev_10s_sim.png) |

### M6.5 Result Summary Table
*[(top)](#table-of-contents)*

| Type | Notation | Distance | 3s Std. Dev. | 5s Std. Dev. | 7.5s Std. Dev. | 10s Std. Dev. |
|-----|-----|-----|-----|-----|-----|-----|
| Source-strike | &phi;<sub>s</sub> | 20 km | 0.43 | 0.47 | 0.47 | 0.41 |
| Source-strike | &phi;<sub>s</sub> | 40 km | 0.46 | 0.51 | 0.44 | 0.38 |
| Source-strike | &phi;<sub>s</sub> | 60 km | 0.46 | 0.5 | 0.52 | 0.39 |
| Source-strike | &phi;<sub>s</sub> | 80 km | 0.47 | 0.54 | 0.47 | 0.43 |
| Source-strike | &phi;<sub>s</sub> | 100 km | 0.46 | 0.53 | 0.47 | 0.4 |
| Source-strike | &phi;<sub>s</sub> | 120 km | 0.41 | 0.53 | 0.52 | 0.4 |
| Source-strike | &phi;<sub>s</sub> | 140 km | 0.39 | 0.53 | 0.5 | 0.42 |
| Source-strike | &phi;<sub>s</sub> | 160 km | 0.38 | 0.52 | 0.51 | 0.41 |
| Within-event, single-site | &phi;<sub>SS</sub> | 20 km | 0.43 | 0.47 | 0.47 | 0.41 |
| Within-event, single-site | &phi;<sub>SS</sub> | 40 km | 0.46 | 0.51 | 0.44 | 0.38 |
| Within-event, single-site | &phi;<sub>SS</sub> | 60 km | 0.46 | 0.5 | 0.52 | 0.39 |
| Within-event, single-site | &phi;<sub>SS</sub> | 80 km | 0.47 | 0.54 | 0.47 | 0.43 |
| Within-event, single-site | &phi;<sub>SS</sub> | 100 km | 0.46 | 0.53 | 0.47 | 0.4 |
| Within-event, single-site | &phi;<sub>SS</sub> | 120 km | 0.41 | 0.53 | 0.52 | 0.4 |
| Within-event, single-site | &phi;<sub>SS</sub> | 140 km | 0.39 | 0.53 | 0.5 | 0.42 |
| Within-event, single-site | &phi;<sub>SS</sub> | 160 km | 0.38 | 0.52 | 0.51 | 0.41 |
| Between-events | &tau; | 20 km | 0.21 | 0.23 | 0.31 | 0.28 |
| Between-events | &tau; | 40 km | 0.24 | 0.27 | 0.25 | 0.28 |
| Between-events | &tau; | 60 km | 0.27 | 0.24 | 0.28 | 0.22 |
| Between-events | &tau; | 80 km | 0.28 | 0.28 | 0.29 | 0.27 |
| Between-events | &tau; | 100 km | 0.24 | 0.27 | 0.26 | 0.28 |
| Between-events | &tau; | 120 km | 0.18 | 0.28 | 0.3 | 0.27 |
| Between-events | &tau; | 140 km | 0.18 | 0.28 | 0.27 | 0.25 |
| Between-events | &tau; | 160 km | 0.17 | 0.27 | 0.27 | 0.28 |

#### M6.5 Dist-Dependent Plot Table
*[(top)](#table-of-contents)*

| **&phi;<sub>s</sub>** | ![&phi;<sub>s</sub>](resources/source_strike_m6.5_dist_periods.png) |
|-----|-----|
| **&phi;<sub>SS</sub>** | ![&phi;<sub>SS</sub>](resources/within_event_ss_m6.5_dist_periods.png) |
| **&tau;** | ![&tau;](resources/between_events_m6.5_dist_periods.png) |


### M7 Result Summary Table
*[(top)](#table-of-contents)*

| Type | Notation | Distance | 3s Std. Dev. | 5s Std. Dev. | 7.5s Std. Dev. | 10s Std. Dev. |
|-----|-----|-----|-----|-----|-----|-----|
| Source-strike | &phi;<sub>s</sub> | 20 km | 0.38 | 0.36 | 0.38 | 0.36 |
| Source-strike | &phi;<sub>s</sub> | 40 km | 0.37 | 0.4 | 0.38 | 0.38 |
| Source-strike | &phi;<sub>s</sub> | 60 km | 0.37 | 0.39 | 0.41 | 0.38 |
| Source-strike | &phi;<sub>s</sub> | 80 km | 0.37 | 0.41 | 0.4 | 0.4 |
| Source-strike | &phi;<sub>s</sub> | 100 km | 0.35 | 0.4 | 0.4 | 0.4 |
| Source-strike | &phi;<sub>s</sub> | 120 km | 0.36 | 0.4 | 0.41 | 0.4 |
| Source-strike | &phi;<sub>s</sub> | 140 km | 0.37 | 0.4 | 0.41 | 0.4 |
| Source-strike | &phi;<sub>s</sub> | 160 km | 0.37 | 0.39 | 0.41 | 0.41 |
| Within-event, single-site | &phi;<sub>SS</sub> | 20 km | 0.38 | 0.36 | 0.38 | 0.36 |
| Within-event, single-site | &phi;<sub>SS</sub> | 40 km | 0.37 | 0.4 | 0.38 | 0.38 |
| Within-event, single-site | &phi;<sub>SS</sub> | 60 km | 0.37 | 0.39 | 0.41 | 0.38 |
| Within-event, single-site | &phi;<sub>SS</sub> | 80 km | 0.37 | 0.41 | 0.4 | 0.4 |
| Within-event, single-site | &phi;<sub>SS</sub> | 100 km | 0.35 | 0.4 | 0.4 | 0.4 |
| Within-event, single-site | &phi;<sub>SS</sub> | 120 km | 0.36 | 0.4 | 0.41 | 0.4 |
| Within-event, single-site | &phi;<sub>SS</sub> | 140 km | 0.37 | 0.4 | 0.41 | 0.4 |
| Within-event, single-site | &phi;<sub>SS</sub> | 160 km | 0.37 | 0.39 | 0.41 | 0.41 |
| Between-events | &tau; | 20 km | 0.16 | 0.16 | 0.25 | 0.25 |
| Between-events | &tau; | 40 km | 0.15 | 0.2 | 0.22 | 0.27 |
| Between-events | &tau; | 60 km | 0.16 | 0.18 | 0.24 | 0.24 |
| Between-events | &tau; | 80 km | 0.17 | 0.2 | 0.25 | 0.27 |
| Between-events | &tau; | 100 km | 0.15 | 0.2 | 0.23 | 0.29 |
| Between-events | &tau; | 120 km | 0.14 | 0.19 | 0.26 | 0.27 |
| Between-events | &tau; | 140 km | 0.14 | 0.2 | 0.25 | 0.26 |
| Between-events | &tau; | 160 km | 0.15 | 0.19 | 0.25 | 0.29 |

#### M7 Dist-Dependent Plot Table
*[(top)](#table-of-contents)*

| **&phi;<sub>s</sub>** | ![&phi;<sub>s</sub>](resources/source_strike_m7_dist_periods.png) |
|-----|-----|
| **&phi;<sub>SS</sub>** | ![&phi;<sub>SS</sub>](resources/within_event_ss_m7_dist_periods.png) |
| **&tau;** | ![&tau;](resources/between_events_m7_dist_periods.png) |


### M7.5 Result Summary Table
*[(top)](#table-of-contents)*

| Type | Notation | Distance | 3s Std. Dev. | 5s Std. Dev. | 7.5s Std. Dev. | 10s Std. Dev. |
|-----|-----|-----|-----|-----|-----|-----|
| Source-strike | &phi;<sub>s</sub> | 20 km | 0.48 | 0.33 | 0.35 | 0.37 |
| Source-strike | &phi;<sub>s</sub> | 40 km | 0.45 | 0.41 | 0.34 | 0.37 |
| Source-strike | &phi;<sub>s</sub> | 60 km | 0.42 | 0.37 | 0.39 | 0.37 |
| Source-strike | &phi;<sub>s</sub> | 80 km | 0.38 | 0.38 | 0.36 | 0.43 |
| Source-strike | &phi;<sub>s</sub> | 100 km | 0.38 | 0.37 | 0.37 | 0.42 |
| Source-strike | &phi;<sub>s</sub> | 120 km | 0.45 | 0.36 | 0.39 | 0.39 |
| Source-strike | &phi;<sub>s</sub> | 140 km | 0.47 | 0.38 | 0.36 | 0.41 |
| Source-strike | &phi;<sub>s</sub> | 160 km | 0.46 | 0.36 | 0.39 | 0.43 |
| Within-event, single-site | &phi;<sub>SS</sub> | 20 km | 0.48 | 0.33 | 0.35 | 0.37 |
| Within-event, single-site | &phi;<sub>SS</sub> | 40 km | 0.45 | 0.41 | 0.34 | 0.37 |
| Within-event, single-site | &phi;<sub>SS</sub> | 60 km | 0.42 | 0.37 | 0.39 | 0.37 |
| Within-event, single-site | &phi;<sub>SS</sub> | 80 km | 0.38 | 0.38 | 0.36 | 0.43 |
| Within-event, single-site | &phi;<sub>SS</sub> | 100 km | 0.38 | 0.37 | 0.37 | 0.42 |
| Within-event, single-site | &phi;<sub>SS</sub> | 120 km | 0.45 | 0.36 | 0.39 | 0.39 |
| Within-event, single-site | &phi;<sub>SS</sub> | 140 km | 0.47 | 0.38 | 0.36 | 0.41 |
| Within-event, single-site | &phi;<sub>SS</sub> | 160 km | 0.46 | 0.36 | 0.39 | 0.43 |
| Between-events | &tau; | 20 km | 0.1 | 0.11 | 0.16 | 0.18 |
| Between-events | &tau; | 40 km | 0.11 | 0.17 | 0.15 | 0.18 |
| Between-events | &tau; | 60 km | 0.12 | 0.15 | 0.16 | 0.18 |
| Between-events | &tau; | 80 km | 0.12 | 0.16 | 0.14 | 0.16 |
| Between-events | &tau; | 100 km | 0.13 | 0.15 | 0.15 | 0.18 |
| Between-events | &tau; | 120 km | 0.14 | 0.14 | 0.14 | 0.17 |
| Between-events | &tau; | 140 km | 0.13 | 0.15 | 0.14 | 0.17 |
| Between-events | &tau; | 160 km | 0.15 | 0.17 | 0.13 | 0.17 |

#### M7.5 Dist-Dependent Plot Table
*[(top)](#table-of-contents)*

| **&phi;<sub>s</sub>** | ![&phi;<sub>s</sub>](resources/source_strike_m7.5_dist_periods.png) |
|-----|-----|
| **&phi;<sub>SS</sub>** | ![&phi;<sub>SS</sub>](resources/within_event_ss_m7.5_dist_periods.png) |
| **&tau;** | ![&tau;](resources/between_events_m7.5_dist_periods.png) |


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

We take &phi;<sub>s</sub> to be the standard deviation of all residuals, &delta;W<sub>es</sub>, across each combination of Rupture, Path.

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
|  | 0.43 | 0.41 | 0.4 | [0.2 0.74] |  | 0.47 | 0.45 | 0.43 | [0.13 0.78] |  | 0.47 | 0.44 | 0.42 | [0.14 0.74] |  | 0.41 | 0.39 | 0.39 | [0.2 0.64] |

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
|  | 0.46 | 0.44 | 0.41 | [0.19 0.77] |  | 0.5 | 0.47 | 0.45 | [0.17 0.88] |  | 0.52 | 0.49 | 0.5 | [0.19 0.79] |  | 0.39 | 0.38 | 0.39 | [0.19 0.53] |

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
|  | 0.41 | 0.39 | 0.38 | [0.23 0.74] |  | 0.53 | 0.5 | 0.47 | [0.2 0.94] |  | 0.52 | 0.49 | 0.5 | [0.19 0.73] |  | 0.4 | 0.39 | 0.39 | [0.24 0.55] |

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
|  | 0.38 | 0.38 | 0.38 | [0.21 0.55] |  | 0.36 | 0.35 | 0.34 | [0.17 0.58] |  | 0.38 | 0.37 | 0.37 | [0.16 0.71] |  | 0.36 | 0.35 | 0.34 | [0.15 0.69] |

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
|  | 0.37 | 0.37 | 0.38 | [0.19 0.52] |  | 0.39 | 0.37 | 0.37 | [0.21 0.6] |  | 0.41 | 0.4 | 0.39 | [0.18 0.79] |  | 0.38 | 0.37 | 0.35 | [0.14 0.74] |

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
|  | 0.36 | 0.36 | 0.35 | [0.18 0.57] |  | 0.4 | 0.39 | 0.37 | [0.17 0.63] |  | 0.41 | 0.39 | 0.37 | [0.15 0.83] |  | 0.4 | 0.38 | 0.36 | [0.2 0.77] |

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
|  | 0.48 | 0.48 | 0.48 | [0.37 0.61] |  | 0.33 | 0.32 | 0.33 | [0.23 0.46] |  | 0.35 | 0.34 | 0.34 | [0.14 0.56] |  | 0.37 | 0.36 | 0.32 | [0.2 0.51] |

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
|  | 0.42 | 0.42 | 0.41 | [0.32 0.54] |  | 0.37 | 0.36 | 0.34 | [0.22 0.52] |  | 0.39 | 0.38 | 0.34 | [0.25 0.62] |  | 0.37 | 0.35 | 0.32 | [0.22 0.57] |

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
|  | 0.45 | 0.45 | 0.45 | [0.33 0.59] |  | 0.36 | 0.36 | 0.35 | [0.25 0.5] |  | 0.39 | 0.38 | 0.36 | [0.24 0.63] |  | 0.39 | 0.38 | 0.34 | [0.25 0.57] |

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
|  | 0.43 | 0.41 | 0.4 | [0.2 0.74] |  | 0.47 | 0.45 | 0.43 | [0.13 0.78] |  | 0.47 | 0.44 | 0.42 | [0.14 0.74] |  | 0.41 | 0.39 | 0.39 | [0.2 0.64] |

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
|  | 0.46 | 0.44 | 0.41 | [0.19 0.77] |  | 0.5 | 0.47 | 0.45 | [0.17 0.88] |  | 0.52 | 0.49 | 0.5 | [0.19 0.79] |  | 0.39 | 0.38 | 0.39 | [0.19 0.53] |

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
|  | 0.41 | 0.39 | 0.38 | [0.23 0.74] |  | 0.53 | 0.5 | 0.47 | [0.2 0.94] |  | 0.52 | 0.49 | 0.5 | [0.19 0.73] |  | 0.4 | 0.39 | 0.39 | [0.24 0.55] |

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
|  | 0.38 | 0.38 | 0.38 | [0.21 0.55] |  | 0.36 | 0.35 | 0.34 | [0.17 0.58] |  | 0.38 | 0.37 | 0.37 | [0.16 0.71] |  | 0.36 | 0.35 | 0.34 | [0.15 0.69] |

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
|  | 0.37 | 0.37 | 0.38 | [0.19 0.52] |  | 0.39 | 0.37 | 0.37 | [0.21 0.6] |  | 0.41 | 0.4 | 0.39 | [0.18 0.79] |  | 0.38 | 0.37 | 0.35 | [0.14 0.74] |

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
|  | 0.36 | 0.36 | 0.35 | [0.18 0.57] |  | 0.4 | 0.39 | 0.37 | [0.17 0.63] |  | 0.41 | 0.39 | 0.37 | [0.15 0.83] |  | 0.4 | 0.38 | 0.36 | [0.2 0.77] |

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
|  | 0.48 | 0.48 | 0.48 | [0.37 0.61] |  | 0.33 | 0.32 | 0.33 | [0.23 0.46] |  | 0.35 | 0.34 | 0.34 | [0.14 0.56] |  | 0.37 | 0.36 | 0.32 | [0.2 0.51] |

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
|  | 0.42 | 0.42 | 0.41 | [0.32 0.54] |  | 0.37 | 0.36 | 0.34 | [0.22 0.52] |  | 0.39 | 0.38 | 0.34 | [0.25 0.62] |  | 0.37 | 0.35 | 0.32 | [0.22 0.57] |

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
|  | 0.45 | 0.45 | 0.45 | [0.33 0.59] |  | 0.36 | 0.36 | 0.35 | [0.25 0.5] |  | 0.39 | 0.38 | 0.36 | [0.24 0.63] |  | 0.39 | 0.38 | 0.34 | [0.25 0.57] |

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
| 0.21 | -4.06 | [-4.63 -3.44] | 0.23 | -4.83 | [-5.45 -4.31] | 0.31 | -5.48 | [-6.17 -4.79] | 0.28 | -6.08 | [-6.68 -5.51] |


### 60.0 km M6.5 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m6.5_60km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.27 | -5.03 | [-5.64 -4.28] | 0.24 | -5.64 | [-6.25 -5.1] | 0.28 | -6.26 | [-6.93 -5.66] | 0.22 | -6.87 | [-7.46 -6.43] |


### 120.0 km M6.5 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m6.5_120km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.18 | -5.54 | [-6.12 -4.98] | 0.28 | -6.14 | [-6.86 -5.51] | 0.3 | -6.7 | [-7.52 -6.03] | 0.27 | -7.22 | [-7.85 -6.73] |


### 20.0 km M7 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m7_20km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.16 | -3.36 | [-3.83 -3.01] | 0.16 | -4.12 | [-4.63 -3.71] | 0.25 | -4.65 | [-5.17 -4.21] | 0.25 | -5.18 | [-5.8 -4.63] |


### 60.0 km M7 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m7_60km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.16 | -4.27 | [-4.78 -3.94] | 0.18 | -4.84 | [-5.35 -4.36] | 0.24 | -5.36 | [-5.87 -4.88] | 0.24 | -5.9 | [-6.58 -5.47] |


### 120.0 km M7 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m7_120km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.14 | -4.76 | [-5.18 -4.48] | 0.19 | -5.39 | [-5.96 -4.89] | 0.26 | -5.79 | [-6.37 -5.34] | 0.27 | -6.28 | [-6.93 -5.71] |


### 20.0 km M7.5 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m7.5_20km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.1 | -2.79 | [-3.03 -2.59] | 0.11 | -3.68 | [-3.96 -3.51] | 0.16 | -4.16 | [-4.49 -3.88] | 0.18 | -4.65 | [-4.98 -4.31] |


### 60.0 km M7.5 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m7.5_60km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.12 | -3.71 | [-3.98 -3.49] | 0.15 | -4.32 | [-4.63 -4.08] | 0.16 | -4.76 | [-5.02 -4.36] | 0.18 | -5.29 | [-5.53 -4.9] |


### 120.0 km M7.5 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m7.5_120km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.14 | -4.08 | [-4.41 -3.85] | 0.14 | -4.85 | [-5.14 -4.59] | 0.14 | -5.19 | [-5.46 -4.89] | 0.17 | -5.64 | [-5.9 -5.23] |


