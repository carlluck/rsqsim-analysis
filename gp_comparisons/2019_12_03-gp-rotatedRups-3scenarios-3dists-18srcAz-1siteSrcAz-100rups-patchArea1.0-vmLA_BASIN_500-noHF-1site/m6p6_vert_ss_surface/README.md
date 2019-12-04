# Graves & Pitarka (2016) Rotated Rupture Variability, M6.6 SS

This exercise uses translations and rotations to estimate ground motion variability from different sources. We begin by selecting a subset of similar ruptures which match a set of criteria (in this case, M6.6, Vertical Strike-Slip with Surface Rupture). Each rupture is then reoriented such that its strike (following the Aki & Richards 1980 convention) is 0 degrees (due North, dipping to the right for normal or reverse ruptures). For each site, ruptures are translated such that their scalar seismic moment centroid is directly North of the site, and their 3-dimensional distance (Rrup) is as specified (we consider 3 distance[s] here).

We then  perform various rotations. We rotate the rupture in place around its centroid, holding the site-to-source centroid path and Rrup constant (henceforth 'Rupture Strike'). We also rotate ruptures around the site, holding Rrup and source orientation relative to the site constant but sampling different various paths (henceforth 'Path'). We do this for each unique combination of Rupture Strike, Path, Distance, Site, and Rupture.

This pages uses the Graves & Pitarka (2016) rupture generator. Rupture surfaces are determined by first computing the Wells & Coppersmith median length for the magnitude, then a down dip width using that length and the area from Somerville (2006). Hypocenters are randomly distributed both down dip and along strike.

*NOTE: This page uses the SCEC BBP to simulate a 1-dimensional velocity structure. Thus we expect no path variability, and plots of path variabilitiy are included only as verification of the method.*

