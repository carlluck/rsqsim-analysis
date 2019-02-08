# Bruce 2585 Rotated Rupture Variability, M6.6 Reverse

This exercise uses translations and rotations to estimate ground motion variability from different sources. We begin by selecting a subset of similar ruptures which match a set of criteria (in this case, M6.6, Reverse, Dip=45, Ztor=3). Each rupture is then reoriented such that its strike (following the Aki & Richards 1980 convention) is 0 degrees (due North, dipping to the right for normal or reverse ruptures). For each site, ruptures are translated such that their scalar seismic moment centroid is directly North of the site, and their 3-dimensional distance (Rrup) is as specified (we consider 2 distance[s] here).

We then  perform various rotations. We rotate the rupture in place around its centroid, holding the site-to-source centroid path and Rrup constant (henceforth 'Rupture Strike'). We also rotate ruptures around the site, holding Rrup and source orientation relative to the site constant but sampling different various paths (henceforth 'Path'). We do this for each unique combination of Rupture Strike, Path, Distance, Site, and Rupture.

*NOTE: This page uses the SCEC BBP to simulate a 1-dimensional velocity structure. Thus we expect no path variability, and plots of path variabilitiy are included only as verification of the method.*

[RSQSim Catalog Details](../#bruce-2585)

## Table Of Contents
* [Rupture Rotation Parameters](#rupture-rotation-parameters)
* [M6.6 Reverse RSQSim Rupture Match Criteria](#m66-reverse-rsqsim-rupture-match-criteria)
* [Sites](#sites)
* [Result Summary Table](#result-summary-table)
  * [Dist-Dependent Plot Table](#dist-dependent-plot-table)
* [Path-to-path Variability](#path-to-path-variability)
  * [Path-to-path Variability Methodology](#path-to-path-variability-methodology)
  * [20.0 km M6.6 Path-to-path Results](#200-km-m66-path-to-path-results)
  * [50.0 km M6.6 Path-to-path Results](#500-km-m66-path-to-path-results)
* [Source-strike Variability](#source-strike-variability)
  * [Source-strike Variability Methodology](#source-strike-variability-methodology)
  * [20.0 km M6.6 Source-strike Results](#200-km-m66-source-strike-results)
  * [50.0 km M6.6 Source-strike Results](#500-km-m66-source-strike-results)
* [Within-event, single-site Variability](#within-event-single-site-variability)
  * [Within-event, single-site Variability Methodology](#within-event-single-site-variability-methodology)
  * [20.0 km M6.6 Within-event, single-site Results](#200-km-m66-within-event-single-site-results)
  * [50.0 km M6.6 Within-event, single-site Results](#500-km-m66-within-event-single-site-results)
* [Between-events Variability](#between-events-variability)
  * [Between-events Variability Methodology](#between-events-variability-methodology)
  * [20.0 km M6.6 Between-events Results](#200-km-m66-between-events-results)
  * [50.0 km M6.6 Between-events Results](#500-km-m66-between-events-results)
## Rupture Rotation Parameters

| Quantity | Variations | Description |
|-----|-----|-----|
| Rupture | 75 | Unique (but similar in faulting style and magnitude) ruptures which match the given scenario. |
| Site | 10 | Unique site locations. If 3-d, each will have unique velocity profiles. |
| Rupture Strike | 36 | Rupture strike conforming to the Aki & Richards (1980) convention, where dipping faults dip to the right of the rupture. If path rotation is also performed, this azimuth is relative to the path. |
| Path | 4 | Path from the site to the centroid of the rupture, in azimuthal degrees (0 is North) |
| Distance | 20.0, 50.0 km | 3-dimensional distance between the site and the rupture surface. |
| **Total # Simulations** | **216000** | Total number of combinations of the above. |

## M6.6 Reverse RSQSim Rupture Match Criteria
*[(top)](#table-of-contents)*

We condisder 75 events in the catalog which match the following criteria:

* M=[6.55,6.65]
* Ztor=[1,5]
* Rake=[75,105]
* Dip=[35,55]

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
| Source-strike | &phi;<sub>s</sub> | 20 km | 0.36 | 0.39 | 0.4 | 0.35 |
| Source-strike | &phi;<sub>s</sub> | 50 km | 0.36 | 0.42 | 0.37 | 0.35 |
| Within-event, single-site | &phi;<sub>SS</sub> | 20 km | 0.36 | 0.39 | 0.4 | 0.35 |
| Within-event, single-site | &phi;<sub>SS</sub> | 50 km | 0.36 | 0.42 | 0.37 | 0.35 |
| Between-events | &tau; | 20 km | 0.32 | 0.31 | 0.31 | 0.29 |
| Between-events | &tau; | 50 km | 0.37 | 0.35 | 0.3 | 0.31 |

### Dist-Dependent Plot Table
*[(top)](#table-of-contents)*

| **&phi;<sub>P2P</sub>** | ![&phi;<sub>P2P</sub>](resources/path_m6.6_dist_periods.png) |
|-----|-----|
| **&phi;<sub>s</sub>** | ![&phi;<sub>s</sub>](resources/source_strike_m6.6_dist_periods.png) |
| **&phi;<sub>SS</sub>** | ![&phi;<sub>SS</sub>](resources/within_event_ss_m6.6_dist_periods.png) |
| **&tau;** | ![&tau;](resources/between_events_m6.6_dist_periods.png) |


## Path-to-path Variability
*[(top)](#table-of-contents)*

### Path-to-path Variability Methodology
*[(top)](#table-of-contents)*

Path-to-path variability, denoted &phi;<sub>P2P</sub> in Al Atik (2010), is computed separately for each:

* Site *[10 unique]*
* Distance *[2 unique]*

Then, for each unique combination of:

* Rupture *[75 unique]*
* Rupture Strike *[36 unique]*

we compute residuals of the natural-log ground motions (relative to the median), computed across all 4 combinations of:

* Path *[4 unique]*

We take &phi;<sub>P2P</sub> to be the standard deviation of all residuals across each combination of Rupture, Rupture Strike. We also compute the total standard deviation across all residuals from all sites. This total value is reported as **ALL SITES** and in summary plots/tables.

Here is an exmample with 5 rotations, which would be repeated for each combination of [Rupture, Rupture Strike]. The site is shown with a blue square, and initially oriented rupture in bold with its hypocenter as a red star and centroid a green circle. Rotations of that rupture are in gray:

![Example](resources/example_path.png)


### 20.0 km M6.6 Path-to-path Results
*[(top)](#table-of-contents)*

![Path-to-path Variability](resources/path_m6.6_20km_std_dev.png)

| Site | 3s &phi;<sub>P2P</sub> | Total | Mean | Median | Range | 5s &phi;<sub>P2P</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>P2P</sub> | Total | Mean | Median | Range | 10s &phi;<sub>P2P</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| LAPD |  | 0 | 0 | 0 | [0 0.09] |  | 0 | 0 | 0 | [0 0.04] |  | 0 | 0 | 0 | [0 0.06] |  | 0 | 0 | 0 | [0 0.04] |
| PAS |  | 0 | 0 | 0 | [0 0.02] |  | 0 | 0 | 0 | [0 0.01] |  | 0 | 0 | 0 | [0 0.01] |  | 0 | 0 | 0 | [0 0.01] |
| SBSM |  | 0 | 0 | 0 | [0 0.03] |  | 0 | 0 | 0 | [0 0.01] |  | 0 | 0 | 0 | [0 0.01] |  | 0 | 0 | 0 | [0 0.01] |
| SMCA |  | 0 | 0 | 0 | [0 0.03] |  | 0 | 0 | 0 | [0 0.02] |  | 0 | 0 | 0 | [0 0.01] |  | 0 | 0 | 0 | [0 0.01] |
| STNI |  | 0 | 0 | 0 | [0 0.02] |  | 0 | 0 | 0 | [0 0.01] |  | 0 | 0 | 0 | [0 0.01] |  | 0 | 0 | 0 | [0 0.01] |
| USC |  | 0 | 0 | 0 | [0 0.03] |  | 0 | 0 | 0 | [0 0.02] |  | 0 | 0 | 0 | [0 0.01] |  | 0 | 0 | 0 | [0 0.01] |
| WNGC |  | 0 | 0 | 0 | [0 0.02] |  | 0 | 0 | 0 | [0 0.01] |  | 0 | 0 | 0 | [0 0.01] |  | 0 | 0 | 0 | [0 0.01] |
| s119 |  | 0 | 0 | 0 | [0 0.03] |  | 0 | 0 | 0 | [0 0.01] |  | 0 | 0 | 0 | [0 0.01] |  | 0 | 0 | 0 | [0 0.01] |
| s279 |  | 0 | 0 | 0 | [0 0.03] |  | 0 | 0 | 0 | [0 0.01] |  | 0 | 0 | 0 | [0 0.01] |  | 0 | 0 | 0 | [0 0.01] |
| s480 |  | 0 | 0 | 0 | [0 0.03] |  | 0 | 0 | 0 | [0 0.02] |  | 0 | 0 | 0 | [0 0.01] |  | 0 | 0 | 0 | [0 0.01] |
| **ALL SITES** |  | **0** | **0** | **0** | **[0 0.09]** |  | **0** | **0** | **0** | **[0 0.04]** |  | **0** | **0** | **0** | **[0 0.06]** |  | **0** | **0** | **0** | **[0 0.04]** |

| 3s | 5s |
|-----|-----|
| ![3s](resources/path_m6.6_20km_3s_hist.png) | ![5s](resources/path_m6.6_20km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/path_m6.6_20km_7.5s_hist.png) | ![10s](resources/path_m6.6_20km_10s_hist.png) |


### 50.0 km M6.6 Path-to-path Results
*[(top)](#table-of-contents)*

![Path-to-path Variability](resources/path_m6.6_50km_std_dev.png)

| Site | 3s &phi;<sub>P2P</sub> | Total | Mean | Median | Range | 5s &phi;<sub>P2P</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>P2P</sub> | Total | Mean | Median | Range | 10s &phi;<sub>P2P</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| LAPD |  | 0 | 0 | 0 | [0 0.06] |  | 0 | 0 | 0 | [0 0.03] |  | 0 | 0 | 0 | [0 0.01] |  | 0 | 0 | 0 | [0 0.01] |
| PAS |  | 0 | 0 | 0 | [0 0.07] |  | 0 | 0 | 0 | [0 0.04] |  | 0 | 0 | 0 | [0 0.02] |  | 0 | 0 | 0 | [0 0.02] |
| SBSM |  | 0 | 0 | 0 | [0 0.04] |  | 0 | 0 | 0 | [0 0.02] |  | 0 | 0 | 0 | [0 0.02] |  | 0 | 0 | 0 | [0 0.01] |
| SMCA |  | 0 | 0 | 0 | [0 0.09] |  | 0 | 0 | 0 | [0 0.04] |  | 0 | 0 | 0 | [0 0.01] |  | 0 | 0 | 0 | [0 0.02] |
| STNI |  | 0 | 0 | 0 | [0 0.05] |  | 0 | 0 | 0 | [0 0.03] |  | 0 | 0 | 0 | [0 0.05] |  | 0 | 0 | 0 | [0 0.05] |
| USC |  | 0 | 0 | 0 | [0 0.05] |  | 0 | 0 | 0 | [0 0.05] |  | 0 | 0 | 0 | [0 0.02] |  | 0 | 0 | 0 | [0 0.02] |
| WNGC |  | 0 | 0 | 0 | [0 0.04] |  | 0 | 0 | 0 | [0 0.03] |  | 0 | 0 | 0 | [0 0.01] |  | 0 | 0 | 0 | [0 0.01] |
| s119 |  | 0 | 0 | 0 | [0 0.05] |  | 0 | 0 | 0 | [0 0.04] |  | 0 | 0 | 0 | [0 0.02] |  | 0 | 0 | 0 | [0 0.01] |
| s279 |  | 0 | 0 | 0 | [0 0.06] |  | 0 | 0 | 0 | [0 0.04] |  | 0 | 0 | 0 | [0 0.02] |  | 0 | 0 | 0 | [0 0.02] |
| s480 |  | 0 | 0 | 0 | [0 0.07] |  | 0 | 0 | 0 | [0 0.03] |  | 0 | 0 | 0 | [0 0.02] |  | 0 | 0 | 0 | [0 0.02] |
| **ALL SITES** |  | **0** | **0** | **0** | **[0 0.09]** |  | **0** | **0** | **0** | **[0 0.05]** |  | **0** | **0** | **0** | **[0 0.05]** |  | **0** | **0** | **0** | **[0 0.05]** |

| 3s | 5s |
|-----|-----|
| ![3s](resources/path_m6.6_50km_3s_hist.png) | ![5s](resources/path_m6.6_50km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/path_m6.6_50km_7.5s_hist.png) | ![10s](resources/path_m6.6_50km_10s_hist.png) |


## Source-strike Variability
*[(top)](#table-of-contents)*

### Source-strike Variability Methodology
*[(top)](#table-of-contents)*

Source-strike variability, denoted &phi;<sub>s</sub> in Aki & Richards (1980), is computed separately for each:

* Site *[10 unique]*
* Distance *[2 unique]*

Then, for each unique combination of:

* Rupture *[75 unique]*
* Path *[4 unique]*

we compute residuals, &delta;W<sub>es</sub>, of the natural-log ground motions (relative to the median), computed across all 36 combinations of:

* Rupture Strike *[36 unique]*

We take &phi;<sub>s</sub> to be the standard deviation of all residuals, &delta;W<sub>es</sub>, across each combination of Rupture, Path. We also compute the total standard deviation across all residuals from all sites. This total value is reported as **ALL SITES** and in summary plots/tables.

Here is an exmample with 5 rotations, which would be repeated for each combination of [Rupture, Path]. The site is shown with a blue square, and initially oriented rupture in bold with its hypocenter as a red star and centroid a green circle. Rotations of that rupture are in gray:

![Example](resources/example_source_strike.png)


### 20.0 km M6.6 Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_m6.6_20km_std_dev.png)

| Site | 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| LAPD |  | 0.36 | 0.35 | 0.36 | [0.15 0.56] |  | 0.39 | 0.37 | 0.37 | [0.18 0.66] |  | 0.4 | 0.38 | 0.36 | [0.2 0.61] |  | 0.35 | 0.34 | 0.33 | [0.19 0.55] |
| PAS |  | 0.36 | 0.35 | 0.36 | [0.16 0.58] |  | 0.39 | 0.37 | 0.36 | [0.18 0.68] |  | 0.4 | 0.38 | 0.36 | [0.2 0.62] |  | 0.36 | 0.34 | 0.33 | [0.2 0.54] |
| SBSM |  | 0.36 | 0.35 | 0.36 | [0.17 0.6] |  | 0.39 | 0.37 | 0.36 | [0.18 0.68] |  | 0.4 | 0.38 | 0.36 | [0.21 0.62] |  | 0.36 | 0.34 | 0.33 | [0.2 0.54] |
| SMCA |  | 0.36 | 0.35 | 0.35 | [0.15 0.58] |  | 0.39 | 0.37 | 0.36 | [0.18 0.68] |  | 0.4 | 0.38 | 0.36 | [0.2 0.61] |  | 0.35 | 0.34 | 0.33 | [0.21 0.53] |
| STNI |  | 0.36 | 0.35 | 0.36 | [0.16 0.59] |  | 0.39 | 0.37 | 0.36 | [0.18 0.68] |  | 0.4 | 0.38 | 0.36 | [0.2 0.62] |  | 0.36 | 0.34 | 0.33 | [0.2 0.54] |
| USC |  | 0.36 | 0.35 | 0.36 | [0.16 0.58] |  | 0.39 | 0.37 | 0.36 | [0.18 0.68] |  | 0.4 | 0.38 | 0.36 | [0.2 0.62] |  | 0.36 | 0.34 | 0.33 | [0.2 0.54] |
| WNGC |  | 0.36 | 0.35 | 0.36 | [0.16 0.59] |  | 0.39 | 0.37 | 0.36 | [0.18 0.68] |  | 0.4 | 0.38 | 0.36 | [0.2 0.62] |  | 0.36 | 0.34 | 0.33 | [0.2 0.54] |
| s119 |  | 0.36 | 0.35 | 0.35 | [0.15 0.58] |  | 0.39 | 0.37 | 0.36 | [0.18 0.68] |  | 0.4 | 0.38 | 0.36 | [0.2 0.61] |  | 0.35 | 0.34 | 0.33 | [0.21 0.53] |
| s279 |  | 0.36 | 0.35 | 0.35 | [0.15 0.58] |  | 0.39 | 0.37 | 0.36 | [0.18 0.68] |  | 0.4 | 0.38 | 0.36 | [0.2 0.61] |  | 0.35 | 0.34 | 0.33 | [0.21 0.53] |
| s480 |  | 0.36 | 0.35 | 0.35 | [0.15 0.58] |  | 0.39 | 0.37 | 0.36 | [0.18 0.68] |  | 0.4 | 0.38 | 0.36 | [0.2 0.61] |  | 0.35 | 0.34 | 0.33 | [0.21 0.53] |
| **ALL SITES** |  | **0.36** | **0.35** | **0.36** | **[0.15 0.6]** |  | **0.39** | **0.37** | **0.36** | **[0.18 0.68]** |  | **0.4** | **0.38** | **0.36** | **[0.2 0.62]** |  | **0.35** | **0.34** | **0.33** | **[0.19 0.55]** |

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m6.6_20km_3s_hist.png) | ![5s](resources/source_strike_m6.6_20km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m6.6_20km_7.5s_hist.png) | ![10s](resources/source_strike_m6.6_20km_10s_hist.png) |

| 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|
| ![Scatter](resources/source_strike_scatter__v_prop_3s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_5s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_7.5s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_10s_std_dev.png) |
| ![Scatter](resources/source_strike_scatter__v_prop_3s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_5s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_7.5s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_10s_residual.png) |


### 50.0 km M6.6 Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_m6.6_50km_std_dev.png)

| Site | 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| LAPD |  | 0.36 | 0.35 | 0.35 | [0.15 0.55] |  | 0.42 | 0.4 | 0.38 | [0.15 0.71] |  | 0.37 | 0.36 | 0.34 | [0.14 0.63] |  | 0.35 | 0.34 | 0.32 | [0.21 0.54] |
| PAS |  | 0.36 | 0.35 | 0.34 | [0.16 0.53] |  | 0.42 | 0.4 | 0.38 | [0.15 0.7] |  | 0.37 | 0.36 | 0.34 | [0.15 0.64] |  | 0.35 | 0.34 | 0.32 | [0.21 0.55] |
| SBSM |  | 0.36 | 0.35 | 0.35 | [0.16 0.53] |  | 0.42 | 0.4 | 0.38 | [0.15 0.7] |  | 0.37 | 0.36 | 0.34 | [0.15 0.64] |  | 0.35 | 0.34 | 0.32 | [0.21 0.55] |
| SMCA |  | 0.36 | 0.35 | 0.35 | [0.15 0.55] |  | 0.42 | 0.4 | 0.38 | [0.15 0.71] |  | 0.37 | 0.36 | 0.34 | [0.14 0.63] |  | 0.35 | 0.34 | 0.32 | [0.21 0.54] |
| STNI |  | 0.36 | 0.35 | 0.35 | [0.16 0.55] |  | 0.42 | 0.4 | 0.38 | [0.15 0.7] |  | 0.37 | 0.36 | 0.34 | [0.15 0.64] |  | 0.35 | 0.34 | 0.32 | [0.21 0.55] |
| USC |  | 0.36 | 0.35 | 0.34 | [0.16 0.53] |  | 0.42 | 0.4 | 0.38 | [0.15 0.69] |  | 0.37 | 0.36 | 0.34 | [0.15 0.64] |  | 0.35 | 0.34 | 0.32 | [0.21 0.55] |
| WNGC |  | 0.36 | 0.35 | 0.34 | [0.16 0.53] |  | 0.42 | 0.4 | 0.38 | [0.15 0.7] |  | 0.37 | 0.36 | 0.34 | [0.15 0.64] |  | 0.35 | 0.34 | 0.32 | [0.21 0.55] |
| s119 |  | 0.36 | 0.35 | 0.35 | [0.15 0.55] |  | 0.42 | 0.4 | 0.38 | [0.15 0.71] |  | 0.37 | 0.36 | 0.34 | [0.14 0.63] |  | 0.35 | 0.34 | 0.32 | [0.21 0.54] |
| s279 |  | 0.36 | 0.35 | 0.35 | [0.15 0.55] |  | 0.42 | 0.4 | 0.38 | [0.15 0.71] |  | 0.37 | 0.36 | 0.34 | [0.14 0.63] |  | 0.35 | 0.34 | 0.32 | [0.21 0.54] |
| s480 |  | 0.36 | 0.35 | 0.35 | [0.15 0.55] |  | 0.42 | 0.4 | 0.38 | [0.16 0.71] |  | 0.37 | 0.36 | 0.34 | [0.14 0.63] |  | 0.35 | 0.34 | 0.32 | [0.21 0.54] |
| **ALL SITES** |  | **0.36** | **0.35** | **0.35** | **[0.15 0.55]** |  | **0.42** | **0.4** | **0.38** | **[0.15 0.71]** |  | **0.37** | **0.36** | **0.34** | **[0.14 0.64]** |  | **0.35** | **0.34** | **0.32** | **[0.21 0.55]** |

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m6.6_50km_3s_hist.png) | ![5s](resources/source_strike_m6.6_50km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m6.6_50km_7.5s_hist.png) | ![10s](resources/source_strike_m6.6_50km_10s_hist.png) |

| 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|
| ![Scatter](resources/source_strike_scatter__v_prop_3s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_5s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_7.5s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_10s_std_dev.png) |
| ![Scatter](resources/source_strike_scatter__v_prop_3s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_5s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_7.5s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_10s_residual.png) |


## Within-event, single-site Variability
*[(top)](#table-of-contents)*

### Within-event, single-site Variability Methodology
*[(top)](#table-of-contents)*

Within-event, single-site variability, denoted &phi;<sub>SS</sub> in Al Atik (2010), is computed separately for each:

* Site *[10 unique]*
* Distance *[2 unique]*

Then, for each unique combination of:

* Rupture *[75 unique]*

we compute residuals, &delta;W<sub>es</sub>, of the natural-log ground motions (relative to the median), computed across all 144 combinations of:

* Rupture Strike *[36 unique]*
* Path *[4 unique]*

We take &phi;<sub>SS</sub> to be the standard deviation of all residuals, &delta;W<sub>es</sub>, across each combination of Rupture. We also compute the total standard deviation across all residuals from all sites. This total value is reported as **ALL SITES** and in summary plots/tables.

Here is an exmample with 5 rotations, which would be repeated for each combination of [Rupture]. The site is shown with a blue square, and initially oriented rupture in bold with its hypocenter as a red star and centroid a green circle. Rotations of that rupture are in gray:

![Example](resources/example_within_event_ss.png)


### 20.0 km M6.6 Within-event, single-site Results
*[(top)](#table-of-contents)*

![Within-event, single-site Variability](resources/within_event_ss_m6.6_20km_std_dev.png)

| Site | 3s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 10s &phi;<sub>SS</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| LAPD |  | 0.36 | 0.35 | 0.35 | [0.15 0.55] |  | 0.39 | 0.36 | 0.36 | [0.18 0.66] |  | 0.4 | 0.37 | 0.36 | [0.2 0.6] |  | 0.35 | 0.33 | 0.33 | [0.19 0.54] |
| PAS |  | 0.36 | 0.35 | 0.35 | [0.16 0.58] |  | 0.39 | 0.37 | 0.36 | [0.18 0.67] |  | 0.4 | 0.37 | 0.36 | [0.2 0.61] |  | 0.36 | 0.34 | 0.33 | [0.2 0.53] |
| SBSM |  | 0.36 | 0.35 | 0.36 | [0.16 0.59] |  | 0.39 | 0.37 | 0.36 | [0.18 0.67] |  | 0.4 | 0.37 | 0.36 | [0.2 0.61] |  | 0.36 | 0.34 | 0.33 | [0.2 0.53] |
| SMCA |  | 0.36 | 0.35 | 0.35 | [0.15 0.57] |  | 0.39 | 0.36 | 0.36 | [0.18 0.67] |  | 0.4 | 0.37 | 0.36 | [0.2 0.6] |  | 0.35 | 0.34 | 0.33 | [0.2 0.53] |
| STNI |  | 0.36 | 0.35 | 0.35 | [0.16 0.58] |  | 0.39 | 0.37 | 0.36 | [0.18 0.67] |  | 0.4 | 0.37 | 0.36 | [0.2 0.61] |  | 0.36 | 0.34 | 0.33 | [0.2 0.53] |
| USC |  | 0.36 | 0.35 | 0.35 | [0.16 0.57] |  | 0.39 | 0.37 | 0.36 | [0.18 0.67] |  | 0.4 | 0.37 | 0.36 | [0.2 0.61] |  | 0.36 | 0.34 | 0.33 | [0.2 0.53] |
| WNGC |  | 0.36 | 0.35 | 0.35 | [0.16 0.58] |  | 0.39 | 0.37 | 0.36 | [0.18 0.67] |  | 0.4 | 0.37 | 0.36 | [0.2 0.61] |  | 0.36 | 0.34 | 0.33 | [0.2 0.53] |
| s119 |  | 0.36 | 0.35 | 0.35 | [0.15 0.57] |  | 0.39 | 0.36 | 0.36 | [0.18 0.67] |  | 0.4 | 0.37 | 0.35 | [0.2 0.6] |  | 0.35 | 0.33 | 0.33 | [0.2 0.53] |
| s279 |  | 0.36 | 0.35 | 0.35 | [0.15 0.57] |  | 0.39 | 0.36 | 0.36 | [0.18 0.67] |  | 0.4 | 0.37 | 0.35 | [0.2 0.6] |  | 0.35 | 0.33 | 0.33 | [0.2 0.53] |
| s480 |  | 0.36 | 0.35 | 0.35 | [0.15 0.57] |  | 0.39 | 0.36 | 0.36 | [0.18 0.67] |  | 0.4 | 0.37 | 0.36 | [0.2 0.6] |  | 0.35 | 0.33 | 0.33 | [0.2 0.53] |
| **ALL SITES** |  | **0.36** | **0.35** | **0.35** | **[0.15 0.59]** |  | **0.39** | **0.36** | **0.36** | **[0.18 0.67]** |  | **0.4** | **0.37** | **0.36** | **[0.2 0.61]** |  | **0.35** | **0.34** | **0.33** | **[0.19 0.54]** |

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_ss_m6.6_20km_3s_hist.png) | ![5s](resources/within_event_ss_m6.6_20km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_ss_m6.6_20km_7.5s_hist.png) | ![10s](resources/within_event_ss_m6.6_20km_10s_hist.png) |

| 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|
| ![Scatter](resources/within_event_ss_scatter__v_prop_3s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_5s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_7.5s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_10s_std_dev.png) |
| ![Scatter](resources/within_event_ss_scatter__v_prop_3s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_5s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_7.5s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_10s_residual.png) |


### 50.0 km M6.6 Within-event, single-site Results
*[(top)](#table-of-contents)*

![Within-event, single-site Variability](resources/within_event_ss_m6.6_50km_std_dev.png)

| Site | 3s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 10s &phi;<sub>SS</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| LAPD |  | 0.36 | 0.35 | 0.34 | [0.15 0.54] |  | 0.42 | 0.39 | 0.38 | [0.15 0.7] |  | 0.37 | 0.35 | 0.34 | [0.14 0.63] |  | 0.35 | 0.33 | 0.32 | [0.21 0.54] |
| PAS |  | 0.36 | 0.35 | 0.34 | [0.16 0.53] |  | 0.42 | 0.39 | 0.37 | [0.15 0.69] |  | 0.37 | 0.35 | 0.34 | [0.15 0.63] |  | 0.35 | 0.33 | 0.32 | [0.21 0.54] |
| SBSM |  | 0.36 | 0.35 | 0.34 | [0.16 0.52] |  | 0.42 | 0.39 | 0.37 | [0.15 0.69] |  | 0.37 | 0.35 | 0.34 | [0.15 0.63] |  | 0.35 | 0.33 | 0.32 | [0.21 0.54] |
| SMCA |  | 0.36 | 0.35 | 0.34 | [0.15 0.54] |  | 0.42 | 0.39 | 0.38 | [0.15 0.7] |  | 0.37 | 0.35 | 0.34 | [0.14 0.63] |  | 0.35 | 0.33 | 0.32 | [0.2 0.54] |
| STNI |  | 0.36 | 0.35 | 0.35 | [0.16 0.54] |  | 0.42 | 0.39 | 0.37 | [0.15 0.69] |  | 0.37 | 0.35 | 0.34 | [0.15 0.63] |  | 0.35 | 0.33 | 0.32 | [0.2 0.54] |
| USC |  | 0.36 | 0.35 | 0.34 | [0.16 0.52] |  | 0.42 | 0.39 | 0.37 | [0.15 0.69] |  | 0.37 | 0.35 | 0.34 | [0.15 0.63] |  | 0.35 | 0.33 | 0.32 | [0.21 0.54] |
| WNGC |  | 0.36 | 0.35 | 0.34 | [0.16 0.53] |  | 0.42 | 0.39 | 0.37 | [0.15 0.69] |  | 0.37 | 0.35 | 0.34 | [0.15 0.63] |  | 0.35 | 0.33 | 0.32 | [0.21 0.54] |
| s119 |  | 0.36 | 0.35 | 0.34 | [0.15 0.54] |  | 0.42 | 0.39 | 0.38 | [0.15 0.7] |  | 0.37 | 0.35 | 0.34 | [0.14 0.63] |  | 0.35 | 0.33 | 0.32 | [0.2 0.54] |
| s279 |  | 0.36 | 0.35 | 0.34 | [0.15 0.54] |  | 0.42 | 0.39 | 0.38 | [0.15 0.7] |  | 0.37 | 0.35 | 0.34 | [0.14 0.63] |  | 0.35 | 0.33 | 0.32 | [0.2 0.54] |
| s480 |  | 0.36 | 0.35 | 0.34 | [0.15 0.54] |  | 0.42 | 0.39 | 0.38 | [0.15 0.7] |  | 0.37 | 0.35 | 0.34 | [0.14 0.63] |  | 0.35 | 0.33 | 0.32 | [0.2 0.54] |
| **ALL SITES** |  | **0.36** | **0.35** | **0.34** | **[0.15 0.54]** |  | **0.42** | **0.39** | **0.38** | **[0.15 0.7]** |  | **0.37** | **0.35** | **0.34** | **[0.14 0.63]** |  | **0.35** | **0.33** | **0.32** | **[0.2 0.54]** |

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_ss_m6.6_50km_3s_hist.png) | ![5s](resources/within_event_ss_m6.6_50km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_ss_m6.6_50km_7.5s_hist.png) | ![10s](resources/within_event_ss_m6.6_50km_10s_hist.png) |

| 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|
| ![Scatter](resources/within_event_ss_scatter__v_prop_3s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_5s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_7.5s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_10s_std_dev.png) |
| ![Scatter](resources/within_event_ss_scatter__v_prop_3s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_5s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_7.5s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_10s_residual.png) |


## Between-events Variability
*[(top)](#table-of-contents)*

### Between-events Variability Methodology
*[(top)](#table-of-contents)*

Between-events variability, denoted &tau; in Al Atik (2010), is computed separately for each:

* Site *[10 unique]*
* Distance *[2 unique]*

We first compute the median natural-log ground motion, &delta;B<sub>e</sub>, for each combination of:

* Rupture *[75 unique]*

That median, &delta;B<sub>e</sub>, is computed across all 144 combinations of:

* Rupture Strike *[36 unique]*
* Path *[4 unique]*

We take &tau; to be the standard deviation of all &delta;B<sub>e</sub>. Finally, we compute the median standard deviation across all sites. This total value is reported as **ALL SITES** and in summary plots/tables.

Here is an exmample with 5 rotations, which would be repeated for each combination of [Rupture]. The site is shown with a blue square, and initially oriented rupture in bold with its hypocenter as a red star and centroid a green circle. Rotations of that rupture are in gray:

![Example](resources/example_between_events.png)


### 20.0 km M6.6 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m6.6_20km_std_dev.png)

| Site | 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| LAPD | 0.32 | -4.35 | [-4.95 -3.56] | 0.31 | -5.09 | [-5.79 -4.18] | 0.31 | -5.76 | [-6.82 -5.08] | 0.29 | -6.39 | [-7.22 -5.68] |
| PAS | 0.32 | -4.34 | [-4.93 -3.58] | 0.31 | -5.08 | [-5.81 -4.17] | 0.31 | -5.76 | [-6.82 -5.07] | 0.28 | -6.38 | [-7.18 -5.67] |
| SBSM | 0.32 | -4.35 | [-4.93 -3.57] | 0.31 | -5.08 | [-5.81 -4.18] | 0.31 | -5.76 | [-6.83 -5.07] | 0.29 | -6.38 | [-7.18 -5.67] |
| SMCA | 0.32 | -4.34 | [-4.94 -3.56] | 0.31 | -5.08 | [-5.79 -4.17] | 0.31 | -5.76 | [-6.81 -5.06] | 0.29 | -6.38 | [-7.21 -5.64] |
| STNI | 0.32 | -4.34 | [-4.93 -3.58] | 0.31 | -5.08 | [-5.81 -4.17] | 0.31 | -5.76 | [-6.82 -5.07] | 0.28 | -6.38 | [-7.18 -5.67] |
| USC | 0.32 | -4.34 | [-4.94 -3.58] | 0.31 | -5.08 | [-5.81 -4.17] | 0.31 | -5.76 | [-6.82 -5.07] | 0.28 | -6.38 | [-7.18 -5.67] |
| WNGC | 0.32 | -4.34 | [-4.94 -3.58] | 0.31 | -5.08 | [-5.81 -4.18] | 0.31 | -5.76 | [-6.82 -5.07] | 0.28 | -6.38 | [-7.18 -5.67] |
| s119 | 0.32 | -4.35 | [-4.95 -3.57] | 0.31 | -5.09 | [-5.79 -4.17] | 0.31 | -5.76 | [-6.82 -5.07] | 0.29 | -6.38 | [-7.22 -5.65] |
| s279 | 0.32 | -4.35 | [-4.95 -3.56] | 0.31 | -5.09 | [-5.79 -4.18] | 0.31 | -5.76 | [-6.82 -5.07] | 0.29 | -6.38 | [-7.22 -5.65] |
| s480 | 0.32 | -4.34 | [-4.95 -3.56] | 0.31 | -5.09 | [-5.79 -4.18] | 0.31 | -5.76 | [-6.81 -5.06] | 0.29 | -6.38 | [-7.22 -5.65] |
| **ALL SITES** | **0.32** | **-4.35** | **[-4.95 -3.56]** | **0.31** | **-5.08** | **[-5.81 -4.17]** | **0.31** | **-5.76** | **[-6.83 -5.06]** | **0.29** | **-6.38** | **[-7.22 -5.64]** |


### 50.0 km M6.6 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m6.6_50km_std_dev.png)

| Site | 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| LAPD | 0.38 | -5.12 | [-5.9 -4.33] | 0.35 | -5.67 | [-6.43 -4.66] | 0.3 | -6.48 | [-7.34 -5.81] | 0.31 | -6.92 | [-7.89 -6.24] |
| PAS | 0.37 | -5.11 | [-5.82 -4.31] | 0.35 | -5.66 | [-6.46 -4.67] | 0.3 | -6.47 | [-7.34 -5.78] | 0.31 | -6.91 | [-7.87 -6.24] |
| SBSM | 0.37 | -5.11 | [-5.84 -4.3] | 0.35 | -5.66 | [-6.45 -4.67] | 0.3 | -6.47 | [-7.33 -5.77] | 0.31 | -6.91 | [-7.87 -6.23] |
| SMCA | 0.37 | -5.11 | [-5.88 -4.32] | 0.35 | -5.66 | [-6.44 -4.66] | 0.3 | -6.47 | [-7.33 -5.8] | 0.31 | -6.91 | [-7.88 -6.23] |
| STNI | 0.37 | -5.11 | [-5.82 -4.3] | 0.35 | -5.66 | [-6.46 -4.66] | 0.3 | -6.47 | [-7.33 -5.77] | 0.31 | -6.91 | [-7.88 -6.23] |
| USC | 0.37 | -5.11 | [-5.82 -4.31] | 0.35 | -5.66 | [-6.46 -4.67] | 0.3 | -6.47 | [-7.34 -5.77] | 0.31 | -6.91 | [-7.88 -6.24] |
| WNGC | 0.37 | -5.11 | [-5.83 -4.31] | 0.35 | -5.66 | [-6.45 -4.67] | 0.3 | -6.47 | [-7.34 -5.77] | 0.31 | -6.91 | [-7.87 -6.24] |
| s119 | 0.37 | -5.12 | [-5.89 -4.33] | 0.35 | -5.66 | [-6.43 -4.67] | 0.3 | -6.47 | [-7.34 -5.8] | 0.31 | -6.91 | [-7.89 -6.24] |
| s279 | 0.37 | -5.12 | [-5.89 -4.33] | 0.35 | -5.66 | [-6.43 -4.67] | 0.3 | -6.47 | [-7.34 -5.8] | 0.31 | -6.91 | [-7.88 -6.24] |
| s480 | 0.38 | -5.11 | [-5.9 -4.31] | 0.35 | -5.66 | [-6.43 -4.66] | 0.3 | -6.47 | [-7.33 -5.8] | 0.31 | -6.91 | [-7.88 -6.24] |
| **ALL SITES** | **0.37** | **-5.11** | **[-5.9 -4.3]** | **0.35** | **-5.66** | **[-6.46 -4.66]** | **0.3** | **-6.47** | **[-7.34 -5.77]** | **0.31** | **-6.91** | **[-7.89 -6.23]** |


