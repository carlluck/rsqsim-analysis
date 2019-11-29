# Bruce 2585 1myr Rotated Rupture Variability, M6.6 Reverse

This exercise uses translations and rotations to estimate ground motion variability from different sources. We begin by selecting a subset of similar ruptures which match a set of criteria (in this case, M6.6, Reverse, Dip=45, Ztor=3). Each rupture is then reoriented such that its strike (following the Aki & Richards 1980 convention) is 0 degrees (due North, dipping to the right for normal or reverse ruptures). For each site, ruptures are translated such that their scalar seismic moment centroid is directly North of the site, and their 3-dimensional distance (Rrup) is as specified (we consider 3 distance[s] here).

We then  perform various rotations. We rotate the rupture in place around its centroid, holding the site-to-source centroid path and Rrup constant (henceforth 'Rupture Strike'). We also rotate ruptures around the site, holding Rrup and source orientation relative to the site constant but sampling different various paths (henceforth 'Path'). We do this for each unique combination of Rupture Strike, Path, Distance, Site, and Rupture.

*NOTE: This page uses the SCEC BBP to simulate a 1-dimensional velocity structure. Thus we expect no path variability, and plots of path variabilitiy are included only as verification of the method.*

[RSQSim Catalog Details](../#bruce-2585-1myr)

## Table Of Contents
* [Rupture Rotation Parameters](#rupture-rotation-parameters)
* [M6.6 Reverse RSQSim Rupture Match Criteria](#m66-reverse-rsqsim-rupture-match-criteria)
  * [Fault Section Counts](#fault-section-counts)
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
  * [BBP PartB, M6.6, Reverse, Dip=45, Ztor=3](#bbp-partb-m66-reverse-dip45-ztor3)
* [CSV Files](#csv-files)
## Rupture Rotation Parameters

| Quantity | Variations | Description |
|-----|-----|-----|
| Rupture | 142 | Unique (but similar in faulting style and magnitude) ruptures which match the given scenario. |
| Site | 1 | Unique site locations. If 3-d, each will have unique velocity profiles. |
| Rupture Strike | 18 | Rupture strike conforming to the Aki & Richards (1980) convention, where dipping faults dip to the right of the rupture. If path rotation is also performed, this azimuth is relative to the path. |
| Path | 1 | Path from the site to the centroid of the rupture, in azimuthal degrees (0 is North) |
| Distance | 20.0, 50.0, 100.0 km | 3-dimensional distance between the site and the rupture surface. |
| **Total # Simulations** | **7668** | Total number of combinations of the above. |

## M6.6 Reverse RSQSim Rupture Match Criteria
*[(top)](#table-of-contents)*

We condisder 142 events in the catalog which match the following criteria:

* M=[6.55,6.65]
* Ztor=[1.0,5.0]
* Rake=[80,100]
* Dip=[35.0,55.0]

### Fault Section Counts
*[(top)](#table-of-contents)*

This tables gives a list of all fault sections which participate in the ruptures matching the above criteria. Many ruptures include multiple sections, so the sum of counts may be larger than the number of events.

| Section Name | Participation Count |
|-----|-----|
| McKinleyville (alt1) | 33 |
| Sierra Madre | 15 |
| Cucamonga | 15 |
| San Luis Range 2011 CFM | 13 |
| Table Bluff | 10 |
| Clamshell-Sawpit | 10 |
| Mad River (alt1) | 8 |
| Los Osos 2011 | 8 |
| Fickle Hill (alt1) | 7 |
| Pleito | 6 |
| Mount Diablo Thrust South | 6 |
| San Luis Range - Oceano 2011 CFM | 5 |
| Big Lagoon - Bald Mtn 2011 CFM | 4 |
| Pine Mtn | 2 |
| Trinidad (alt1) | 2 |
| Great Valley 06 (Midland) 2011 CFM alt1 | 2 |
| San Cayetano | 1 |
| North Frontal  (East) | 1 |
| Mount Diablo Thrust North CFM | 1 |
| TOTAL # PARENTS | 149 |

Actual magnitude range: [6.5512624,6.6485267], average: 6.5959487, stdDev: 0.029936656

## Sites

| Name | Location | Vs30 (m/s) | Z1.0 (km) | Z2.5 (km) |
|-----|-----|-----|-----|-----|
| USC | *34.0192, -118.286* | 500 | N/A | N/A |

## Result Summary Table

| Type | Notation | Distance | T-independent Std. Dev. | 3s Std. Dev. | 5s Std. Dev. | 7.5s Std. Dev. | 10s Std. Dev. |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Source-strike | &phi;<sub>s</sub> | 20 km | 0.35 | 0.34 | 0.35 | 0.34 | 0.3 |
| Source-strike | &phi;<sub>s</sub> | 50 km | 0.34 | 0.35 | 0.39 | 0.34 | 0.32 |
| Source-strike | &phi;<sub>s</sub> | 100 km | 0.36 | 0.36 | 0.37 | 0.38 | 0.37 |
| Source-strike | &phi;<sub>s</sub> | (all) | 0.35 | 0.35 | 0.37 | 0.36 | 0.33 |
| Within-event, single-site | &phi;<sub>SS</sub> | 20 km | 0.35 | 0.34 | 0.35 | 0.34 | 0.3 |
| Within-event, single-site | &phi;<sub>SS</sub> | 50 km | 0.34 | 0.35 | 0.39 | 0.34 | 0.32 |
| Within-event, single-site | &phi;<sub>SS</sub> | 100 km | 0.36 | 0.36 | 0.37 | 0.38 | 0.37 |
| Within-event, single-site | &phi;<sub>SS</sub> | (all) | 0.35 | 0.35 | 0.37 | 0.36 | 0.33 |
| Between-events | &tau; | 20 km | 0.25 | 0.25 | 0.26 | 0.28 | 0.27 |
| Between-events | &tau; | 50 km | 0.28 | 0.29 | 0.32 | 0.26 | 0.28 |
| Between-events | &tau; | 100 km | 0.24 | 0.21 | 0.28 | 0.27 | 0.33 |
| Between-events | &tau; | (all) | 0.26 | 0.25 | 0.29 | 0.27 | 0.29 |

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

* Rupture *[142 unique]*
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
|  | 0.34 | 0.33 | 0.32 | [0.18 0.67] |  | 0.35 | 0.34 | 0.34 | [0.12 0.58] |  | 0.34 | 0.33 | 0.32 | [0.1 0.66] |  | 0.3 | 0.29 | 0.28 | [0.13 0.56] |

Here are plots of the histogram of &phi;<sub>s</sub> for each individual rupture, from which we compute a total &phi;<sub>s</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m6.6_20km_3s_hist.png) | ![5s](resources/source_strike_m6.6_20km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m6.6_20km_7.5s_hist.png) | ![10s](resources/source_strike_m6.6_20km_10s_hist.png) |

#### 20.0 km M6.6 Source-strike Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &phi;<sub>s</sub> through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and distance within the range [10.0 30.0] km. We throw out any events with only 1 recording, leaving us with 4 events and a total of 52 recordings. We then downsample our simulated data 100 times, and compute &phi;<sub>s</sub> from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 53 fewer data points.*

| Period (s) | Full &phi;<sub>s</sub> | Downsampled median &phi;<sub>s</sub> | Downsampled &phi;<sub>s</sub> std. dev. | Downsampled &phi;<sub>s</sub> 68% conf range | Downsampled &phi;<sub>s</sub> 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.35 | 0.34 | 0.03 | [0.31 0.38] | [0.3 0.43] |
| 1 | 0.39 | 0.39 | 0.05 | [0.33 0.44] | [0.29 0.52] |
| 2 | 0.37 | 0.37 | 0.06 | [0.3 0.42] | [0.25 0.49] |
| 3 | 0.34 | 0.34 | 0.06 | [0.28 0.4] | [0.23 0.47] |
| 4 | 0.33 | 0.33 | 0.05 | [0.27 0.38] | [0.22 0.45] |
| 5 | 0.35 | 0.34 | 0.05 | [0.3 0.39] | [0.24 0.46] |
| 7.5 | 0.34 | 0.34 | 0.06 | [0.28 0.41] | [0.22 0.5] |
| 10 | 0.3 | 0.3 | 0.05 | [0.25 0.37] | [0.21 0.42] |

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
|  | 0.35 | 0.35 | 0.34 | [0.18 0.6] |  | 0.39 | 0.38 | 0.37 | [0.11 0.65] |  | 0.34 | 0.33 | 0.33 | [0.14 0.63] |  | 0.32 | 0.31 | 0.3 | [0.16 0.7] |

Here are plots of the histogram of &phi;<sub>s</sub> for each individual rupture, from which we compute a total &phi;<sub>s</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m6.6_50km_3s_hist.png) | ![5s](resources/source_strike_m6.6_50km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m6.6_50km_7.5s_hist.png) | ![10s](resources/source_strike_m6.6_50km_10s_hist.png) |

#### 50.0 km M6.6 Source-strike Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &phi;<sub>s</sub> through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and distance within the range [40.0 60.0] km. We throw out any events with only 1 recording, leaving us with 4 events and a total of 56 recordings. We then downsample our simulated data 100 times, and compute &phi;<sub>s</sub> from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 25 fewer data points.*

| Period (s) | Full &phi;<sub>s</sub> | Downsampled median &phi;<sub>s</sub> | Downsampled &phi;<sub>s</sub> std. dev. | Downsampled &phi;<sub>s</sub> 68% conf range | Downsampled &phi;<sub>s</sub> 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.34 | 0.34 | 0.03 | [0.32 0.38] | [0.29 0.4] |
| 1 | 0.33 | 0.33 | 0.03 | [0.3 0.36] | [0.27 0.39] |
| 2 | 0.33 | 0.32 | 0.04 | [0.29 0.37] | [0.23 0.39] |
| 3 | 0.35 | 0.36 | 0.04 | [0.31 0.4] | [0.26 0.44] |
| 4 | 0.34 | 0.33 | 0.05 | [0.28 0.38] | [0.25 0.42] |
| 5 | 0.39 | 0.38 | 0.06 | [0.32 0.45] | [0.26 0.5] |
| 7.5 | 0.34 | 0.33 | 0.06 | [0.29 0.4] | [0.25 0.5] |
| 10 | 0.32 | 0.31 | 0.06 | [0.27 0.36] | [0.22 0.5] |

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
|  | 0.36 | 0.35 | 0.34 | [0.19 0.59] |  | 0.37 | 0.36 | 0.36 | [0.18 0.58] |  | 0.38 | 0.37 | 0.36 | [0.19 0.72] |  | 0.37 | 0.36 | 0.35 | [0.18 0.8] |

Here are plots of the histogram of &phi;<sub>s</sub> for each individual rupture, from which we compute a total &phi;<sub>s</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m6.6_100km_3s_hist.png) | ![5s](resources/source_strike_m6.6_100km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m6.6_100km_7.5s_hist.png) | ![10s](resources/source_strike_m6.6_100km_10s_hist.png) |

#### 100.0 km M6.6 Source-strike Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &phi;<sub>s</sub> through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and distance within the range [80.0 120.0] km. We throw out any events with only 1 recording, leaving us with 3 events and a total of 47 recordings. We then downsample our simulated data 100 times, and compute &phi;<sub>s</sub> from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 98 fewer data points.*

| Period (s) | Full &phi;<sub>s</sub> | Downsampled median &phi;<sub>s</sub> | Downsampled &phi;<sub>s</sub> std. dev. | Downsampled &phi;<sub>s</sub> 68% conf range | Downsampled &phi;<sub>s</sub> 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.36 | 0.35 | 0.03 | [0.33 0.38] | [0.32 0.42] |
| 1 | 0.35 | 0.35 | 0.04 | [0.31 0.4] | [0.27 0.42] |
| 2 | 0.32 | 0.33 | 0.04 | [0.28 0.36] | [0.25 0.4] |
| 3 | 0.36 | 0.34 | 0.06 | [0.29 0.4] | [0.27 0.49] |
| 4 | 0.38 | 0.36 | 0.05 | [0.32 0.42] | [0.27 0.5] |
| 5 | 0.37 | 0.35 | 0.06 | [0.31 0.42] | [0.25 0.49] |
| 7.5 | 0.38 | 0.37 | 0.06 | [0.33 0.44] | [0.28 0.52] |
| 10 | 0.37 | 0.36 | 0.06 | [0.31 0.42] | [0.27 0.5] |

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
|  | 0.35 | 0.34 | 0.34 | [0.18 0.67] |  | 0.37 | 0.36 | 0.35 | [0.11 0.65] |  | 0.36 | 0.34 | 0.34 | [0.1 0.72] |  | 0.33 | 0.32 | 0.3 | [0.13 0.8] |

Here are plots of the histogram of &phi;<sub>s</sub> for each individual rupture, from which we compute a total &phi;<sub>s</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m6.6_3s_hist.png) | ![5s](resources/source_strike_m6.6_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m6.6_7.5s_hist.png) | ![10s](resources/source_strike_m6.6_10s_hist.png) |

#### All Distances M6.6 Source-strike Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &phi;<sub>s</sub> through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and all distances. We throw out any events with only 1 recording, leaving us with 7 events and a total of 288 recordings. We then downsample our simulated data 100 times, and compute &phi;<sub>s</sub> from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 1059 fewer data points.*

| Period (s) | Full &phi;<sub>s</sub> | Downsampled median &phi;<sub>s</sub> | Downsampled &phi;<sub>s</sub> std. dev. | Downsampled &phi;<sub>s</sub> 68% conf range | Downsampled &phi;<sub>s</sub> 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.35 | 0.35 | 0.01 | [0.34 0.36] | [0.32 0.37] |
| 1 | 0.36 | 0.36 | 0.02 | [0.34 0.38] | [0.32 0.39] |
| 2 | 0.34 | 0.34 | 0.02 | [0.32 0.36] | [0.3 0.37] |
| 3 | 0.35 | 0.35 | 0.02 | [0.32 0.37] | [0.31 0.39] |
| 4 | 0.35 | 0.35 | 0.02 | [0.33 0.37] | [0.3 0.4] |
| 5 | 0.37 | 0.36 | 0.02 | [0.35 0.39] | [0.32 0.41] |
| 7.5 | 0.36 | 0.35 | 0.02 | [0.33 0.38] | [0.3 0.41] |
| 10 | 0.33 | 0.33 | 0.02 | [0.31 0.35] | [0.28 0.38] |

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

* Rupture *[142 unique]*

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
|  | 0.34 | 0.33 | 0.32 | [0.18 0.67] |  | 0.35 | 0.34 | 0.34 | [0.12 0.58] |  | 0.34 | 0.33 | 0.32 | [0.1 0.66] |  | 0.3 | 0.29 | 0.28 | [0.13 0.56] |

Here are plots of the histogram of &phi;<sub>SS</sub> for each individual rupture, from which we compute a total &phi;<sub>SS</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_ss_m6.6_20km_3s_hist.png) | ![5s](resources/within_event_ss_m6.6_20km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_ss_m6.6_20km_7.5s_hist.png) | ![10s](resources/within_event_ss_m6.6_20km_10s_hist.png) |

#### 20.0 km M6.6 Within-event, single-site Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &phi;<sub>SS</sub> through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and distance within the range [10.0 30.0] km. We throw out any events with only 1 recording, leaving us with 4 events and a total of 52 recordings. We then downsample our simulated data 100 times, and compute &phi;<sub>SS</sub> from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 53 fewer data points.*

| Period (s) | Full &phi;<sub>SS</sub> | Downsampled median &phi;<sub>SS</sub> | Downsampled &phi;<sub>SS</sub> std. dev. | Downsampled &phi;<sub>SS</sub> 68% conf range | Downsampled &phi;<sub>SS</sub> 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.35 | 0.35 | 0.03 | [0.32 0.38] | [0.3 0.42] |
| 1 | 0.39 | 0.39 | 0.04 | [0.34 0.44] | [0.3 0.48] |
| 2 | 0.37 | 0.37 | 0.06 | [0.31 0.44] | [0.26 0.5] |
| 3 | 0.34 | 0.34 | 0.06 | [0.29 0.4] | [0.24 0.45] |
| 4 | 0.33 | 0.32 | 0.06 | [0.28 0.38] | [0.24 0.47] |
| 5 | 0.35 | 0.35 | 0.06 | [0.29 0.41] | [0.25 0.5] |
| 7.5 | 0.34 | 0.34 | 0.05 | [0.3 0.39] | [0.22 0.46] |
| 10 | 0.3 | 0.3 | 0.05 | [0.25 0.35] | [0.19 0.41] |

These plots show the distribution of period-independent downsampled &phi;<sub>SS</sub> for each site.

| Period | **USC** |
|-----|-----|
| Period-Indep | ![Dowmsampled Histogram](resources/within_event_ss_m6.6_20km_USC_downsampled_hist_period_indep.png) |
| 3s | ![Dowmsampled Histogram](resources/within_event_ss_m6.6_20km_USC_downsampled_hist_3s.png) |

These plots show the dependence of &phi;<sub>SS</sub> to the number of events included and the number of recordings per event. The left plot holds the number of recordings per event fixed at the full set of simulated recordings (18), varying the number of events. The right plot holds the number of events fixed at the full set of simulated events (142), varying the number of recordings per event.

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
|  | 0.35 | 0.35 | 0.34 | [0.18 0.6] |  | 0.39 | 0.38 | 0.37 | [0.11 0.65] |  | 0.34 | 0.33 | 0.33 | [0.14 0.63] |  | 0.32 | 0.31 | 0.3 | [0.16 0.7] |

Here are plots of the histogram of &phi;<sub>SS</sub> for each individual rupture, from which we compute a total &phi;<sub>SS</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_ss_m6.6_50km_3s_hist.png) | ![5s](resources/within_event_ss_m6.6_50km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_ss_m6.6_50km_7.5s_hist.png) | ![10s](resources/within_event_ss_m6.6_50km_10s_hist.png) |

#### 50.0 km M6.6 Within-event, single-site Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &phi;<sub>SS</sub> through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and distance within the range [40.0 60.0] km. We throw out any events with only 1 recording, leaving us with 4 events and a total of 56 recordings. We then downsample our simulated data 100 times, and compute &phi;<sub>SS</sub> from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 25 fewer data points.*

| Period (s) | Full &phi;<sub>SS</sub> | Downsampled median &phi;<sub>SS</sub> | Downsampled &phi;<sub>SS</sub> std. dev. | Downsampled &phi;<sub>SS</sub> 68% conf range | Downsampled &phi;<sub>SS</sub> 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.34 | 0.34 | 0.03 | [0.31 0.37] | [0.3 0.4] |
| 1 | 0.33 | 0.34 | 0.03 | [0.31 0.36] | [0.27 0.39] |
| 2 | 0.33 | 0.33 | 0.03 | [0.3 0.37] | [0.25 0.4] |
| 3 | 0.35 | 0.34 | 0.05 | [0.3 0.38] | [0.26 0.44] |
| 4 | 0.34 | 0.34 | 0.05 | [0.29 0.38] | [0.25 0.45] |
| 5 | 0.39 | 0.39 | 0.07 | [0.32 0.46] | [0.27 0.52] |
| 7.5 | 0.34 | 0.33 | 0.05 | [0.3 0.39] | [0.24 0.46] |
| 10 | 0.32 | 0.31 | 0.05 | [0.27 0.36] | [0.25 0.47] |

These plots show the distribution of period-independent downsampled &phi;<sub>SS</sub> for each site.

| Period | **USC** |
|-----|-----|
| Period-Indep | ![Dowmsampled Histogram](resources/within_event_ss_m6.6_50km_USC_downsampled_hist_period_indep.png) |
| 3s | ![Dowmsampled Histogram](resources/within_event_ss_m6.6_50km_USC_downsampled_hist_3s.png) |

These plots show the dependence of &phi;<sub>SS</sub> to the number of events included and the number of recordings per event. The left plot holds the number of recordings per event fixed at the full set of simulated recordings (18), varying the number of events. The right plot holds the number of events fixed at the full set of simulated events (142), varying the number of recordings per event.

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
|  | 0.36 | 0.35 | 0.34 | [0.19 0.59] |  | 0.37 | 0.36 | 0.36 | [0.18 0.58] |  | 0.38 | 0.37 | 0.36 | [0.19 0.72] |  | 0.37 | 0.36 | 0.35 | [0.18 0.8] |

Here are plots of the histogram of &phi;<sub>SS</sub> for each individual rupture, from which we compute a total &phi;<sub>SS</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_ss_m6.6_100km_3s_hist.png) | ![5s](resources/within_event_ss_m6.6_100km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_ss_m6.6_100km_7.5s_hist.png) | ![10s](resources/within_event_ss_m6.6_100km_10s_hist.png) |

#### 100.0 km M6.6 Within-event, single-site Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &phi;<sub>SS</sub> through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and distance within the range [80.0 120.0] km. We throw out any events with only 1 recording, leaving us with 3 events and a total of 47 recordings. We then downsample our simulated data 100 times, and compute &phi;<sub>SS</sub> from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 98 fewer data points.*

| Period (s) | Full &phi;<sub>SS</sub> | Downsampled median &phi;<sub>SS</sub> | Downsampled &phi;<sub>SS</sub> std. dev. | Downsampled &phi;<sub>SS</sub> 68% conf range | Downsampled &phi;<sub>SS</sub> 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.36 | 0.36 | 0.03 | [0.33 0.39] | [0.3 0.43] |
| 1 | 0.35 | 0.34 | 0.04 | [0.31 0.39] | [0.25 0.43] |
| 2 | 0.32 | 0.32 | 0.04 | [0.28 0.36] | [0.24 0.39] |
| 3 | 0.36 | 0.35 | 0.05 | [0.29 0.41] | [0.26 0.47] |
| 4 | 0.38 | 0.37 | 0.07 | [0.32 0.46] | [0.27 0.52] |
| 5 | 0.37 | 0.37 | 0.05 | [0.31 0.42] | [0.27 0.5] |
| 7.5 | 0.38 | 0.37 | 0.07 | [0.31 0.45] | [0.27 0.52] |
| 10 | 0.37 | 0.35 | 0.06 | [0.3 0.42] | [0.27 0.48] |

These plots show the distribution of period-independent downsampled &phi;<sub>SS</sub> for each site.

| Period | **USC** |
|-----|-----|
| Period-Indep | ![Dowmsampled Histogram](resources/within_event_ss_m6.6_100km_USC_downsampled_hist_period_indep.png) |
| 3s | ![Dowmsampled Histogram](resources/within_event_ss_m6.6_100km_USC_downsampled_hist_3s.png) |

These plots show the dependence of &phi;<sub>SS</sub> to the number of events included and the number of recordings per event. The left plot holds the number of recordings per event fixed at the full set of simulated recordings (18), varying the number of events. The right plot holds the number of events fixed at the full set of simulated events (142), varying the number of recordings per event.

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
|  | 0.35 | 0.34 | 0.34 | [0.18 0.67] |  | 0.37 | 0.36 | 0.35 | [0.11 0.65] |  | 0.36 | 0.34 | 0.34 | [0.1 0.72] |  | 0.33 | 0.32 | 0.3 | [0.13 0.8] |

Here are plots of the histogram of &phi;<sub>SS</sub> for each individual rupture, from which we compute a total &phi;<sub>SS</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_ss_m6.6_3s_hist.png) | ![5s](resources/within_event_ss_m6.6_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_ss_m6.6_7.5s_hist.png) | ![10s](resources/within_event_ss_m6.6_10s_hist.png) |

