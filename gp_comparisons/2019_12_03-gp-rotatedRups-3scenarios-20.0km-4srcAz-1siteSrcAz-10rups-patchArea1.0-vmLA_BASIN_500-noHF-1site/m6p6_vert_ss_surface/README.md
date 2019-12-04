# Graves & Pitarka (2016) Rotated Rupture Variability, M6.6 SS

This exercise uses translations and rotations to estimate ground motion variability from different sources. We begin by selecting a subset of similar ruptures which match a set of criteria (in this case, M6.6, Vertical Strike-Slip with Surface Rupture). Each rupture is then reoriented such that its strike (following the Aki & Richards 1980 convention) is 0 degrees (due North, dipping to the right for normal or reverse ruptures). For each site, ruptures are translated such that their scalar seismic moment centroid is directly North of the site, and their 3-dimensional distance (Rrup) is as specified (we consider 1 distance[s] here).

We then  perform various rotations. We rotate the rupture in place around its centroid, holding the site-to-source centroid path and Rrup constant (henceforth 'Rupture Strike'). We also rotate ruptures around the site, holding Rrup and source orientation relative to the site constant but sampling different various paths (henceforth 'Path'). We do this for each unique combination of Rupture Strike, Path, Distance, Site, and Rupture.

This pages uses the Graves & Pitarka (2016) rupture generator. Rupture surfaces are determined by first computing the Wells & Coppersmith median length for the magnitude, then a down dip width using that length and the area from Somerville (2006). Hypocenters are randomly distributed both down dip and along strike.

*NOTE: This page uses the SCEC BBP to simulate a 1-dimensional velocity structure. Thus we expect no path variability, and plots of path variabilitiy are included only as verification of the method.*

