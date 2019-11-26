# Bruce 2585 1myr Rotated Rupture Variability, M7.6 Reverse

This exercise uses translations and rotations to estimate ground motion variability from different sources. We begin by selecting a subset of similar ruptures which match a set of criteria (in this case, M7.6, Reverse, Dip=45). Each rupture is then reoriented such that its strike (following the Aki & Richards 1980 convention) is 0 degrees (due North, dipping to the right for normal or reverse ruptures). For each site, ruptures are translated such that their scalar seismic moment centroid is directly North of the site, and their 3-dimensional distance (Rrup) is as specified (we consider 3 distance[s] here).

We then  perform various rotations. We rotate the rupture in place around its centroid, holding the site-to-source centroid path and Rrup constant (henceforth 'Rupture Strike'). We also rotate ruptures around the site, holding Rrup and source orientation relative to the site constant but sampling different various paths (henceforth 'Path'). We do this for each unique combination of Rupture Strike, Path, Distance, Site, and Rupture.

*NOTE: This page uses the SCEC BBP to simulate a 1-dimensional velocity structure. Thus we expect no path variability, and plots of path variabilitiy are included only as verification of the method.*

[RSQSim Catalog Details](../#bruce-2585-1myr)

## Table Of Contents
* [Rupture Rotation Parameters](#rupture-rotation-parameters)
* [M7.6 Reverse RSQSim Rupture Match Criteria](#m76-reverse-rsqsim-rupture-match-criteria)
  * [Fault Section Counts](#fault-section-counts)
* [Sites](#sites)
* [Result Summary Table](#result-summary-table)
  * [GMPE Table](#gmpe-table)
  * [Dist-Dependent Plot Table](#dist-dependent-plot-table)
* [Source-strike Variability](#source-strike-variability)
  * [Source-strike Variability Methodology](#source-strike-variability-methodology)
  * [20.0 km M7.6 Source-strike Results](#200-km-m76-source-strike-results)
  * [50.0 km M7.6 Source-strike Results](#500-km-m76-source-strike-results)
  * [100.0 km M7.6 Source-strike Results](#1000-km-m76-source-strike-results)
  * [All Distances M7.6 Source-strike Results](#all-distances-m76-source-strike-results)
* [Within-event, single-site Variability](#within-event-single-site-variability)
  * [Within-event, single-site Variability Methodology](#within-event-single-site-variability-methodology)
  * [20.0 km M7.6 Within-event, single-site Results](#200-km-m76-within-event-single-site-results)
  * [50.0 km M7.6 Within-event, single-site Results](#500-km-m76-within-event-single-site-results)
  * [100.0 km M7.6 Within-event, single-site Results](#1000-km-m76-within-event-single-site-results)
  * [All Distances M7.6 Within-event, single-site Results](#all-distances-m76-within-event-single-site-results)
* [Between-events Variability](#between-events-variability)
  * [Between-events Variability Methodology](#between-events-variability-methodology)
  * [20.0 km M7.6 Between-events Results](#200-km-m76-between-events-results)
  * [50.0 km M7.6 Between-events Results](#500-km-m76-between-events-results)
  * [100.0 km M7.6 Between-events Results](#1000-km-m76-between-events-results)
  * [All Distances M7.6 Between-events Results](#all-distances-m76-between-events-results)
* [Event Term Scatters](#event-term-scatters)
  * [Propagation Velocity Event Term Scatters](#propagation-velocity-event-term-scatters)
  * [Mag Event Term Scatters](#mag-event-term-scatters)
  * [Log10(Area) Event Term Scatters](#log10area-event-term-scatters)
  * [Max Slip Event Term Scatters](#max-slip-event-term-scatters)
  * [Mean Slip Event Term Scatters](#mean-slip-event-term-scatters)
* [Azumth Dependence](#azumth-dependence)
  * [Rupture Strike Dependence](#rupture-strike-dependence)
* [BBP PartB Comparison](#bbp-partb-comparison)
  * [BBP PartB Summary Table](#bbp-partb-summary-table)
  * [BBP PartB, M7.6, Reverse, Dip=45](#bbp-partb-m76-reverse-dip45)
* [CSV Files](#csv-files)
## Rupture Rotation Parameters

| Quantity | Variations | Description |
|-----|-----|-----|
| Rupture | 165 | Unique (but similar in faulting style and magnitude) ruptures which match the given scenario. |
| Site | 1 | Unique site locations. If 3-d, each will have unique velocity profiles. |
| Rupture Strike | 18 | Rupture strike conforming to the Aki & Richards (1980) convention, where dipping faults dip to the right of the rupture. If path rotation is also performed, this azimuth is relative to the path. |
| Path | 1 | Path from the site to the centroid of the rupture, in azimuthal degrees (0 is North) |
| Distance | 20.0, 50.0, 100.0 km | 3-dimensional distance between the site and the rupture surface. |
| **Total # Simulations** | **8910** | Total number of combinations of the above. |

## M7.6 Reverse RSQSim Rupture Match Criteria
*[(top)](#table-of-contents)*

We condisder 165 events in the catalog which match the following criteria:

* M=[7.55,7.65]
* Ztor=[0.0,5.0]
* Rake=[80,100]
* Dip=[35.0,55.0]

### Fault Section Counts
*[(top)](#table-of-contents)*

This tables gives a list of all fault sections which participate in the ruptures matching the above criteria. Many ruptures include multiple sections, so the sum of counts may be larger than the number of events.

| Section Name | Participation Count |
|-----|-----|
| Trinidad (alt1) | 107 |
| McKinleyville (alt1) | 76 |
| Big Lagoon - Bald Mtn 2011 CFM | 51 |
| Mad River (alt1) | 51 |
| Fickle Hill (alt1) | 32 |
| TOTAL # PARENTS | 317 |

Actual magnitude range: [7.550166,7.648903], average: 7.5952954, stdDev: 0.028284553

## Sites

| Name | Location | Vs30 (m/s) | Z1.0 (km) | Z2.5 (km) |
|-----|-----|-----|-----|-----|
| USC | *34.0192, -118.286* | 500 | N/A | N/A |

## Result Summary Table

| Type | Notation | Distance | T-independent Std. Dev. | 3s Std. Dev. | 5s Std. Dev. | 7.5s Std. Dev. | 10s Std. Dev. |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Source-strike | &phi;<sub>s</sub> | 20 km | 0.37 | 0.4 | 0.35 | 0.37 | 0.33 |
| Source-strike | &phi;<sub>s</sub> | 50 km | 0.35 | 0.37 | 0.35 | 0.33 | 0.3 |
| Source-strike | &phi;<sub>s</sub> | 100 km | 0.32 | 0.32 | 0.35 | 0.32 | 0.34 |
| Source-strike | &phi;<sub>s</sub> | (all) | 0.35 | 0.37 | 0.35 | 0.34 | 0.32 |
| Within-event, single-site | &phi;<sub>SS</sub> | 20 km | 0.37 | 0.4 | 0.35 | 0.37 | 0.33 |
| Within-event, single-site | &phi;<sub>SS</sub> | 50 km | 0.35 | 0.37 | 0.35 | 0.33 | 0.3 |
| Within-event, single-site | &phi;<sub>SS</sub> | 100 km | 0.32 | 0.32 | 0.35 | 0.32 | 0.34 |
| Within-event, single-site | &phi;<sub>SS</sub> | (all) | 0.35 | 0.37 | 0.35 | 0.34 | 0.32 |
| Between-events | &tau; | 20 km | 0.14 | 0.14 | 0.13 | 0.16 | 0.17 |
| Between-events | &tau; | 50 km | 0.13 | 0.12 | 0.14 | 0.16 | 0.16 |
| Between-events | &tau; | 100 km | 0.13 | 0.12 | 0.14 | 0.15 | 0.19 |
| Between-events | &tau; | (all) | 0.14 | 0.13 | 0.14 | 0.16 | 0.17 |

### GMPE Table
*[(top)](#table-of-contents)*

| Type | Notation | Distance | ASK2014 3s | ASK2014 5s | ASK2014 7.5s | ASK2014 10s | BSSA2014 3s | BSSA2014 5s | BSSA2014 7.5s | BSSA2014 10s | CB2014 3s | CB2014 5s | CB2014 7.5s | CB2014 10s | CY2014 3s | CY2014 5s | CY2014 7.5s | CY2014 10s |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| Source-strike | &phi;<sub>SS</sub> | 20 km | 0.55 | 0.58 | 0.57 | 0.55 | 0.55 | 0.54 | 0.54 | 0.54 | 0.55 | 0.51 | 0.49 | 0.47 | 0.52 | 0.53 | 0.52 | 0.51 |
| Source-strike | &phi;<sub>SS</sub> | 50 km | 0.55 | 0.58 | 0.57 | 0.55 | 0.55 | 0.54 | 0.54 | 0.54 | 0.55 | 0.51 | 0.49 | 0.47 | 0.52 | 0.53 | 0.52 | 0.51 |
| Source-strike | &phi;<sub>SS</sub> | 100 km | 0.55 | 0.58 | 0.57 | 0.55 | 0.55 | 0.54 | 0.54 | 0.54 | 0.55 | 0.51 | 0.49 | 0.47 | 0.53 | 0.53 | 0.52 | 0.51 |
| Within-event, single-site | &phi;<sub>SS</sub> | 20 km | 0.55 | 0.58 | 0.57 | 0.55 | 0.55 | 0.54 | 0.54 | 0.54 | 0.55 | 0.51 | 0.49 | 0.47 | 0.52 | 0.53 | 0.52 | 0.51 |
| Within-event, single-site | &phi;<sub>SS</sub> | 50 km | 0.55 | 0.58 | 0.57 | 0.55 | 0.55 | 0.54 | 0.54 | 0.54 | 0.55 | 0.51 | 0.49 | 0.47 | 0.52 | 0.53 | 0.52 | 0.51 |
| Within-event, single-site | &phi;<sub>SS</sub> | 100 km | 0.55 | 0.58 | 0.57 | 0.55 | 0.55 | 0.54 | 0.54 | 0.54 | 0.55 | 0.51 | 0.49 | 0.47 | 0.53 | 0.53 | 0.52 | 0.51 |
| Between-events | &tau; | 20 km | 0.36 | 0.36 | 0.36 | 0.36 | 0.3 | 0.33 | 0.34 | 0.35 | 0.35 | 0.4 | 0.42 | 0.39 | 0.32 | 0.33 | 0.34 | 0.34 |
| Between-events | &tau; | 50 km | 0.36 | 0.36 | 0.36 | 0.36 | 0.3 | 0.33 | 0.34 | 0.35 | 0.35 | 0.4 | 0.42 | 0.39 | 0.33 | 0.33 | 0.34 | 0.34 |
| Between-events | &tau; | 100 km | 0.36 | 0.36 | 0.36 | 0.36 | 0.3 | 0.33 | 0.34 | 0.35 | 0.35 | 0.4 | 0.42 | 0.39 | 0.33 | 0.33 | 0.34 | 0.34 |

### Dist-Dependent Plot Table
*[(top)](#table-of-contents)*

| **&phi;<sub>s</sub>** | ![&phi;<sub>s</sub>](resources/source_strike_m7.6_dist_periods.png) |
|-----|-----|
| **&phi;<sub>SS</sub>** | ![&phi;<sub>SS</sub>](resources/within_event_ss_m7.6_dist_periods.png) |
| **&tau;** | ![&tau;](resources/between_events_m7.6_dist_periods.png) |


## Source-strike Variability
*[(top)](#table-of-contents)*

### Source-strike Variability Methodology
*[(top)](#table-of-contents)*

Source-strike variability, denoted &phi;<sub>s</sub> in Aki & Richards (1980), is computed separately for each:

* Site *[1 unique]*
* Distance *[3 unique]*

Then, for each unique combination of:

* Rupture *[165 unique]*
* Path *[1 unique]*

we compute residuals, &delta;W<sub>es</sub>, of the natural-log ground motions (relative to the median), computed across all 18 combinations of:

* Rupture Strike *[18 unique]*

We take &phi;<sub>s</sub> to be the standard deviation of all residuals, &delta;W<sub>es</sub>, across each combination of Rupture, Path.

We also compute distance-independent &phi;<sub>s</sub>, which is computed as the standard deviation of all residuals, &delta;W<sub>es</sub>, across all distances. Each residual is still computed relative to the log-median ground motion at it's distance.

Here is an exmample with 5 rotations, which would be repeated for each combination of [Rupture, Path]. The site is shown with a blue square, and initially oriented rupture in bold with its hypocenter as a red star and centroid a green circle. Rotations of that rupture are in gray:

![Example](resources/example_source_strike.png)


### 20.0 km M7.6 Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_m7.6_20km_std_dev.png)

| 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.4 | 0.4 | 0.41 | [0.27 0.56] |  | 0.35 | 0.35 | 0.35 | [0.19 0.55] |  | 0.37 | 0.36 | 0.36 | [0.17 0.63] |  | 0.33 | 0.33 | 0.33 | [0.13 0.59] |

Here are plots of the histogram of &phi;<sub>s</sub> for each individual rupture, from which we compute a total &phi;<sub>s</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m7.6_20km_3s_hist.png) | ![5s](resources/source_strike_m7.6_20km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m7.6_20km_7.5s_hist.png) | ![10s](resources/source_strike_m7.6_20km_10s_hist.png) |


### 50.0 km M7.6 Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_m7.6_50km_std_dev.png)

| 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.37 | 0.37 | 0.38 | [0.25 0.51] |  | 0.35 | 0.35 | 0.34 | [0.21 0.54] |  | 0.33 | 0.33 | 0.31 | [0.15 0.55] |  | 0.3 | 0.29 | 0.28 | [0.14 0.61] |

Here are plots of the histogram of &phi;<sub>s</sub> for each individual rupture, from which we compute a total &phi;<sub>s</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m7.6_50km_3s_hist.png) | ![5s](resources/source_strike_m7.6_50km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m7.6_50km_7.5s_hist.png) | ![10s](resources/source_strike_m7.6_50km_10s_hist.png) |


### 100.0 km M7.6 Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_m7.6_100km_std_dev.png)

| 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.32 | 0.32 | 0.32 | [0.19 0.48] |  | 0.35 | 0.35 | 0.35 | [0.18 0.54] |  | 0.32 | 0.32 | 0.3 | [0.16 0.56] |  | 0.34 | 0.33 | 0.33 | [0.15 0.6] |

Here are plots of the histogram of &phi;<sub>s</sub> for each individual rupture, from which we compute a total &phi;<sub>s</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m7.6_100km_3s_hist.png) | ![5s](resources/source_strike_m7.6_100km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m7.6_100km_7.5s_hist.png) | ![10s](resources/source_strike_m7.6_100km_10s_hist.png) |


### All Distances M7.6 Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_m7.6_std_dev.png)

| 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.37 | 0.37 | 0.37 | [0.19 0.56] |  | 0.35 | 0.35 | 0.35 | [0.18 0.55] |  | 0.34 | 0.34 | 0.33 | [0.15 0.63] |  | 0.32 | 0.32 | 0.31 | [0.13 0.61] |

Here are plots of the histogram of &phi;<sub>s</sub> for each individual rupture, from which we compute a total &phi;<sub>s</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m7.6_3s_hist.png) | ![5s](resources/source_strike_m7.6_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m7.6_7.5s_hist.png) | ![10s](resources/source_strike_m7.6_10s_hist.png) |


## Within-event, single-site Variability
*[(top)](#table-of-contents)*

### Within-event, single-site Variability Methodology
*[(top)](#table-of-contents)*

Within-event, single-site variability, denoted &phi;<sub>SS</sub> in Al Atik (2010), is computed separately for each:

* Site *[1 unique]*
* Distance *[3 unique]*

Then, for each unique combination of:

* Rupture *[165 unique]*

we compute residuals, &delta;W<sub>es</sub>, of the natural-log ground motions (relative to the median), computed across all 18 combinations of:

* Rupture Strike *[18 unique]*
* Path *[1 unique]*

We take &phi;<sub>SS</sub> to be the standard deviation of all residuals, &delta;W<sub>es</sub>, across each combination of Rupture.

We also compute distance-independent &phi;<sub>SS</sub>, which is computed as the standard deviation of all residuals, &delta;W<sub>es</sub>, across all distances. Each residual is still computed relative to the log-median ground motion at it's distance.

Here is an exmample with 5 rotations, which would be repeated for each combination of [Rupture]. The site is shown with a blue square, and initially oriented rupture in bold with its hypocenter as a red star and centroid a green circle. Rotations of that rupture are in gray:

![Example](resources/example_within_event_ss.png)


### 20.0 km M7.6 Within-event, single-site Results
*[(top)](#table-of-contents)*

![Within-event, single-site Variability](resources/within_event_ss_m7.6_20km_std_dev.png)

| 3s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 10s &phi;<sub>SS</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.4 | 0.4 | 0.41 | [0.27 0.56] |  | 0.35 | 0.35 | 0.35 | [0.19 0.55] |  | 0.37 | 0.36 | 0.36 | [0.17 0.63] |  | 0.33 | 0.33 | 0.33 | [0.13 0.59] |

Here are plots of the histogram of &phi;<sub>SS</sub> for each individual rupture, from which we compute a total &phi;<sub>SS</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_ss_m7.6_20km_3s_hist.png) | ![5s](resources/within_event_ss_m7.6_20km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_ss_m7.6_20km_7.5s_hist.png) | ![10s](resources/within_event_ss_m7.6_20km_10s_hist.png) |


### 50.0 km M7.6 Within-event, single-site Results
*[(top)](#table-of-contents)*

![Within-event, single-site Variability](resources/within_event_ss_m7.6_50km_std_dev.png)

| 3s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 10s &phi;<sub>SS</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.37 | 0.37 | 0.38 | [0.25 0.51] |  | 0.35 | 0.35 | 0.34 | [0.21 0.54] |  | 0.33 | 0.33 | 0.31 | [0.15 0.55] |  | 0.3 | 0.29 | 0.28 | [0.14 0.61] |

Here are plots of the histogram of &phi;<sub>SS</sub> for each individual rupture, from which we compute a total &phi;<sub>SS</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_ss_m7.6_50km_3s_hist.png) | ![5s](resources/within_event_ss_m7.6_50km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_ss_m7.6_50km_7.5s_hist.png) | ![10s](resources/within_event_ss_m7.6_50km_10s_hist.png) |


### 100.0 km M7.6 Within-event, single-site Results
*[(top)](#table-of-contents)*

![Within-event, single-site Variability](resources/within_event_ss_m7.6_100km_std_dev.png)

| 3s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 10s &phi;<sub>SS</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.32 | 0.32 | 0.32 | [0.19 0.48] |  | 0.35 | 0.35 | 0.35 | [0.18 0.54] |  | 0.32 | 0.32 | 0.3 | [0.16 0.56] |  | 0.34 | 0.33 | 0.33 | [0.15 0.6] |

Here are plots of the histogram of &phi;<sub>SS</sub> for each individual rupture, from which we compute a total &phi;<sub>SS</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_ss_m7.6_100km_3s_hist.png) | ![5s](resources/within_event_ss_m7.6_100km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_ss_m7.6_100km_7.5s_hist.png) | ![10s](resources/within_event_ss_m7.6_100km_10s_hist.png) |


### All Distances M7.6 Within-event, single-site Results
*[(top)](#table-of-contents)*

![Within-event, single-site Variability](resources/within_event_ss_m7.6_std_dev.png)

| 3s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 10s &phi;<sub>SS</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.37 | 0.37 | 0.37 | [0.19 0.56] |  | 0.35 | 0.35 | 0.35 | [0.18 0.55] |  | 0.34 | 0.34 | 0.33 | [0.15 0.63] |  | 0.32 | 0.32 | 0.31 | [0.13 0.61] |

Here are plots of the histogram of &phi;<sub>SS</sub> for each individual rupture, from which we compute a total &phi;<sub>SS</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_ss_m7.6_3s_hist.png) | ![5s](resources/within_event_ss_m7.6_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_ss_m7.6_7.5s_hist.png) | ![10s](resources/within_event_ss_m7.6_10s_hist.png) |


## Between-events Variability
*[(top)](#table-of-contents)*

### Between-events Variability Methodology
*[(top)](#table-of-contents)*

Between-events variability, denoted &tau; in Al Atik (2010), is computed separately for each:

* Distance *[3 unique]*

We first compute the median natural-log ground motion, &delta;B<sub>e</sub>, for each combination of:

* Rupture *[165 unique]*

That median, &delta;B<sub>e</sub>, is computed across all 18 combinations of:

* Site *[1 unique]*
* Rupture Strike *[18 unique]*
* Path *[1 unique]*

We take &tau; to be the standard deviation of all &delta;B<sub>e</sub>.

We also compute distance-independent &tau;, which we take to be the mean value across all distances.

Here is an exmample with 5 rotations, which would be repeated for each combination of [Rupture]. The site is shown with a blue square, and initially oriented rupture in bold with its hypocenter as a red star and centroid a green circle. Rotations of that rupture are in gray:

![Example](resources/example_between_events.png)


### 20.0 km M7.6 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m7.6_20km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.14 | -2.46 | [-2.86 -2.18] | 0.13 | -3.39 | [-3.68 -3.05] | 0.16 | -4.09 | [-4.55 -3.71] | 0.17 | -4.66 | [-5.13 -4.1] |


### 50.0 km M7.6 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m7.6_50km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.12 | -3.28 | [-3.61 -2.9] | 0.14 | -4.01 | [-4.36 -3.71] | 0.16 | -4.66 | [-5.01 -4.25] | 0.16 | -5.24 | [-5.7 -4.85] |


### 100.0 km M7.6 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m7.6_100km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.12 | -3.66 | [-4.02 -3.29] | 0.14 | -4.53 | [-4.95 -4.22] | 0.15 | -5.14 | [-5.49 -4.8] | 0.19 | -5.56 | [-6.13 -5.04] |


### All Distances M7.6 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m7.6_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.13 | -3.14 | [-4.02 -2.18] | 0.14 | -3.98 | [-4.95 -3.05] | 0.16 | -4.63 | [-5.49 -3.71] | 0.17 | -5.15 | [-6.13 -4.1] |


## Event Term Scatters
*[(top)](#table-of-contents)*

### Propagation Velocity Event Term Scatters
*[(top)](#table-of-contents)*

| Distance | 3 s | 5 s | 7.5 s | 10 s |
|-----|-----|-----|-----|-----|
| **20 km** | ![plot](resources/event_term_scatter_v_prop_m7.6_20km_USC_3s.png) | ![plot](resources/event_term_scatter_v_prop_m7.6_20km_USC_5s.png) | ![plot](resources/event_term_scatter_v_prop_m7.6_20km_USC_7.5s.png) | ![plot](resources/event_term_scatter_v_prop_m7.6_20km_USC_10s.png) |
| **50 km** | ![plot](resources/event_term_scatter_v_prop_m7.6_50km_USC_3s.png) | ![plot](resources/event_term_scatter_v_prop_m7.6_50km_USC_5s.png) | ![plot](resources/event_term_scatter_v_prop_m7.6_50km_USC_7.5s.png) | ![plot](resources/event_term_scatter_v_prop_m7.6_50km_USC_10s.png) |
| **100 km** | ![plot](resources/event_term_scatter_v_prop_m7.6_100km_USC_3s.png) | ![plot](resources/event_term_scatter_v_prop_m7.6_100km_USC_5s.png) | ![plot](resources/event_term_scatter_v_prop_m7.6_100km_USC_7.5s.png) | ![plot](resources/event_term_scatter_v_prop_m7.6_100km_USC_10s.png) |
### Mag Event Term Scatters
*[(top)](#table-of-contents)*

| Distance | 3 s | 5 s | 7.5 s | 10 s |
|-----|-----|-----|-----|-----|
| **20 km** | ![plot](resources/event_term_scatter_mag_m7.6_20km_USC_3s.png) | ![plot](resources/event_term_scatter_mag_m7.6_20km_USC_5s.png) | ![plot](resources/event_term_scatter_mag_m7.6_20km_USC_7.5s.png) | ![plot](resources/event_term_scatter_mag_m7.6_20km_USC_10s.png) |
| **50 km** | ![plot](resources/event_term_scatter_mag_m7.6_50km_USC_3s.png) | ![plot](resources/event_term_scatter_mag_m7.6_50km_USC_5s.png) | ![plot](resources/event_term_scatter_mag_m7.6_50km_USC_7.5s.png) | ![plot](resources/event_term_scatter_mag_m7.6_50km_USC_10s.png) |
| **100 km** | ![plot](resources/event_term_scatter_mag_m7.6_100km_USC_3s.png) | ![plot](resources/event_term_scatter_mag_m7.6_100km_USC_5s.png) | ![plot](resources/event_term_scatter_mag_m7.6_100km_USC_7.5s.png) | ![plot](resources/event_term_scatter_mag_m7.6_100km_USC_10s.png) |
### Log10(Area) Event Term Scatters
*[(top)](#table-of-contents)*

| Distance | 3 s | 5 s | 7.5 s | 10 s |
|-----|-----|-----|-----|-----|
| **20 km** | ![plot](resources/event_term_scatter_area_m7.6_20km_USC_3s.png) | ![plot](resources/event_term_scatter_area_m7.6_20km_USC_5s.png) | ![plot](resources/event_term_scatter_area_m7.6_20km_USC_7.5s.png) | ![plot](resources/event_term_scatter_area_m7.6_20km_USC_10s.png) |
| **50 km** | ![plot](resources/event_term_scatter_area_m7.6_50km_USC_3s.png) | ![plot](resources/event_term_scatter_area_m7.6_50km_USC_5s.png) | ![plot](resources/event_term_scatter_area_m7.6_50km_USC_7.5s.png) | ![plot](resources/event_term_scatter_area_m7.6_50km_USC_10s.png) |
| **100 km** | ![plot](resources/event_term_scatter_area_m7.6_100km_USC_3s.png) | ![plot](resources/event_term_scatter_area_m7.6_100km_USC_5s.png) | ![plot](resources/event_term_scatter_area_m7.6_100km_USC_7.5s.png) | ![plot](resources/event_term_scatter_area_m7.6_100km_USC_10s.png) |
### Max Slip Event Term Scatters
*[(top)](#table-of-contents)*

| Distance | 3 s | 5 s | 7.5 s | 10 s |
|-----|-----|-----|-----|-----|
| **20 km** | ![plot](resources/event_term_scatter_max_slip_m7.6_20km_USC_3s.png) | ![plot](resources/event_term_scatter_max_slip_m7.6_20km_USC_5s.png) | ![plot](resources/event_term_scatter_max_slip_m7.6_20km_USC_7.5s.png) | ![plot](resources/event_term_scatter_max_slip_m7.6_20km_USC_10s.png) |
| **50 km** | ![plot](resources/event_term_scatter_max_slip_m7.6_50km_USC_3s.png) | ![plot](resources/event_term_scatter_max_slip_m7.6_50km_USC_5s.png) | ![plot](resources/event_term_scatter_max_slip_m7.6_50km_USC_7.5s.png) | ![plot](resources/event_term_scatter_max_slip_m7.6_50km_USC_10s.png) |
| **100 km** | ![plot](resources/event_term_scatter_max_slip_m7.6_100km_USC_3s.png) | ![plot](resources/event_term_scatter_max_slip_m7.6_100km_USC_5s.png) | ![plot](resources/event_term_scatter_max_slip_m7.6_100km_USC_7.5s.png) | ![plot](resources/event_term_scatter_max_slip_m7.6_100km_USC_10s.png) |
### Mean Slip Event Term Scatters
*[(top)](#table-of-contents)*

| Distance | 3 s | 5 s | 7.5 s | 10 s |
|-----|-----|-----|-----|-----|
| **20 km** | ![plot](resources/event_term_scatter_mean_slip_m7.6_20km_USC_3s.png) | ![plot](resources/event_term_scatter_mean_slip_m7.6_20km_USC_5s.png) | ![plot](resources/event_term_scatter_mean_slip_m7.6_20km_USC_7.5s.png) | ![plot](resources/event_term_scatter_mean_slip_m7.6_20km_USC_10s.png) |
| **50 km** | ![plot](resources/event_term_scatter_mean_slip_m7.6_50km_USC_3s.png) | ![plot](resources/event_term_scatter_mean_slip_m7.6_50km_USC_5s.png) | ![plot](resources/event_term_scatter_mean_slip_m7.6_50km_USC_7.5s.png) | ![plot](resources/event_term_scatter_mean_slip_m7.6_50km_USC_10s.png) |
| **100 km** | ![plot](resources/event_term_scatter_mean_slip_m7.6_100km_USC_3s.png) | ![plot](resources/event_term_scatter_mean_slip_m7.6_100km_USC_5s.png) | ![plot](resources/event_term_scatter_mean_slip_m7.6_100km_USC_7.5s.png) | ![plot](resources/event_term_scatter_mean_slip_m7.6_100km_USC_10s.png) |
## Azumth Dependence
*[(top)](#table-of-contents)*

### Rupture Strike Dependence
*[(top)](#table-of-contents)*

| Type | 3s | 5s | 7.5s | 10s |
|-----|-----|-----|-----|-----|
| **&tau;** | ![Rupture Strike](resources/m7.6_dist_SOURCE_AZIMUTH_3s_between_events.png) | ![Rupture Strike](resources/m7.6_dist_SOURCE_AZIMUTH_5s_between_events.png) | ![Rupture Strike](resources/m7.6_dist_SOURCE_AZIMUTH_7.5s_between_events.png) | ![Rupture Strike](resources/m7.6_dist_SOURCE_AZIMUTH_10s_between_events.png) |
| **Median SA** | ![Rupture Strike](resources/m7.6_dist_SOURCE_AZIMUTH_3s_median_sa.png) | ![Rupture Strike](resources/m7.6_dist_SOURCE_AZIMUTH_5s_median_sa.png) | ![Rupture Strike](resources/m7.6_dist_SOURCE_AZIMUTH_7.5s_median_sa.png) | ![Rupture Strike](resources/m7.6_dist_SOURCE_AZIMUTH_10s_median_sa.png) |

## BBP PartB Comparison
*[(top)](#table-of-contents)*

Here we attempt to reproduce the SCEC BroadBand Platform "Part B" validation exercise as defined in:

*Goulet, C. A., Abrahamson, N. A., Somerville, P. G., & Wooddell, K. E. (2014). The SCEC broadband platform validation exercise: Methodology for code validation in the context of seismic‐hazard analyses. Seismological Research Letters, 86(1), 17-26.* [(link)](https://pubs.geoscienceworld.org/ssa/srl/article/86/1/17/315438/the-scec-broadband-platform-validation-exercise)

The BBP exercise positioned sites in a 'racetrack' around the ruptures. Here, we instead position and rotate the ruptures around the site in order to work in 3-D with CyberShake reciprical calculations. Results for official scenarios and distances are in **bold**, results for additional magnitudes or distances not defined in the Goulet et. al. (2014) are *italicised*.

### BBP PartB Summary Table
*[(top)](#table-of-contents)*

| Scenario | 20.0 km | 50.0 km | 100.0 km |
|-----|-----|-----|-----|
| **M7.6 Reverse** | *(FAIL)* | *(FAIL)* | *(FAIL)* |

### BBP PartB, M7.6, Reverse, Dip=45
*[(top)](#table-of-contents)*

| 20.0 km | 50.0 km | 100.0 km |
|-----|-----|-----|
| ![PartB Plot](resources/bbp_partB_m7p6_reverse_20km.png) | ![PartB Plot](resources/bbp_partB_m7p6_reverse_50km.png) | ![PartB Plot](resources/bbp_partB_m7p6_reverse_100km.png) |

## CSV Files
*[(top)](#table-of-contents)*

| Magnitude | Distance | Site | CSV File |
|-----|-----|-----|-----|
| M7.6 | 20.0 km | USC | [sa_USC_m7.6_20.0km.csv.gz](resources/sa_USC_m7.6_20.0km.csv.gz) |
| M7.6 | 50.0 km | USC | [sa_USC_m7.6_50.0km.csv.gz](resources/sa_USC_m7.6_50.0km.csv.gz) |
| M7.6 | 100.0 km | USC | [sa_USC_m7.6_100.0km.csv.gz](resources/sa_USC_m7.6_100.0km.csv.gz) |