## Table Of Contents
* [Rupture Rotation Parameters](#rupture-rotation-parameters)
* [M6.6 SS Rupture Match Criteria](#m66-ss-rupture-match-criteria)
* [Sites](#sites)
* [Result Summary Table](#result-summary-table)
  * [GMPE Table](#gmpe-table)
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
* [Event Term Scatters](#event-term-scatters)
  * [Propagation Velocity Event Term Scatters](#propagation-velocity-event-term-scatters)
  * [Mag Event Term Scatters](#mag-event-term-scatters)
  * [Log10(Area) Event Term Scatters](#log10area-event-term-scatters)
  * [Max Slip Event Term Scatters](#max-slip-event-term-scatters)
  * [Mean Slip Event Term Scatters](#mean-slip-event-term-scatters)
  * [Slip Std Dev Event Term Scatters](#slip-std-dev-event-term-scatters)
  * [Mid-Seismogenic Mean Slip Event Term Scatters](#mid-seismogenic-mean-slip-event-term-scatters)
* [Directivity Comparisons](#directivity-comparisons)
* [Azumth Dependence](#azumth-dependence)
  * [Rupture Strike Dependence](#rupture-strike-dependence)
* [BBP PartB Comparison](#bbp-partb-comparison)
  * [BBP PartB Summary Table](#bbp-partb-summary-table)
  * [BBP PartB, M6.6, Vertical Strike-Slip with Surface Rupture](#bbp-partb-m66-vertical-strike-slip-with-surface-rupture)
* [CSV Files](#csv-files)
## Rupture Rotation Parameters

| Quantity | Variations | Description |
|-----|-----|-----|
| Rupture | 100 | Unique (but similar in faulting style and magnitude) ruptures which match the given scenario. |
| Site | 1 | Unique site locations. If 3-d, each will have unique velocity profiles. |
| Rupture Strike | 18 | Rupture strike conforming to the Aki & Richards (1980) convention, where dipping faults dip to the right of the rupture. If path rotation is also performed, this azimuth is relative to the path. |
| Path | 1 | Path from the site to the centroid of the rupture, in azimuthal degrees (0 is North) |
| Distance | 20.0, 50.0, 100.0 km | 3-dimensional distance between the site and the rupture surface. |
| **Total # Simulations** | **5400** | Total number of combinations of the above. |

## M6.6 SS Rupture Match Criteria
*[(top)](#table-of-contents)*

We condisder 100 events which match the following criteria:

* M=[6.55,6.65]
* Ztor=[0.0,1.0]
* Rake=[-180,-170] or [-10,10] or [170,180]
* Dip=90.0
* Linear rupture (max 0.5km deviation from ideal)

## Sites

| Name | Location | Vs30 (m/s) | Z1.0 (km) | Z2.5 (km) |
|-----|-----|-----|-----|-----|
| USC | *34.0192, -118.286* | 500 | N/A | N/A |

## Result Summary Table

| Type | Notation | Distance | T-independent Std. Dev. | 3s Std. Dev. | 5s Std. Dev. | 7.5s Std. Dev. | 10s Std. Dev. |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Source-strike | &phi;<sub>s</sub> | 20 km | 0.39 | 0.39 | 0.37 | 0.41 | 0.39 |
| Source-strike | &phi;<sub>s</sub> | 50 km | 0.46 | 0.45 | 0.41 | 0.5 | 0.58 |
| Source-strike | &phi;<sub>s</sub> | 100 km | 0.49 | 0.47 | 0.46 | 0.55 | 0.6 |
| Source-strike | &phi;<sub>s</sub> | (all) | 0.45 | 0.44 | 0.42 | 0.49 | 0.53 |
| Within-event, single-site | &phi;<sub>SS</sub> | 20 km | 0.39 | 0.39 | 0.37 | 0.41 | 0.39 |
| Within-event, single-site | &phi;<sub>SS</sub> | 50 km | 0.46 | 0.45 | 0.41 | 0.5 | 0.58 |
| Within-event, single-site | &phi;<sub>SS</sub> | 100 km | 0.49 | 0.47 | 0.46 | 0.55 | 0.6 |
| Within-event, single-site | &phi;<sub>SS</sub> | (all) | 0.45 | 0.44 | 0.42 | 0.49 | 0.53 |
| Between-events | &tau; | 20 km | 0.14 | 0.15 | 0.15 | 0.13 | 0.12 |
| Between-events | &tau; | 50 km | 0.17 | 0.14 | 0.18 | 0.24 | 0.19 |
| Between-events | &tau; | 100 km | 0.17 | 0.15 | 0.17 | 0.23 | 0.17 |
| Between-events | &tau; | (all) | 0.16 | 0.15 | 0.17 | 0.2 | 0.16 |

### GMPE Table
*[(top)](#table-of-contents)*

| Type | Notation | Distance | ASK2014 3s | ASK2014 5s | ASK2014 7.5s | ASK2014 10s | BSSA2014 3s | BSSA2014 5s | BSSA2014 7.5s | BSSA2014 10s | CB2014 3s | CB2014 5s | CB2014 7.5s | CB2014 10s | CY2014 3s | CY2014 5s | CY2014 7.5s | CY2014 10s |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| Source-strike | &phi;<sub>SS</sub> | 20 km | 0.55 | 0.58 | 0.57 | 0.55 | 0.55 | 0.54 | 0.54 | 0.54 | 0.55 | 0.51 | 0.49 | 0.47 | 0.52 | 0.53 | 0.52 | 0.51 |
| Source-strike | &phi;<sub>SS</sub> | 50 km | 0.55 | 0.58 | 0.57 | 0.55 | 0.55 | 0.54 | 0.54 | 0.54 | 0.55 | 0.51 | 0.49 | 0.47 | 0.53 | 0.53 | 0.52 | 0.51 |
| Source-strike | &phi;<sub>SS</sub> | 100 km | 0.55 | 0.58 | 0.57 | 0.55 | 0.55 | 0.54 | 0.54 | 0.54 | 0.55 | 0.51 | 0.49 | 0.47 | 0.53 | 0.53 | 0.52 | 0.51 |
| Within-event, single-site | &phi;<sub>SS</sub> | 20 km | 0.55 | 0.58 | 0.57 | 0.55 | 0.55 | 0.54 | 0.54 | 0.54 | 0.55 | 0.51 | 0.49 | 0.47 | 0.52 | 0.53 | 0.52 | 0.51 |
| Within-event, single-site | &phi;<sub>SS</sub> | 50 km | 0.55 | 0.58 | 0.57 | 0.55 | 0.55 | 0.54 | 0.54 | 0.54 | 0.55 | 0.51 | 0.49 | 0.47 | 0.53 | 0.53 | 0.52 | 0.51 |
| Within-event, single-site | &phi;<sub>SS</sub> | 100 km | 0.55 | 0.58 | 0.57 | 0.55 | 0.55 | 0.54 | 0.54 | 0.54 | 0.55 | 0.51 | 0.49 | 0.47 | 0.53 | 0.53 | 0.52 | 0.51 |
| Between-events | &tau; | 20 km | 0.38 | 0.38 | 0.38 | 0.38 | 0.3 | 0.33 | 0.34 | 0.35 | 0.35 | 0.4 | 0.42 | 0.39 | 0.33 | 0.33 | 0.34 | 0.34 |
| Between-events | &tau; | 50 km | 0.38 | 0.38 | 0.38 | 0.38 | 0.3 | 0.33 | 0.34 | 0.35 | 0.35 | 0.4 | 0.42 | 0.39 | 0.33 | 0.33 | 0.34 | 0.34 |
| Between-events | &tau; | 100 km | 0.38 | 0.38 | 0.38 | 0.38 | 0.3 | 0.33 | 0.34 | 0.35 | 0.35 | 0.4 | 0.42 | 0.39 | 0.33 | 0.34 | 0.34 | 0.34 |

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

* Rupture *[100 unique]*
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
|  | 0.39 | 0.39 | 0.38 | [0.21 0.62] |  | 0.37 | 0.36 | 0.35 | [0.18 0.62] |  | 0.41 | 0.39 | 0.36 | [0.17 0.7] |  | 0.39 | 0.37 | 0.36 | [0.11 0.67] |

Here are plots of the histogram of &phi;<sub>s</sub> for each individual rupture, from which we compute a total &phi;<sub>s</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m6.6_20km_3s_hist.png) | ![5s](resources/source_strike_m6.6_20km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m6.6_20km_7.5s_hist.png) | ![10s](resources/source_strike_m6.6_20km_10s_hist.png) |

#### 20.0 km M6.6 Source-strike Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &phi;<sub>s</sub> through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and distance within the range [10.0 30.0] km. We throw out any events with only 1 recording, leaving us with 4 events and a total of 37 recordings. We then downsample our simulated data 100 times, and compute &phi;<sub>s</sub> from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

| Period (s) | Full &phi;<sub>s</sub> | Downsampled median &phi;<sub>s</sub> | Downsampled &phi;<sub>s</sub> std. dev. | Downsampled &phi;<sub>s</sub> 68% conf range | Downsampled &phi;<sub>s</sub> 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.39 | 0.38 | 0.05 | [0.34 0.43] | [0.3 0.47] |
| 1 | 0.38 | 0.37 | 0.05 | [0.32 0.41] | [0.29 0.51] |
| 2 | 0.43 | 0.42 | 0.05 | [0.37 0.47] | [0.32 0.52] |
| 3 | 0.39 | 0.38 | 0.06 | [0.33 0.45] | [0.29 0.51] |
| 4 | 0.37 | 0.37 | 0.06 | [0.32 0.43] | [0.25 0.49] |
| 5 | 0.37 | 0.37 | 0.06 | [0.3 0.42] | [0.25 0.5] |
| 7.5 | 0.41 | 0.4 | 0.08 | [0.32 0.48] | [0.26 0.57] |
| 10 | 0.39 | 0.38 | 0.08 | [0.29 0.45] | [0.21 0.52] |

These plots show the distribution of period-independent downsampled &phi;<sub>s</sub> for each site.

| Period | **USC** |
|-----|-----|
| Period-Indep | ![Dowmsampled Histogram](resources/source_strike_m6.6_20km_USC_downsampled_hist_period_indep.png) |
| 3s | ![Dowmsampled Histogram](resources/source_strike_m6.6_20km_USC_downsampled_hist_3s.png) |


### 50.0 km M6.6 Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_m6.6_50km_std_dev.png)

| 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.45 | 0.45 | 0.45 | [0.21 0.66] |  | 0.41 | 0.41 | 0.4 | [0.17 0.61] |  | 0.5 | 0.49 | 0.48 | [0.24 0.76] |  | 0.58 | 0.58 | 0.58 | [0.3 0.8] |

Here are plots of the histogram of &phi;<sub>s</sub> for each individual rupture, from which we compute a total &phi;<sub>s</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m6.6_50km_3s_hist.png) | ![5s](resources/source_strike_m6.6_50km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m6.6_50km_7.5s_hist.png) | ![10s](resources/source_strike_m6.6_50km_10s_hist.png) |

#### 50.0 km M6.6 Source-strike Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &phi;<sub>s</sub> through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and distance within the range [40.0 60.0] km. We throw out any events with only 1 recording, leaving us with 3 events and a total of 33 recordings. We then downsample our simulated data 100 times, and compute &phi;<sub>s</sub> from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 2 fewer data points.*

| Period (s) | Full &phi;<sub>s</sub> | Downsampled median &phi;<sub>s</sub> | Downsampled &phi;<sub>s</sub> std. dev. | Downsampled &phi;<sub>s</sub> 68% conf range | Downsampled &phi;<sub>s</sub> 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.46 | 0.44 | 0.04 | [0.41 0.5] | [0.38 0.55] |
| 1 | 0.4 | 0.39 | 0.05 | [0.34 0.43] | [0.3 0.49] |
| 2 | 0.41 | 0.39 | 0.06 | [0.33 0.46] | [0.29 0.52] |
| 3 | 0.45 | 0.45 | 0.06 | [0.38 0.51] | [0.34 0.58] |
| 4 | 0.43 | 0.42 | 0.06 | [0.36 0.49] | [0.31 0.54] |
| 5 | 0.41 | 0.41 | 0.06 | [0.35 0.47] | [0.27 0.52] |
| 7.5 | 0.5 | 0.48 | 0.09 | [0.39 0.58] | [0.33 0.67] |
| 10 | 0.58 | 0.56 | 0.07 | [0.5 0.65] | [0.45 0.72] |

These plots show the distribution of period-independent downsampled &phi;<sub>s</sub> for each site.

| Period | **USC** |
|-----|-----|
| Period-Indep | ![Dowmsampled Histogram](resources/source_strike_m6.6_50km_USC_downsampled_hist_period_indep.png) |
| 3s | ![Dowmsampled Histogram](resources/source_strike_m6.6_50km_USC_downsampled_hist_3s.png) |


### 100.0 km M6.6 Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_m6.6_100km_std_dev.png)

| 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.47 | 0.47 | 0.46 | [0.23 0.73] |  | 0.46 | 0.46 | 0.45 | [0.23 0.69] |  | 0.55 | 0.55 | 0.54 | [0.29 0.82] |  | 0.6 | 0.6 | 0.6 | [0.27 0.86] |

Here are plots of the histogram of &phi;<sub>s</sub> for each individual rupture, from which we compute a total &phi;<sub>s</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m6.6_100km_3s_hist.png) | ![5s](resources/source_strike_m6.6_100km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m6.6_100km_7.5s_hist.png) | ![10s](resources/source_strike_m6.6_100km_10s_hist.png) |

#### 100.0 km M6.6 Source-strike Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &phi;<sub>s</sub> through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and distance within the range [80.0 120.0] km. We throw out any events with only 1 recording, leaving us with 2 events and a total of 29 recordings. We then downsample our simulated data 100 times, and compute &phi;<sub>s</sub> from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 28 fewer data points.*

| Period (s) | Full &phi;<sub>s</sub> | Downsampled median &phi;<sub>s</sub> | Downsampled &phi;<sub>s</sub> std. dev. | Downsampled &phi;<sub>s</sub> 68% conf range | Downsampled &phi;<sub>s</sub> 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.49 | 0.5 | 0.06 | [0.42 0.56] | [0.39 0.6] |
| 1 | 0.41 | 0.4 | 0.06 | [0.34 0.47] | [0.3 0.53] |
| 2 | 0.4 | 0.39 | 0.07 | [0.32 0.48] | [0.28 0.52] |
| 3 | 0.47 | 0.47 | 0.08 | [0.39 0.56] | [0.34 0.63] |
| 4 | 0.5 | 0.48 | 0.08 | [0.41 0.59] | [0.34 0.65] |
| 5 | 0.46 | 0.46 | 0.07 | [0.4 0.53] | [0.33 0.6] |
| 7.5 | 0.55 | 0.56 | 0.09 | [0.46 0.67] | [0.38 0.72] |
| 10 | 0.6 | 0.62 | 0.09 | [0.5 0.71] | [0.42 0.76] |

These plots show the distribution of period-independent downsampled &phi;<sub>s</sub> for each site.

| Period | **USC** |
|-----|-----|
| Period-Indep | ![Dowmsampled Histogram](resources/source_strike_m6.6_100km_USC_downsampled_hist_period_indep.png) |
| 3s | ![Dowmsampled Histogram](resources/source_strike_m6.6_100km_USC_downsampled_hist_3s.png) |


### All Distances M6.6 Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_m6.6_std_dev.png)

| 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.44 | 0.43 | 0.43 | [0.21 0.73] |  | 0.42 | 0.41 | 0.41 | [0.17 0.69] |  | 0.49 | 0.48 | 0.47 | [0.17 0.82] |  | 0.53 | 0.52 | 0.54 | [0.11 0.86] |

Here are plots of the histogram of &phi;<sub>s</sub> for each individual rupture, from which we compute a total &phi;<sub>s</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m6.6_3s_hist.png) | ![5s](resources/source_strike_m6.6_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m6.6_7.5s_hist.png) | ![10s](resources/source_strike_m6.6_10s_hist.png) |

#### All Distances M6.6 Source-strike Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &phi;<sub>s</sub> through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and all distances. We throw out any events with only 1 recording, leaving us with 5 events and a total of 204 recordings. We then downsample our simulated data 100 times, and compute &phi;<sub>s</sub> from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 54 fewer data points.*

| Period (s) | Full &phi;<sub>s</sub> | Downsampled median &phi;<sub>s</sub> | Downsampled &phi;<sub>s</sub> std. dev. | Downsampled &phi;<sub>s</sub> 68% conf range | Downsampled &phi;<sub>s</sub> 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.45 | 0.45 | 0.02 | [0.43 0.47] | [0.41 0.49] |
| 1 | 0.4 | 0.4 | 0.02 | [0.38 0.42] | [0.36 0.45] |
| 2 | 0.41 | 0.42 | 0.03 | [0.39 0.44] | [0.36 0.46] |
| 3 | 0.44 | 0.44 | 0.03 | [0.42 0.47] | [0.38 0.5] |
| 4 | 0.44 | 0.43 | 0.03 | [0.41 0.47] | [0.36 0.49] |
| 5 | 0.42 | 0.41 | 0.03 | [0.38 0.44] | [0.35 0.47] |
| 7.5 | 0.49 | 0.49 | 0.03 | [0.46 0.52] | [0.42 0.57] |
| 10 | 0.53 | 0.53 | 0.03 | [0.5 0.56] | [0.48 0.6] |

These plots show the distribution of period-independent downsampled &phi;<sub>s</sub> for each site.

| Period | **USC** |
|-----|-----|
| Period-Indep | ![Dowmsampled Histogram](resources/source_strike_m6.6_USC_downsampled_hist_period_indep.png) |
| 3s | ![Dowmsampled Histogram](resources/source_strike_m6.6_USC_downsampled_hist_3s.png) |


## Within-event, single-site Variability
*[(top)](#table-of-contents)*

### Within-event, single-site Variability Methodology
*[(top)](#table-of-contents)*

Within-event, single-site variability, denoted &phi;<sub>SS</sub> in Al Atik (2010), is computed separately for each:

* Site *[1 unique]*
* Distance *[3 unique]*

Then, for each unique combination of:

* Rupture *[100 unique]*

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
|  | 0.39 | 0.39 | 0.38 | [0.21 0.62] |  | 0.37 | 0.36 | 0.35 | [0.18 0.62] |  | 0.41 | 0.39 | 0.36 | [0.17 0.7] |  | 0.39 | 0.37 | 0.36 | [0.11 0.67] |

Here are plots of the histogram of &phi;<sub>SS</sub> for each individual rupture, from which we compute a total &phi;<sub>SS</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_ss_m6.6_20km_3s_hist.png) | ![5s](resources/within_event_ss_m6.6_20km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_ss_m6.6_20km_7.5s_hist.png) | ![10s](resources/within_event_ss_m6.6_20km_10s_hist.png) |

#### 20.0 km M6.6 Within-event, single-site Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &phi;<sub>SS</sub> through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and distance within the range [10.0 30.0] km. We throw out any events with only 1 recording, leaving us with 4 events and a total of 37 recordings. We then downsample our simulated data 100 times, and compute &phi;<sub>SS</sub> from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

| Period (s) | Full &phi;<sub>SS</sub> | Downsampled median &phi;<sub>SS</sub> | Downsampled &phi;<sub>SS</sub> std. dev. | Downsampled &phi;<sub>SS</sub> 68% conf range | Downsampled &phi;<sub>SS</sub> 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.39 | 0.38 | 0.05 | [0.33 0.43] | [0.29 0.49] |
| 1 | 0.38 | 0.37 | 0.05 | [0.34 0.42] | [0.31 0.5] |
| 2 | 0.43 | 0.43 | 0.05 | [0.37 0.47] | [0.31 0.5] |
| 3 | 0.39 | 0.38 | 0.05 | [0.33 0.44] | [0.29 0.51] |
| 4 | 0.37 | 0.37 | 0.05 | [0.32 0.42] | [0.26 0.48] |
| 5 | 0.37 | 0.37 | 0.06 | [0.31 0.42] | [0.24 0.47] |
| 7.5 | 0.41 | 0.37 | 0.09 | [0.28 0.48] | [0.23 0.58] |
| 10 | 0.39 | 0.34 | 0.08 | [0.27 0.45] | [0.22 0.53] |

These plots show the distribution of period-independent downsampled &phi;<sub>SS</sub> for each site.

| Period | **USC** |
|-----|-----|
| Period-Indep | ![Dowmsampled Histogram](resources/within_event_ss_m6.6_20km_USC_downsampled_hist_period_indep.png) |
| 3s | ![Dowmsampled Histogram](resources/within_event_ss_m6.6_20km_USC_downsampled_hist_3s.png) |

These plots show the dependence of &phi;<sub>SS</sub> to the number of events included and the number of recordings per event. The left plot holds the number of recordings per event fixed at the full set of simulated recordings (18), varying the number of events. The right plot holds the number of events fixed at the full set of simulated events (100), varying the number of recordings per event.

| Period | Event Count Dependence | Recordings/Event Dependence |
|-----|-----|-----|
| Period Indep. | ![num events dependence](resources/within_event_ss_event_count_dependence_20km_period_indep.png) | ![num recordings dependence](resources/within_event_ss_event_recordings_dependence_20km_period_indep.png) |
| 1s | ![num events dependence](resources/within_event_ss_event_count_dependence_20km_1s.png) | ![num recordings dependence](resources/within_event_ss_event_recordings_dependence_20km_1.png) |

This is a histogram of the number of recordings per event from ASK 2014 with M=[6.4,6.8]. The top plot shows the subset with distance in the range [10.0,30.0], and the bottom the whole distribution at all distances.

![Histogram](resources/within_event_ss_event_recordings_hist_20km.png)


### 50.0 km M6.6 Within-event, single-site Results
*[(top)](#table-of-contents)*

![Within-event, single-site Variability](resources/within_event_ss_m6.6_50km_std_dev.png)

| 3s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 10s &phi;<sub>SS</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.45 | 0.45 | 0.45 | [0.21 0.66] |  | 0.41 | 0.41 | 0.4 | [0.17 0.61] |  | 0.5 | 0.49 | 0.48 | [0.24 0.76] |  | 0.58 | 0.58 | 0.58 | [0.3 0.8] |

Here are plots of the histogram of &phi;<sub>SS</sub> for each individual rupture, from which we compute a total &phi;<sub>SS</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_ss_m6.6_50km_3s_hist.png) | ![5s](resources/within_event_ss_m6.6_50km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_ss_m6.6_50km_7.5s_hist.png) | ![10s](resources/within_event_ss_m6.6_50km_10s_hist.png) |

#### 50.0 km M6.6 Within-event, single-site Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &phi;<sub>SS</sub> through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and distance within the range [40.0 60.0] km. We throw out any events with only 1 recording, leaving us with 3 events and a total of 33 recordings. We then downsample our simulated data 100 times, and compute &phi;<sub>SS</sub> from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 2 fewer data points.*

| Period (s) | Full &phi;<sub>SS</sub> | Downsampled median &phi;<sub>SS</sub> | Downsampled &phi;<sub>SS</sub> std. dev. | Downsampled &phi;<sub>SS</sub> 68% conf range | Downsampled &phi;<sub>SS</sub> 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.46 | 0.44 | 0.05 | [0.4 0.52] | [0.36 0.56] |
| 1 | 0.4 | 0.39 | 0.05 | [0.35 0.44] | [0.29 0.5] |
| 2 | 0.41 | 0.4 | 0.06 | [0.34 0.45] | [0.28 0.55] |
| 3 | 0.45 | 0.45 | 0.07 | [0.37 0.5] | [0.3 0.59] |
| 4 | 0.43 | 0.43 | 0.06 | [0.37 0.48] | [0.28 0.56] |
| 5 | 0.41 | 0.4 | 0.07 | [0.34 0.48] | [0.29 0.55] |
| 7.5 | 0.5 | 0.48 | 0.09 | [0.39 0.6] | [0.31 0.65] |
| 10 | 0.58 | 0.58 | 0.08 | [0.48 0.66] | [0.43 0.72] |

These plots show the distribution of period-independent downsampled &phi;<sub>SS</sub> for each site.

| Period | **USC** |
|-----|-----|
| Period-Indep | ![Dowmsampled Histogram](resources/within_event_ss_m6.6_50km_USC_downsampled_hist_period_indep.png) |
| 3s | ![Dowmsampled Histogram](resources/within_event_ss_m6.6_50km_USC_downsampled_hist_3s.png) |

These plots show the dependence of &phi;<sub>SS</sub> to the number of events included and the number of recordings per event. The left plot holds the number of recordings per event fixed at the full set of simulated recordings (18), varying the number of events. The right plot holds the number of events fixed at the full set of simulated events (100), varying the number of recordings per event.

| Period | Event Count Dependence | Recordings/Event Dependence |
|-----|-----|-----|
| Period Indep. | ![num events dependence](resources/within_event_ss_event_count_dependence_50km_period_indep.png) | ![num recordings dependence](resources/within_event_ss_event_recordings_dependence_50km_period_indep.png) |
| 1s | ![num events dependence](resources/within_event_ss_event_count_dependence_50km_1s.png) | ![num recordings dependence](resources/within_event_ss_event_recordings_dependence_50km_1.png) |

This is a histogram of the number of recordings per event from ASK 2014 with M=[6.4,6.8]. The top plot shows the subset with distance in the range [40.0,60.0], and the bottom the whole distribution at all distances.

![Histogram](resources/within_event_ss_event_recordings_hist_50km.png)


### 100.0 km M6.6 Within-event, single-site Results
*[(top)](#table-of-contents)*

![Within-event, single-site Variability](resources/within_event_ss_m6.6_100km_std_dev.png)

| 3s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 10s &phi;<sub>SS</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.47 | 0.47 | 0.46 | [0.23 0.73] |  | 0.46 | 0.46 | 0.45 | [0.23 0.69] |  | 0.55 | 0.55 | 0.54 | [0.29 0.82] |  | 0.6 | 0.6 | 0.6 | [0.27 0.86] |

Here are plots of the histogram of &phi;<sub>SS</sub> for each individual rupture, from which we compute a total &phi;<sub>SS</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_ss_m6.6_100km_3s_hist.png) | ![5s](resources/within_event_ss_m6.6_100km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_ss_m6.6_100km_7.5s_hist.png) | ![10s](resources/within_event_ss_m6.6_100km_10s_hist.png) |

#### 100.0 km M6.6 Within-event, single-site Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &phi;<sub>SS</sub> through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and distance within the range [80.0 120.0] km. We throw out any events with only 1 recording, leaving us with 2 events and a total of 29 recordings. We then downsample our simulated data 100 times, and compute &phi;<sub>SS</sub> from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 28 fewer data points.*

| Period (s) | Full &phi;<sub>SS</sub> | Downsampled median &phi;<sub>SS</sub> | Downsampled &phi;<sub>SS</sub> std. dev. | Downsampled &phi;<sub>SS</sub> 68% conf range | Downsampled &phi;<sub>SS</sub> 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.49 | 0.47 | 0.06 | [0.42 0.55] | [0.38 0.61] |
| 1 | 0.41 | 0.38 | 0.06 | [0.33 0.46] | [0.28 0.52] |
| 2 | 0.4 | 0.39 | 0.06 | [0.32 0.45] | [0.26 0.52] |
| 3 | 0.47 | 0.45 | 0.09 | [0.37 0.54] | [0.32 0.64] |
| 4 | 0.5 | 0.47 | 0.08 | [0.39 0.58] | [0.37 0.64] |
| 5 | 0.46 | 0.46 | 0.07 | [0.39 0.52] | [0.31 0.63] |
| 7.5 | 0.55 | 0.53 | 0.09 | [0.45 0.65] | [0.38 0.73] |
| 10 | 0.6 | 0.61 | 0.09 | [0.51 0.71] | [0.42 0.79] |

These plots show the distribution of period-independent downsampled &phi;<sub>SS</sub> for each site.

| Period | **USC** |
|-----|-----|
| Period-Indep | ![Dowmsampled Histogram](resources/within_event_ss_m6.6_100km_USC_downsampled_hist_period_indep.png) |
| 3s | ![Dowmsampled Histogram](resources/within_event_ss_m6.6_100km_USC_downsampled_hist_3s.png) |

These plots show the dependence of &phi;<sub>SS</sub> to the number of events included and the number of recordings per event. The left plot holds the number of recordings per event fixed at the full set of simulated recordings (18), varying the number of events. The right plot holds the number of events fixed at the full set of simulated events (100), varying the number of recordings per event.

| Period | Event Count Dependence | Recordings/Event Dependence |
|-----|-----|-----|
| Period Indep. | ![num events dependence](resources/within_event_ss_event_count_dependence_100km_period_indep.png) | ![num recordings dependence](resources/within_event_ss_event_recordings_dependence_100km_period_indep.png) |
| 1s | ![num events dependence](resources/within_event_ss_event_count_dependence_100km_1s.png) | ![num recordings dependence](resources/within_event_ss_event_recordings_dependence_100km_1.png) |

This is a histogram of the number of recordings per event from ASK 2014 with M=[6.4,6.8]. The top plot shows the subset with distance in the range [80.0,120.0], and the bottom the whole distribution at all distances.

![Histogram](resources/within_event_ss_event_recordings_hist_100km.png)


### All Distances M6.6 Within-event, single-site Results
*[(top)](#table-of-contents)*

![Within-event, single-site Variability](resources/within_event_ss_m6.6_std_dev.png)

| 3s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 10s &phi;<sub>SS</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.44 | 0.43 | 0.43 | [0.21 0.73] |  | 0.42 | 0.41 | 0.41 | [0.17 0.69] |  | 0.49 | 0.48 | 0.47 | [0.17 0.82] |  | 0.53 | 0.52 | 0.54 | [0.11 0.86] |

Here are plots of the histogram of &phi;<sub>SS</sub> for each individual rupture, from which we compute a total &phi;<sub>SS</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_ss_m6.6_3s_hist.png) | ![5s](resources/within_event_ss_m6.6_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_ss_m6.6_7.5s_hist.png) | ![10s](resources/within_event_ss_m6.6_10s_hist.png) |

#### All Distances M6.6 Within-event, single-site Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &phi;<sub>SS</sub> through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and all distances. We throw out any events with only 1 recording, leaving us with 5 events and a total of 204 recordings. We then downsample our simulated data 100 times, and compute &phi;<sub>SS</sub> from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 54 fewer data points.*

| Period (s) | Full &phi;<sub>SS</sub> | Downsampled median &phi;<sub>SS</sub> | Downsampled &phi;<sub>SS</sub> std. dev. | Downsampled &phi;<sub>SS</sub> 68% conf range | Downsampled &phi;<sub>SS</sub> 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.45 | 0.45 | 0.02 | [0.42 0.47] | [0.4 0.49] |
| 1 | 0.4 | 0.39 | 0.02 | [0.37 0.41] | [0.35 0.43] |
| 2 | 0.41 | 0.41 | 0.03 | [0.39 0.44] | [0.36 0.46] |
| 3 | 0.44 | 0.43 | 0.03 | [0.41 0.46] | [0.38 0.49] |
| 4 | 0.44 | 0.43 | 0.03 | [0.4 0.46] | [0.38 0.48] |
| 5 | 0.42 | 0.41 | 0.02 | [0.39 0.44] | [0.36 0.46] |
| 7.5 | 0.49 | 0.49 | 0.04 | [0.45 0.53] | [0.42 0.58] |
| 10 | 0.53 | 0.53 | 0.03 | [0.49 0.57] | [0.46 0.6] |

These plots show the distribution of period-independent downsampled &phi;<sub>SS</sub> for each site.

| Period | **USC** |
|-----|-----|
| Period-Indep | ![Dowmsampled Histogram](resources/within_event_ss_m6.6_USC_downsampled_hist_period_indep.png) |
| 3s | ![Dowmsampled Histogram](resources/within_event_ss_m6.6_USC_downsampled_hist_3s.png) |

These plots show the dependence of &phi;<sub>SS</sub> to the number of events included and the number of recordings per event. The left plot holds the number of recordings per event fixed at the full set of simulated recordings (18), varying the number of events. The right plot holds the number of events fixed at the full set of simulated events (100), varying the number of recordings per event.

| Period | Event Count Dependence | Recordings/Event Dependence |
|-----|-----|-----|
| Period Indep. | ![num events dependence](resources/within_event_ss_event_count_dependence_all_dists_period_indep.png) | ![num recordings dependence](resources/within_event_ss_event_recordings_dependence_all_dists_period_indep.png) |
| 1s | ![num events dependence](resources/within_event_ss_event_count_dependence_all_dists_1s.png) | ![num recordings dependence](resources/within_event_ss_event_recordings_dependence_all_dists_1.png) |

This is a histogram of the number of recordings per event from ASK 2014 with M=[6.4,6.8].

![Histogram](resources/within_event_ss_event_recordings_hist_all_dists.png)


## Between-events Variability
*[(top)](#table-of-contents)*

### Between-events Variability Methodology
*[(top)](#table-of-contents)*

Between-events variability, denoted &tau; in Al Atik (2010), is computed separately for each:

* Distance *[3 unique]*

We first compute the median natural-log ground motion, &delta;B<sub>e</sub>, for each combination of:

* Rupture *[100 unique]*

That median, &delta;B<sub>e</sub>, is computed across all 18 combinations of:

* Site *[1 unique]*
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
| 0.15 | -3.32 | [-3.63 -3.01] | 0.15 | -4.26 | [-4.61 -3.91] | 0.13 | -4.88 | [-5.17 -4.53] | 0.12 | -5.39 | [-5.69 -5.04] |

#### 20.0 km M6.6 Between-events Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &tau; through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and distance within the range [10.0 30.0] km. We throw out any events with only 1 recording, leaving us with 4 events and a total of 37 recordings. We then downsample our simulated data 100 times, and compute &tau; from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

| Period (s) | Full &tau; | Downsampled median &tau; | Downsampled &tau; std. dev. | Downsampled &tau; 68% conf range | Downsampled &tau; 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.14 | 0.17 | 0.06 | [0.12 0.23] | [0.09 0.35] |
| 1 | 0.13 | 0.16 | 0.08 | [0.1 0.25] | [0.05 0.33] |
| 2 | 0.13 | 0.19 | 0.09 | [0.1 0.27] | [0.04 0.38] |
| 3 | 0.15 | 0.19 | 0.08 | [0.11 0.26] | [0.05 0.37] |
| 4 | 0.16 | 0.17 | 0.09 | [0.11 0.27] | [0.04 0.38] |
| 5 | 0.15 | 0.18 | 0.08 | [0.1 0.27] | [0.04 0.35] |
| 7.5 | 0.13 | 0.17 | 0.08 | [0.1 0.25] | [0.04 0.36] |
| 10 | 0.12 | 0.14 | 0.08 | [0.09 0.24] | [0.04 0.35] |

This plot shows the distribution of period-independent downsampled &tau;.

| Period-Indep | ![Dowmsampled Histogram](resources/between_events_m6.6_20km_downsampled_hist_period_indep.png) |
|-----|-----|
| 3s | ![Dowmsampled Histogram](resources/between_events_m6.6_20km_downsampled_hist_3s.png) |

These plots show the dependence of &tau; to the number of events included and the number of recordings per event. The left plot holds the number of recordings per event fixed at the full set of simulated recordings (18), varying the number of events. The right plot holds the number of events fixed at the full set of simulated events (100), varying the number of recordings per event.

| Period | Event Count Dependence | Recordings/Event Dependence |
|-----|-----|-----|
| Period Indep. | ![num events dependence](resources/between_events_event_count_dependence_20km_period_indep.png) | ![num recordings dependence](resources/between_events_event_recordings_dependence_20km_period_indep.png) |
| 1s | ![num events dependence](resources/between_events_event_count_dependence_20km_1s.png) | ![num recordings dependence](resources/between_events_event_recordings_dependence_20km_1.png) |

This is a histogram of the number of recordings per event from ASK 2014 with M=[6.4,6.8]. The top plot shows the subset with distance in the range [10.0,30.0], and the bottom the whole distribution at all distances.

![Histogram](resources/between_events_event_recordings_hist_20km.png)


### 50.0 km M6.6 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m6.6_50km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.14 | -4.29 | [-4.57 -3.86] | 0.18 | -5.14 | [-5.58 -4.7] | 0.24 | -5.78 | [-6.25 -5.16] | 0.19 | -6.17 | [-6.56 -5.79] |

#### 50.0 km M6.6 Between-events Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &tau; through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and distance within the range [40.0 60.0] km. We throw out any events with only 1 recording, leaving us with 3 events and a total of 33 recordings. We then downsample our simulated data 100 times, and compute &tau; from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 2 fewer data points.*

| Period (s) | Full &tau; | Downsampled median &tau; | Downsampled &tau; std. dev. | Downsampled &tau; 68% conf range | Downsampled &tau; 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.17 | 0.19 | 0.07 | [0.15 0.28] | [0.1 0.36] |
| 1 | 0.13 | 0.15 | 0.09 | [0.08 0.27] | [0.03 0.38] |
| 2 | 0.12 | 0.15 | 0.08 | [0.08 0.24] | [0.04 0.36] |
| 3 | 0.14 | 0.17 | 0.08 | [0.1 0.27] | [0.03 0.36] |
| 4 | 0.16 | 0.19 | 0.1 | [0.09 0.33] | [0.04 0.4] |
| 5 | 0.18 | 0.2 | 0.12 | [0.1 0.33] | [0.04 0.5] |
| 7.5 | 0.24 | 0.24 | 0.13 | [0.12 0.4] | [0.05 0.52] |
| 10 | 0.19 | 0.24 | 0.14 | [0.13 0.42] | [0.02 0.57] |

This plot shows the distribution of period-independent downsampled &tau;.

| Period-Indep | ![Dowmsampled Histogram](resources/between_events_m6.6_50km_downsampled_hist_period_indep.png) |
|-----|-----|
| 3s | ![Dowmsampled Histogram](resources/between_events_m6.6_50km_downsampled_hist_3s.png) |

These plots show the dependence of &tau; to the number of events included and the number of recordings per event. The left plot holds the number of recordings per event fixed at the full set of simulated recordings (18), varying the number of events. The right plot holds the number of events fixed at the full set of simulated events (100), varying the number of recordings per event.

| Period | Event Count Dependence | Recordings/Event Dependence |
|-----|-----|-----|
| Period Indep. | ![num events dependence](resources/between_events_event_count_dependence_50km_period_indep.png) | ![num recordings dependence](resources/between_events_event_recordings_dependence_50km_period_indep.png) |
| 1s | ![num events dependence](resources/between_events_event_count_dependence_50km_1s.png) | ![num recordings dependence](resources/between_events_event_recordings_dependence_50km_1.png) |

This is a histogram of the number of recordings per event from ASK 2014 with M=[6.4,6.8]. The top plot shows the subset with distance in the range [40.0,60.0], and the bottom the whole distribution at all distances.

![Histogram](resources/between_events_event_recordings_hist_50km.png)


### 100.0 km M6.6 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m6.6_100km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.15 | -4.89 | [-5.28 -4.49] | 0.17 | -5.76 | [-6.22 -5.32] | 0.23 | -6.31 | [-6.71 -5.72] | 0.17 | -6.64 | [-6.99 -6.31] |

#### 100.0 km M6.6 Between-events Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &tau; through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and distance within the range [80.0 120.0] km. We throw out any events with only 1 recording, leaving us with 2 events and a total of 29 recordings. We then downsample our simulated data 100 times, and compute &tau; from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 28 fewer data points.*

| Period (s) | Full &tau; | Downsampled median &tau; | Downsampled &tau; std. dev. | Downsampled &tau; 68% conf range | Downsampled &tau; 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.17 | 0.15 | 0.06 | [0.08 0.21] | [0.06 0.28] |
| 1 | 0.15 | 0.13 | 0.11 | [0.05 0.28] | [0 0.48] |
| 2 | 0.14 | 0.11 | 0.09 | [0.03 0.21] | [0.01 0.36] |
| 3 | 0.15 | 0.1 | 0.11 | [0.03 0.22] | [0 0.47] |
| 4 | 0.15 | 0.12 | 0.1 | [0.02 0.24] | [0 0.38] |
| 5 | 0.17 | 0.1 | 0.1 | [0.03 0.22] | [0 0.39] |
| 7.5 | 0.23 | 0.15 | 0.16 | [0.04 0.4] | [0.01 0.52] |
| 10 | 0.17 | 0.17 | 0.13 | [0.05 0.34] | [0 0.45] |

This plot shows the distribution of period-independent downsampled &tau;.

| Period-Indep | ![Dowmsampled Histogram](resources/between_events_m6.6_100km_downsampled_hist_period_indep.png) |
|-----|-----|
| 3s | ![Dowmsampled Histogram](resources/between_events_m6.6_100km_downsampled_hist_3s.png) |

These plots show the dependence of &tau; to the number of events included and the number of recordings per event. The left plot holds the number of recordings per event fixed at the full set of simulated recordings (18), varying the number of events. The right plot holds the number of events fixed at the full set of simulated events (100), varying the number of recordings per event.

| Period | Event Count Dependence | Recordings/Event Dependence |
|-----|-----|-----|
| Period Indep. | ![num events dependence](resources/between_events_event_count_dependence_100km_period_indep.png) | ![num recordings dependence](resources/between_events_event_recordings_dependence_100km_period_indep.png) |
| 1s | ![num events dependence](resources/between_events_event_count_dependence_100km_1s.png) | ![num recordings dependence](resources/between_events_event_recordings_dependence_100km_1.png) |

This is a histogram of the number of recordings per event from ASK 2014 with M=[6.4,6.8]. The top plot shows the subset with distance in the range [80.0,120.0], and the bottom the whole distribution at all distances.

![Histogram](resources/between_events_event_recordings_hist_100km.png)


### All Distances M6.6 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m6.6_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.15 | -4.17 | [-5.28 -3.01] | 0.17 | -5.05 | [-6.22 -3.91] | 0.2 | -5.65 | [-6.71 -4.53] | 0.16 | -6.06 | [-6.99 -5.04] |

#### All Distances M6.6 Between-events Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &tau; through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and all distances. We throw out any events with only 1 recording, leaving us with 5 events and a total of 204 recordings. We then downsample our simulated data 100 times, and compute &tau; from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 54 fewer data points.*

| Period (s) | Full &tau; | Downsampled median &tau; | Downsampled &tau; std. dev. | Downsampled &tau; 68% conf range | Downsampled &tau; 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.16 | 0.17 | 0.03 | [0.15 0.2] | [0.14 0.23] |
| 1 | 0.14 | 0.15 | 0.04 | [0.12 0.19] | [0.09 0.23] |
| 2 | 0.13 | 0.14 | 0.03 | [0.12 0.17] | [0.09 0.22] |
| 3 | 0.15 | 0.17 | 0.03 | [0.14 0.2] | [0.11 0.25] |
| 4 | 0.16 | 0.17 | 0.04 | [0.12 0.21] | [0.07 0.26] |
| 5 | 0.17 | 0.17 | 0.04 | [0.14 0.22] | [0.1 0.29] |
| 7.5 | 0.2 | 0.21 | 0.05 | [0.17 0.26] | [0.14 0.32] |
| 10 | 0.16 | 0.19 | 0.04 | [0.16 0.23] | [0.12 0.32] |

This plot shows the distribution of period-independent downsampled &tau;.

| Period-Indep | ![Dowmsampled Histogram](resources/between_events_m6.6_downsampled_hist_period_indep.png) |
|-----|-----|
| 3s | ![Dowmsampled Histogram](resources/between_events_m6.6_downsampled_hist_3s.png) |

These plots show the dependence of &tau; to the number of events included and the number of recordings per event. The left plot holds the number of recordings per event fixed at the full set of simulated recordings (18), varying the number of events. The right plot holds the number of events fixed at the full set of simulated events (100), varying the number of recordings per event.

| Period | Event Count Dependence | Recordings/Event Dependence |
|-----|-----|-----|
| Period Indep. | ![num events dependence](resources/between_events_event_count_dependence_all_dists_period_indep.png) | ![num recordings dependence](resources/between_events_event_recordings_dependence_all_dists_period_indep.png) |
| 1s | ![num events dependence](resources/between_events_event_count_dependence_all_dists_1s.png) | ![num recordings dependence](resources/between_events_event_recordings_dependence_all_dists_1.png) |

This is a histogram of the number of recordings per event from ASK 2014 with M=[6.4,6.8].

![Histogram](resources/between_events_event_recordings_hist_all_dists.png)


## Event Term Scatters
*[(top)](#table-of-contents)*

### Propagation Velocity Event Term Scatters
*[(top)](#table-of-contents)*

|  | 3 s | 5 s | 7.5 s | 10 s |
|-----|-----|-----|-----|-----|
| **20 km** | ![plot](resources/event_term_scatter_v_prop_m6.6_20km_USC_3s.png) | ![plot](resources/event_term_scatter_v_prop_m6.6_20km_USC_5s.png) | ![plot](resources/event_term_scatter_v_prop_m6.6_20km_USC_7.5s.png) | ![plot](resources/event_term_scatter_v_prop_m6.6_20km_USC_10s.png) |
| **50 km** | ![plot](resources/event_term_scatter_v_prop_m6.6_50km_USC_3s.png) | ![plot](resources/event_term_scatter_v_prop_m6.6_50km_USC_5s.png) | ![plot](resources/event_term_scatter_v_prop_m6.6_50km_USC_7.5s.png) | ![plot](resources/event_term_scatter_v_prop_m6.6_50km_USC_10s.png) |
| **100 km** | ![plot](resources/event_term_scatter_v_prop_m6.6_100km_USC_3s.png) | ![plot](resources/event_term_scatter_v_prop_m6.6_100km_USC_5s.png) | ![plot](resources/event_term_scatter_v_prop_m6.6_100km_USC_7.5s.png) | ![plot](resources/event_term_scatter_v_prop_m6.6_100km_USC_10s.png) |
### Mag Event Term Scatters
*[(top)](#table-of-contents)*

|  | 3 s | 5 s | 7.5 s | 10 s |
|-----|-----|-----|-----|-----|
| **20 km** | *N/A* | *N/A* | *N/A* | *N/A* |
| **50 km** | *N/A* | *N/A* | *N/A* | *N/A* |
| **100 km** | *N/A* | *N/A* | *N/A* | *N/A* |
### Log10(Area) Event Term Scatters
*[(top)](#table-of-contents)*

|  | 3 s | 5 s | 7.5 s | 10 s |
|-----|-----|-----|-----|-----|
| **20 km** | *N/A* | *N/A* | *N/A* | *N/A* |
| **50 km** | *N/A* | *N/A* | *N/A* | *N/A* |
| **100 km** | *N/A* | *N/A* | *N/A* | *N/A* |
### Max Slip Event Term Scatters
*[(top)](#table-of-contents)*

|  | 3 s | 5 s | 7.5 s | 10 s |
|-----|-----|-----|-----|-----|
| **20 km** | ![plot](resources/event_term_scatter_max_slip_m6.6_20km_USC_3s.png) | ![plot](resources/event_term_scatter_max_slip_m6.6_20km_USC_5s.png) | ![plot](resources/event_term_scatter_max_slip_m6.6_20km_USC_7.5s.png) | ![plot](resources/event_term_scatter_max_slip_m6.6_20km_USC_10s.png) |
| **50 km** | ![plot](resources/event_term_scatter_max_slip_m6.6_50km_USC_3s.png) | ![plot](resources/event_term_scatter_max_slip_m6.6_50km_USC_5s.png) | ![plot](resources/event_term_scatter_max_slip_m6.6_50km_USC_7.5s.png) | ![plot](resources/event_term_scatter_max_slip_m6.6_50km_USC_10s.png) |
| **100 km** | ![plot](resources/event_term_scatter_max_slip_m6.6_100km_USC_3s.png) | ![plot](resources/event_term_scatter_max_slip_m6.6_100km_USC_5s.png) | ![plot](resources/event_term_scatter_max_slip_m6.6_100km_USC_7.5s.png) | ![plot](resources/event_term_scatter_max_slip_m6.6_100km_USC_10s.png) |
### Mean Slip Event Term Scatters
*[(top)](#table-of-contents)*

|  | 3 s | 5 s | 7.5 s | 10 s |
|-----|-----|-----|-----|-----|
| **20 km** | ![plot](resources/event_term_scatter_mean_slip_m6.6_20km_USC_3s.png) | ![plot](resources/event_term_scatter_mean_slip_m6.6_20km_USC_5s.png) | ![plot](resources/event_term_scatter_mean_slip_m6.6_20km_USC_7.5s.png) | ![plot](resources/event_term_scatter_mean_slip_m6.6_20km_USC_10s.png) |
| **50 km** | ![plot](resources/event_term_scatter_mean_slip_m6.6_50km_USC_3s.png) | ![plot](resources/event_term_scatter_mean_slip_m6.6_50km_USC_5s.png) | ![plot](resources/event_term_scatter_mean_slip_m6.6_50km_USC_7.5s.png) | ![plot](resources/event_term_scatter_mean_slip_m6.6_50km_USC_10s.png) |
| **100 km** | ![plot](resources/event_term_scatter_mean_slip_m6.6_100km_USC_3s.png) | ![plot](resources/event_term_scatter_mean_slip_m6.6_100km_USC_5s.png) | ![plot](resources/event_term_scatter_mean_slip_m6.6_100km_USC_7.5s.png) | ![plot](resources/event_term_scatter_mean_slip_m6.6_100km_USC_10s.png) |
### Slip Std Dev Event Term Scatters
*[(top)](#table-of-contents)*

|  | 3 s | 5 s | 7.5 s | 10 s |
|-----|-----|-----|-----|-----|
| **20 km** | ![plot](resources/event_term_scatter_slip_std_dev_m6.6_20km_USC_3s.png) | ![plot](resources/event_term_scatter_slip_std_dev_m6.6_20km_USC_5s.png) | ![plot](resources/event_term_scatter_slip_std_dev_m6.6_20km_USC_7.5s.png) | ![plot](resources/event_term_scatter_slip_std_dev_m6.6_20km_USC_10s.png) |
| **50 km** | ![plot](resources/event_term_scatter_slip_std_dev_m6.6_50km_USC_3s.png) | ![plot](resources/event_term_scatter_slip_std_dev_m6.6_50km_USC_5s.png) | ![plot](resources/event_term_scatter_slip_std_dev_m6.6_50km_USC_7.5s.png) | ![plot](resources/event_term_scatter_slip_std_dev_m6.6_50km_USC_10s.png) |
| **100 km** | ![plot](resources/event_term_scatter_slip_std_dev_m6.6_100km_USC_3s.png) | ![plot](resources/event_term_scatter_slip_std_dev_m6.6_100km_USC_5s.png) | ![plot](resources/event_term_scatter_slip_std_dev_m6.6_100km_USC_7.5s.png) | ![plot](resources/event_term_scatter_slip_std_dev_m6.6_100km_USC_10s.png) |
### Mid-Seismogenic Mean Slip Event Term Scatters
*[(top)](#table-of-contents)*

|  | 3 s | 5 s | 7.5 s | 10 s |
|-----|-----|-----|-----|-----|
| **20 km** | *N/A* | *N/A* | *N/A* | *N/A* |
| **50 km** | *N/A* | *N/A* | *N/A* | *N/A* |
| **100 km** | *N/A* | *N/A* | *N/A* | *N/A* |
## Directivity Comparisons
*[(top)](#table-of-contents)*

Directivity comparisons for individual ruptures can be found [here](resources/directivity_debug/README.md).

|  | 3 s | 5 s | 7.5 s | 10 s |
|-----|-----|-----|-----|-----|
| **20 km** | ![plot](resources/directivity_20km_3s.png) | ![plot](resources/directivity_20km_5s.png) | ![plot](resources/directivity_20km_7.5s.png) | ![plot](resources/directivity_20km_10s.png) |
| **50 km** | *N/A* | *N/A* | *N/A* | *N/A* |
| **100 km** | *N/A* | *N/A* | *N/A* | *N/A* |
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
| **M6.6 SS** | **FAIL** | **FAIL** | *(FAIL)* |

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