#### All Distances M6.6 Within-event, single-site Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &phi;<sub>SS</sub> through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and all distances. We throw out any events with only 1 recording, leaving us with 7 events and a total of 288 recordings. We then downsample our simulated data 100 times, and compute &phi;<sub>SS</sub> from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 1059 fewer data points.*

| Period (s) | Full &phi;<sub>SS</sub> | Downsampled median &phi;<sub>SS</sub> | Downsampled &phi;<sub>SS</sub> std. dev. | Downsampled &phi;<sub>SS</sub> 68% conf range | Downsampled &phi;<sub>SS</sub> 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.35 | 0.35 | 0.01 | [0.33 0.37] | [0.32 0.38] |
| 1 | 0.36 | 0.36 | 0.02 | [0.34 0.38] | [0.33 0.39] |
| 2 | 0.34 | 0.34 | 0.02 | [0.32 0.35] | [0.3 0.38] |
| 3 | 0.35 | 0.35 | 0.02 | [0.32 0.37] | [0.31 0.39] |
| 4 | 0.35 | 0.35 | 0.03 | [0.33 0.38] | [0.3 0.41] |
| 5 | 0.37 | 0.37 | 0.03 | [0.34 0.4] | [0.32 0.43] |
| 7.5 | 0.36 | 0.35 | 0.03 | [0.32 0.39] | [0.31 0.43] |
| 10 | 0.33 | 0.33 | 0.03 | [0.3 0.36] | [0.28 0.4] |

