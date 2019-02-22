# Bruce 2585 1myr Rotated Rupture Variability, M7.2 Reverse

This exercise uses translations and rotations to estimate ground motion variability from different sources. We begin by selecting a subset of similar ruptures which match a set of criteria (in this case, M7.2, Reverse, Dip=45). Each rupture is then reoriented such that its strike (following the Aki & Richards 1980 convention) is 0 degrees (due North, dipping to the right for normal or reverse ruptures). For each site, ruptures are translated such that their scalar seismic moment centroid is directly North of the site, and their 3-dimensional distance (Rrup) is as specified (we consider 3 distance[s] here).

We then  perform various rotations. We rotate the rupture in place around its centroid, holding the site-to-source centroid path and Rrup constant (henceforth 'Rupture Strike'). We also rotate ruptures around the site, holding Rrup and source orientation relative to the site constant but sampling different various paths (henceforth 'Path'). We do this for each unique combination of Rupture Strike, Path, Distance, Site, and Rupture.

*NOTE: This page uses the SCEC BBP to simulate a 1-dimensional velocity structure. Thus we expect no path variability, and plots of path variabilitiy are included only as verification of the method.*

[RSQSim Catalog Details](../#bruce-2585-1myr)

## Table Of Contents
* [Rupture Rotation Parameters](#rupture-rotation-parameters)
* [M7.2 Reverse RSQSim Rupture Match Criteria](#m72-reverse-rsqsim-rupture-match-criteria)
* [Sites](#sites)
* [Result Summary Table](#result-summary-table)
  * [Dist-Dependent Plot Table](#dist-dependent-plot-table)
* [Source-strike Variability](#source-strike-variability)
  * [Source-strike Variability Methodology](#source-strike-variability-methodology)
  * [20.0 km M7.2 Source-strike Results](#200-km-m72-source-strike-results)
  * [50.0 km M7.2 Source-strike Results](#500-km-m72-source-strike-results)
  * [100.0 km M7.2 Source-strike Results](#1000-km-m72-source-strike-results)
* [Within-event, single-site Variability](#within-event-single-site-variability)
  * [Within-event, single-site Variability Methodology](#within-event-single-site-variability-methodology)
  * [20.0 km M7.2 Within-event, single-site Results](#200-km-m72-within-event-single-site-results)
  * [50.0 km M7.2 Within-event, single-site Results](#500-km-m72-within-event-single-site-results)
  * [100.0 km M7.2 Within-event, single-site Results](#1000-km-m72-within-event-single-site-results)
* [Between-events Variability](#between-events-variability)
  * [Between-events Variability Methodology](#between-events-variability-methodology)
  * [20.0 km M7.2 Between-events Results](#200-km-m72-between-events-results)
  * [50.0 km M7.2 Between-events Results](#500-km-m72-between-events-results)
  * [100.0 km M7.2 Between-events Results](#1000-km-m72-between-events-results)
* [Azumth Dependence](#azumth-dependence)
  * [Rupture Strike Dependence](#rupture-strike-dependence)
* [CSV Files](#csv-files)
## Rupture Rotation Parameters

| Quantity | Variations | Description |
|-----|-----|-----|
| Rupture | 158 | Unique (but similar in faulting style and magnitude) ruptures which match the given scenario. |
| Site | 1 | Unique site locations. If 3-d, each will have unique velocity profiles. |
| Rupture Strike | 18 | Rupture strike conforming to the Aki & Richards (1980) convention, where dipping faults dip to the right of the rupture. If path rotation is also performed, this azimuth is relative to the path. |
| Path | 1 | Path from the site to the centroid of the rupture, in azimuthal degrees (0 is North) |
| Distance | 20.0, 50.0, 100.0 km | 3-dimensional distance between the site and the rupture surface. |
| **Total # Simulations** | **8532** | Total number of combinations of the above. |

## M7.2 Reverse RSQSim Rupture Match Criteria
*[(top)](#table-of-contents)*

We condisder 158 events in the catalog which match the following criteria:

* M=[7.15,7.25]
* Ztor=[0,5]
* Rake=[75,105]
* Dip=[35,55]

## Sites

| Name | Location | Vs30 (m/s) | Z1.0 (km) | Z2.5 (km) |
|-----|-----|-----|-----|-----|
| USC | *34.0192, -118.286* | 863 | N/A | N/A |

## Result Summary Table

| Type | Notation | Distance | 3s Std. Dev. | 5s Std. Dev. | 7.5s Std. Dev. | 10s Std. Dev. |
|-----|-----|-----|-----|-----|-----|-----|
| Source-strike | &phi;<sub>s</sub> | 20 km | 0.38 | 0.35 | 0.34 | 0.31 |
| Source-strike | &phi;<sub>s</sub> | 50 km | 0.36 | 0.37 | 0.34 | 0.33 |
| Source-strike | &phi;<sub>s</sub> | 100 km | 0.34 | 0.38 | 0.35 | 0.36 |
| Within-event, single-site | &phi;<sub>SS</sub> | 20 km | 0.38 | 0.35 | 0.34 | 0.31 |
| Within-event, single-site | &phi;<sub>SS</sub> | 50 km | 0.36 | 0.37 | 0.34 | 0.33 |
| Within-event, single-site | &phi;<sub>SS</sub> | 100 km | 0.34 | 0.38 | 0.35 | 0.36 |
| Between-events | &tau; | 20 km | 0.18 | 0.19 | 0.21 | 0.24 |
| Between-events | &tau; | 50 km | 0.21 | 0.22 | 0.21 | 0.25 |
| Between-events | &tau; | 100 km | 0.17 | 0.23 | 0.21 | 0.27 |

### Dist-Dependent Plot Table
*[(top)](#table-of-contents)*

| **&phi;<sub>s</sub>** | ![&phi;<sub>s</sub>](resources/source_strike_m7.2_dist_periods.png) |
|-----|-----|
| **&phi;<sub>SS</sub>** | ![&phi;<sub>SS</sub>](resources/within_event_ss_m7.2_dist_periods.png) |
| **&tau;** | ![&tau;](resources/between_events_m7.2_dist_periods.png) |


## Source-strike Variability
*[(top)](#table-of-contents)*

### Source-strike Variability Methodology
*[(top)](#table-of-contents)*

Source-strike variability, denoted &phi;<sub>s</sub> in Aki & Richards (1980), is computed separately for each:

* Site *[1 unique]*
* Distance *[3 unique]*

Then, for each unique combination of:

* Rupture *[158 unique]*
* Path *[1 unique]*

we compute residuals, &delta;W<sub>es</sub>, of the natural-log ground motions (relative to the median), computed across all 18 combinations of:

* Rupture Strike *[18 unique]*

We take &phi;<sub>s</sub> to be the standard deviation of all residuals, &delta;W<sub>es</sub>, across each combination of Rupture, Path.

Here is an exmample with 5 rotations, which would be repeated for each combination of [Rupture, Path]. The site is shown with a blue square, and initially oriented rupture in bold with its hypocenter as a red star and centroid a green circle. Rotations of that rupture are in gray:

![Example](resources/example_source_strike.png)


### 20.0 km M7.2 Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_m7.2_20km_std_dev.png)

| 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.38 | 0.38 | 0.38 | [0.21 0.61] |  | 0.35 | 0.35 | 0.34 | [0.17 0.59] |  | 0.34 | 0.34 | 0.35 | [0.19 0.58] |  | 0.31 | 0.31 | 0.3 | [0.14 0.51] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m7.2_20km_3s_hist.png) | ![5s](resources/source_strike_m7.2_20km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m7.2_20km_7.5s_hist.png) | ![10s](resources/source_strike_m7.2_20km_10s_hist.png) |

| 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|
| ![Scatter](resources/source_strike_scatter__v_prop_3s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_5s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_7.5s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_10s_std_dev.png) |
| ![Scatter](resources/source_strike_scatter__v_prop_3s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_5s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_7.5s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_10s_residual.png) |


### 50.0 km M7.2 Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_m7.2_50km_std_dev.png)

| 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.36 | 0.36 | 0.36 | [0.23 0.59] |  | 0.37 | 0.37 | 0.36 | [0.21 0.63] |  | 0.34 | 0.34 | 0.34 | [0.17 0.5] |  | 0.33 | 0.33 | 0.32 | [0.17 0.59] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m7.2_50km_3s_hist.png) | ![5s](resources/source_strike_m7.2_50km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m7.2_50km_7.5s_hist.png) | ![10s](resources/source_strike_m7.2_50km_10s_hist.png) |

| 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|
| ![Scatter](resources/source_strike_scatter__v_prop_3s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_5s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_7.5s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_10s_std_dev.png) |
| ![Scatter](resources/source_strike_scatter__v_prop_3s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_5s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_7.5s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_10s_residual.png) |


### 100.0 km M7.2 Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_m7.2_100km_std_dev.png)

| 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.34 | 0.34 | 0.34 | [0.21 0.5] |  | 0.38 | 0.38 | 0.38 | [0.21 0.56] |  | 0.35 | 0.35 | 0.34 | [0.17 0.54] |  | 0.36 | 0.36 | 0.35 | [0.19 0.61] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m7.2_100km_3s_hist.png) | ![5s](resources/source_strike_m7.2_100km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m7.2_100km_7.5s_hist.png) | ![10s](resources/source_strike_m7.2_100km_10s_hist.png) |

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
* Distance *[3 unique]*

Then, for each unique combination of:

* Rupture *[158 unique]*

we compute residuals, &delta;W<sub>es</sub>, of the natural-log ground motions (relative to the median), computed across all 18 combinations of:

* Rupture Strike *[18 unique]*
* Path *[1 unique]*

We take &phi;<sub>SS</sub> to be the standard deviation of all residuals, &delta;W<sub>es</sub>, across each combination of Rupture.

Here is an exmample with 5 rotations, which would be repeated for each combination of [Rupture]. The site is shown with a blue square, and initially oriented rupture in bold with its hypocenter as a red star and centroid a green circle. Rotations of that rupture are in gray:

![Example](resources/example_within_event_ss.png)


### 20.0 km M7.2 Within-event, single-site Results
*[(top)](#table-of-contents)*

![Within-event, single-site Variability](resources/within_event_ss_m7.2_20km_std_dev.png)

| 3s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 10s &phi;<sub>SS</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.38 | 0.38 | 0.38 | [0.21 0.61] |  | 0.35 | 0.35 | 0.34 | [0.17 0.59] |  | 0.34 | 0.34 | 0.35 | [0.19 0.58] |  | 0.31 | 0.31 | 0.3 | [0.14 0.51] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_ss_m7.2_20km_3s_hist.png) | ![5s](resources/within_event_ss_m7.2_20km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_ss_m7.2_20km_7.5s_hist.png) | ![10s](resources/within_event_ss_m7.2_20km_10s_hist.png) |

| 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|
| ![Scatter](resources/within_event_ss_scatter__v_prop_3s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_5s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_7.5s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_10s_std_dev.png) |
| ![Scatter](resources/within_event_ss_scatter__v_prop_3s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_5s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_7.5s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_10s_residual.png) |


### 50.0 km M7.2 Within-event, single-site Results
*[(top)](#table-of-contents)*

![Within-event, single-site Variability](resources/within_event_ss_m7.2_50km_std_dev.png)

| 3s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 10s &phi;<sub>SS</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.36 | 0.36 | 0.36 | [0.23 0.59] |  | 0.37 | 0.37 | 0.36 | [0.21 0.63] |  | 0.34 | 0.34 | 0.34 | [0.17 0.5] |  | 0.33 | 0.33 | 0.32 | [0.17 0.59] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_ss_m7.2_50km_3s_hist.png) | ![5s](resources/within_event_ss_m7.2_50km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_ss_m7.2_50km_7.5s_hist.png) | ![10s](resources/within_event_ss_m7.2_50km_10s_hist.png) |

| 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|
| ![Scatter](resources/within_event_ss_scatter__v_prop_3s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_5s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_7.5s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_10s_std_dev.png) |
| ![Scatter](resources/within_event_ss_scatter__v_prop_3s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_5s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_7.5s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_10s_residual.png) |


### 100.0 km M7.2 Within-event, single-site Results
*[(top)](#table-of-contents)*

![Within-event, single-site Variability](resources/within_event_ss_m7.2_100km_std_dev.png)

| 3s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 10s &phi;<sub>SS</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.34 | 0.34 | 0.34 | [0.21 0.5] |  | 0.38 | 0.38 | 0.38 | [0.21 0.56] |  | 0.35 | 0.35 | 0.34 | [0.17 0.54] |  | 0.36 | 0.36 | 0.35 | [0.19 0.61] |

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_ss_m7.2_100km_3s_hist.png) | ![5s](resources/within_event_ss_m7.2_100km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_ss_m7.2_100km_7.5s_hist.png) | ![10s](resources/within_event_ss_m7.2_100km_10s_hist.png) |

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
* Distance *[3 unique]*

We first compute the median natural-log ground motion, &delta;B<sub>e</sub>, for each combination of:

* Rupture *[158 unique]*

That median, &delta;B<sub>e</sub>, is computed across all 18 combinations of:

* Rupture Strike *[18 unique]*
* Path *[1 unique]*

We take &tau; to be the standard deviation of all &delta;B<sub>e</sub>.

Here is an exmample with 5 rotations, which would be repeated for each combination of [Rupture]. The site is shown with a blue square, and initially oriented rupture in bold with its hypocenter as a red star and centroid a green circle. Rotations of that rupture are in gray:

![Example](resources/example_between_events.png)


### 20.0 km M7.2 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m7.2_20km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.18 | -3.2 | [-3.72 -2.79] | 0.19 | -4.05 | [-4.51 -3.49] | 0.21 | -4.69 | [-5.27 -4.01] | 0.24 | -5.24 | [-5.83 -4.58] |


### 50.0 km M7.2 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m7.2_50km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.21 | -4 | [-4.52 -3.53] | 0.22 | -4.67 | [-5.29 -4.03] | 0.21 | -5.4 | [-6.24 -4.74] | 0.25 | -5.82 | [-6.49 -5.26] |


### 100.0 km M7.2 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m7.2_100km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.17 | -4.59 | [-5.08 -4.17] | 0.23 | -5.2 | [-5.76 -4.58] | 0.21 | -5.87 | [-6.72 -5.11] | 0.27 | -6.13 | [-6.81 -5.45] |


## Azumth Dependence
*[(top)](#table-of-contents)*

### Rupture Strike Dependence
*[(top)](#table-of-contents)*

| Type | 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|-----|
| **&tau;** | ![Rupture Strike](resources/m7.2_dist_SOURCE_AZIMUTH_3s_between_events.png) | ![Rupture Strike](resources/m7.2_dist_SOURCE_AZIMUTH_5s_between_events.png) | ![Rupture Strike](resources/m7.2_dist_SOURCE_AZIMUTH_7.5s_between_events.png) | ![Rupture Strike](resources/m7.2_dist_SOURCE_AZIMUTH_10s_between_events.png) |
| **Median SA** | ![Rupture Strike](resources/m7.2_dist_SOURCE_AZIMUTH_3s_median_sa.png) | ![Rupture Strike](resources/m7.2_dist_SOURCE_AZIMUTH_5s_median_sa.png) | ![Rupture Strike](resources/m7.2_dist_SOURCE_AZIMUTH_7.5s_median_sa.png) | ![Rupture Strike](resources/m7.2_dist_SOURCE_AZIMUTH_10s_median_sa.png) |

## CSV Files
*[(top)](#table-of-contents)*

| Magnitude | Distance | Site | CSV File |
|-----|-----|-----|-----|
| M7.2 | 20.0 km | USC | [sa_USC_m7.2_20.0km.csv.gz](resources/sa_USC_m7.2_20.0km.csv.gz) |
| M7.2 | 50.0 km | USC | [sa_USC_m7.2_50.0km.csv.gz](resources/sa_USC_m7.2_50.0km.csv.gz) |
| M7.2 | 100.0 km | USC | [sa_USC_m7.2_100.0km.csv.gz](resources/sa_USC_m7.2_100.0km.csv.gz) |