## Table Of Contents
* [Rupture Rotation Parameters](#rupture-rotation-parameters)
* [M6.6 SS Rupture Match Criteria](#m66-ss-rupture-match-criteria)
* [Sites](#sites)
* [Result Summary Table](#result-summary-table)
  * [GMPE Table](#gmpe-table)
* [Source-strike Variability](#source-strike-variability)
  * [Source-strike Variability Methodology](#source-strike-variability-methodology)
  * [M6.6 Source-strike Results](#m66-source-strike-results)
  * [M6.6 Source-strike Downsampled Results](#m66-source-strike-downsampled-results)
  * [M6.6 Source-strike Downsampled Results](#m66-source-strike-downsampled-results)
* [Within-event, single-site Variability](#within-event-single-site-variability)
  * [Within-event, single-site Variability Methodology](#within-event-single-site-variability-methodology)
  * [M6.6 Within-event, single-site Results](#m66-within-event-single-site-results)
  * [M6.6 Within-event, single-site Downsampled Results](#m66-within-event-single-site-downsampled-results)
  * [M6.6 Within-event, single-site Downsampled Results](#m66-within-event-single-site-downsampled-results)
* [Between-events Variability](#between-events-variability)
  * [Between-events Variability Methodology](#between-events-variability-methodology)
  * [M6.6 Between-events Results](#m66-between-events-results)
  * [M6.6 Between-events Downsampled Results](#m66-between-events-downsampled-results)
  * [M6.6 Between-events Downsampled Results](#m66-between-events-downsampled-results)
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
| Rupture | 10 | Unique (but similar in faulting style and magnitude) ruptures which match the given scenario. |
| Site | 1 | Unique site locations. If 3-d, each will have unique velocity profiles. |
| Rupture Strike | 4 | Rupture strike conforming to the Aki & Richards (1980) convention, where dipping faults dip to the right of the rupture. If path rotation is also performed, this azimuth is relative to the path. |
| Path | 1 | Path from the site to the centroid of the rupture, in azimuthal degrees (0 is North) |
| Distance | 20.0 km | 3-dimensional distance between the site and the rupture surface. |
| **Total # Simulations** | **40** | Total number of combinations of the above. |

## M6.6 SS Rupture Match Criteria
*[(top)](#table-of-contents)*

We condisder 10 events which match the following criteria:

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
| Source-strike | &phi;<sub>s</sub> | 20 km | 0.28 | 0.29 | 0.23 | 0.34 | 0.33 |
| Within-event, single-site | &phi;<sub>SS</sub> | 20 km | 0.28 | 0.29 | 0.23 | 0.34 | 0.33 |
| Between-events | &tau; | 20 km | 0.2 | 0.2 | 0.24 | 0.21 | 0.15 |

### GMPE Table
*[(top)](#table-of-contents)*

| Type | Notation | Distance | ASK2014 3s | ASK2014 5s | ASK2014 7.5s | ASK2014 10s | BSSA2014 3s | BSSA2014 5s | BSSA2014 7.5s | BSSA2014 10s | CB2014 3s | CB2014 5s | CB2014 7.5s | CB2014 10s | CY2014 3s | CY2014 5s | CY2014 7.5s | CY2014 10s |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| Source-strike | &phi;<sub>SS</sub> | 20 km | 0.55 | 0.58 | 0.57 | 0.55 | 0.55 | 0.54 | 0.54 | 0.54 | 0.55 | 0.51 | 0.49 | 0.47 | 0.52 | 0.53 | 0.52 | 0.51 |
| Within-event, single-site | &phi;<sub>SS</sub> | 20 km | 0.55 | 0.58 | 0.57 | 0.55 | 0.55 | 0.54 | 0.54 | 0.54 | 0.55 | 0.51 | 0.49 | 0.47 | 0.52 | 0.53 | 0.52 | 0.51 |
| Between-events | &tau; | 20 km | 0.38 | 0.38 | 0.38 | 0.38 | 0.3 | 0.33 | 0.34 | 0.35 | 0.35 | 0.4 | 0.42 | 0.39 | 0.33 | 0.33 | 0.34 | 0.34 |

## Source-strike Variability
*[(top)](#table-of-contents)*

### Source-strike Variability Methodology
*[(top)](#table-of-contents)*

Source-strike variability, denoted &phi;<sub>s</sub> in Aki & Richards (1980), is computed separately for each:

* Site *[1 unique]*
* Distance *[1 unique]*

Then, for each unique combination of:

* Rupture *[10 unique]*
* Path *[1 unique]*

we compute residuals, &delta;W<sub>es</sub>, of the natural-log ground motions (relative to the median), computed across all 4 combinations of:

* Rupture Strike *[4 unique]*

We take &phi;<sub>s</sub> to be the standard deviation of all residuals, &delta;W<sub>es</sub>, across each combination of Rupture, Path.

Here is an exmample with 5 rotations, which would be repeated for each combination of [Rupture, Path]. The site is shown with a blue square, and initially oriented rupture in bold with its hypocenter as a red star and centroid a green circle. Rotations of that rupture are in gray:

![Example](resources/example_source_strike.png)


### M6.6 Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_m6.6_20km_std_dev.png)

| 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.29 | 0.3 | 0.29 | [0.14 0.51] |  | 0.23 | 0.23 | 0.2 | [0.13 0.44] |  | 0.34 | 0.34 | 0.31 | [0.11 0.65] |  | 0.33 | 0.33 | 0.29 | [0.08 0.54] |

Here are plots of the histogram of &phi;<sub>s</sub> for each individual rupture, from which we compute a total &phi;<sub>s</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m6.6_20km_3s_hist.png) | ![5s](resources/source_strike_m6.6_20km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m6.6_20km_7.5s_hist.png) | ![10s](resources/source_strike_m6.6_20km_10s_hist.png) |

### M6.6 Source-strike Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &phi;<sub>s</sub> through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and distance within the range [10.0 30.0] km. We throw out any events with only 1 recording, leaving us with 4 events and a total of 14 recordings. We then downsample our simulated data 100 times, and compute &phi;<sub>s</sub> from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 23 fewer data points.*

| Period (s) | Full &phi;<sub>s</sub> | Downsampled median &phi;<sub>s</sub> | Downsampled &phi;<sub>s</sub> std. dev. | Downsampled &phi;<sub>s</sub> 68% conf range | Downsampled &phi;<sub>s</sub> 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.28 | 0.28 | 0.02 | [0.26 0.3] | [0.23 0.33] |
| 1 | 0.27 | 0.26 | 0.05 | [0.22 0.32] | [0.18 0.36] |
| 2 | 0.28 | 0.3 | 0.07 | [0.2 0.34] | [0.13 0.39] |
| 3 | 0.29 | 0.29 | 0.04 | [0.25 0.33] | [0.19 0.37] |
| 4 | 0.26 | 0.27 | 0.05 | [0.22 0.31] | [0.15 0.34] |
| 5 | 0.23 | 0.22 | 0.04 | [0.18 0.27] | [0.15 0.31] |
| 7.5 | 0.34 | 0.33 | 0.06 | [0.27 0.39] | [0.21 0.45] |
| 10 | 0.33 | 0.32 | 0.05 | [0.29 0.37] | [0.2 0.42] |

These plots show the distribution of period-independent downsampled &phi;<sub>s</sub> for each site.

| Period | **USC** |
|-----|-----|
| Period-Indep | ![Dowmsampled Histogram](resources/source_strike_m6.6_20km_USC_downsampled_hist_period_indep.png) |
| 3s | ![Dowmsampled Histogram](resources/source_strike_m6.6_20km_USC_downsampled_hist_3s.png) |


![Source-strike Variability](resources/source_strike_m6.6_std_dev.png)

| 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.29 | 0.3 | 0.29 | [0.14 0.51] |  | 0.23 | 0.23 | 0.2 | [0.13 0.44] |  | 0.34 | 0.34 | 0.31 | [0.11 0.65] |  | 0.33 | 0.33 | 0.29 | [0.08 0.54] |

Here are plots of the histogram of &phi;<sub>s</sub> for each individual rupture, from which we compute a total &phi;<sub>s</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m6.6_3s_hist.png) | ![5s](resources/source_strike_m6.6_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m6.6_7.5s_hist.png) | ![10s](resources/source_strike_m6.6_10s_hist.png) |

### M6.6 Source-strike Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &phi;<sub>s</sub> through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and all distances. We throw out any events with only 1 recording, leaving us with 5 events and a total of 20 recordings. We then downsample our simulated data 100 times, and compute &phi;<sub>s</sub> from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 238 fewer data points.*

| Period (s) | Full &phi;<sub>s</sub> | Downsampled median &phi;<sub>s</sub> | Downsampled &phi;<sub>s</sub> std. dev. | Downsampled &phi;<sub>s</sub> 68% conf range | Downsampled &phi;<sub>s</sub> 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.28 | 0.28 | 0.02 | [0.26 0.3] | [0.24 0.32] |
| 1 | 0.27 | 0.27 | 0.04 | [0.24 0.31] | [0.19 0.34] |
| 2 | 0.28 | 0.28 | 0.05 | [0.23 0.33] | [0.19 0.37] |
| 3 | 0.29 | 0.29 | 0.04 | [0.25 0.33] | [0.22 0.36] |
| 4 | 0.26 | 0.26 | 0.04 | [0.22 0.3] | [0.18 0.32] |
| 5 | 0.23 | 0.23 | 0.03 | [0.19 0.26] | [0.17 0.28] |
| 7.5 | 0.34 | 0.32 | 0.05 | [0.28 0.38] | [0.24 0.43] |
| 10 | 0.33 | 0.32 | 0.04 | [0.27 0.37] | [0.22 0.41] |

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
* Distance *[1 unique]*

Then, for each unique combination of:

* Rupture *[10 unique]*

we compute residuals, &delta;W<sub>es</sub>, of the natural-log ground motions (relative to the median), computed across all 4 combinations of:

* Rupture Strike *[4 unique]*
* Path *[1 unique]*

We take &phi;<sub>SS</sub> to be the standard deviation of all residuals, &delta;W<sub>es</sub>, across each combination of Rupture.

Here is an exmample with 5 rotations, which would be repeated for each combination of [Rupture]. The site is shown with a blue square, and initially oriented rupture in bold with its hypocenter as a red star and centroid a green circle. Rotations of that rupture are in gray:

![Example](resources/example_within_event_ss.png)


### M6.6 Within-event, single-site Results
*[(top)](#table-of-contents)*

![Within-event, single-site Variability](resources/within_event_ss_m6.6_20km_std_dev.png)

| 3s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 10s &phi;<sub>SS</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.29 | 0.3 | 0.29 | [0.14 0.51] |  | 0.23 | 0.23 | 0.2 | [0.13 0.44] |  | 0.34 | 0.34 | 0.31 | [0.11 0.65] |  | 0.33 | 0.33 | 0.29 | [0.08 0.54] |

Here are plots of the histogram of &phi;<sub>SS</sub> for each individual rupture, from which we compute a total &phi;<sub>SS</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_ss_m6.6_20km_3s_hist.png) | ![5s](resources/within_event_ss_m6.6_20km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_ss_m6.6_20km_7.5s_hist.png) | ![10s](resources/within_event_ss_m6.6_20km_10s_hist.png) |

### M6.6 Within-event, single-site Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &phi;<sub>SS</sub> through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and distance within the range [10.0 30.0] km. We throw out any events with only 1 recording, leaving us with 4 events and a total of 14 recordings. We then downsample our simulated data 100 times, and compute &phi;<sub>SS</sub> from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 23 fewer data points.*

| Period (s) | Full &phi;<sub>SS</sub> | Downsampled median &phi;<sub>SS</sub> | Downsampled &phi;<sub>SS</sub> std. dev. | Downsampled &phi;<sub>SS</sub> 68% conf range | Downsampled &phi;<sub>SS</sub> 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.28 | 0.28 | 0.02 | [0.25 0.3] | [0.22 0.32] |
| 1 | 0.27 | 0.27 | 0.05 | [0.22 0.32] | [0.2 0.36] |
| 2 | 0.28 | 0.28 | 0.07 | [0.21 0.36] | [0.13 0.4] |
| 3 | 0.29 | 0.29 | 0.04 | [0.24 0.33] | [0.19 0.38] |
| 4 | 0.26 | 0.26 | 0.05 | [0.2 0.3] | [0.14 0.35] |
| 5 | 0.23 | 0.21 | 0.04 | [0.17 0.27] | [0.15 0.3] |
| 7.5 | 0.34 | 0.33 | 0.06 | [0.27 0.4] | [0.2 0.44] |
| 10 | 0.33 | 0.32 | 0.05 | [0.27 0.37] | [0.2 0.42] |

These plots show the distribution of period-independent downsampled &phi;<sub>SS</sub> for each site.

| Period | **USC** |
|-----|-----|
| Period-Indep | ![Dowmsampled Histogram](resources/within_event_ss_m6.6_20km_USC_downsampled_hist_period_indep.png) |
| 3s | ![Dowmsampled Histogram](resources/within_event_ss_m6.6_20km_USC_downsampled_hist_3s.png) |

These plots show the dependence of &phi;<sub>SS</sub> to the number of events included and the number of recordings per event. The left plot holds the number of recordings per event fixed at the full set of simulated recordings (4), varying the number of events. The right plot holds the number of events fixed at the full set of simulated events (10), varying the number of recordings per event.

| Period | Event Count Dependence | Recordings/Event Dependence |
|-----|-----|-----|
| Period Indep. | ![num events dependence](resources/within_event_ss_event_count_dependence_20km_period_indep.png) | ![num recordings dependence](resources/within_event_ss_event_recordings_dependence_20km_period_indep.png) |
| 1s | ![num events dependence](resources/within_event_ss_event_count_dependence_20km_1s.png) | ![num recordings dependence](resources/within_event_ss_event_recordings_dependence_20km_1.png) |

This is a histogram of the number of recordings per event from ASK 2014 with M=[6.4,6.8]. The top plot shows the subset with distance in the range [10.0,30.0], and the bottom the whole distribution at all distances.

![Histogram](resources/within_event_ss_event_recordings_hist_20km.png)


![Within-event, single-site Variability](resources/within_event_ss_m6.6_std_dev.png)

| 3s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 10s &phi;<sub>SS</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.29 | 0.3 | 0.29 | [0.14 0.51] |  | 0.23 | 0.23 | 0.2 | [0.13 0.44] |  | 0.34 | 0.34 | 0.31 | [0.11 0.65] |  | 0.33 | 0.33 | 0.29 | [0.08 0.54] |

Here are plots of the histogram of &phi;<sub>SS</sub> for each individual rupture, from which we compute a total &phi;<sub>SS</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_ss_m6.6_3s_hist.png) | ![5s](resources/within_event_ss_m6.6_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_ss_m6.6_7.5s_hist.png) | ![10s](resources/within_event_ss_m6.6_10s_hist.png) |

### M6.6 Within-event, single-site Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &phi;<sub>SS</sub> through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and all distances. We throw out any events with only 1 recording, leaving us with 5 events and a total of 20 recordings. We then downsample our simulated data 100 times, and compute &phi;<sub>SS</sub> from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 238 fewer data points.*

| Period (s) | Full &phi;<sub>SS</sub> | Downsampled median &phi;<sub>SS</sub> | Downsampled &phi;<sub>SS</sub> std. dev. | Downsampled &phi;<sub>SS</sub> 68% conf range | Downsampled &phi;<sub>SS</sub> 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.28 | 0.28 | 0.02 | [0.26 0.3] | [0.25 0.32] |
| 1 | 0.27 | 0.28 | 0.03 | [0.25 0.31] | [0.22 0.34] |
| 2 | 0.28 | 0.28 | 0.04 | [0.24 0.33] | [0.19 0.36] |
| 3 | 0.29 | 0.29 | 0.03 | [0.26 0.32] | [0.23 0.35] |
| 4 | 0.26 | 0.27 | 0.03 | [0.23 0.29] | [0.19 0.33] |
| 5 | 0.23 | 0.23 | 0.03 | [0.19 0.26] | [0.15 0.27] |
| 7.5 | 0.34 | 0.33 | 0.04 | [0.28 0.37] | [0.24 0.41] |
| 10 | 0.33 | 0.33 | 0.04 | [0.28 0.36] | [0.26 0.39] |

These plots show the distribution of period-independent downsampled &phi;<sub>SS</sub> for each site.

| Period | **USC** |
|-----|-----|
| Period-Indep | ![Dowmsampled Histogram](resources/within_event_ss_m6.6_USC_downsampled_hist_period_indep.png) |
| 3s | ![Dowmsampled Histogram](resources/within_event_ss_m6.6_USC_downsampled_hist_3s.png) |

These plots show the dependence of &phi;<sub>SS</sub> to the number of events included and the number of recordings per event. The left plot holds the number of recordings per event fixed at the full set of simulated recordings (4), varying the number of events. The right plot holds the number of events fixed at the full set of simulated events (10), varying the number of recordings per event.

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

* Distance *[1 unique]*

We first compute the median natural-log ground motion, &delta;B<sub>e</sub>, for each combination of:

* Rupture *[10 unique]*

That median, &delta;B<sub>e</sub>, is computed across all 4 combinations of:

* Site *[1 unique]*
* Rupture Strike *[4 unique]*
* Path *[1 unique]*

We take &tau; to be the standard deviation of all &delta;B<sub>e</sub>.

Here is an exmample with 5 rotations, which would be repeated for each combination of [Rupture]. The site is shown with a blue square, and initially oriented rupture in bold with its hypocenter as a red star and centroid a green circle. Rotations of that rupture are in gray:

![Example](resources/example_between_events.png)


### M6.6 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m6.6_20km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.2 | -3.1 | [-3.51 -2.84] | 0.24 | -4.1 | [-4.41 -3.66] | 0.21 | -4.73 | [-5.03 -4.4] | 0.15 | -5.22 | [-5.51 -5.02] |

### M6.6 Between-events Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &tau; through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and distance within the range [10.0 30.0] km. We throw out any events with only 1 recording, leaving us with 4 events and a total of 14 recordings. We then downsample our simulated data 100 times, and compute &tau; from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 23 fewer data points.*

| Period (s) | Full &tau; | Downsampled median &tau; | Downsampled &tau; std. dev. | Downsampled &tau; 68% conf range | Downsampled &tau; 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.2 | 0.2 | 0.04 | [0.17 0.25] | [0.15 0.28] |
| 1 | 0.2 | 0.2 | 0.08 | [0.12 0.29] | [0.06 0.34] |
| 2 | 0.23 | 0.18 | 0.12 | [0.09 0.36] | [0.04 0.43] |
| 3 | 0.2 | 0.19 | 0.07 | [0.14 0.28] | [0.07 0.33] |
| 4 | 0.18 | 0.2 | 0.06 | [0.12 0.25] | [0.05 0.33] |
| 5 | 0.24 | 0.24 | 0.07 | [0.18 0.32] | [0.12 0.41] |
| 7.5 | 0.21 | 0.21 | 0.07 | [0.15 0.28] | [0.08 0.37] |
| 10 | 0.15 | 0.16 | 0.05 | [0.1 0.22] | [0.05 0.26] |

This plot shows the distribution of period-independent downsampled &tau;.

| Period-Indep | ![Dowmsampled Histogram](resources/between_events_m6.6_20km_downsampled_hist_period_indep.png) |
|-----|-----|
| 3s | ![Dowmsampled Histogram](resources/between_events_m6.6_20km_downsampled_hist_3s.png) |

These plots show the dependence of &tau; to the number of events included and the number of recordings per event. The left plot holds the number of recordings per event fixed at the full set of simulated recordings (4), varying the number of events. The right plot holds the number of events fixed at the full set of simulated events (10), varying the number of recordings per event.

| Period | Event Count Dependence | Recordings/Event Dependence |
|-----|-----|-----|
| Period Indep. | ![num events dependence](resources/between_events_event_count_dependence_20km_period_indep.png) | ![num recordings dependence](resources/between_events_event_recordings_dependence_20km_period_indep.png) |
| 1s | ![num events dependence](resources/between_events_event_count_dependence_20km_1s.png) | ![num recordings dependence](resources/between_events_event_recordings_dependence_20km_1.png) |

This is a histogram of the number of recordings per event from ASK 2014 with M=[6.4,6.8]. The top plot shows the subset with distance in the range [10.0,30.0], and the bottom the whole distribution at all distances.

![Histogram](resources/between_events_event_recordings_hist_20km.png)


![Between-events Variability](resources/between_events_m6.6_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.2 | -3.1 | [-3.51 -2.84] | 0.24 | -4.1 | [-4.41 -3.66] | 0.21 | -4.73 | [-5.03 -4.4] | 0.15 | -5.22 | [-5.51 -5.02] |

### M6.6 Between-events Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &tau; through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [6.4 6.8], and all distances. We throw out any events with only 1 recording, leaving us with 5 events and a total of 20 recordings. We then downsample our simulated data 100 times, and compute &tau; from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 238 fewer data points.*

| Period (s) | Full &tau; | Downsampled median &tau; | Downsampled &tau; std. dev. | Downsampled &tau; 68% conf range | Downsampled &tau; 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.2 | 0.19 | 0.03 | [0.16 0.23] | [0.15 0.25] |
| 1 | 0.2 | 0.19 | 0.06 | [0.13 0.26] | [0.08 0.28] |
| 2 | 0.23 | 0.27 | 0.1 | [0.09 0.33] | [0.03 0.34] |
| 3 | 0.2 | 0.22 | 0.05 | [0.14 0.25] | [0.11 0.27] |
| 4 | 0.18 | 0.19 | 0.04 | [0.14 0.22] | [0.05 0.24] |
| 5 | 0.24 | 0.22 | 0.06 | [0.17 0.28] | [0.11 0.32] |
| 7.5 | 0.21 | 0.21 | 0.04 | [0.17 0.25] | [0.13 0.29] |
| 10 | 0.15 | 0.14 | 0.04 | [0.1 0.19] | [0.08 0.2] |

This plot shows the distribution of period-independent downsampled &tau;.

| Period-Indep | ![Dowmsampled Histogram](resources/between_events_m6.6_downsampled_hist_period_indep.png) |
|-----|-----|
| 3s | ![Dowmsampled Histogram](resources/between_events_m6.6_downsampled_hist_3s.png) |

These plots show the dependence of &tau; to the number of events included and the number of recordings per event. The left plot holds the number of recordings per event fixed at the full set of simulated recordings (4), varying the number of events. The right plot holds the number of events fixed at the full set of simulated events (10), varying the number of recordings per event.

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
### Mag Event Term Scatters
*[(top)](#table-of-contents)*

|  | 3 s | 5 s | 7.5 s | 10 s |
|-----|-----|-----|-----|-----|
| **20 km** | *N/A* | *N/A* | *N/A* | *N/A* |
### Log10(Area) Event Term Scatters
*[(top)](#table-of-contents)*

|  | 3 s | 5 s | 7.5 s | 10 s |
|-----|-----|-----|-----|-----|
| **20 km** | *N/A* | *N/A* | *N/A* | *N/A* |
### Max Slip Event Term Scatters
*[(top)](#table-of-contents)*

|  | 3 s | 5 s | 7.5 s | 10 s |
|-----|-----|-----|-----|-----|
| **20 km** | ![plot](resources/event_term_scatter_max_slip_m6.6_20km_USC_3s.png) | ![plot](resources/event_term_scatter_max_slip_m6.6_20km_USC_5s.png) | ![plot](resources/event_term_scatter_max_slip_m6.6_20km_USC_7.5s.png) | ![plot](resources/event_term_scatter_max_slip_m6.6_20km_USC_10s.png) |
### Mean Slip Event Term Scatters
*[(top)](#table-of-contents)*

|  | 3 s | 5 s | 7.5 s | 10 s |
|-----|-----|-----|-----|-----|
| **20 km** | ![plot](resources/event_term_scatter_mean_slip_m6.6_20km_USC_3s.png) | ![plot](resources/event_term_scatter_mean_slip_m6.6_20km_USC_5s.png) | ![plot](resources/event_term_scatter_mean_slip_m6.6_20km_USC_7.5s.png) | ![plot](resources/event_term_scatter_mean_slip_m6.6_20km_USC_10s.png) |
### Slip Std Dev Event Term Scatters
*[(top)](#table-of-contents)*

|  | 3 s | 5 s | 7.5 s | 10 s |
|-----|-----|-----|-----|-----|
| **20 km** | ![plot](resources/event_term_scatter_slip_std_dev_m6.6_20km_USC_3s.png) | ![plot](resources/event_term_scatter_slip_std_dev_m6.6_20km_USC_5s.png) | ![plot](resources/event_term_scatter_slip_std_dev_m6.6_20km_USC_7.5s.png) | ![plot](resources/event_term_scatter_slip_std_dev_m6.6_20km_USC_10s.png) |
### Mid-Seismogenic Mean Slip Event Term Scatters
*[(top)](#table-of-contents)*

|  | 3 s | 5 s | 7.5 s | 10 s |
|-----|-----|-----|-----|-----|
| **20 km** | *N/A* | *N/A* | *N/A* | *N/A* |
## Directivity Comparisons
*[(top)](#table-of-contents)*

Directivity comparisons for individual ruptures can be found [here](resources/directivity_debug/README.md).

|  | 3 s | 5 s | 7.5 s | 10 s |
|-----|-----|-----|-----|-----|
| **20 km** | ![plot](resources/directivity_20km_3s.png) | ![plot](resources/directivity_20km_5s.png) | ![plot](resources/directivity_20km_7.5s.png) | ![plot](resources/directivity_20km_10s.png) |
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

| Scenario | 20.0 km |
|-----|-----|
| **M6.6 SS** | **FAIL** |

### BBP PartB, M6.6, Vertical Strike-Slip with Surface Rupture
*[(top)](#table-of-contents)*

| 20.0 km |
|-----|
| ![PartB Plot](resources/bbp_partB_m6p6_vert_ss_surface_20km.png) |

## CSV Files
*[(top)](#table-of-contents)*

| Magnitude | Distance | Site | CSV File |
|-----|-----|-----|-----|
| M6.6 | 20.0 km | USC | [sa_USC_m6.6_20.0km.csv.gz](resources/sa_USC_m6.6_20.0km.csv.gz) |