These plots show the distribution of period-independent downsampled &phi;<sub>SS</sub> for each site.

| Period | **USC** |
|-----|-----|
| Period-Indep | ![Dowmsampled Histogram](resources/within_event_ss_m6.6_USC_downsampled_hist_period_indep.png) |
| 3s | ![Dowmsampled Histogram](resources/within_event_ss_m6.6_USC_downsampled_hist_3s.png) |

These plots show the dependence of &phi;<sub>SS</sub> to the number of events included and the number of recordings per event. The left plot holds the number of recordings per event fixed at the full set of simulated recordings (18), varying the number of events. The right plot holds the number of events fixed at the full set of simulated events (142), varying the number of recordings per event.

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

* Rupture *[142 unique]*

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
| 0.25 | -4.12 | [-4.63 -3.45] | 0.26 | -4.8 | [-5.51 -4] | 0.28 | -5.59 | [-6.34 -4.96] | 0.27 | -6.21 | [-6.95 -5.64] |

#### 20.0 km M6.6 Between-events Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &tau; through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and distance within the range [10.0 30.0] km. We throw out any events with only 1 recording, leaving us with 4 events and a total of 52 recordings. We then downsample our simulated data 100 times, and compute &tau; from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 53 fewer data points.*

| Period (s) | Full &tau; | Downsampled median &tau; | Downsampled &tau; std. dev. | Downsampled &tau; 68% conf range | Downsampled &tau; 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.25 | 0.24 | 0.08 | [0.17 0.33] | [0.13 0.44] |
| 1 | 0.19 | 0.18 | 0.1 | [0.1 0.3] | [0.06 0.44] |
| 2 | 0.23 | 0.22 | 0.11 | [0.13 0.35] | [0.06 0.51] |
| 3 | 0.25 | 0.23 | 0.1 | [0.14 0.36] | [0.07 0.46] |
| 4 | 0.25 | 0.23 | 0.11 | [0.13 0.37] | [0.08 0.52] |
| 5 | 0.26 | 0.25 | 0.12 | [0.16 0.36] | [0.08 0.58] |
| 7.5 | 0.28 | 0.26 | 0.11 | [0.16 0.39] | [0.08 0.49] |
| 10 | 0.27 | 0.23 | 0.1 | [0.16 0.34] | [0.07 0.49] |

