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
  * [All Distances M7.2 Source-strike Results](#all-distances-m72-source-strike-results)
* [Within-event, single-site Variability](#within-event-single-site-variability)
  * [Within-event, single-site Variability Methodology](#within-event-single-site-variability-methodology)
  * [20.0 km M7.2 Within-event, single-site Results](#200-km-m72-within-event-single-site-results)
  * [50.0 km M7.2 Within-event, single-site Results](#500-km-m72-within-event-single-site-results)
  * [100.0 km M7.2 Within-event, single-site Results](#1000-km-m72-within-event-single-site-results)
  * [All Distances M7.2 Within-event, single-site Results](#all-distances-m72-within-event-single-site-results)
* [Between-events Variability](#between-events-variability)
  * [Between-events Variability Methodology](#between-events-variability-methodology)
  * [20.0 km M7.2 Between-events Results](#200-km-m72-between-events-results)
  * [50.0 km M7.2 Between-events Results](#500-km-m72-between-events-results)
  * [100.0 km M7.2 Between-events Results](#1000-km-m72-between-events-results)
  * [All Distances M7.2 Between-events Results](#all-distances-m72-between-events-results)
* [Azumth Dependence](#azumth-dependence)
  * [Rupture Strike Dependence](#rupture-strike-dependence)
* [BBP PartB Comparison](#bbp-partb-comparison)
  * [BBP PartB Summary Table](#bbp-partb-summary-table)
  * [BBP PartB, M7.2, Reverse, Dip=45](#bbp-partb-m72-reverse-dip45)
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
* Ztor=[0.0,5.0]
* Rake=[80,100]
* Dip=[35.0,55.0]

## Sites

| Name | Location | Vs30 (m/s) | Z1.0 (km) | Z2.5 (km) |
|-----|-----|-----|-----|-----|
| USC | *34.0192, -118.286* | 863 | N/A | N/A |

## Result Summary Table

| Type | Notation | Distance | T-independent Std. Dev. | 3s Std. Dev. | 5s Std. Dev. | 7.5s Std. Dev. | 10s Std. Dev. |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Source-strike | &phi;<sub>s</sub> | 20 km | 0.34 | 0.38 | 0.35 | 0.34 | 0.31 |
| Source-strike | &phi;<sub>s</sub> | 50 km | 0.35 | 0.36 | 0.37 | 0.34 | 0.33 |
| Source-strike | &phi;<sub>s</sub> | 100 km | 0.35 | 0.34 | 0.38 | 0.35 | 0.36 |
| Source-strike | &phi;<sub>s</sub> | (all) | 0.35 | 0.36 | 0.37 | 0.35 | 0.34 |
| Within-event, single-site | &phi;<sub>SS</sub> | 20 km | 0.34 | 0.38 | 0.35 | 0.34 | 0.31 |
| Within-event, single-site | &phi;<sub>SS</sub> | 50 km | 0.35 | 0.36 | 0.37 | 0.34 | 0.33 |
| Within-event, single-site | &phi;<sub>SS</sub> | 100 km | 0.35 | 0.34 | 0.38 | 0.35 | 0.36 |
| Within-event, single-site | &phi;<sub>SS</sub> | (all) | 0.35 | 0.36 | 0.37 | 0.35 | 0.34 |
| Between-events | &tau; | 20 km | 0.19 | 0.18 | 0.19 | 0.21 | 0.24 |
| Between-events | &tau; | 50 km | 0.21 | 0.21 | 0.22 | 0.21 | 0.25 |
| Between-events | &tau; | 100 km | 0.2 | 0.17 | 0.23 | 0.21 | 0.27 |
| Between-events | &tau; | (all) | 0.2 | 0.19 | 0.21 | 0.21 | 0.25 |

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

We also compute distance-independent &phi;<sub>s</sub>, which is computed as the standard deviation of all residuals, &delta;W<sub>es</sub>, across all distances. Each residual is still computed relative to the log-median ground motion at it's distance.

Here is an exmample with 5 rotations, which would be repeated for each combination of [Rupture, Path]. The site is shown with a blue square, and initially oriented rupture in bold with its hypocenter as a red star and centroid a green circle. Rotations of that rupture are in gray:

![Example](resources/example_source_strike.png)


### 20.0 km M7.2 Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_m7.2_20km_std_dev.png)

| 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.38 | 0.38 | 0.38 | [0.21 0.61] |  | 0.35 | 0.35 | 0.34 | [0.17 0.59] |  | 0.34 | 0.34 | 0.35 | [0.19 0.58] |  | 0.31 | 0.31 | 0.3 | [0.14 0.51] |

We compute uncertainties on &phi;<sub>s</sub> through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [7.0 7.4], and distance within the range [10.0 30.0] km. We throw out any events with only 1 recording, leaving us with 2 events and a total of 9 recordings. We then downsample our simulated data 100 times, and compute &phi;<sub>s</sub> from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below.

| Period (s) | Full &phi;<sub>s</sub> | Downsampled median &phi;<sub>s</sub> | Downsampled &phi;<sub>s</sub> std. dev. | Downsampled &phi;<sub>s</sub> 68% conf range | Downsampled &phi;<sub>s</sub> 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.34 | 0.31 | 0.06 | [0.25 0.37] | [0.2 0.44] |
| 1 | 0.32 | 0.29 | 0.08 | [0.22 0.39] | [0.18 0.46] |
| 2 | 0.35 | 0.31 | 0.09 | [0.22 0.42] | [0.18 0.5] |
| 3 | 0.38 | 0.35 | 0.1 | [0.25 0.46] | [0.18 0.55] |
| 4 | 0.34 | 0.31 | 0.1 | [0.21 0.42] | [0.13 0.55] |
| 5 | 0.35 | 0.3 | 0.11 | [0.2 0.43] | [0.12 0.55] |
| 7.5 | 0.34 | 0.32 | 0.09 | [0.21 0.4] | [0.14 0.48] |
| 10 | 0.31 | 0.27 | 0.07 | [0.21 0.36] | [0.16 0.45] |

These plots show the dependence of &phi;<sub>s</sub> to the number of events included and the number of recordingsper event. The left plot holds the number of recordings per event fixed at the average data value (3), varying the number of events. The right plot holds the number of events fixed at the data value (3), varying the number of recordings per event. Period-independent &phi;<sub>s</sub> values are plotted.

| Event Count Dependence | Recordings/Event Dependence |
|-----|-----|
| ![num events dependence](resources/source_strike_event_count_dependence_20km.png) | ![num recordings dependence](resources/source_strike_event_recordings_dependence_20km.png) |

Here are plots of the histogram of &phi;<sub>s</sub> for each individual rupture, from which we compute a total &phi;<sub>s</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m7.2_20km_3s_hist.png) | ![5s](resources/source_strike_m7.2_20km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m7.2_20km_7.5s_hist.png) | ![10s](resources/source_strike_m7.2_20km_10s_hist.png) |

Here are plots of the &phi;<sub>s</sub> as a function of various parameters for disaggregation.

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

Here are plots of the histogram of &phi;<sub>s</sub> for each individual rupture, from which we compute a total &phi;<sub>s</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m7.2_50km_3s_hist.png) | ![5s](resources/source_strike_m7.2_50km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m7.2_50km_7.5s_hist.png) | ![10s](resources/source_strike_m7.2_50km_10s_hist.png) |

Here are plots of the &phi;<sub>s</sub> as a function of various parameters for disaggregation.

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

Here are plots of the histogram of &phi;<sub>s</sub> for each individual rupture, from which we compute a total &phi;<sub>s</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m7.2_100km_3s_hist.png) | ![5s](resources/source_strike_m7.2_100km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m7.2_100km_7.5s_hist.png) | ![10s](resources/source_strike_m7.2_100km_10s_hist.png) |

Here are plots of the &phi;<sub>s</sub> as a function of various parameters for disaggregation.

| 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|
| ![Scatter](resources/source_strike_scatter__v_prop_3s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_5s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_7.5s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_10s_std_dev.png) |
| ![Scatter](resources/source_strike_scatter__v_prop_3s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_5s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_7.5s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_10s_residual.png) |


### All Distances M7.2 Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_m7.2_std_dev.png)

| 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.36 | 0.36 | 0.36 | [0.21 0.61] |  | 0.37 | 0.36 | 0.36 | [0.17 0.63] |  | 0.35 | 0.34 | 0.35 | [0.17 0.58] |  | 0.34 | 0.33 | 0.32 | [0.14 0.61] |

We compute uncertainties on &phi;<sub>s</sub> through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [7.0 7.4], and all distances. We throw out any events with only 1 recording, leaving us with 3 events and a total of 24 recordings. We then downsample our simulated data 100 times, and compute &phi;<sub>s</sub> from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below.

| Period (s) | Full &phi;<sub>s</sub> | Downsampled median &phi;<sub>s</sub> | Downsampled &phi;<sub>s</sub> std. dev. | Downsampled &phi;<sub>s</sub> 68% conf range | Downsampled &phi;<sub>s</sub> 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.35 | 0.28 | 0.03 | [0.25 0.31] | [0.22 0.36] |
| 1 | 0.32 | 0.26 | 0.04 | [0.21 0.3] | [0.17 0.35] |
| 2 | 0.32 | 0.26 | 0.05 | [0.21 0.31] | [0.16 0.36] |
| 3 | 0.36 | 0.29 | 0.06 | [0.24 0.36] | [0.19 0.41] |
| 4 | 0.37 | 0.3 | 0.06 | [0.24 0.36] | [0.19 0.42] |
| 5 | 0.37 | 0.3 | 0.06 | [0.23 0.36] | [0.18 0.43] |
| 7.5 | 0.35 | 0.28 | 0.05 | [0.22 0.34] | [0.19 0.38] |
| 10 | 0.34 | 0.27 | 0.05 | [0.23 0.33] | [0.18 0.39] |

These plots show the dependence of &phi;<sub>s</sub> to the number of events included and the number of recordingsper event. The left plot holds the number of recordings per event fixed at the average data value (3), varying the number of events. The right plot holds the number of events fixed at the data value (3), varying the number of recordings per event. Period-independent &phi;<sub>s</sub> values are plotted.

| Event Count Dependence | Recordings/Event Dependence |
|-----|-----|
| ![num events dependence](resources/source_strike_event_count_dependence_all_dists.png) | ![num recordings dependence](resources/source_strike_event_recordings_dependence_all_dists.png) |

Here are plots of the histogram of &phi;<sub>s</sub> for each individual rupture, from which we compute a total &phi;<sub>s</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m7.2_3s_hist.png) | ![5s](resources/source_strike_m7.2_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m7.2_7.5s_hist.png) | ![10s](resources/source_strike_m7.2_10s_hist.png) |


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

We also compute distance-independent &phi;<sub>SS</sub>, which is computed as the standard deviation of all residuals, &delta;W<sub>es</sub>, across all distances. Each residual is still computed relative to the log-median ground motion at it's distance.

Here is an exmample with 5 rotations, which would be repeated for each combination of [Rupture]. The site is shown with a blue square, and initially oriented rupture in bold with its hypocenter as a red star and centroid a green circle. Rotations of that rupture are in gray:

![Example](resources/example_within_event_ss.png)


### 20.0 km M7.2 Within-event, single-site Results
*[(top)](#table-of-contents)*

![Within-event, single-site Variability](resources/within_event_ss_m7.2_20km_std_dev.png)

| 3s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 10s &phi;<sub>SS</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.38 | 0.38 | 0.38 | [0.21 0.61] |  | 0.35 | 0.35 | 0.34 | [0.17 0.59] |  | 0.34 | 0.34 | 0.35 | [0.19 0.58] |  | 0.31 | 0.31 | 0.3 | [0.14 0.51] |

We compute uncertainties on &phi;<sub>SS</sub> through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [7.0 7.4], and distance within the range [10.0 30.0] km. We throw out any events with only 1 recording, leaving us with 2 events and a total of 9 recordings. We then downsample our simulated data 100 times, and compute &phi;<sub>SS</sub> from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below.

| Period (s) | Full &phi;<sub>SS</sub> | Downsampled median &phi;<sub>SS</sub> | Downsampled &phi;<sub>SS</sub> std. dev. | Downsampled &phi;<sub>SS</sub> 68% conf range | Downsampled &phi;<sub>SS</sub> 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.34 | 0.31 | 0.06 | [0.26 0.38] | [0.21 0.44] |
| 1 | 0.32 | 0.3 | 0.07 | [0.23 0.37] | [0.15 0.45] |
| 2 | 0.35 | 0.31 | 0.09 | [0.22 0.39] | [0.14 0.49] |
| 3 | 0.38 | 0.35 | 0.09 | [0.26 0.42] | [0.16 0.54] |
| 4 | 0.34 | 0.33 | 0.1 | [0.21 0.44] | [0.14 0.51] |
| 5 | 0.35 | 0.33 | 0.11 | [0.23 0.44] | [0.13 0.59] |
| 7.5 | 0.34 | 0.31 | 0.09 | [0.22 0.42] | [0.17 0.5] |
| 10 | 0.31 | 0.27 | 0.09 | [0.2 0.37] | [0.17 0.51] |

These plots show the dependence of &phi;<sub>SS</sub> to the number of events included and the number of recordingsper event. The left plot holds the number of recordings per event fixed at the average data value (3), varying the number of events. The right plot holds the number of events fixed at the data value (3), varying the number of recordings per event. Period-independent &phi;<sub>SS</sub> values are plotted.

| Event Count Dependence | Recordings/Event Dependence |
|-----|-----|
| ![num events dependence](resources/within_event_ss_event_count_dependence_20km.png) | ![num recordings dependence](resources/within_event_ss_event_recordings_dependence_20km.png) |

Here are plots of the histogram of &phi;<sub>SS</sub> for each individual rupture, from which we compute a total &phi;<sub>SS</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_ss_m7.2_20km_3s_hist.png) | ![5s](resources/within_event_ss_m7.2_20km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_ss_m7.2_20km_7.5s_hist.png) | ![10s](resources/within_event_ss_m7.2_20km_10s_hist.png) |

Here are plots of the &phi;<sub>SS</sub> as a function of various parameters for disaggregation.

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

Here are plots of the histogram of &phi;<sub>SS</sub> for each individual rupture, from which we compute a total &phi;<sub>SS</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_ss_m7.2_50km_3s_hist.png) | ![5s](resources/within_event_ss_m7.2_50km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_ss_m7.2_50km_7.5s_hist.png) | ![10s](resources/within_event_ss_m7.2_50km_10s_hist.png) |

Here are plots of the &phi;<sub>SS</sub> as a function of various parameters for disaggregation.

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

Here are plots of the histogram of &phi;<sub>SS</sub> for each individual rupture, from which we compute a total &phi;<sub>SS</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_ss_m7.2_100km_3s_hist.png) | ![5s](resources/within_event_ss_m7.2_100km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_ss_m7.2_100km_7.5s_hist.png) | ![10s](resources/within_event_ss_m7.2_100km_10s_hist.png) |

Here are plots of the &phi;<sub>SS</sub> as a function of various parameters for disaggregation.

| 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|
| ![Scatter](resources/within_event_ss_scatter__v_prop_3s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_5s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_7.5s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_10s_std_dev.png) |
| ![Scatter](resources/within_event_ss_scatter__v_prop_3s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_5s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_7.5s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_10s_residual.png) |


### All Distances M7.2 Within-event, single-site Results
*[(top)](#table-of-contents)*

![Within-event, single-site Variability](resources/within_event_ss_m7.2_std_dev.png)

| 3s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 10s &phi;<sub>SS</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.36 | 0.36 | 0.36 | [0.21 0.61] |  | 0.37 | 0.36 | 0.36 | [0.17 0.63] |  | 0.35 | 0.34 | 0.35 | [0.17 0.58] |  | 0.34 | 0.33 | 0.32 | [0.14 0.61] |

We compute uncertainties on &phi;<sub>SS</sub> through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [7.0 7.4], and all distances. We throw out any events with only 1 recording, leaving us with 3 events and a total of 24 recordings. We then downsample our simulated data 100 times, and compute &phi;<sub>SS</sub> from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below.

| Period (s) | Full &phi;<sub>SS</sub> | Downsampled median &phi;<sub>SS</sub> | Downsampled &phi;<sub>SS</sub> std. dev. | Downsampled &phi;<sub>SS</sub> 68% conf range | Downsampled &phi;<sub>SS</sub> 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.35 | 0.28 | 0.03 | [0.25 0.32] | [0.22 0.35] |
| 1 | 0.32 | 0.25 | 0.05 | [0.21 0.32] | [0.17 0.37] |
| 2 | 0.32 | 0.26 | 0.05 | [0.2 0.3] | [0.16 0.36] |
| 3 | 0.36 | 0.3 | 0.05 | [0.24 0.35] | [0.19 0.41] |
| 4 | 0.37 | 0.31 | 0.05 | [0.25 0.37] | [0.21 0.42] |
| 5 | 0.37 | 0.31 | 0.05 | [0.25 0.37] | [0.2 0.41] |
| 7.5 | 0.35 | 0.29 | 0.05 | [0.23 0.35] | [0.19 0.4] |
| 10 | 0.34 | 0.28 | 0.05 | [0.23 0.34] | [0.2 0.4] |

These plots show the dependence of &phi;<sub>SS</sub> to the number of events included and the number of recordingsper event. The left plot holds the number of recordings per event fixed at the average data value (3), varying the number of events. The right plot holds the number of events fixed at the data value (3), varying the number of recordings per event. Period-independent &phi;<sub>SS</sub> values are plotted.

| Event Count Dependence | Recordings/Event Dependence |
|-----|-----|
| ![num events dependence](resources/within_event_ss_event_count_dependence_all_dists.png) | ![num recordings dependence](resources/within_event_ss_event_recordings_dependence_all_dists.png) |

Here are plots of the histogram of &phi;<sub>SS</sub> for each individual rupture, from which we compute a total &phi;<sub>SS</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_ss_m7.2_3s_hist.png) | ![5s](resources/within_event_ss_m7.2_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_ss_m7.2_7.5s_hist.png) | ![10s](resources/within_event_ss_m7.2_10s_hist.png) |


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

We also compute distance-independent &tau;, which we take to be the mean value across all distances.

Here is an exmample with 5 rotations, which would be repeated for each combination of [Rupture]. The site is shown with a blue square, and initially oriented rupture in bold with its hypocenter as a red star and centroid a green circle. Rotations of that rupture are in gray:

![Example](resources/example_between_events.png)


### 20.0 km M7.2 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m7.2_20km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.18 | -3.2 | [-3.72 -2.79] | 0.19 | -4.05 | [-4.51 -3.49] | 0.21 | -4.69 | [-5.27 -4.01] | 0.24 | -5.24 | [-5.83 -4.58] |

We compute uncertainties on &tau; through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [7.0 7.4], and distance within the range [10.0 30.0] km. We throw out any events with only 1 recording, leaving us with 2 events and a total of 9 recordings. We then downsample our simulated data 100 times, and compute &tau; from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below.

| Period (s) | Full &tau; | Downsampled median &tau; | Downsampled &tau; std. dev. | Downsampled &tau; 68% conf range | Downsampled &tau; 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.19 | 0.18 | 0.12 | [0.12 0.3] | [0.09 0.51] |
| 1 | 0.17 | 0.12 | 0.15 | [0.04 0.32] | [0.01 0.47] |
| 2 | 0.19 | 0.2 | 0.17 | [0.07 0.38] | [0.01 0.66] |
| 3 | 0.18 | 0.2 | 0.2 | [0.05 0.44] | [0.01 0.76] |
| 4 | 0.18 | 0.14 | 0.18 | [0.05 0.36] | [0.01 0.64] |
| 5 | 0.19 | 0.18 | 0.19 | [0.05 0.36] | [0 0.72] |
| 7.5 | 0.21 | 0.16 | 0.18 | [0.05 0.34] | [0 0.79] |
| 10 | 0.24 | 0.2 | 0.17 | [0.06 0.38] | [0 0.68] |

These plots show the dependence of &tau; to the number of events included and the number of recordingsper event. The left plot holds the number of recordings per event fixed at the average data value (3), varying the number of events. The right plot holds the number of events fixed at the data value (3), varying the number of recordings per event. Period-independent &tau; values are plotted.

| Event Count Dependence | Recordings/Event Dependence |
|-----|-----|
| ![num events dependence](resources/between_events_event_count_dependence_20km.png) | ![num recordings dependence](resources/between_events_event_recordings_dependence_20km.png) |


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


### All Distances M7.2 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m7.2_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.19 | -3.93 | [-5.08 -2.79] | 0.21 | -4.64 | [-5.76 -3.49] | 0.21 | -5.32 | [-6.72 -4.01] | 0.25 | -5.73 | [-6.81 -4.58] |

We compute uncertainties on &tau; through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [7.0 7.4], and all distances. We throw out any events with only 1 recording, leaving us with 3 events and a total of 24 recordings. We then downsample our simulated data 100 times, and compute &tau; from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below.

| Period (s) | Full &tau; | Downsampled median &tau; | Downsampled &tau; std. dev. | Downsampled &tau; 68% conf range | Downsampled &tau; 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.2 | 0.25 | 0.05 | [0.21 0.29] | [0.17 0.38] |
| 1 | 0.15 | 0.2 | 0.06 | [0.15 0.27] | [0.11 0.38] |
| 2 | 0.19 | 0.22 | 0.07 | [0.16 0.3] | [0.07 0.36] |
| 3 | 0.19 | 0.25 | 0.08 | [0.17 0.34] | [0.12 0.45] |
| 4 | 0.21 | 0.25 | 0.08 | [0.18 0.34] | [0.12 0.44] |
| 5 | 0.21 | 0.25 | 0.08 | [0.18 0.34] | [0.12 0.46] |
| 7.5 | 0.21 | 0.24 | 0.08 | [0.18 0.35] | [0.14 0.44] |
| 10 | 0.25 | 0.27 | 0.09 | [0.19 0.39] | [0.13 0.49] |

These plots show the dependence of &tau; to the number of events included and the number of recordingsper event. The left plot holds the number of recordings per event fixed at the average data value (3), varying the number of events. The right plot holds the number of events fixed at the data value (3), varying the number of recordings per event. Period-independent &tau; values are plotted.

| Event Count Dependence | Recordings/Event Dependence |
|-----|-----|
| ![num events dependence](resources/between_events_event_count_dependence_all_dists.png) | ![num recordings dependence](resources/between_events_event_recordings_dependence_all_dists.png) |


## Azumth Dependence
*[(top)](#table-of-contents)*

### Rupture Strike Dependence
*[(top)](#table-of-contents)*

| Type | 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|-----|
| **&tau;** | ![Rupture Strike](resources/m7.2_dist_SOURCE_AZIMUTH_3s_between_events.png) | ![Rupture Strike](resources/m7.2_dist_SOURCE_AZIMUTH_5s_between_events.png) | ![Rupture Strike](resources/m7.2_dist_SOURCE_AZIMUTH_7.5s_between_events.png) | ![Rupture Strike](resources/m7.2_dist_SOURCE_AZIMUTH_10s_between_events.png) |
| **Median SA** | ![Rupture Strike](resources/m7.2_dist_SOURCE_AZIMUTH_3s_median_sa.png) | ![Rupture Strike](resources/m7.2_dist_SOURCE_AZIMUTH_5s_median_sa.png) | ![Rupture Strike](resources/m7.2_dist_SOURCE_AZIMUTH_7.5s_median_sa.png) | ![Rupture Strike](resources/m7.2_dist_SOURCE_AZIMUTH_10s_median_sa.png) |

## BBP PartB Comparison
*[(top)](#table-of-contents)*

Here we attempt to reproduce the SCEC BroadBand Platform "Part B" validation exercise as defined in:

*Goulet, C. A., Abrahamson, N. A., Somerville, P. G., & Wooddell, K. E. (2014). The SCEC broadband platform validation exercise: Methodology for code validation in the context of seismic‐hazard analyses. Seismological Research Letters, 86(1), 17-26.* [(link)](https://pubs.geoscienceworld.org/ssa/srl/article/86/1/17/315438/the-scec-broadband-platform-validation-exercise)

The BBP exercise positioned sites in a 'racetrack' around the ruptures. Here, we instead position and rotate the ruptures around the site in order to work in 3-D with CyberShake reciprical calculations. Results for official scenarios and distances are in **bold**, results for additional magnitudes or distances not defined in the Goulet et. al. (2014) are *italicised*.

### BBP PartB Summary Table
*[(top)](#table-of-contents)*

| Scenario | 20.0 km | 50.0 km | 100.0 km |
|-----|-----|-----|-----|
| **M7.2 Reverse** | *(FAIL)* | *(FAIL)* | *(FAIL)* |

### BBP PartB, M7.2, Reverse, Dip=45
*[(top)](#table-of-contents)*

| 20.0 km | 50.0 km | 100.0 km |
|-----|-----|-----|
| ![PartB Plot](resources/bbp_partB_m7p2_reverse_20km.png) | ![PartB Plot](resources/bbp_partB_m7p2_reverse_50km.png) | ![PartB Plot](resources/bbp_partB_m7p2_reverse_100km.png) |

## CSV Files
*[(top)](#table-of-contents)*

| Magnitude | Distance | Site | CSV File |
|-----|-----|-----|-----|
| M7.2 | 20.0 km | USC | [sa_USC_m7.2_20.0km.csv.gz](resources/sa_USC_m7.2_20.0km.csv.gz) |
| M7.2 | 50.0 km | USC | [sa_USC_m7.2_50.0km.csv.gz](resources/sa_USC_m7.2_50.0km.csv.gz) |
| M7.2 | 100.0 km | USC | [sa_USC_m7.2_100.0km.csv.gz](resources/sa_USC_m7.2_100.0km.csv.gz) |

