# Bruce 2585 1myr Rotated Rupture Variability, M6.6 SS

This exercise uses translations and rotations to estimate ground motion variability from different sources. We begin by selecting a subset of similar ruptures which match a set of criteria (in this case, M6.6, Vertical Strike-Slip with Surface Rupture). Each rupture is then reoriented such that its strike (following the Aki & Richards 1980 convention) is 0 degrees (due North, dipping to the right for normal or reverse ruptures). For each site, ruptures are translated such that their scalar seismic moment centroid is directly North of the site, and their 3-dimensional distance (Rrup) is as specified (we consider 3 distance[s] here).

We then  perform various rotations. We rotate the rupture in place around its centroid, holding the site-to-source centroid path and Rrup constant (henceforth 'Rupture Strike'). We also rotate ruptures around the site, holding Rrup and source orientation relative to the site constant but sampling different various paths (henceforth 'Path'). We do this for each unique combination of Rupture Strike, Path, Distance, Site, and Rupture.

*NOTE: This page uses the SCEC BBP to simulate a 1-dimensional velocity structure. Thus we expect no path variability, and plots of path variabilitiy are included only as verification of the method.*

[RSQSim Catalog Details](../#bruce-2585-1myr)

## Table Of Contents
* [Rupture Rotation Parameters](#rupture-rotation-parameters)
* [M6.6 SS RSQSim Rupture Match Criteria](#m66-ss-rsqsim-rupture-match-criteria)
* [Sites](#sites)
* [Result Summary Table](#result-summary-table)
  * [Dist-Dependent Plot Table](#dist-dependent-plot-table)
* [Source-strike Variability](#source-strike-variability)
  * [Source-strike Variability Methodology](#source-strike-variability-methodology)
  * [20.0 km M6.6 Source-strike Results](#200-km-m66-source-strike-results)
  * [50.0 km M6.6 Source-strike Results](#500-km-m66-source-strike-results)
  * [100.0 km M6.6 Source-strike Results](#1000-km-m66-source-strike-results)
  * [All Distances M6.6 Source-strike Results](#all-distances-m66-source-strike-results)
* [Within-event, single-site Variability](#within-event-single-site-variability)
  * [Within-event, single-site Variability Methodology](#within-event-single-site-variability-methodology)
  * [20.0 km M6.6 Within-event, single-site Results](#200-km-m66-within-event-single-site-results)
  * [50.0 km M6.6 Within-event, single-site Results](#500-km-m66-within-event-single-site-results)
  * [100.0 km M6.6 Within-event, single-site Results](#1000-km-m66-within-event-single-site-results)
  * [All Distances M6.6 Within-event, single-site Results](#all-distances-m66-within-event-single-site-results)
* [Between-events Variability](#between-events-variability)
  * [Between-events Variability Methodology](#between-events-variability-methodology)
  * [20.0 km M6.6 Between-events Results](#200-km-m66-between-events-results)
  * [50.0 km M6.6 Between-events Results](#500-km-m66-between-events-results)
  * [100.0 km M6.6 Between-events Results](#1000-km-m66-between-events-results)
  * [All Distances M6.6 Between-events Results](#all-distances-m66-between-events-results)
* [Azumth Dependence](#azumth-dependence)
  * [Rupture Strike Dependence](#rupture-strike-dependence)
* [BBP PartB Comparison](#bbp-partb-comparison)
  * [BBP PartB Summary Table](#bbp-partb-summary-table)
  * [BBP PartB, M6.6, Vertical Strike-Slip with Surface Rupture](#bbp-partb-m66-vertical-strike-slip-with-surface-rupture)
* [CSV Files](#csv-files)
## Rupture Rotation Parameters

| Quantity | Variations | Description |
|-----|-----|-----|
| Rupture | 400 | Unique (but similar in faulting style and magnitude) ruptures which match the given scenario. |
| Site | 1 | Unique site locations. If 3-d, each will have unique velocity profiles. |
| Rupture Strike | 18 | Rupture strike conforming to the Aki & Richards (1980) convention, where dipping faults dip to the right of the rupture. If path rotation is also performed, this azimuth is relative to the path. |
| Path | 1 | Path from the site to the centroid of the rupture, in azimuthal degrees (0 is North) |
| Distance | 20.0, 50.0, 100.0 km | 3-dimensional distance between the site and the rupture surface. |
| **Total # Simulations** | **21600** | Total number of combinations of the above. |

## M6.6 SS RSQSim Rupture Match Criteria
*[(top)](#table-of-contents)*

We condisder 400 events in the catalog which match the following criteria:

* M=[6.55,6.65]
* Ztor=[0.0,1.0]
* Rake=[-180,-170] or [-10,10] or [170,180]
* Dip=90.0
* Linear rupture (max 0.5km deviation from ideal)

## Sites

| Name | Location | Vs30 (m/s) | Z1.0 (km) | Z2.5 (km) |
|-----|-----|-----|-----|-----|
| USC | *34.0192, -118.286* | 863 | N/A | N/A |

## Result Summary Table

| Type | Notation | Distance | T-independent Std. Dev. | 3s Std. Dev. | 5s Std. Dev. | 7.5s Std. Dev. | 10s Std. Dev. |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Source-strike | &phi;<sub>s</sub> | 20 km | 0.37 | 0.39 | 0.41 | 0.32 | 0.24 |
| Source-strike | &phi;<sub>s</sub> | 50 km | 0.48 | 0.46 | 0.48 | 0.54 | 0.55 |
| Source-strike | &phi;<sub>s</sub> | 100 km | 0.49 | 0.47 | 0.53 | 0.57 | 0.51 |
| Source-strike | &phi;<sub>s</sub> | (all) | 0.45 | 0.44 | 0.48 | 0.49 | 0.46 |
| Within-event, single-site | &phi;<sub>SS</sub> | 20 km | 0.37 | 0.39 | 0.41 | 0.32 | 0.24 |
| Within-event, single-site | &phi;<sub>SS</sub> | 50 km | 0.48 | 0.46 | 0.48 | 0.54 | 0.55 |
| Within-event, single-site | &phi;<sub>SS</sub> | 100 km | 0.49 | 0.47 | 0.53 | 0.57 | 0.51 |
| Within-event, single-site | &phi;<sub>SS</sub> | (all) | 0.45 | 0.44 | 0.48 | 0.49 | 0.46 |
| Between-events | &tau; | 20 km | 0.29 | 0.26 | 0.29 | 0.37 | 0.39 |
| Between-events | &tau; | 50 km | 0.31 | 0.27 | 0.32 | 0.38 | 0.4 |
| Between-events | &tau; | 100 km | 0.3 | 0.25 | 0.34 | 0.4 | 0.42 |
| Between-events | &tau; | (all) | 0.3 | 0.26 | 0.32 | 0.38 | 0.4 |

### Dist-Dependent Plot Table
*[(top)](#table-of-contents)*

| **&phi;<sub>s</sub>** | ![&phi;<sub>s</sub>](resources/source_strike_m6.6_dist_periods.png) |
|-----|-----|
| **&phi;<sub>SS</sub>** | ![&phi;<sub>SS</sub>](resources/within_event_ss_m6.6_dist_periods.png) |
| **&tau;** | ![&tau;](resources/between_events_m6.6_dist_periods.png) |


## Source-strike Variability
*[(top)](#table-of-contents)*

### Source-strike Variability Methodology
*[(top)](#table-of-contents)*

Source-strike variability, denoted &phi;<sub>s</sub> in Aki & Richards (1980), is computed separately for each:

* Site *[1 unique]*
* Distance *[3 unique]*

Then, for each unique combination of:

* Rupture *[400 unique]*
* Path *[1 unique]*

we compute residuals, &delta;W<sub>es</sub>, of the natural-log ground motions (relative to the median), computed across all 18 combinations of:

* Rupture Strike *[18 unique]*

We take &phi;<sub>s</sub> to be the standard deviation of all residuals, &delta;W<sub>es</sub>, across each combination of Rupture, Path.

We also compute distance-independent &phi;<sub>s</sub>, which is computed as the standard deviation of all residuals, &delta;W<sub>es</sub>, across all distances. Each residual is still computed relative to the log-median ground motion at it's distance.

Here is an exmample with 5 rotations, which would be repeated for each combination of [Rupture, Path]. The site is shown with a blue square, and initially oriented rupture in bold with its hypocenter as a red star and centroid a green circle. Rotations of that rupture are in gray:

![Example](resources/example_source_strike.png)


### 20.0 km M6.6 Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_m6.6_20km_std_dev.png)

| 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.39 | 0.39 | 0.38 | [0.14 0.63] |  | 0.41 | 0.4 | 0.4 | [0.13 0.69] |  | 0.32 | 0.31 | 0.3 | [0.14 0.57] |  | 0.24 | 0.23 | 0.22 | [0.06 0.5] |

We compute uncertainties on &phi;<sub>s</sub> through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and distance within the range [10.0 30.0] km. We throw out any events with only 1 recording, leaving us with 4 events and a total of 37 recordings. We then downsample our simulated data 100 times, and compute &phi;<sub>s</sub> from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below.

| Period (s) | Full &phi;<sub>s</sub> | Downsampled median &phi;<sub>s</sub> | Downsampled &phi;<sub>s</sub> std. dev. | Downsampled &phi;<sub>s</sub> 68% conf range | Downsampled &phi;<sub>s</sub> 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.37 | 0.36 | 0.03 | [0.33 0.39] | [0.3 0.45] |
| 1 | 0.36 | 0.35 | 0.05 | [0.3 0.4] | [0.24 0.44] |
| 2 | 0.42 | 0.42 | 0.04 | [0.37 0.46] | [0.31 0.52] |
| 3 | 0.39 | 0.37 | 0.06 | [0.32 0.44] | [0.26 0.52] |
| 4 | 0.42 | 0.4 | 0.06 | [0.35 0.47] | [0.29 0.56] |
| 5 | 0.41 | 0.4 | 0.06 | [0.35 0.46] | [0.29 0.53] |
| 7.5 | 0.32 | 0.3 | 0.05 | [0.26 0.36] | [0.23 0.42] |
| 10 | 0.24 | 0.23 | 0.04 | [0.19 0.29] | [0.15 0.32] |

These plots show the dependence of &phi;<sub>s</sub> to the number of events included and the number of recordingsper event. The left plot holds the number of recordings per event fixed at the average data value (9), varying the number of events. The right plot holds the number of events fixed at the data value (4), varying the number of recordings per event. Period-independent &phi;<sub>s</sub> values are plotted.

| Event Count Dependence | Recordings/Event Dependence |
|-----|-----|
| ![num events dependence](resources/source_strike_event_count_dependence_20km.png) | ![num recordings dependence](resources/source_strike_event_recordings_dependence_20km.png) |

Here are plots of the histogram of &phi;<sub>s</sub> for each individual rupture, from which we compute a total &phi;<sub>s</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m6.6_20km_3s_hist.png) | ![5s](resources/source_strike_m6.6_20km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m6.6_20km_7.5s_hist.png) | ![10s](resources/source_strike_m6.6_20km_10s_hist.png) |

Here are plots of the &phi;<sub>s</sub> as a function of various parameters for disaggregation.

| 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|
| ![Scatter](resources/source_strike_scatter__v_prop_3s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_5s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_7.5s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_10s_std_dev.png) |
| ![Scatter](resources/source_strike_scatter__v_prop_3s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_5s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_7.5s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_10s_residual.png) |


### 50.0 km M6.6 Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_m6.6_50km_std_dev.png)

| 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.46 | 0.46 | 0.45 | [0.22 0.77] |  | 0.48 | 0.48 | 0.48 | [0.23 0.78] |  | 0.54 | 0.54 | 0.54 | [0.19 0.77] |  | 0.55 | 0.55 | 0.57 | [0.25 0.72] |

We compute uncertainties on &phi;<sub>s</sub> through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and distance within the range [40.0 60.0] km. We throw out any events with only 1 recording, leaving us with 3 events and a total of 33 recordings. We then downsample our simulated data 100 times, and compute &phi;<sub>s</sub> from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 2 fewer data points.*

| Period (s) | Full &phi;<sub>s</sub> | Downsampled median &phi;<sub>s</sub> | Downsampled &phi;<sub>s</sub> std. dev. | Downsampled &phi;<sub>s</sub> 68% conf range | Downsampled &phi;<sub>s</sub> 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.48 | 0.47 | 0.04 | [0.44 0.52] | [0.4 0.55] |
| 1 | 0.41 | 0.4 | 0.05 | [0.36 0.46] | [0.29 0.51] |
| 2 | 0.45 | 0.45 | 0.05 | [0.4 0.5] | [0.34 0.55] |
| 3 | 0.46 | 0.45 | 0.06 | [0.4 0.52] | [0.36 0.6] |
| 4 | 0.48 | 0.47 | 0.07 | [0.39 0.56] | [0.35 0.64] |
| 5 | 0.48 | 0.47 | 0.06 | [0.4 0.53] | [0.35 0.59] |
| 7.5 | 0.54 | 0.53 | 0.07 | [0.46 0.61] | [0.37 0.67] |
| 10 | 0.55 | 0.55 | 0.06 | [0.48 0.61] | [0.43 0.65] |

These plots show the dependence of &phi;<sub>s</sub> to the number of events included and the number of recordingsper event. The left plot holds the number of recordings per event fixed at the average data value (9), varying the number of events. The right plot holds the number of events fixed at the data value (4), varying the number of recordings per event. Period-independent &phi;<sub>s</sub> values are plotted.

| Event Count Dependence | Recordings/Event Dependence |
|-----|-----|
| ![num events dependence](resources/source_strike_event_count_dependence_50km.png) | ![num recordings dependence](resources/source_strike_event_recordings_dependence_50km.png) |

Here are plots of the histogram of &phi;<sub>s</sub> for each individual rupture, from which we compute a total &phi;<sub>s</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m6.6_50km_3s_hist.png) | ![5s](resources/source_strike_m6.6_50km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m6.6_50km_7.5s_hist.png) | ![10s](resources/source_strike_m6.6_50km_10s_hist.png) |

Here are plots of the &phi;<sub>s</sub> as a function of various parameters for disaggregation.

| 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|
| ![Scatter](resources/source_strike_scatter__v_prop_3s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_5s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_7.5s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_10s_std_dev.png) |
| ![Scatter](resources/source_strike_scatter__v_prop_3s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_5s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_7.5s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_10s_residual.png) |


### 100.0 km M6.6 Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_m6.6_100km_std_dev.png)

| 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.47 | 0.46 | 0.46 | [0.25 0.69] |  | 0.53 | 0.53 | 0.53 | [0.23 0.82] |  | 0.57 | 0.57 | 0.58 | [0.15 0.79] |  | 0.51 | 0.52 | 0.52 | [0.24 0.75] |

We compute uncertainties on &phi;<sub>s</sub> through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and distance within the range [80.0 120.0] km. We throw out any events with only 1 recording, leaving us with 2 events and a total of 29 recordings. We then downsample our simulated data 100 times, and compute &phi;<sub>s</sub> from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 28 fewer data points.*

| Period (s) | Full &phi;<sub>s</sub> | Downsampled median &phi;<sub>s</sub> | Downsampled &phi;<sub>s</sub> std. dev. | Downsampled &phi;<sub>s</sub> 68% conf range | Downsampled &phi;<sub>s</sub> 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.49 | 0.49 | 0.04 | [0.44 0.53] | [0.41 0.57] |
| 1 | 0.37 | 0.38 | 0.05 | [0.32 0.41] | [0.25 0.48] |
| 2 | 0.45 | 0.44 | 0.05 | [0.39 0.5] | [0.33 0.55] |
| 3 | 0.47 | 0.46 | 0.06 | [0.39 0.51] | [0.32 0.58] |
| 4 | 0.49 | 0.49 | 0.08 | [0.41 0.58] | [0.32 0.66] |
| 5 | 0.53 | 0.53 | 0.08 | [0.45 0.62] | [0.39 0.69] |
| 7.5 | 0.57 | 0.59 | 0.07 | [0.52 0.65] | [0.4 0.69] |
| 10 | 0.51 | 0.52 | 0.06 | [0.45 0.58] | [0.39 0.63] |

These plots show the dependence of &phi;<sub>s</sub> to the number of events included and the number of recordingsper event. The left plot holds the number of recordings per event fixed at the average data value (29), varying the number of events. The right plot holds the number of events fixed at the data value (2), varying the number of recordings per event. Period-independent &phi;<sub>s</sub> values are plotted.

| Event Count Dependence | Recordings/Event Dependence |
|-----|-----|
| ![num events dependence](resources/source_strike_event_count_dependence_100km.png) | ![num recordings dependence](resources/source_strike_event_recordings_dependence_100km.png) |

Here are plots of the histogram of &phi;<sub>s</sub> for each individual rupture, from which we compute a total &phi;<sub>s</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m6.6_100km_3s_hist.png) | ![5s](resources/source_strike_m6.6_100km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m6.6_100km_7.5s_hist.png) | ![10s](resources/source_strike_m6.6_100km_10s_hist.png) |

Here are plots of the &phi;<sub>s</sub> as a function of various parameters for disaggregation.

| 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|
| ![Scatter](resources/source_strike_scatter__v_prop_3s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_5s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_7.5s_std_dev.png) | ![Scatter](resources/source_strike_scatter__v_prop_10s_std_dev.png) |
| ![Scatter](resources/source_strike_scatter__v_prop_3s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_5s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_7.5s_residual.png) | ![Scatter](resources/source_strike_scatter__v_prop_10s_residual.png) |


### All Distances M6.6 Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_m6.6_std_dev.png)

| 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.44 | 0.44 | 0.44 | [0.14 0.77] |  | 0.48 | 0.47 | 0.47 | [0.13 0.82] |  | 0.49 | 0.47 | 0.49 | [0.14 0.79] |  | 0.46 | 0.43 | 0.49 | [0.06 0.75] |

We compute uncertainties on &phi;<sub>s</sub> through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and all distances. We throw out any events with only 1 recording, leaving us with 5 events and a total of 144 recordings. We then downsample our simulated data 100 times, and compute &phi;<sub>s</sub> from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below.

| Period (s) | Full &phi;<sub>s</sub> | Downsampled median &phi;<sub>s</sub> | Downsampled &phi;<sub>s</sub> std. dev. | Downsampled &phi;<sub>s</sub> 68% conf range | Downsampled &phi;<sub>s</sub> 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.45 | 0.44 | 0.02 | [0.43 0.46] | [0.4 0.48] |
| 1 | 0.38 | 0.37 | 0.02 | [0.35 0.4] | [0.32 0.42] |
| 2 | 0.44 | 0.43 | 0.02 | [0.41 0.46] | [0.38 0.48] |
| 3 | 0.44 | 0.43 | 0.03 | [0.41 0.46] | [0.4 0.5] |
| 4 | 0.47 | 0.46 | 0.03 | [0.43 0.49] | [0.4 0.52] |
| 5 | 0.48 | 0.48 | 0.03 | [0.45 0.5] | [0.4 0.53] |
| 7.5 | 0.49 | 0.47 | 0.03 | [0.45 0.51] | [0.41 0.54] |
| 10 | 0.46 | 0.45 | 0.03 | [0.41 0.48] | [0.38 0.51] |

These plots show the dependence of &phi;<sub>s</sub> to the number of events included and the number of recordingsper event. The left plot holds the number of recordings per event fixed at the average data value (17), varying the number of events. The right plot holds the number of events fixed at the data value (5), varying the number of recordings per event. Period-independent &phi;<sub>s</sub> values are plotted.

| Event Count Dependence | Recordings/Event Dependence |
|-----|-----|
| ![num events dependence](resources/source_strike_event_count_dependence_all_dists.png) | ![num recordings dependence](resources/source_strike_event_recordings_dependence_all_dists.png) |

Here are plots of the histogram of &phi;<sub>s</sub> for each individual rupture, from which we compute a total &phi;<sub>s</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m6.6_3s_hist.png) | ![5s](resources/source_strike_m6.6_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m6.6_7.5s_hist.png) | ![10s](resources/source_strike_m6.6_10s_hist.png) |


## Within-event, single-site Variability
*[(top)](#table-of-contents)*

### Within-event, single-site Variability Methodology
*[(top)](#table-of-contents)*

Within-event, single-site variability, denoted &phi;<sub>SS</sub> in Al Atik (2010), is computed separately for each:

* Site *[1 unique]*
* Distance *[3 unique]*

Then, for each unique combination of:

* Rupture *[400 unique]*

we compute residuals, &delta;W<sub>es</sub>, of the natural-log ground motions (relative to the median), computed across all 18 combinations of:

* Rupture Strike *[18 unique]*
* Path *[1 unique]*

We take &phi;<sub>SS</sub> to be the standard deviation of all residuals, &delta;W<sub>es</sub>, across each combination of Rupture.

We also compute distance-independent &phi;<sub>SS</sub>, which is computed as the standard deviation of all residuals, &delta;W<sub>es</sub>, across all distances. Each residual is still computed relative to the log-median ground motion at it's distance.

Here is an exmample with 5 rotations, which would be repeated for each combination of [Rupture]. The site is shown with a blue square, and initially oriented rupture in bold with its hypocenter as a red star and centroid a green circle. Rotations of that rupture are in gray:

![Example](resources/example_within_event_ss.png)


### 20.0 km M6.6 Within-event, single-site Results
*[(top)](#table-of-contents)*

![Within-event, single-site Variability](resources/within_event_ss_m6.6_20km_std_dev.png)

| 3s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 10s &phi;<sub>SS</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.39 | 0.39 | 0.38 | [0.14 0.63] |  | 0.41 | 0.4 | 0.4 | [0.13 0.69] |  | 0.32 | 0.31 | 0.3 | [0.14 0.57] |  | 0.24 | 0.23 | 0.22 | [0.06 0.5] |

We compute uncertainties on &phi;<sub>SS</sub> through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and distance within the range [10.0 30.0] km. We throw out any events with only 1 recording, leaving us with 4 events and a total of 37 recordings. We then downsample our simulated data 100 times, and compute &phi;<sub>SS</sub> from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below.

| Period (s) | Full &phi;<sub>SS</sub> | Downsampled median &phi;<sub>SS</sub> | Downsampled &phi;<sub>SS</sub> std. dev. | Downsampled &phi;<sub>SS</sub> 68% conf range | Downsampled &phi;<sub>SS</sub> 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.37 | 0.36 | 0.03 | [0.33 0.39] | [0.3 0.43] |
| 1 | 0.36 | 0.35 | 0.04 | [0.31 0.4] | [0.27 0.44] |
| 2 | 0.42 | 0.4 | 0.05 | [0.35 0.45] | [0.3 0.51] |
| 3 | 0.39 | 0.38 | 0.05 | [0.33 0.43] | [0.29 0.5] |
| 4 | 0.42 | 0.4 | 0.06 | [0.35 0.47] | [0.28 0.54] |
| 5 | 0.41 | 0.39 | 0.06 | [0.33 0.45] | [0.29 0.5] |
| 7.5 | 0.32 | 0.31 | 0.05 | [0.26 0.35] | [0.21 0.4] |
| 10 | 0.24 | 0.23 | 0.05 | [0.18 0.28] | [0.15 0.34] |

These plots show the dependence of &phi;<sub>SS</sub> to the number of events included and the number of recordingsper event. The left plot holds the number of recordings per event fixed at the average data value (9), varying the number of events. The right plot holds the number of events fixed at the data value (4), varying the number of recordings per event. Period-independent &phi;<sub>SS</sub> values are plotted.

| Event Count Dependence | Recordings/Event Dependence |
|-----|-----|
| ![num events dependence](resources/within_event_ss_event_count_dependence_20km.png) | ![num recordings dependence](resources/within_event_ss_event_recordings_dependence_20km.png) |

Here are plots of the histogram of &phi;<sub>SS</sub> for each individual rupture, from which we compute a total &phi;<sub>SS</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_ss_m6.6_20km_3s_hist.png) | ![5s](resources/within_event_ss_m6.6_20km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_ss_m6.6_20km_7.5s_hist.png) | ![10s](resources/within_event_ss_m6.6_20km_10s_hist.png) |

Here are plots of the &phi;<sub>SS</sub> as a function of various parameters for disaggregation.

| 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|
| ![Scatter](resources/within_event_ss_scatter__v_prop_3s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_5s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_7.5s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_10s_std_dev.png) |
| ![Scatter](resources/within_event_ss_scatter__v_prop_3s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_5s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_7.5s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_10s_residual.png) |


### 50.0 km M6.6 Within-event, single-site Results
*[(top)](#table-of-contents)*

![Within-event, single-site Variability](resources/within_event_ss_m6.6_50km_std_dev.png)

| 3s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 10s &phi;<sub>SS</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.46 | 0.46 | 0.45 | [0.22 0.77] |  | 0.48 | 0.48 | 0.48 | [0.23 0.78] |  | 0.54 | 0.54 | 0.54 | [0.19 0.77] |  | 0.55 | 0.55 | 0.57 | [0.25 0.72] |

We compute uncertainties on &phi;<sub>SS</sub> through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and distance within the range [40.0 60.0] km. We throw out any events with only 1 recording, leaving us with 3 events and a total of 33 recordings. We then downsample our simulated data 100 times, and compute &phi;<sub>SS</sub> from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 2 fewer data points.*

| Period (s) | Full &phi;<sub>SS</sub> | Downsampled median &phi;<sub>SS</sub> | Downsampled &phi;<sub>SS</sub> std. dev. | Downsampled &phi;<sub>SS</sub> 68% conf range | Downsampled &phi;<sub>SS</sub> 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.48 | 0.47 | 0.03 | [0.44 0.5] | [0.4 0.56] |
| 1 | 0.41 | 0.4 | 0.05 | [0.36 0.45] | [0.28 0.49] |
| 2 | 0.45 | 0.44 | 0.05 | [0.38 0.5] | [0.33 0.54] |
| 3 | 0.46 | 0.45 | 0.06 | [0.38 0.5] | [0.32 0.6] |
| 4 | 0.48 | 0.45 | 0.06 | [0.4 0.52] | [0.32 0.61] |
| 5 | 0.48 | 0.47 | 0.06 | [0.42 0.53] | [0.34 0.59] |
| 7.5 | 0.54 | 0.53 | 0.08 | [0.44 0.61] | [0.38 0.68] |
| 10 | 0.55 | 0.54 | 0.07 | [0.47 0.61] | [0.4 0.65] |

These plots show the dependence of &phi;<sub>SS</sub> to the number of events included and the number of recordingsper event. The left plot holds the number of recordings per event fixed at the average data value (9), varying the number of events. The right plot holds the number of events fixed at the data value (4), varying the number of recordings per event. Period-independent &phi;<sub>SS</sub> values are plotted.

| Event Count Dependence | Recordings/Event Dependence |
|-----|-----|
| ![num events dependence](resources/within_event_ss_event_count_dependence_50km.png) | ![num recordings dependence](resources/within_event_ss_event_recordings_dependence_50km.png) |

Here are plots of the histogram of &phi;<sub>SS</sub> for each individual rupture, from which we compute a total &phi;<sub>SS</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_ss_m6.6_50km_3s_hist.png) | ![5s](resources/within_event_ss_m6.6_50km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_ss_m6.6_50km_7.5s_hist.png) | ![10s](resources/within_event_ss_m6.6_50km_10s_hist.png) |

Here are plots of the &phi;<sub>SS</sub> as a function of various parameters for disaggregation.

| 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|
| ![Scatter](resources/within_event_ss_scatter__v_prop_3s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_5s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_7.5s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_10s_std_dev.png) |
| ![Scatter](resources/within_event_ss_scatter__v_prop_3s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_5s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_7.5s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_10s_residual.png) |


### 100.0 km M6.6 Within-event, single-site Results
*[(top)](#table-of-contents)*

![Within-event, single-site Variability](resources/within_event_ss_m6.6_100km_std_dev.png)

| 3s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 10s &phi;<sub>SS</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.47 | 0.46 | 0.46 | [0.25 0.69] |  | 0.53 | 0.53 | 0.53 | [0.23 0.82] |  | 0.57 | 0.57 | 0.58 | [0.15 0.79] |  | 0.51 | 0.52 | 0.52 | [0.24 0.75] |

We compute uncertainties on &phi;<sub>SS</sub> through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and distance within the range [80.0 120.0] km. We throw out any events with only 1 recording, leaving us with 2 events and a total of 29 recordings. We then downsample our simulated data 100 times, and compute &phi;<sub>SS</sub> from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 28 fewer data points.*

| Period (s) | Full &phi;<sub>SS</sub> | Downsampled median &phi;<sub>SS</sub> | Downsampled &phi;<sub>SS</sub> std. dev. | Downsampled &phi;<sub>SS</sub> 68% conf range | Downsampled &phi;<sub>SS</sub> 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.49 | 0.48 | 0.04 | [0.44 0.52] | [0.4 0.56] |
| 1 | 0.37 | 0.36 | 0.05 | [0.32 0.43] | [0.28 0.47] |
| 2 | 0.45 | 0.44 | 0.06 | [0.38 0.49] | [0.31 0.56] |
| 3 | 0.47 | 0.45 | 0.06 | [0.39 0.52] | [0.33 0.58] |
| 4 | 0.49 | 0.49 | 0.08 | [0.42 0.57] | [0.32 0.63] |
| 5 | 0.53 | 0.52 | 0.08 | [0.45 0.61] | [0.36 0.67] |
| 7.5 | 0.57 | 0.56 | 0.07 | [0.49 0.63] | [0.4 0.7] |
| 10 | 0.51 | 0.51 | 0.06 | [0.45 0.57] | [0.34 0.63] |

These plots show the dependence of &phi;<sub>SS</sub> to the number of events included and the number of recordingsper event. The left plot holds the number of recordings per event fixed at the average data value (29), varying the number of events. The right plot holds the number of events fixed at the data value (2), varying the number of recordings per event. Period-independent &phi;<sub>SS</sub> values are plotted.

| Event Count Dependence | Recordings/Event Dependence |
|-----|-----|
| ![num events dependence](resources/within_event_ss_event_count_dependence_100km.png) | ![num recordings dependence](resources/within_event_ss_event_recordings_dependence_100km.png) |

Here are plots of the histogram of &phi;<sub>SS</sub> for each individual rupture, from which we compute a total &phi;<sub>SS</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_ss_m6.6_100km_3s_hist.png) | ![5s](resources/within_event_ss_m6.6_100km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_ss_m6.6_100km_7.5s_hist.png) | ![10s](resources/within_event_ss_m6.6_100km_10s_hist.png) |

Here are plots of the &phi;<sub>SS</sub> as a function of various parameters for disaggregation.

| 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|
| ![Scatter](resources/within_event_ss_scatter__v_prop_3s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_5s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_7.5s_std_dev.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_10s_std_dev.png) |
| ![Scatter](resources/within_event_ss_scatter__v_prop_3s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_5s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_7.5s_residual.png) | ![Scatter](resources/within_event_ss_scatter__v_prop_10s_residual.png) |


### All Distances M6.6 Within-event, single-site Results
*[(top)](#table-of-contents)*

![Within-event, single-site Variability](resources/within_event_ss_m6.6_std_dev.png)

| 3s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 10s &phi;<sub>SS</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.44 | 0.44 | 0.44 | [0.14 0.77] |  | 0.48 | 0.47 | 0.47 | [0.13 0.82] |  | 0.49 | 0.47 | 0.49 | [0.14 0.79] |  | 0.46 | 0.43 | 0.49 | [0.06 0.75] |

We compute uncertainties on &phi;<sub>SS</sub> through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and all distances. We throw out any events with only 1 recording, leaving us with 5 events and a total of 144 recordings. We then downsample our simulated data 100 times, and compute &phi;<sub>SS</sub> from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below.

| Period (s) | Full &phi;<sub>SS</sub> | Downsampled median &phi;<sub>SS</sub> | Downsampled &phi;<sub>SS</sub> std. dev. | Downsampled &phi;<sub>SS</sub> 68% conf range | Downsampled &phi;<sub>SS</sub> 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.45 | 0.45 | 0.02 | [0.43 0.46] | [0.41 0.48] |
| 1 | 0.38 | 0.38 | 0.02 | [0.36 0.4] | [0.33 0.42] |
| 2 | 0.44 | 0.43 | 0.02 | [0.41 0.45] | [0.39 0.47] |
| 3 | 0.44 | 0.43 | 0.03 | [0.4 0.47] | [0.37 0.5] |
| 4 | 0.47 | 0.46 | 0.03 | [0.43 0.49] | [0.38 0.53] |
| 5 | 0.48 | 0.47 | 0.03 | [0.44 0.5] | [0.41 0.53] |
| 7.5 | 0.49 | 0.49 | 0.03 | [0.45 0.51] | [0.42 0.55] |
| 10 | 0.46 | 0.45 | 0.03 | [0.43 0.49] | [0.4 0.51] |

These plots show the dependence of &phi;<sub>SS</sub> to the number of events included and the number of recordingsper event. The left plot holds the number of recordings per event fixed at the average data value (17), varying the number of events. The right plot holds the number of events fixed at the data value (5), varying the number of recordings per event. Period-independent &phi;<sub>SS</sub> values are plotted.

| Event Count Dependence | Recordings/Event Dependence |
|-----|-----|
| ![num events dependence](resources/within_event_ss_event_count_dependence_all_dists.png) | ![num recordings dependence](resources/within_event_ss_event_recordings_dependence_all_dists.png) |

Here are plots of the histogram of &phi;<sub>SS</sub> for each individual rupture, from which we compute a total &phi;<sub>SS</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_ss_m6.6_3s_hist.png) | ![5s](resources/within_event_ss_m6.6_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_ss_m6.6_7.5s_hist.png) | ![10s](resources/within_event_ss_m6.6_10s_hist.png) |


## Between-events Variability
*[(top)](#table-of-contents)*

### Between-events Variability Methodology
*[(top)](#table-of-contents)*

Between-events variability, denoted &tau; in Al Atik (2010), is computed separately for each:

* Site *[1 unique]*
* Distance *[3 unique]*

We first compute the median natural-log ground motion, &delta;B<sub>e</sub>, for each combination of:

* Rupture *[400 unique]*

That median, &delta;B<sub>e</sub>, is computed across all 18 combinations of:

* Rupture Strike *[18 unique]*
* Path *[1 unique]*

We take &tau; to be the standard deviation of all &delta;B<sub>e</sub>.

We also compute distance-independent &tau;, which we take to be the mean value across all distances.

Here is an exmample with 5 rotations, which would be repeated for each combination of [Rupture]. The site is shown with a blue square, and initially oriented rupture in bold with its hypocenter as a red star and centroid a green circle. Rotations of that rupture are in gray:

![Example](resources/example_between_events.png)


### 20.0 km M6.6 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m6.6_20km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.26 | -4.06 | [-4.64 -3.15] | 0.29 | -4.74 | [-5.54 -3.87] | 0.37 | -5.22 | [-6.22 -4.49] | 0.39 | -5.73 | [-6.84 -5] |

We compute uncertainties on &tau; through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and distance within the range [10.0 30.0] km. We throw out any events with only 1 recording, leaving us with 4 events and a total of 37 recordings. We then downsample our simulated data 100 times, and compute &tau; from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below.

| Period (s) | Full &tau; | Downsampled median &tau; | Downsampled &tau; std. dev. | Downsampled &tau; 68% conf range | Downsampled &tau; 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.29 | 0.29 | 0.07 | [0.22 0.37] | [0.17 0.43] |
| 1 | 0.2 | 0.22 | 0.09 | [0.14 0.29] | [0.06 0.46] |
| 2 | 0.27 | 0.27 | 0.13 | [0.16 0.42] | [0.08 0.58] |
| 3 | 0.26 | 0.27 | 0.11 | [0.16 0.39] | [0.08 0.52] |
| 4 | 0.26 | 0.25 | 0.13 | [0.13 0.41] | [0.06 0.56] |
| 5 | 0.29 | 0.29 | 0.13 | [0.16 0.43] | [0.08 0.6] |
| 7.5 | 0.37 | 0.33 | 0.13 | [0.22 0.5] | [0.12 0.69] |
| 10 | 0.39 | 0.36 | 0.14 | [0.23 0.51] | [0.13 0.69] |

These plots show the dependence of &tau; to the number of events included and the number of recordingsper event. The left plot holds the number of recordings per event fixed at the average data value (9), varying the number of events. The right plot holds the number of events fixed at the data value (4), varying the number of recordings per event. Period-independent &tau; values are plotted.

| Event Count Dependence | Recordings/Event Dependence |
|-----|-----|
| ![num events dependence](resources/between_events_event_count_dependence_20km.png) | ![num recordings dependence](resources/between_events_event_recordings_dependence_20km.png) |


### 50.0 km M6.6 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m6.6_50km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.27 | -4.83 | [-5.52 -4.03] | 0.32 | -5.42 | [-6.58 -4.57] | 0.38 | -5.91 | [-7 -5.02] | 0.4 | -6.34 | [-7.64 -5.63] |

We compute uncertainties on &tau; through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and distance within the range [40.0 60.0] km. We throw out any events with only 1 recording, leaving us with 3 events and a total of 33 recordings. We then downsample our simulated data 100 times, and compute &tau; from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 2 fewer data points.*

| Period (s) | Full &tau; | Downsampled median &tau; | Downsampled &tau; std. dev. | Downsampled &tau; 68% conf range | Downsampled &tau; 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.31 | 0.32 | 0.11 | [0.24 0.46] | [0.18 0.63] |
| 1 | 0.22 | 0.23 | 0.14 | [0.1 0.41] | [0.05 0.58] |
| 2 | 0.29 | 0.3 | 0.17 | [0.14 0.47] | [0.04 0.76] |
| 3 | 0.27 | 0.29 | 0.17 | [0.12 0.5] | [0.05 0.68] |
| 4 | 0.3 | 0.31 | 0.17 | [0.18 0.55] | [0.05 0.71] |
| 5 | 0.32 | 0.34 | 0.18 | [0.18 0.56] | [0.07 0.8] |
| 7.5 | 0.38 | 0.38 | 0.22 | [0.22 0.65] | [0.09 0.99] |
| 10 | 0.4 | 0.42 | 0.22 | [0.24 0.63] | [0.1 1.05] |

These plots show the dependence of &tau; to the number of events included and the number of recordingsper event. The left plot holds the number of recordings per event fixed at the average data value (9), varying the number of events. The right plot holds the number of events fixed at the data value (4), varying the number of recordings per event. Period-independent &tau; values are plotted.

| Event Count Dependence | Recordings/Event Dependence |
|-----|-----|
| ![num events dependence](resources/between_events_event_count_dependence_50km.png) | ![num recordings dependence](resources/between_events_event_recordings_dependence_50km.png) |


### 100.0 km M6.6 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m6.6_100km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.25 | -5.53 | [-6.24 -4.75] | 0.34 | -6.02 | [-7.17 -5.14] | 0.4 | -6.38 | [-7.43 -5.52] | 0.42 | -6.77 | [-8.14 -6.02] |

We compute uncertainties on &tau; through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and distance within the range [80.0 120.0] km. We throw out any events with only 1 recording, leaving us with 2 events and a total of 29 recordings. We then downsample our simulated data 100 times, and compute &tau; from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 28 fewer data points.*

| Period (s) | Full &tau; | Downsampled median &tau; | Downsampled &tau; std. dev. | Downsampled &tau; 68% conf range | Downsampled &tau; 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.3 | 0.22 | 0.1 | [0.12 0.35] | [0.09 0.46] |
| 1 | 0.15 | 0.11 | 0.11 | [0.03 0.25] | [0 0.39] |
| 2 | 0.23 | 0.18 | 0.14 | [0.04 0.33] | [0.01 0.53] |
| 3 | 0.25 | 0.19 | 0.16 | [0.06 0.37] | [0.01 0.64] |
| 4 | 0.32 | 0.22 | 0.18 | [0.07 0.42] | [0.01 0.74] |
| 5 | 0.34 | 0.23 | 0.19 | [0.06 0.48] | [0 0.69] |
| 7.5 | 0.4 | 0.25 | 0.22 | [0.08 0.5] | [0.01 0.87] |
| 10 | 0.42 | 0.23 | 0.25 | [0.06 0.55] | [0.01 1.06] |

These plots show the dependence of &tau; to the number of events included and the number of recordingsper event. The left plot holds the number of recordings per event fixed at the average data value (29), varying the number of events. The right plot holds the number of events fixed at the data value (2), varying the number of recordings per event. Period-independent &tau; values are plotted.

| Event Count Dependence | Recordings/Event Dependence |
|-----|-----|
| ![num events dependence](resources/between_events_event_count_dependence_100km.png) | ![num recordings dependence](resources/between_events_event_recordings_dependence_100km.png) |


### All Distances M6.6 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m6.6_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.26 | -4.81 | [-6.24 -3.15] | 0.32 | -5.4 | [-7.17 -3.87] | 0.38 | -5.84 | [-7.43 -4.49] | 0.4 | -6.28 | [-8.14 -5] |

We compute uncertainties on &tau; through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and all distances. We throw out any events with only 1 recording, leaving us with 5 events and a total of 144 recordings. We then downsample our simulated data 100 times, and compute &tau; from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below.

| Period (s) | Full &tau; | Downsampled median &tau; | Downsampled &tau; std. dev. | Downsampled &tau; 68% conf range | Downsampled &tau; 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.3 | 0.33 | 0.04 | [0.28 0.38] | [0.25 0.43] |
| 1 | 0.19 | 0.23 | 0.06 | [0.18 0.31] | [0.13 0.35] |
| 2 | 0.26 | 0.3 | 0.07 | [0.22 0.36] | [0.18 0.47] |
| 3 | 0.26 | 0.3 | 0.07 | [0.22 0.37] | [0.17 0.45] |
| 4 | 0.29 | 0.32 | 0.08 | [0.24 0.39] | [0.16 0.52] |
| 5 | 0.32 | 0.34 | 0.07 | [0.27 0.41] | [0.21 0.47] |
| 7.5 | 0.38 | 0.41 | 0.08 | [0.32 0.5] | [0.25 0.56] |
| 10 | 0.4 | 0.42 | 0.08 | [0.33 0.5] | [0.25 0.58] |

These plots show the dependence of &tau; to the number of events included and the number of recordingsper event. The left plot holds the number of recordings per event fixed at the average data value (17), varying the number of events. The right plot holds the number of events fixed at the data value (5), varying the number of recordings per event. Period-independent &tau; values are plotted.

| Event Count Dependence | Recordings/Event Dependence |
|-----|-----|
| ![num events dependence](resources/between_events_event_count_dependence_all_dists.png) | ![num recordings dependence](resources/between_events_event_recordings_dependence_all_dists.png) |


## Azumth Dependence
*[(top)](#table-of-contents)*

### Rupture Strike Dependence
*[(top)](#table-of-contents)*

| Type | 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|-----|
| **&tau;** | ![Rupture Strike](resources/m6.6_dist_SOURCE_AZIMUTH_3s_between_events.png) | ![Rupture Strike](resources/m6.6_dist_SOURCE_AZIMUTH_5s_between_events.png) | ![Rupture Strike](resources/m6.6_dist_SOURCE_AZIMUTH_7.5s_between_events.png) | ![Rupture Strike](resources/m6.6_dist_SOURCE_AZIMUTH_10s_between_events.png) |
| **Median SA** | ![Rupture Strike](resources/m6.6_dist_SOURCE_AZIMUTH_3s_median_sa.png) | ![Rupture Strike](resources/m6.6_dist_SOURCE_AZIMUTH_5s_median_sa.png) | ![Rupture Strike](resources/m6.6_dist_SOURCE_AZIMUTH_7.5s_median_sa.png) | ![Rupture Strike](resources/m6.6_dist_SOURCE_AZIMUTH_10s_median_sa.png) |

## BBP PartB Comparison
*[(top)](#table-of-contents)*

Here we attempt to reproduce the SCEC BroadBand Platform "Part B" validation exercise as defined in:

*Goulet, C. A., Abrahamson, N. A., Somerville, P. G., & Wooddell, K. E. (2014). The SCEC broadband platform validation exercise: Methodology for code validation in the context of seismic‐hazard analyses. Seismological Research Letters, 86(1), 17-26.* [(link)](https://pubs.geoscienceworld.org/ssa/srl/article/86/1/17/315438/the-scec-broadband-platform-validation-exercise)

The BBP exercise positioned sites in a 'racetrack' around the ruptures. Here, we instead position and rotate the ruptures around the site in order to work in 3-D with CyberShake reciprical calculations. Results for official scenarios and distances are in **bold**, results for additional magnitudes or distances not defined in the Goulet et. al. (2014) are *italicised*.

### BBP PartB Summary Table
*[(top)](#table-of-contents)*

| Scenario | 20.0 km | 50.0 km | 100.0 km |
|-----|-----|-----|-----|
| **M6.6 SS** | **PASS** | **PASS** | *(PASS)* |

### BBP PartB, M6.6, Vertical Strike-Slip with Surface Rupture
*[(top)](#table-of-contents)*

| 20.0 km | 50.0 km | 100.0 km |
|-----|-----|-----|
| ![PartB Plot](resources/bbp_partB_m6p6_vert_ss_surface_20km.png) | ![PartB Plot](resources/bbp_partB_m6p6_vert_ss_surface_50km.png) | ![PartB Plot](resources/bbp_partB_m6p6_vert_ss_surface_100km.png) |

## CSV Files
*[(top)](#table-of-contents)*

| Magnitude | Distance | Site | CSV File |
|-----|-----|-----|-----|
| M6.6 | 20.0 km | USC | [sa_USC_m6.6_20.0km.csv.gz](resources/sa_USC_m6.6_20.0km.csv.gz) |
| M6.6 | 50.0 km | USC | [sa_USC_m6.6_50.0km.csv.gz](resources/sa_USC_m6.6_50.0km.csv.gz) |
| M6.6 | 100.0 km | USC | [sa_USC_m6.6_100.0km.csv.gz](resources/sa_USC_m6.6_100.0km.csv.gz) |