This plot shows the distribution of period-independent downsampled &tau;.

| Period-Indep | ![Dowmsampled Histogram](resources/between_events_m6.6_20km_downsampled_hist_period_indep.png) |
|-----|-----|
| 3s | ![Dowmsampled Histogram](resources/between_events_m6.6_20km_downsampled_hist_3s.png) |

These plots show the dependence of &tau; to the number of events included and the number of recordings per event. The left plot holds the number of recordings per event fixed at the full set of simulated recordings (18), varying the number of events. The right plot holds the number of events fixed at the full set of simulated events (142), varying the number of recordings per event.

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
| 0.29 | -4.96 | [-5.58 -4.25] | 0.32 | -5.53 | [-6.47 -4.66] | 0.26 | -6.35 | [-6.94 -5.79] | 0.28 | -6.8 | [-7.47 -6.05] |

#### 50.0 km M6.6 Between-events Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &tau; through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and distance within the range [40.0 60.0] km. We throw out any events with only 1 recording, leaving us with 4 events and a total of 56 recordings. We then downsample our simulated data 100 times, and compute &tau; from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 25 fewer data points.*

| Period (s) | Full &tau; | Downsampled median &tau; | Downsampled &tau; std. dev. | Downsampled &tau; 68% conf range | Downsampled &tau; 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.28 | 0.27 | 0.06 | [0.2 0.33] | [0.15 0.39] |
| 1 | 0.25 | 0.24 | 0.09 | [0.17 0.35] | [0.06 0.46] |
| 2 | 0.25 | 0.25 | 0.09 | [0.17 0.33] | [0.06 0.44] |
| 3 | 0.29 | 0.29 | 0.11 | [0.17 0.39] | [0.08 0.51] |
| 4 | 0.29 | 0.27 | 0.11 | [0.16 0.38] | [0.06 0.48] |
| 5 | 0.32 | 0.3 | 0.12 | [0.18 0.42] | [0.07 0.55] |
| 7.5 | 0.26 | 0.25 | 0.09 | [0.18 0.36] | [0.08 0.41] |
| 10 | 0.28 | 0.25 | 0.11 | [0.16 0.38] | [0.07 0.54] |

