# Bruce 2585 1myr Rotated Rupture Variability, Reverse

This exercise uses translations and rotations to estimate ground motion variability from different sources. We begin by selecting a subset of similar ruptures which match a set of criteria (in this case, Reverse, Dip=45). Each rupture is then reoriented such that its strike (following the Aki & Richards 1980 convention) is 0 degrees (due North, dipping to the right for normal or reverse ruptures). For each site, ruptures are translated such that their scalar seismic moment centroid is directly North of the site, and their 3-dimensional distance (Rrup) is as specified (we consider 10 distance[s] here).

We then  perform various rotations. We rotate the rupture in place around its centroid, holding the site-to-source centroid path and Rrup constant (henceforth 'Rupture Strike'). We also rotate ruptures around the site, holding Rrup and source orientation relative to the site constant but sampling different various paths (henceforth 'Path'). We do this for each unique combination of Rupture Strike, Path, Distance, Site, and Rupture.

*NOTE: This page uses the SCEC BBP to simulate a 1-dimensional velocity structure. Thus we expect no path variability, and plots of path variabilitiy are included only as verification of the method.*

[RSQSim Catalog Details](../#bruce-2585-1myr)

## Table Of Contents
* [Rupture Rotation Parameters](#rupture-rotation-parameters)
* [Reverse RSQSim Rupture Match Criteria](#reverse-rsqsim-rupture-match-criteria)
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
* [Azumth Dependence](#azumth-dependence)
  * [Rupture Strike Dependence](#rupture-strike-dependence)
* [CSV Files](#csv-files)
## Rupture Rotation Parameters

| Quantity | Variations | Description |
|-----|-----|-----|
| Rupture | 100 | Unique (but similar in faulting style and magnitude) ruptures which match the given scenario. |
| Site | 1 | Unique site locations. If 3-d, each will have unique velocity profiles. |
| Rupture Strike | 36 | Rupture strike conforming to the Aki & Richards (1980) convention, where dipping faults dip to the right of the rupture. If path rotation is also performed, this azimuth is relative to the path. |
| Path | 1 | Path from the site to the centroid of the rupture, in azimuthal degrees (0 is North) |
| Distance | 20.0, 40.0, 60.0, 80.0, 100.0, 120.0, 140.0, 160.0, 180.0, 200.0 km | 3-dimensional distance between the site and the rupture surface. |
| **Total # Simulations** | **36000** | Total number of combinations of the above. |

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
| [Source-strike](#source-strike-variability) | &phi;<sub>s</sub> | ![Mag-Dist Plot](resources/source_strike_mag_dist_std_dev_3s_sim.png) | ![Mag-Dist Plot](resources/source_strike_mag_dist_std_dev_5s_sim.png) | ![Mag-Dist Plot](resources/source_strike_mag_dist_std_dev_7.5s_sim.png) | ![Mag-Dist Plot](resources/source_strike_mag_dist_std_dev_10s_sim.png) |
| [Within-event, single-site](#within-event-single-site-variability) | &phi;<sub>SS</sub> | ![Mag-Dist Plot](resources/within_event_ss_mag_dist_std_dev_3s_sim.png) | ![Mag-Dist Plot](resources/within_event_ss_mag_dist_std_dev_5s_sim.png) | ![Mag-Dist Plot](resources/within_event_ss_mag_dist_std_dev_7.5s_sim.png) | ![Mag-Dist Plot](resources/within_event_ss_mag_dist_std_dev_10s_sim.png) |
| [Between-events](#between-events-variability) | &tau; | ![Mag-Dist Plot](resources/between_events_mag_dist_std_dev_3s_sim.png) | ![Mag-Dist Plot](resources/between_events_mag_dist_std_dev_5s_sim.png) | ![Mag-Dist Plot](resources/between_events_mag_dist_std_dev_7.5s_sim.png) | ![Mag-Dist Plot](resources/between_events_mag_dist_std_dev_10s_sim.png) |

### M6.5 Result Summary Table
*[(top)](#table-of-contents)*

| Type | Notation | Distance | 3s Std. Dev. | 5s Std. Dev. | 7.5s Std. Dev. | 10s Std. Dev. |
|-----|-----|-----|-----|-----|-----|-----|
| Source-strike | &phi;<sub>s</sub> | 20 km | 0.36 | 0.37 | 0.36 | 0.33 |
| Source-strike | &phi;<sub>s</sub> | 40 km | 0.39 | 0.38 | 0.34 | 0.33 |
| Source-strike | &phi;<sub>s</sub> | 60 km | 0.37 | 0.37 | 0.39 | 0.33 |
| Source-strike | &phi;<sub>s</sub> | 80 km | 0.38 | 0.41 | 0.37 | 0.36 |
| Source-strike | &phi;<sub>s</sub> | 100 km | 0.37 | 0.4 | 0.37 | 0.36 |
| Source-strike | &phi;<sub>s</sub> | 120 km | 0.35 | 0.41 | 0.39 | 0.35 |
| Source-strike | &phi;<sub>s</sub> | 140 km | 0.34 | 0.41 | 0.38 | 0.37 |
| Source-strike | &phi;<sub>s</sub> | 160 km | 0.34 | 0.4 | 0.39 | 0.37 |
| Source-strike | &phi;<sub>s</sub> | 180 km | 0.34 | 0.41 | 0.4 | 0.37 |
| Source-strike | &phi;<sub>s</sub> | 200 km | 0.36 | 0.41 | 0.4 | 0.37 |
| Within-event, single-site | &phi;<sub>SS</sub> | 20 km | 0.36 | 0.37 | 0.36 | 0.33 |
| Within-event, single-site | &phi;<sub>SS</sub> | 40 km | 0.39 | 0.38 | 0.34 | 0.33 |
| Within-event, single-site | &phi;<sub>SS</sub> | 60 km | 0.37 | 0.37 | 0.39 | 0.33 |
| Within-event, single-site | &phi;<sub>SS</sub> | 80 km | 0.38 | 0.41 | 0.37 | 0.36 |
| Within-event, single-site | &phi;<sub>SS</sub> | 100 km | 0.37 | 0.4 | 0.37 | 0.36 |
| Within-event, single-site | &phi;<sub>SS</sub> | 120 km | 0.35 | 0.41 | 0.39 | 0.35 |
| Within-event, single-site | &phi;<sub>SS</sub> | 140 km | 0.34 | 0.41 | 0.38 | 0.37 |
| Within-event, single-site | &phi;<sub>SS</sub> | 160 km | 0.34 | 0.4 | 0.39 | 0.37 |
| Within-event, single-site | &phi;<sub>SS</sub> | 180 km | 0.34 | 0.41 | 0.4 | 0.37 |
| Within-event, single-site | &phi;<sub>SS</sub> | 200 km | 0.36 | 0.41 | 0.4 | 0.37 |
| Between-events | &tau; | 20 km | 0.31 | 0.3 | 0.3 | 0.27 |
| Between-events | &tau; | 40 km | 0.37 | 0.35 | 0.27 | 0.29 |
| Between-events | &tau; | 60 km | 0.4 | 0.3 | 0.32 | 0.26 |
| Between-events | &tau; | 80 km | 0.43 | 0.37 | 0.31 | 0.29 |
| Between-events | &tau; | 100 km | 0.36 | 0.34 | 0.28 | 0.32 |
| Between-events | &tau; | 120 km | 0.25 | 0.34 | 0.31 | 0.29 |
| Between-events | &tau; | 140 km | 0.21 | 0.32 | 0.3 | 0.28 |
| Between-events | &tau; | 160 km | 0.21 | 0.32 | 0.29 | 0.31 |
| Between-events | &tau; | 180 km | 0.24 | 0.33 | 0.32 | 0.32 |
| Between-events | &tau; | 200 km | 0.26 | 0.33 | 0.31 | 0.3 |

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
| Source-strike | &phi;<sub>s</sub> | 40 km | 0.38 | 0.38 | 0.36 | 0.38 |
| Source-strike | &phi;<sub>s</sub> | 60 km | 0.37 | 0.36 | 0.41 | 0.38 |
| Source-strike | &phi;<sub>s</sub> | 80 km | 0.37 | 0.39 | 0.39 | 0.41 |
| Source-strike | &phi;<sub>s</sub> | 100 km | 0.35 | 0.38 | 0.39 | 0.42 |
| Source-strike | &phi;<sub>s</sub> | 120 km | 0.33 | 0.38 | 0.42 | 0.4 |
| Source-strike | &phi;<sub>s</sub> | 140 km | 0.32 | 0.38 | 0.4 | 0.41 |
| Source-strike | &phi;<sub>s</sub> | 160 km | 0.33 | 0.37 | 0.41 | 0.43 |
| Source-strike | &phi;<sub>s</sub> | 180 km | 0.33 | 0.38 | 0.42 | 0.42 |
| Source-strike | &phi;<sub>s</sub> | 200 km | 0.34 | 0.38 | 0.42 | 0.42 |
| Within-event, single-site | &phi;<sub>SS</sub> | 20 km | 0.38 | 0.36 | 0.38 | 0.36 |
| Within-event, single-site | &phi;<sub>SS</sub> | 40 km | 0.38 | 0.38 | 0.36 | 0.38 |
| Within-event, single-site | &phi;<sub>SS</sub> | 60 km | 0.37 | 0.36 | 0.41 | 0.38 |
| Within-event, single-site | &phi;<sub>SS</sub> | 80 km | 0.37 | 0.39 | 0.39 | 0.41 |
| Within-event, single-site | &phi;<sub>SS</sub> | 100 km | 0.35 | 0.38 | 0.39 | 0.42 |
| Within-event, single-site | &phi;<sub>SS</sub> | 120 km | 0.33 | 0.38 | 0.42 | 0.4 |
| Within-event, single-site | &phi;<sub>SS</sub> | 140 km | 0.32 | 0.38 | 0.4 | 0.41 |
| Within-event, single-site | &phi;<sub>SS</sub> | 160 km | 0.33 | 0.37 | 0.41 | 0.43 |
| Within-event, single-site | &phi;<sub>SS</sub> | 180 km | 0.33 | 0.38 | 0.42 | 0.42 |
| Within-event, single-site | &phi;<sub>SS</sub> | 200 km | 0.34 | 0.38 | 0.42 | 0.42 |
| Between-events | &tau; | 20 km | 0.24 | 0.25 | 0.25 | 0.28 |
| Between-events | &tau; | 40 km | 0.27 | 0.31 | 0.23 | 0.29 |
| Between-events | &tau; | 60 km | 0.28 | 0.28 | 0.24 | 0.25 |
| Between-events | &tau; | 80 km | 0.28 | 0.31 | 0.26 | 0.27 |
| Between-events | &tau; | 100 km | 0.22 | 0.3 | 0.22 | 0.3 |
| Between-events | &tau; | 120 km | 0.16 | 0.28 | 0.24 | 0.28 |
| Between-events | &tau; | 140 km | 0.15 | 0.29 | 0.24 | 0.26 |
| Between-events | &tau; | 160 km | 0.15 | 0.28 | 0.23 | 0.29 |
| Between-events | &tau; | 180 km | 0.17 | 0.29 | 0.25 | 0.3 |
| Between-events | &tau; | 200 km | 0.19 | 0.3 | 0.25 | 0.28 |

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
| Source-strike | &phi;<sub>s</sub> | 20 km | 0.37 | 0.32 | 0.35 | 0.33 |
| Source-strike | &phi;<sub>s</sub> | 40 km | 0.36 | 0.38 | 0.31 | 0.32 |
| Source-strike | &phi;<sub>s</sub> | 60 km | 0.35 | 0.35 | 0.35 | 0.32 |
| Source-strike | &phi;<sub>s</sub> | 80 km | 0.33 | 0.35 | 0.33 | 0.35 |
| Source-strike | &phi;<sub>s</sub> | 100 km | 0.3 | 0.35 | 0.32 | 0.35 |
| Source-strike | &phi;<sub>s</sub> | 120 km | 0.29 | 0.33 | 0.35 | 0.32 |
| Source-strike | &phi;<sub>s</sub> | 140 km | 0.3 | 0.35 | 0.32 | 0.34 |
| Source-strike | &phi;<sub>s</sub> | 160 km | 0.31 | 0.34 | 0.33 | 0.35 |
| Source-strike | &phi;<sub>s</sub> | 180 km | 0.32 | 0.35 | 0.34 | 0.34 |
| Source-strike | &phi;<sub>s</sub> | 200 km | 0.32 | 0.35 | 0.34 | 0.34 |
| Within-event, single-site | &phi;<sub>SS</sub> | 20 km | 0.37 | 0.32 | 0.35 | 0.33 |
| Within-event, single-site | &phi;<sub>SS</sub> | 40 km | 0.36 | 0.38 | 0.31 | 0.32 |
| Within-event, single-site | &phi;<sub>SS</sub> | 60 km | 0.35 | 0.35 | 0.35 | 0.32 |
| Within-event, single-site | &phi;<sub>SS</sub> | 80 km | 0.33 | 0.35 | 0.33 | 0.35 |
| Within-event, single-site | &phi;<sub>SS</sub> | 100 km | 0.3 | 0.35 | 0.32 | 0.35 |
| Within-event, single-site | &phi;<sub>SS</sub> | 120 km | 0.29 | 0.33 | 0.35 | 0.32 |
| Within-event, single-site | &phi;<sub>SS</sub> | 140 km | 0.3 | 0.35 | 0.32 | 0.34 |
| Within-event, single-site | &phi;<sub>SS</sub> | 160 km | 0.31 | 0.34 | 0.33 | 0.35 |
| Within-event, single-site | &phi;<sub>SS</sub> | 180 km | 0.32 | 0.35 | 0.34 | 0.34 |
| Within-event, single-site | &phi;<sub>SS</sub> | 200 km | 0.32 | 0.35 | 0.34 | 0.34 |
| Between-events | &tau; | 20 km | 0.12 | 0.12 | 0.18 | 0.22 |
| Between-events | &tau; | 40 km | 0.11 | 0.13 | 0.16 | 0.21 |
| Between-events | &tau; | 60 km | 0.12 | 0.12 | 0.19 | 0.2 |
| Between-events | &tau; | 80 km | 0.11 | 0.13 | 0.16 | 0.23 |
| Between-events | &tau; | 100 km | 0.09 | 0.13 | 0.17 | 0.22 |
| Between-events | &tau; | 120 km | 0.09 | 0.12 | 0.17 | 0.2 |
| Between-events | &tau; | 140 km | 0.11 | 0.12 | 0.15 | 0.21 |
| Between-events | &tau; | 160 km | 0.11 | 0.12 | 0.16 | 0.23 |
| Between-events | &tau; | 180 km | 0.11 | 0.12 | 0.17 | 0.22 |
| Between-events | &tau; | 200 km | 0.12 | 0.13 | 0.17 | 0.21 |

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
* Distance *[10 unique]*

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
|  | 0.36 | 0.35 | 0.33 | [0.21 0.62] |  | 0.37 | 0.35 | 0.34 | [0.16 0.64] |  | 0.36 | 0.34 | 0.33 | [0.18 0.56] |  | 0.33 | 0.32 | 0.31 | [0.18 0.5] |

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
|  | 0.37 | 0.36 | 0.35 | [0.21 0.64] |  | 0.37 | 0.35 | 0.34 | [0.18 0.63] |  | 0.39 | 0.37 | 0.36 | [0.19 0.63] |  | 0.33 | 0.33 | 0.32 | [0.2 0.53] |

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
|  | 0.35 | 0.34 | 0.34 | [0.17 0.65] |  | 0.41 | 0.39 | 0.38 | [0.16 0.73] |  | 0.39 | 0.37 | 0.35 | [0.21 0.62] |  | 0.35 | 0.35 | 0.33 | [0.2 0.64] |

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
|  | 0.38 | 0.37 | 0.36 | [0.21 0.58] |  | 0.36 | 0.35 | 0.34 | [0.17 0.53] |  | 0.38 | 0.37 | 0.36 | [0.18 0.63] |  | 0.36 | 0.34 | 0.32 | [0.16 0.72] |

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
|  | 0.37 | 0.36 | 0.36 | [0.23 0.6] |  | 0.36 | 0.35 | 0.35 | [0.18 0.55] |  | 0.41 | 0.4 | 0.4 | [0.21 0.64] |  | 0.38 | 0.37 | 0.36 | [0.22 0.61] |

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
|  | 0.33 | 0.33 | 0.32 | [0.19 0.5] |  | 0.38 | 0.37 | 0.36 | [0.16 0.55] |  | 0.42 | 0.4 | 0.4 | [0.2 0.66] |  | 0.4 | 0.39 | 0.37 | [0.21 0.67] |

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
|  | 0.37 | 0.36 | 0.36 | [0.24 0.48] |  | 0.32 | 0.31 | 0.3 | [0.19 0.48] |  | 0.35 | 0.34 | 0.32 | [0.19 0.62] |  | 0.33 | 0.32 | 0.32 | [0.15 0.5] |

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
|  | 0.35 | 0.35 | 0.35 | [0.23 0.48] |  | 0.35 | 0.34 | 0.34 | [0.2 0.54] |  | 0.35 | 0.34 | 0.34 | [0.13 0.56] |  | 0.32 | 0.31 | 0.3 | [0.16 0.47] |

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
|  | 0.29 | 0.29 | 0.28 | [0.17 0.41] |  | 0.33 | 0.33 | 0.32 | [0.18 0.51] |  | 0.35 | 0.34 | 0.33 | [0.16 0.55] |  | 0.32 | 0.32 | 0.31 | [0.17 0.49] |

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
|  | 0.36 | 0.35 | 0.33 | [0.21 0.62] |  | 0.37 | 0.35 | 0.34 | [0.16 0.64] |  | 0.36 | 0.34 | 0.33 | [0.18 0.56] |  | 0.33 | 0.32 | 0.31 | [0.18 0.5] |

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
|  | 0.37 | 0.36 | 0.35 | [0.21 0.64] |  | 0.37 | 0.35 | 0.34 | [0.18 0.63] |  | 0.39 | 0.37 | 0.36 | [0.19 0.63] |  | 0.33 | 0.33 | 0.32 | [0.2 0.53] |

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
|  | 0.35 | 0.34 | 0.34 | [0.17 0.65] |  | 0.41 | 0.39 | 0.38 | [0.16 0.73] |  | 0.39 | 0.37 | 0.35 | [0.21 0.62] |  | 0.35 | 0.35 | 0.33 | [0.2 0.64] |

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
|  | 0.38 | 0.37 | 0.36 | [0.21 0.58] |  | 0.36 | 0.35 | 0.34 | [0.17 0.53] |  | 0.38 | 0.37 | 0.36 | [0.18 0.63] |  | 0.36 | 0.34 | 0.32 | [0.16 0.72] |

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
|  | 0.37 | 0.36 | 0.36 | [0.23 0.6] |  | 0.36 | 0.35 | 0.35 | [0.18 0.55] |  | 0.41 | 0.4 | 0.4 | [0.21 0.64] |  | 0.38 | 0.37 | 0.36 | [0.22 0.61] |

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
|  | 0.33 | 0.33 | 0.32 | [0.19 0.5] |  | 0.38 | 0.37 | 0.36 | [0.16 0.55] |  | 0.42 | 0.4 | 0.4 | [0.2 0.66] |  | 0.4 | 0.39 | 0.37 | [0.21 0.67] |

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
|  | 0.37 | 0.36 | 0.36 | [0.24 0.48] |  | 0.32 | 0.31 | 0.3 | [0.19 0.48] |  | 0.35 | 0.34 | 0.32 | [0.19 0.62] |  | 0.33 | 0.32 | 0.32 | [0.15 0.5] |

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
|  | 0.35 | 0.35 | 0.35 | [0.23 0.48] |  | 0.35 | 0.34 | 0.34 | [0.2 0.54] |  | 0.35 | 0.34 | 0.34 | [0.13 0.56] |  | 0.32 | 0.31 | 0.3 | [0.16 0.47] |

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
|  | 0.29 | 0.29 | 0.28 | [0.17 0.41] |  | 0.33 | 0.33 | 0.32 | [0.18 0.51] |  | 0.35 | 0.34 | 0.33 | [0.16 0.55] |  | 0.32 | 0.32 | 0.31 | [0.17 0.49] |

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
| 0.31 | -4.39 | [-5 -3.39] | 0.3 | -5.1 | [-5.69 -4.41] | 0.3 | -5.83 | [-6.67 -5.16] | 0.27 | -6.52 | [-7.32 -5.9] |


### 60.0 km M6.5 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m6.5_60km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.4 | -5.36 | [-6.14 -4.4] | 0.3 | -5.92 | [-6.69 -5.19] | 0.32 | -6.63 | [-7.49 -6] | 0.26 | -7.26 | [-7.96 -6.57] |


### 120.0 km M6.5 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m6.5_120km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.25 | -5.88 | [-6.32 -5.11] | 0.34 | -6.44 | [-7.16 -5.64] | 0.31 | -7.07 | [-8.11 -6.3] | 0.29 | -7.66 | [-8.43 -6.85] |


### 20.0 km M7 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m7_20km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.24 | -3.7 | [-4.38 -3.23] | 0.25 | -4.52 | [-5.26 -3.81] | 0.25 | -5.07 | [-5.75 -4.56] | 0.28 | -5.59 | [-6.36 -4.95] |


### 60.0 km M7 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m7_60km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.28 | -4.58 | [-5.29 -4.03] | 0.28 | -5.21 | [-5.96 -4.6] | 0.24 | -5.79 | [-6.45 -5.29] | 0.25 | -6.34 | [-7.05 -5.8] |


### 120.0 km M7 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m7_120km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.16 | -5.01 | [-5.5 -4.66] | 0.28 | -5.74 | [-6.49 -5.04] | 0.24 | -6.22 | [-6.9 -5.68] | 0.28 | -6.72 | [-7.42 -5.98] |


### 20.0 km M7.5 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m7.5_20km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.12 | -2.92 | [-3.29 -2.63] | 0.12 | -3.72 | [-4.01 -3.45] | 0.18 | -4.34 | [-4.76 -3.93] | 0.22 | -4.87 | [-5.34 -4.19] |


### 60.0 km M7.5 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m7.5_60km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.12 | -3.68 | [-4.09 -3.39] | 0.12 | -4.32 | [-4.64 -4.05] | 0.19 | -4.89 | [-5.34 -4.39] | 0.2 | -5.55 | [-6.06 -5.04] |


### 120.0 km M7.5 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m7.5_120km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.09 | -4.06 | [-4.33 -3.84] | 0.12 | -4.86 | [-5.14 -4.55] | 0.17 | -5.38 | [-5.79 -4.94] | 0.2 | -5.92 | [-6.42 -5.34] |


## Azumth Dependence
*[(top)](#table-of-contents)*

### Rupture Strike Dependence
*[(top)](#table-of-contents)*

| Mag | Type | 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|-----|-----|
| **M6.5** | **&tau;** | ![Rupture Strike](resources/m6.5_dist_SOURCE_AZIMUTH_3s_between_events.png) | ![Rupture Strike](resources/m6.5_dist_SOURCE_AZIMUTH_5s_between_events.png) | ![Rupture Strike](resources/m6.5_dist_SOURCE_AZIMUTH_7.5s_between_events.png) | ![Rupture Strike](resources/m6.5_dist_SOURCE_AZIMUTH_10s_between_events.png) |
| **M7** | **&tau;** | ![Rupture Strike](resources/m7_dist_SOURCE_AZIMUTH_3s_between_events.png) | ![Rupture Strike](resources/m7_dist_SOURCE_AZIMUTH_5s_between_events.png) | ![Rupture Strike](resources/m7_dist_SOURCE_AZIMUTH_7.5s_between_events.png) | ![Rupture Strike](resources/m7_dist_SOURCE_AZIMUTH_10s_between_events.png) |
| **M7.5** | **&tau;** | ![Rupture Strike](resources/m7.5_dist_SOURCE_AZIMUTH_3s_between_events.png) | ![Rupture Strike](resources/m7.5_dist_SOURCE_AZIMUTH_5s_between_events.png) | ![Rupture Strike](resources/m7.5_dist_SOURCE_AZIMUTH_7.5s_between_events.png) | ![Rupture Strike](resources/m7.5_dist_SOURCE_AZIMUTH_10s_between_events.png) |
| **M6.5** | **Median SA** | ![Rupture Strike](resources/m6.5_dist_SOURCE_AZIMUTH_3s_median_sa.png) | ![Rupture Strike](resources/m6.5_dist_SOURCE_AZIMUTH_5s_median_sa.png) | ![Rupture Strike](resources/m6.5_dist_SOURCE_AZIMUTH_7.5s_median_sa.png) | ![Rupture Strike](resources/m6.5_dist_SOURCE_AZIMUTH_10s_median_sa.png) |
| **M7** | **Median SA** | ![Rupture Strike](resources/m7_dist_SOURCE_AZIMUTH_3s_median_sa.png) | ![Rupture Strike](resources/m7_dist_SOURCE_AZIMUTH_5s_median_sa.png) | ![Rupture Strike](resources/m7_dist_SOURCE_AZIMUTH_7.5s_median_sa.png) | ![Rupture Strike](resources/m7_dist_SOURCE_AZIMUTH_10s_median_sa.png) |
| **M7.5** | **Median SA** | ![Rupture Strike](resources/m7.5_dist_SOURCE_AZIMUTH_3s_median_sa.png) | ![Rupture Strike](resources/m7.5_dist_SOURCE_AZIMUTH_5s_median_sa.png) | ![Rupture Strike](resources/m7.5_dist_SOURCE_AZIMUTH_7.5s_median_sa.png) | ![Rupture Strike](resources/m7.5_dist_SOURCE_AZIMUTH_10s_median_sa.png) |

## CSV Files
*[(top)](#table-of-contents)*

| Magnitude | Distance | Site | CSV File |
|-----|-----|-----|-----|
| M6.5 | 20.0 km | USC | [sa_USC_m6.5_20.0km.csv.gz](resources/sa_USC_m6.5_20.0km.csv.gz) |
| M6.5 | 60.0 km | USC | [sa_USC_m6.5_60.0km.csv.gz](resources/sa_USC_m6.5_60.0km.csv.gz) |
| M6.5 | 120.0 km | USC | [sa_USC_m6.5_120.0km.csv.gz](resources/sa_USC_m6.5_120.0km.csv.gz) |
| M7 | 20.0 km | USC | [sa_USC_m7.0_20.0km.csv.gz](resources/sa_USC_m7.0_20.0km.csv.gz) |
| M7 | 60.0 km | USC | [sa_USC_m7.0_60.0km.csv.gz](resources/sa_USC_m7.0_60.0km.csv.gz) |
| M7 | 120.0 km | USC | [sa_USC_m7.0_120.0km.csv.gz](resources/sa_USC_m7.0_120.0km.csv.gz) |
| M7.5 | 20.0 km | USC | [sa_USC_m7.5_20.0km.csv.gz](resources/sa_USC_m7.5_20.0km.csv.gz) |
| M7.5 | 60.0 km | USC | [sa_USC_m7.5_60.0km.csv.gz](resources/sa_USC_m7.5_60.0km.csv.gz) |
| M7.5 | 120.0 km | USC | [sa_USC_m7.5_120.0km.csv.gz](resources/sa_USC_m7.5_120.0km.csv.gz) |