This plot shows the distribution of period-independent downsampled &tau;.

| Period-Indep | ![Dowmsampled Histogram](resources/between_events_m6.6_50km_downsampled_hist_period_indep.png) |
|-----|-----|
| 3s | ![Dowmsampled Histogram](resources/between_events_m6.6_50km_downsampled_hist_3s.png) |

These plots show the dependence of &tau; to the number of events included and the number of recordings per event. The left plot holds the number of recordings per event fixed at the full set of simulated recordings (18), varying the number of events. The right plot holds the number of events fixed at the full set of simulated events (142), varying the number of recordings per event.

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
| 0.21 | -5.59 | [-6.02 -5.02] | 0.28 | -6.24 | [-7.11 -5.55] | 0.27 | -6.87 | [-7.57 -6.24] | 0.33 | -7.18 | [-7.99 -6.31] |

#### 100.0 km M6.6 Between-events Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &tau; through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and distance within the range [80.0 120.0] km. We throw out any events with only 1 recording, leaving us with 3 events and a total of 47 recordings. We then downsample our simulated data 100 times, and compute &tau; from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 98 fewer data points.*

| Period (s) | Full &tau; | Downsampled median &tau; | Downsampled &tau; std. dev. | Downsampled &tau; 68% conf range | Downsampled &tau; 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.24 | 0.22 | 0.06 | [0.15 0.27] | [0.1 0.35] |
| 1 | 0.12 | 0.1 | 0.07 | [0.04 0.19] | [0.02 0.27] |
| 2 | 0.17 | 0.14 | 0.07 | [0.06 0.21] | [0.03 0.33] |
| 3 | 0.21 | 0.16 | 0.09 | [0.08 0.28] | [0.03 0.36] |
| 4 | 0.3 | 0.23 | 0.13 | [0.11 0.38] | [0.05 0.54] |
| 5 | 0.28 | 0.24 | 0.13 | [0.11 0.38] | [0.02 0.52] |
| 7.5 | 0.27 | 0.24 | 0.12 | [0.11 0.38] | [0.04 0.51] |
| 10 | 0.33 | 0.29 | 0.15 | [0.15 0.46] | [0.05 0.6] |

This plot shows the distribution of period-independent downsampled &tau;.

| Period-Indep | ![Dowmsampled Histogram](resources/between_events_m6.6_100km_downsampled_hist_period_indep.png) |
|-----|-----|
| 3s | ![Dowmsampled Histogram](resources/between_events_m6.6_100km_downsampled_hist_3s.png) |

These plots show the dependence of &tau; to the number of events included and the number of recordings per event. The left plot holds the number of recordings per event fixed at the full set of simulated recordings (18), varying the number of events. The right plot holds the number of events fixed at the full set of simulated events (142), varying the number of recordings per event.

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
| 0.25 | -4.89 | [-6.02 -3.45] | 0.29 | -5.53 | [-7.11 -4] | 0.27 | -6.27 | [-7.57 -4.96] | 0.29 | -6.73 | [-7.99 -5.64] |

#### All Distances M6.6 Between-events Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &tau; through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and all distances. We throw out any events with only 1 recording, leaving us with 7 events and a total of 288 recordings. We then downsample our simulated data 100 times, and compute &tau; from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 1059 fewer data points.*

| Period (s) | Full &tau; | Downsampled median &tau; | Downsampled &tau; std. dev. | Downsampled &tau; 68% conf range | Downsampled &tau; 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.26 | 0.26 | 0.02 | [0.23 0.29] | [0.21 0.3] |
| 1 | 0.19 | 0.21 | 0.04 | [0.17 0.24] | [0.14 0.29] |
| 2 | 0.22 | 0.22 | 0.04 | [0.19 0.27] | [0.17 0.31] |
| 3 | 0.25 | 0.27 | 0.04 | [0.22 0.31] | [0.17 0.34] |
| 4 | 0.28 | 0.28 | 0.05 | [0.23 0.32] | [0.19 0.38] |
| 5 | 0.29 | 0.28 | 0.05 | [0.23 0.33] | [0.17 0.37] |
| 7.5 | 0.27 | 0.27 | 0.04 | [0.24 0.31] | [0.2 0.36] |
| 10 | 0.29 | 0.29 | 0.05 | [0.24 0.34] | [0.17 0.41] |

This plot shows the distribution of period-independent downsampled &tau;.

| Period-Indep | ![Dowmsampled Histogram](resources/between_events_m6.6_downsampled_hist_period_indep.png) |
|-----|-----|
| 3s | ![Dowmsampled Histogram](resources/between_events_m6.6_downsampled_hist_3s.png) |

These plots show the dependence of &tau; to the number of events included and the number of recordings per event. The left plot holds the number of recordings per event fixed at the full set of simulated recordings (18), varying the number of events. The right plot holds the number of events fixed at the full set of simulated events (142), varying the number of recordings per event.

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
| **20 km** | ![plot](resources/event_term_scatter_mag_m6.6_20km_USC_3s.png) | ![plot](resources/event_term_scatter_mag_m6.6_20km_USC_5s.png) | ![plot](resources/event_term_scatter_mag_m6.6_20km_USC_7.5s.png) | ![plot](resources/event_term_scatter_mag_m6.6_20km_USC_10s.png) |
| **50 km** | ![plot](resources/event_term_scatter_mag_m6.6_50km_USC_3s.png) | ![plot](resources/event_term_scatter_mag_m6.6_50km_USC_5s.png) | ![plot](resources/event_term_scatter_mag_m6.6_50km_USC_7.5s.png) | ![plot](resources/event_term_scatter_mag_m6.6_50km_USC_10s.png) |
| **100 km** | ![plot](resources/event_term_scatter_mag_m6.6_100km_USC_3s.png) | ![plot](resources/event_term_scatter_mag_m6.6_100km_USC_5s.png) | ![plot](resources/event_term_scatter_mag_m6.6_100km_USC_7.5s.png) | ![plot](resources/event_term_scatter_mag_m6.6_100km_USC_10s.png) |
### Log10(Area) Event Term Scatters
*[(top)](#table-of-contents)*

|  | 3 s | 5 s | 7.5 s | 10 s |
|-----|-----|-----|-----|-----|
| **20 km** | ![plot](resources/event_term_scatter_area_m6.6_20km_USC_3s.png) | ![plot](resources/event_term_scatter_area_m6.6_20km_USC_5s.png) | ![plot](resources/event_term_scatter_area_m6.6_20km_USC_7.5s.png) | ![plot](resources/event_term_scatter_area_m6.6_20km_USC_10s.png) |
| **50 km** | ![plot](resources/event_term_scatter_area_m6.6_50km_USC_3s.png) | ![plot](resources/event_term_scatter_area_m6.6_50km_USC_5s.png) | ![plot](resources/event_term_scatter_area_m6.6_50km_USC_7.5s.png) | ![plot](resources/event_term_scatter_area_m6.6_50km_USC_10s.png) |
| **100 km** | ![plot](resources/event_term_scatter_area_m6.6_100km_USC_3s.png) | ![plot](resources/event_term_scatter_area_m6.6_100km_USC_5s.png) | ![plot](resources/event_term_scatter_area_m6.6_100km_USC_7.5s.png) | ![plot](resources/event_term_scatter_area_m6.6_100km_USC_10s.png) |
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
| **20 km** | ![plot](resources/event_term_scatter_mid_seis_mean_slip_m6.6_20km_USC_3s.png) | ![plot](resources/event_term_scatter_mid_seis_mean_slip_m6.6_20km_USC_5s.png) | ![plot](resources/event_term_scatter_mid_seis_mean_slip_m6.6_20km_USC_7.5s.png) | ![plot](resources/event_term_scatter_mid_seis_mean_slip_m6.6_20km_USC_10s.png) |
| **50 km** | ![plot](resources/event_term_scatter_mid_seis_mean_slip_m6.6_50km_USC_3s.png) | ![plot](resources/event_term_scatter_mid_seis_mean_slip_m6.6_50km_USC_5s.png) | ![plot](resources/event_term_scatter_mid_seis_mean_slip_m6.6_50km_USC_7.5s.png) | ![plot](resources/event_term_scatter_mid_seis_mean_slip_m6.6_50km_USC_10s.png) |
| **100 km** | ![plot](resources/event_term_scatter_mid_seis_mean_slip_m6.6_100km_USC_3s.png) | ![plot](resources/event_term_scatter_mid_seis_mean_slip_m6.6_100km_USC_5s.png) | ![plot](resources/event_term_scatter_mid_seis_mean_slip_m6.6_100km_USC_7.5s.png) | ![plot](resources/event_term_scatter_mid_seis_mean_slip_m6.6_100km_USC_10s.png) |
## Directivity Comparisons
*[(top)](#table-of-contents)*

|  | 3 s | 5 s | 7.5 s | 10 s |
|-----|-----|-----|-----|-----|
| **20 km** | ![plot](resources/directivity_20km_3s.png) | ![plot](resources/directivity_20km_5s.png) | ![plot](resources/directivity_20km_7.5s.png) | ![plot](resources/directivity_20km_10s.png) |
| **50 km** | ![plot](resources/directivity_50km_3s.png) | ![plot](resources/directivity_50km_5s.png) | ![plot](resources/directivity_50km_7.5s.png) | ![plot](resources/directivity_50km_10s.png) |
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
| **M6.6 Reverse** | **FAIL** | **FAIL** | *(FAIL)* |

### BBP PartB, M6.6, Reverse, Dip=45, Ztor=3
*[(top)](#table-of-contents)*

| 20.0 km | 50.0 km | 100.0 km |
|-----|-----|-----|
| ![PartB Plot](resources/bbp_partB_m6p6_reverse_20km.png) | ![PartB Plot](resources/bbp_partB_m6p6_reverse_50km.png) | ![PartB Plot](resources/bbp_partB_m6p6_reverse_100km.png) |

## CSV Files
*[(top)](#table-of-contents)*

| Magnitude | Distance | Site | CSV File |
|-----|-----|-----|-----|
| M6.6 | 20.0 km | USC | [sa_USC_m6.6_20.0km.csv.gz](resources/sa_USC_m6.6_20.0km.csv.gz) |
| M6.6 | 50.0 km | USC | [sa_USC_m6.6_50.0km.csv.gz](resources/sa_USC_m6.6_50.0km.csv.gz) |
| M6.6 | 100.0 km | USC | [sa_USC_m6.6_100.0km.csv.gz](resources/sa_USC_m6.6_100.0km.csv.gz) |

