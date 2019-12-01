# Bruce 2740 Rotated Rupture Variability, M7.2 SS

This exercise uses translations and rotations to estimate ground motion variability from different sources. We begin by selecting a subset of similar ruptures which match a set of criteria (in this case, M7.2, Vertical Strike-Slip with Surface Rupture). Each rupture is then reoriented such that its strike (following the Aki & Richards 1980 convention) is 0 degrees (due North, dipping to the right for normal or reverse ruptures). For each site, ruptures are translated such that their scalar seismic moment centroid is directly North of the site, and their 3-dimensional distance (Rrup) is as specified (we consider 3 distance[s] here).

We then  perform various rotations. We rotate the rupture in place around its centroid, holding the site-to-source centroid path and Rrup constant (henceforth 'Rupture Strike'). We also rotate ruptures around the site, holding Rrup and source orientation relative to the site constant but sampling different various paths (henceforth 'Path'). We do this for each unique combination of Rupture Strike, Path, Distance, Site, and Rupture.

*NOTE: This page uses the SCEC BBP to simulate a 1-dimensional velocity structure. Thus we expect no path variability, and plots of path variabilitiy are included only as verification of the method.*

[RSQSim Catalog Details](../#bruce-2740)

## Table Of Contents
* [Rupture Rotation Parameters](#rupture-rotation-parameters)
* [M7.2 SS RSQSim Rupture Match Criteria](#m72-ss-rsqsim-rupture-match-criteria)
  * [Fault Section Counts](#fault-section-counts)
* [Sites](#sites)
* [Result Summary Table](#result-summary-table)
  * [GMPE Table](#gmpe-table)
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
  * [BBP PartB, M7.2, Vertical Strike-Slip with Surface Rupture](#bbp-partb-m72-vertical-strike-slip-with-surface-rupture)
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

## M7.2 SS RSQSim Rupture Match Criteria
*[(top)](#table-of-contents)*

We condisder 400 events in the catalog which match the following criteria:

* M=[7.15,7.25]
* Ztor=[0.0,1.0]
* Rake=[-180,-170] or [-10,10] or [170,180]
* Dip=90.0
* Linear rupture (max 5.0% deviation from ideal)

### Fault Section Counts
*[(top)](#table-of-contents)*

This tables gives a list of all fault sections which participate in the ruptures matching the above criteria. Many ruptures include multiple sections, so the sum of counts may be larger than the number of events.

| Section Name | Participation Count |
|-----|-----|
| Cerro Prieto | 129 |
| Garlock (West) | 65 |
| San Jacinto (Coyote Creek) | 35 |
| San Jacinto (Borrego) | 32 |
| San Andreas (Creeping Section) 2011 CFM | 31 |
| San Andreas (Parkfield) | 28 |
| San Andreas (Cholame) rev | 20 |
| Elsinore (Stepovers Combined) | 10 |
| Mendocino | 10 |
| Elsinore (Temecula) rev | 10 |
| San Jacinto (Clark) rev | 9 |
| Earthquake Valley (No  Extension) | 9 |
| San Juan | 9 |
| Earthquake Valley | 9 |
| Camp Rock 2011 | 8 |
| Calico-Hidalgo | 7 |
| Coronado Bank alt1 | 7 |
| Honey Lake 2011 CFM | 6 |
| Brawley (Seismic Zone) alt 1 | 6 |
| Death Valley (No) | 6 |
| White Mountains | 6 |
| Eaton Roughs 2011 CFM | 5 |
| San Andreas (Coachella) rev | 4 |
| Ash Hill | 4 |
| Earthquake Valley (So Extension) | 3 |
| San Diego Trough south | 3 |
| Gravel Hills-Harper Lk | 3 |
| Pisgah-Bullion Mtn-Mesquite Lk | 3 |
| Likely 2011 CFM | 3 |
| San Diego Trough north alt1 | 3 |
| Elsinore (Glen Ivy) rev | 3 |
| San Andreas (Offshore) 2011 CFM | 3 |
| Paradise | 2 |
| Emerson-Copper Mtn 2011 | 2 |
| Garlock (Central) | 2 |
| Rose Canyon | 2 |
| Blackwater | 2 |
| Palos Verdes | 2 |
| Blue Cut | 2 |
| San Gregorio (North) 2011 CFM | 1 |
| Death Valley (So) | 1 |
| Garlock (East) | 1 |
| Ortigalita (South) | 1 |
| Newport-Inglewood (Offshore) | 1 |
| Johnson Valley (No) 2011 rev | 1 |
| TOTAL # PARENTS | 509 |

Actual magnitude range: [7.1502576,7.249976], average: 7.2057986, stdDev: 0.028916491

## Sites

| Name | Location | Vs30 (m/s) | Z1.0 (km) | Z2.5 (km) |
|-----|-----|-----|-----|-----|
| USC | *34.0192, -118.286* | 500 | N/A | N/A |

## Result Summary Table

| Type | Notation | Distance | T-independent Std. Dev. | 3s Std. Dev. | 5s Std. Dev. | 7.5s Std. Dev. | 10s Std. Dev. |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Source-strike | &phi;<sub>s</sub> | 20 km | 0.53 | 0.6 | 0.53 | 0.44 | 0.4 |
| Source-strike | &phi;<sub>s</sub> | 50 km | 0.62 | 0.63 | 0.65 | 0.61 | 0.62 |
| Source-strike | &phi;<sub>s</sub> | 100 km | 0.6 | 0.58 | 0.66 | 0.69 | 0.65 |
| Source-strike | &phi;<sub>s</sub> | (all) | 0.59 | 0.61 | 0.61 | 0.59 | 0.57 |
| Within-event, single-site | &phi;<sub>SS</sub> | 20 km | 0.53 | 0.6 | 0.53 | 0.44 | 0.4 |
| Within-event, single-site | &phi;<sub>SS</sub> | 50 km | 0.62 | 0.63 | 0.65 | 0.61 | 0.62 |
| Within-event, single-site | &phi;<sub>SS</sub> | 100 km | 0.6 | 0.58 | 0.66 | 0.69 | 0.65 |
| Within-event, single-site | &phi;<sub>SS</sub> | (all) | 0.59 | 0.61 | 0.61 | 0.59 | 0.57 |
| Between-events | &tau; | 20 km | 0.2 | 0.19 | 0.21 | 0.24 | 0.24 |
| Between-events | &tau; | 50 km | 0.21 | 0.17 | 0.24 | 0.26 | 0.3 |
| Between-events | &tau; | 100 km | 0.2 | 0.15 | 0.23 | 0.29 | 0.33 |
| Between-events | &tau; | (all) | 0.2 | 0.17 | 0.23 | 0.26 | 0.29 |

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
| Between-events | &tau; | 20 km | 0.36 | 0.36 | 0.36 | 0.36 | 0.3 | 0.33 | 0.34 | 0.35 | 0.35 | 0.4 | 0.42 | 0.39 | 0.33 | 0.33 | 0.34 | 0.34 |
| Between-events | &tau; | 50 km | 0.36 | 0.36 | 0.36 | 0.36 | 0.3 | 0.33 | 0.34 | 0.35 | 0.35 | 0.4 | 0.42 | 0.39 | 0.33 | 0.33 | 0.34 | 0.34 |
| Between-events | &tau; | 100 km | 0.36 | 0.36 | 0.36 | 0.36 | 0.3 | 0.33 | 0.34 | 0.35 | 0.35 | 0.4 | 0.42 | 0.39 | 0.33 | 0.33 | 0.34 | 0.34 |

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

* Rupture *[400 unique]*
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
|  | 0.6 | 0.6 | 0.6 | [0.28 0.87] |  | 0.53 | 0.53 | 0.53 | [0.24 0.87] |  | 0.44 | 0.43 | 0.42 | [0.22 0.8] |  | 0.4 | 0.38 | 0.36 | [0.14 0.82] |

Here are plots of the histogram of &phi;<sub>s</sub> for each individual rupture, from which we compute a total &phi;<sub>s</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m7.2_20km_3s_hist.png) | ![5s](resources/source_strike_m7.2_20km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m7.2_20km_7.5s_hist.png) | ![10s](resources/source_strike_m7.2_20km_10s_hist.png) |

#### 20.0 km M7.2 Source-strike Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &phi;<sub>s</sub> through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [7.0 7.4], and distance within the range [10.0 30.0] km. We throw out any events with only 1 recording, leaving us with 4 events and a total of 49 recordings. We then downsample our simulated data 100 times, and compute &phi;<sub>s</sub> from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 2 fewer data points.*

| Period (s) | Full &phi;<sub>s</sub> | Downsampled median &phi;<sub>s</sub> | Downsampled &phi;<sub>s</sub> std. dev. | Downsampled &phi;<sub>s</sub> 68% conf range | Downsampled &phi;<sub>s</sub> 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.53 | 0.53 | 0.04 | [0.49 0.56] | [0.46 0.6] |
| 1 | 0.54 | 0.54 | 0.05 | [0.49 0.59] | [0.43 0.63] |
| 2 | 0.63 | 0.63 | 0.04 | [0.58 0.66] | [0.53 0.69] |
| 3 | 0.6 | 0.6 | 0.06 | [0.55 0.66] | [0.49 0.73] |
| 4 | 0.52 | 0.52 | 0.06 | [0.45 0.57] | [0.39 0.62] |
| 5 | 0.53 | 0.53 | 0.06 | [0.45 0.6] | [0.4 0.63] |
| 7.5 | 0.44 | 0.44 | 0.07 | [0.36 0.51] | [0.3 0.56] |
| 10 | 0.4 | 0.39 | 0.09 | [0.3 0.5] | [0.24 0.62] |

These plots show the distribution of period-independent downsampled &phi;<sub>s</sub> for each site.

| Period | **USC** |
|-----|-----|
| Period-Indep | ![Dowmsampled Histogram](resources/source_strike_m7.2_20km_USC_downsampled_hist_period_indep.png) |
| 3s | ![Dowmsampled Histogram](resources/source_strike_m7.2_20km_USC_downsampled_hist_3s.png) |


### 50.0 km M7.2 Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_m7.2_50km_std_dev.png)

| 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.63 | 0.63 | 0.63 | [0.33 0.87] |  | 0.65 | 0.64 | 0.64 | [0.35 0.96] |  | 0.61 | 0.61 | 0.61 | [0.33 0.9] |  | 0.62 | 0.62 | 0.61 | [0.34 0.95] |

Here are plots of the histogram of &phi;<sub>s</sub> for each individual rupture, from which we compute a total &phi;<sub>s</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m7.2_50km_3s_hist.png) | ![5s](resources/source_strike_m7.2_50km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m7.2_50km_7.5s_hist.png) | ![10s](resources/source_strike_m7.2_50km_10s_hist.png) |

#### 50.0 km M7.2 Source-strike Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &phi;<sub>s</sub> through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [7.0 7.4], and distance within the range [40.0 60.0] km. We throw out any events with only 1 recording, leaving us with 4 events and a total of 26 recordings. We then downsample our simulated data 100 times, and compute &phi;<sub>s</sub> from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

| Period (s) | Full &phi;<sub>s</sub> | Downsampled median &phi;<sub>s</sub> | Downsampled &phi;<sub>s</sub> std. dev. | Downsampled &phi;<sub>s</sub> 68% conf range | Downsampled &phi;<sub>s</sub> 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.62 | 0.59 | 0.05 | [0.55 0.64] | [0.5 0.7] |
| 1 | 0.52 | 0.52 | 0.06 | [0.45 0.57] | [0.42 0.65] |
| 2 | 0.64 | 0.63 | 0.07 | [0.56 0.71] | [0.48 0.77] |
| 3 | 0.63 | 0.6 | 0.08 | [0.55 0.68] | [0.44 0.79] |
| 4 | 0.63 | 0.61 | 0.08 | [0.53 0.69] | [0.44 0.78] |
| 5 | 0.65 | 0.61 | 0.08 | [0.55 0.71] | [0.5 0.77] |
| 7.5 | 0.61 | 0.6 | 0.08 | [0.52 0.67] | [0.43 0.72] |
| 10 | 0.62 | 0.6 | 0.07 | [0.52 0.66] | [0.46 0.77] |

These plots show the distribution of period-independent downsampled &phi;<sub>s</sub> for each site.

| Period | **USC** |
|-----|-----|
| Period-Indep | ![Dowmsampled Histogram](resources/source_strike_m7.2_50km_USC_downsampled_hist_period_indep.png) |
| 3s | ![Dowmsampled Histogram](resources/source_strike_m7.2_50km_USC_downsampled_hist_3s.png) |


### 100.0 km M7.2 Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_m7.2_100km_std_dev.png)

| 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.58 | 0.58 | 0.57 | [0.26 0.87] |  | 0.66 | 0.66 | 0.66 | [0.34 0.95] |  | 0.69 | 0.69 | 0.69 | [0.41 0.97] |  | 0.65 | 0.65 | 0.64 | [0.39 1] |

Here are plots of the histogram of &phi;<sub>s</sub> for each individual rupture, from which we compute a total &phi;<sub>s</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m7.2_100km_3s_hist.png) | ![5s](resources/source_strike_m7.2_100km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m7.2_100km_7.5s_hist.png) | ![10s](resources/source_strike_m7.2_100km_10s_hist.png) |

#### 100.0 km M7.2 Source-strike Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &phi;<sub>s</sub> through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [7.0 7.4], and distance within the range [80.0 120.0] km. We throw out any events with only 1 recording, leaving us with 3 events and a total of 41 recordings. We then downsample our simulated data 100 times, and compute &phi;<sub>s</sub> from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 20 fewer data points.*

| Period (s) | Full &phi;<sub>s</sub> | Downsampled median &phi;<sub>s</sub> | Downsampled &phi;<sub>s</sub> std. dev. | Downsampled &phi;<sub>s</sub> 68% conf range | Downsampled &phi;<sub>s</sub> 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.6 | 0.6 | 0.04 | [0.57 0.65] | [0.53 0.67] |
| 1 | 0.47 | 0.47 | 0.04 | [0.44 0.51] | [0.39 0.54] |
| 2 | 0.52 | 0.52 | 0.06 | [0.47 0.58] | [0.42 0.66] |
| 3 | 0.58 | 0.56 | 0.08 | [0.49 0.65] | [0.46 0.73] |
| 4 | 0.61 | 0.62 | 0.06 | [0.55 0.67] | [0.5 0.72] |
| 5 | 0.66 | 0.67 | 0.07 | [0.58 0.72] | [0.55 0.81] |
| 7.5 | 0.69 | 0.69 | 0.06 | [0.64 0.74] | [0.52 0.8] |
| 10 | 0.65 | 0.64 | 0.07 | [0.59 0.73] | [0.54 0.82] |

These plots show the distribution of period-independent downsampled &phi;<sub>s</sub> for each site.

| Period | **USC** |
|-----|-----|
| Period-Indep | ![Dowmsampled Histogram](resources/source_strike_m7.2_100km_USC_downsampled_hist_period_indep.png) |
| 3s | ![Dowmsampled Histogram](resources/source_strike_m7.2_100km_USC_downsampled_hist_3s.png) |


### All Distances M7.2 Source-strike Results
*[(top)](#table-of-contents)*

![Source-strike Variability](resources/source_strike_m7.2_std_dev.png)

| 3s &phi;<sub>s</sub> | Total | Mean | Median | Range | 5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>s</sub> | Total | Mean | Median | Range | 10s &phi;<sub>s</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.61 | 0.6 | 0.6 | [0.26 0.87] |  | 0.61 | 0.61 | 0.61 | [0.24 0.96] |  | 0.59 | 0.58 | 0.58 | [0.22 0.97] |  | 0.57 | 0.55 | 0.58 | [0.14 1] |

Here are plots of the histogram of &phi;<sub>s</sub> for each individual rupture, from which we compute a total &phi;<sub>s</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/source_strike_m7.2_3s_hist.png) | ![5s](resources/source_strike_m7.2_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/source_strike_m7.2_7.5s_hist.png) | ![10s](resources/source_strike_m7.2_10s_hist.png) |

#### All Distances M7.2 Source-strike Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &phi;<sub>s</sub> through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [7.0 7.4], and all distances. We throw out any events with only 1 recording, leaving us with 6 events and a total of 273 recordings. We then downsample our simulated data 100 times, and compute &phi;<sub>s</sub> from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 289 fewer data points.*

| Period (s) | Full &phi;<sub>s</sub> | Downsampled median &phi;<sub>s</sub> | Downsampled &phi;<sub>s</sub> std. dev. | Downsampled &phi;<sub>s</sub> 68% conf range | Downsampled &phi;<sub>s</sub> 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.59 | 0.59 | 0.01 | [0.57 0.6] | [0.56 0.61] |
| 1 | 0.51 | 0.51 | 0.02 | [0.5 0.53] | [0.47 0.55] |
| 2 | 0.61 | 0.61 | 0.02 | [0.59 0.63] | [0.57 0.65] |
| 3 | 0.61 | 0.61 | 0.02 | [0.58 0.63] | [0.55 0.66] |
| 4 | 0.59 | 0.59 | 0.03 | [0.56 0.62] | [0.54 0.65] |
| 5 | 0.61 | 0.62 | 0.03 | [0.59 0.65] | [0.56 0.67] |
| 7.5 | 0.59 | 0.59 | 0.03 | [0.56 0.62] | [0.53 0.64] |
| 10 | 0.57 | 0.57 | 0.03 | [0.54 0.6] | [0.51 0.63] |

These plots show the distribution of period-independent downsampled &phi;<sub>s</sub> for each site.

| Period | **USC** |
|-----|-----|
| Period-Indep | ![Dowmsampled Histogram](resources/source_strike_m7.2_USC_downsampled_hist_period_indep.png) |
| 3s | ![Dowmsampled Histogram](resources/source_strike_m7.2_USC_downsampled_hist_3s.png) |


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


### 20.0 km M7.2 Within-event, single-site Results
*[(top)](#table-of-contents)*

![Within-event, single-site Variability](resources/within_event_ss_m7.2_20km_std_dev.png)

| 3s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 10s &phi;<sub>SS</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.6 | 0.6 | 0.6 | [0.28 0.87] |  | 0.53 | 0.53 | 0.53 | [0.24 0.87] |  | 0.44 | 0.43 | 0.42 | [0.22 0.8] |  | 0.4 | 0.38 | 0.36 | [0.14 0.82] |

Here are plots of the histogram of &phi;<sub>SS</sub> for each individual rupture, from which we compute a total &phi;<sub>SS</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_ss_m7.2_20km_3s_hist.png) | ![5s](resources/within_event_ss_m7.2_20km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_ss_m7.2_20km_7.5s_hist.png) | ![10s](resources/within_event_ss_m7.2_20km_10s_hist.png) |

#### 20.0 km M7.2 Within-event, single-site Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &phi;<sub>SS</sub> through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [7.0 7.4], and distance within the range [10.0 30.0] km. We throw out any events with only 1 recording, leaving us with 4 events and a total of 49 recordings. We then downsample our simulated data 100 times, and compute &phi;<sub>SS</sub> from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 2 fewer data points.*

| Period (s) | Full &phi;<sub>SS</sub> | Downsampled median &phi;<sub>SS</sub> | Downsampled &phi;<sub>SS</sub> std. dev. | Downsampled &phi;<sub>SS</sub> 68% conf range | Downsampled &phi;<sub>SS</sub> 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.53 | 0.53 | 0.03 | [0.5 0.56] | [0.46 0.59] |
| 1 | 0.54 | 0.53 | 0.04 | [0.49 0.57] | [0.45 0.6] |
| 2 | 0.63 | 0.62 | 0.05 | [0.57 0.67] | [0.51 0.73] |
| 3 | 0.6 | 0.61 | 0.06 | [0.54 0.66] | [0.48 0.73] |
| 4 | 0.52 | 0.53 | 0.05 | [0.48 0.58] | [0.43 0.65] |
| 5 | 0.53 | 0.53 | 0.06 | [0.48 0.59] | [0.4 0.66] |
| 7.5 | 0.44 | 0.44 | 0.07 | [0.37 0.51] | [0.31 0.56] |
| 10 | 0.4 | 0.38 | 0.08 | [0.31 0.47] | [0.25 0.61] |

These plots show the distribution of period-independent downsampled &phi;<sub>SS</sub> for each site.

| Period | **USC** |
|-----|-----|
| Period-Indep | ![Dowmsampled Histogram](resources/within_event_ss_m7.2_20km_USC_downsampled_hist_period_indep.png) |
| 3s | ![Dowmsampled Histogram](resources/within_event_ss_m7.2_20km_USC_downsampled_hist_3s.png) |

These plots show the dependence of &phi;<sub>SS</sub> to the number of events included and the number of recordings per event. The left plot holds the number of recordings per event fixed at the full set of simulated recordings (18), varying the number of events. The right plot holds the number of events fixed at the full set of simulated events (400), varying the number of recordings per event.

| Period | Event Count Dependence | Recordings/Event Dependence |
|-----|-----|-----|
| Period Indep. | ![num events dependence](resources/within_event_ss_event_count_dependence_20km_period_indep.png) | ![num recordings dependence](resources/within_event_ss_event_recordings_dependence_20km_period_indep.png) |
| 1s | ![num events dependence](resources/within_event_ss_event_count_dependence_20km_1s.png) | ![num recordings dependence](resources/within_event_ss_event_recordings_dependence_20km_1.png) |

This is a histogram of the number of recordings per event from ASK 2014 with M=[7.0,7.4]. The top plot shows the subset with distance in the range [10.0,30.0], and the bottom the whole distribution at all distances.

![Histogram](resources/within_event_ss_event_recordings_hist_20km.png)


### 50.0 km M7.2 Within-event, single-site Results
*[(top)](#table-of-contents)*

![Within-event, single-site Variability](resources/within_event_ss_m7.2_50km_std_dev.png)

| 3s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 10s &phi;<sub>SS</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.63 | 0.63 | 0.63 | [0.33 0.87] |  | 0.65 | 0.64 | 0.64 | [0.35 0.96] |  | 0.61 | 0.61 | 0.61 | [0.33 0.9] |  | 0.62 | 0.62 | 0.61 | [0.34 0.95] |

Here are plots of the histogram of &phi;<sub>SS</sub> for each individual rupture, from which we compute a total &phi;<sub>SS</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_ss_m7.2_50km_3s_hist.png) | ![5s](resources/within_event_ss_m7.2_50km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_ss_m7.2_50km_7.5s_hist.png) | ![10s](resources/within_event_ss_m7.2_50km_10s_hist.png) |

#### 50.0 km M7.2 Within-event, single-site Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &phi;<sub>SS</sub> through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [7.0 7.4], and distance within the range [40.0 60.0] km. We throw out any events with only 1 recording, leaving us with 4 events and a total of 26 recordings. We then downsample our simulated data 100 times, and compute &phi;<sub>SS</sub> from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

| Period (s) | Full &phi;<sub>SS</sub> | Downsampled median &phi;<sub>SS</sub> | Downsampled &phi;<sub>SS</sub> std. dev. | Downsampled &phi;<sub>SS</sub> 68% conf range | Downsampled &phi;<sub>SS</sub> 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.62 | 0.6 | 0.05 | [0.56 0.64] | [0.5 0.68] |
| 1 | 0.52 | 0.51 | 0.06 | [0.45 0.57] | [0.39 0.64] |
| 2 | 0.64 | 0.64 | 0.07 | [0.57 0.71] | [0.49 0.76] |
| 3 | 0.63 | 0.62 | 0.08 | [0.55 0.69] | [0.43 0.78] |
| 4 | 0.63 | 0.62 | 0.07 | [0.54 0.68] | [0.46 0.78] |
| 5 | 0.65 | 0.62 | 0.08 | [0.55 0.7] | [0.45 0.76] |
| 7.5 | 0.61 | 0.58 | 0.08 | [0.5 0.65] | [0.44 0.77] |
| 10 | 0.62 | 0.58 | 0.07 | [0.5 0.66] | [0.45 0.74] |

These plots show the distribution of period-independent downsampled &phi;<sub>SS</sub> for each site.

| Period | **USC** |
|-----|-----|
| Period-Indep | ![Dowmsampled Histogram](resources/within_event_ss_m7.2_50km_USC_downsampled_hist_period_indep.png) |
| 3s | ![Dowmsampled Histogram](resources/within_event_ss_m7.2_50km_USC_downsampled_hist_3s.png) |

These plots show the dependence of &phi;<sub>SS</sub> to the number of events included and the number of recordings per event. The left plot holds the number of recordings per event fixed at the full set of simulated recordings (18), varying the number of events. The right plot holds the number of events fixed at the full set of simulated events (400), varying the number of recordings per event.

| Period | Event Count Dependence | Recordings/Event Dependence |
|-----|-----|-----|
| Period Indep. | ![num events dependence](resources/within_event_ss_event_count_dependence_50km_period_indep.png) | ![num recordings dependence](resources/within_event_ss_event_recordings_dependence_50km_period_indep.png) |
| 1s | ![num events dependence](resources/within_event_ss_event_count_dependence_50km_1s.png) | ![num recordings dependence](resources/within_event_ss_event_recordings_dependence_50km_1.png) |

This is a histogram of the number of recordings per event from ASK 2014 with M=[7.0,7.4]. The top plot shows the subset with distance in the range [40.0,60.0], and the bottom the whole distribution at all distances.

![Histogram](resources/within_event_ss_event_recordings_hist_50km.png)


### 100.0 km M7.2 Within-event, single-site Results
*[(top)](#table-of-contents)*

![Within-event, single-site Variability](resources/within_event_ss_m7.2_100km_std_dev.png)

| 3s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 10s &phi;<sub>SS</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.58 | 0.58 | 0.57 | [0.26 0.87] |  | 0.66 | 0.66 | 0.66 | [0.34 0.95] |  | 0.69 | 0.69 | 0.69 | [0.41 0.97] |  | 0.65 | 0.65 | 0.64 | [0.39 1] |

Here are plots of the histogram of &phi;<sub>SS</sub> for each individual rupture, from which we compute a total &phi;<sub>SS</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_ss_m7.2_100km_3s_hist.png) | ![5s](resources/within_event_ss_m7.2_100km_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_ss_m7.2_100km_7.5s_hist.png) | ![10s](resources/within_event_ss_m7.2_100km_10s_hist.png) |

#### 100.0 km M7.2 Within-event, single-site Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &phi;<sub>SS</sub> through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [7.0 7.4], and distance within the range [80.0 120.0] km. We throw out any events with only 1 recording, leaving us with 3 events and a total of 41 recordings. We then downsample our simulated data 100 times, and compute &phi;<sub>SS</sub> from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 20 fewer data points.*

| Period (s) | Full &phi;<sub>SS</sub> | Downsampled median &phi;<sub>SS</sub> | Downsampled &phi;<sub>SS</sub> std. dev. | Downsampled &phi;<sub>SS</sub> 68% conf range | Downsampled &phi;<sub>SS</sub> 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.6 | 0.6 | 0.03 | [0.56 0.63] | [0.53 0.67] |
| 1 | 0.47 | 0.47 | 0.04 | [0.43 0.5] | [0.38 0.57] |
| 2 | 0.52 | 0.51 | 0.05 | [0.47 0.57] | [0.44 0.63] |
| 3 | 0.58 | 0.58 | 0.08 | [0.5 0.67] | [0.45 0.73] |
| 4 | 0.61 | 0.61 | 0.06 | [0.54 0.66] | [0.49 0.75] |
| 5 | 0.66 | 0.64 | 0.07 | [0.59 0.72] | [0.49 0.8] |
| 7.5 | 0.69 | 0.68 | 0.07 | [0.6 0.75] | [0.55 0.83] |
| 10 | 0.65 | 0.64 | 0.07 | [0.57 0.72] | [0.51 0.8] |

These plots show the distribution of period-independent downsampled &phi;<sub>SS</sub> for each site.

| Period | **USC** |
|-----|-----|
| Period-Indep | ![Dowmsampled Histogram](resources/within_event_ss_m7.2_100km_USC_downsampled_hist_period_indep.png) |
| 3s | ![Dowmsampled Histogram](resources/within_event_ss_m7.2_100km_USC_downsampled_hist_3s.png) |

These plots show the dependence of &phi;<sub>SS</sub> to the number of events included and the number of recordings per event. The left plot holds the number of recordings per event fixed at the full set of simulated recordings (18), varying the number of events. The right plot holds the number of events fixed at the full set of simulated events (400), varying the number of recordings per event.

| Period | Event Count Dependence | Recordings/Event Dependence |
|-----|-----|-----|
| Period Indep. | ![num events dependence](resources/within_event_ss_event_count_dependence_100km_period_indep.png) | ![num recordings dependence](resources/within_event_ss_event_recordings_dependence_100km_period_indep.png) |
| 1s | ![num events dependence](resources/within_event_ss_event_count_dependence_100km_1s.png) | ![num recordings dependence](resources/within_event_ss_event_recordings_dependence_100km_1.png) |

This is a histogram of the number of recordings per event from ASK 2014 with M=[7.0,7.4]. The top plot shows the subset with distance in the range [80.0,120.0], and the bottom the whole distribution at all distances.

![Histogram](resources/within_event_ss_event_recordings_hist_100km.png)


### All Distances M7.2 Within-event, single-site Results
*[(top)](#table-of-contents)*

![Within-event, single-site Variability](resources/within_event_ss_m7.2_std_dev.png)

| 3s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 7.5s &phi;<sub>SS</sub> | Total | Mean | Median | Range | 10s &phi;<sub>SS</sub> | Total | Mean | Median | Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  | 0.61 | 0.6 | 0.6 | [0.26 0.87] |  | 0.61 | 0.61 | 0.61 | [0.24 0.96] |  | 0.59 | 0.58 | 0.58 | [0.22 0.97] |  | 0.57 | 0.55 | 0.58 | [0.14 1] |

Here are plots of the histogram of &phi;<sub>SS</sub> for each individual rupture, from which we compute a total &phi;<sub>SS</sub>

| 3s | 5s |
|-----|-----|
| ![3s](resources/within_event_ss_m7.2_3s_hist.png) | ![5s](resources/within_event_ss_m7.2_5s_hist.png) |
| 7.5s | 10s |
| ![7.5s](resources/within_event_ss_m7.2_7.5s_hist.png) | ![10s](resources/within_event_ss_m7.2_10s_hist.png) |

#### All Distances M7.2 Within-event, single-site Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &phi;<sub>SS</sub> through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [7.0 7.4], and all distances. We throw out any events with only 1 recording, leaving us with 6 events and a total of 273 recordings. We then downsample our simulated data 100 times, and compute &phi;<sub>SS</sub> from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 289 fewer data points.*

| Period (s) | Full &phi;<sub>SS</sub> | Downsampled median &phi;<sub>SS</sub> | Downsampled &phi;<sub>SS</sub> std. dev. | Downsampled &phi;<sub>SS</sub> 68% conf range | Downsampled &phi;<sub>SS</sub> 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.59 | 0.58 | 0.02 | [0.57 0.6] | [0.55 0.62] |
| 1 | 0.51 | 0.51 | 0.02 | [0.5 0.53] | [0.48 0.55] |
| 2 | 0.61 | 0.61 | 0.02 | [0.59 0.63] | [0.57 0.64] |
| 3 | 0.61 | 0.6 | 0.03 | [0.58 0.63] | [0.56 0.66] |
| 4 | 0.59 | 0.59 | 0.02 | [0.57 0.61] | [0.54 0.63] |
| 5 | 0.61 | 0.61 | 0.03 | [0.58 0.64] | [0.56 0.67] |
| 7.5 | 0.59 | 0.59 | 0.03 | [0.56 0.62] | [0.52 0.64] |
| 10 | 0.57 | 0.57 | 0.03 | [0.53 0.6] | [0.5 0.63] |

These plots show the distribution of period-independent downsampled &phi;<sub>SS</sub> for each site.

| Period | **USC** |
|-----|-----|
| Period-Indep | ![Dowmsampled Histogram](resources/within_event_ss_m7.2_USC_downsampled_hist_period_indep.png) |
| 3s | ![Dowmsampled Histogram](resources/within_event_ss_m7.2_USC_downsampled_hist_3s.png) |

These plots show the dependence of &phi;<sub>SS</sub> to the number of events included and the number of recordings per event. The left plot holds the number of recordings per event fixed at the full set of simulated recordings (18), varying the number of events. The right plot holds the number of events fixed at the full set of simulated events (400), varying the number of recordings per event.

| Period | Event Count Dependence | Recordings/Event Dependence |
|-----|-----|-----|
| Period Indep. | ![num events dependence](resources/within_event_ss_event_count_dependence_all_dists_period_indep.png) | ![num recordings dependence](resources/within_event_ss_event_recordings_dependence_all_dists_period_indep.png) |
| 1s | ![num events dependence](resources/within_event_ss_event_count_dependence_all_dists_1s.png) | ![num recordings dependence](resources/within_event_ss_event_recordings_dependence_all_dists_1.png) |

This is a histogram of the number of recordings per event from ASK 2014 with M=[7.0,7.4].

![Histogram](resources/within_event_ss_event_recordings_hist_all_dists.png)


## Between-events Variability
*[(top)](#table-of-contents)*

### Between-events Variability Methodology
*[(top)](#table-of-contents)*

Between-events variability, denoted &tau; in Al Atik (2010), is computed separately for each:

* Distance *[3 unique]*

We first compute the median natural-log ground motion, &delta;B<sub>e</sub>, for each combination of:

* Rupture *[400 unique]*

That median, &delta;B<sub>e</sub>, is computed across all 18 combinations of:

* Site *[1 unique]*
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
| 0.19 | -2.52 | [-3.03 -1.9] | 0.21 | -3.19 | [-3.82 -2.51] | 0.24 | -3.82 | [-4.49 -3.04] | 0.24 | -4.37 | [-5.06 -3.86] |

#### 20.0 km M7.2 Between-events Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &tau; through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [7.0 7.4], and distance within the range [10.0 30.0] km. We throw out any events with only 1 recording, leaving us with 4 events and a total of 49 recordings. We then downsample our simulated data 100 times, and compute &tau; from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 2 fewer data points.*

| Period (s) | Full &tau; | Downsampled median &tau; | Downsampled &tau; std. dev. | Downsampled &tau; 68% conf range | Downsampled &tau; 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.2 | 0.24 | 0.06 | [0.17 0.3] | [0.14 0.36] |
| 1 | 0.16 | 0.22 | 0.08 | [0.15 0.31] | [0.07 0.38] |
| 2 | 0.19 | 0.25 | 0.1 | [0.15 0.36] | [0.07 0.45] |
| 3 | 0.19 | 0.24 | 0.11 | [0.13 0.36] | [0.06 0.48] |
| 4 | 0.18 | 0.21 | 0.09 | [0.12 0.3] | [0.06 0.42] |
| 5 | 0.21 | 0.22 | 0.08 | [0.16 0.32] | [0.11 0.4] |
| 7.5 | 0.24 | 0.22 | 0.11 | [0.13 0.33] | [0.06 0.54] |
| 10 | 0.24 | 0.24 | 0.1 | [0.14 0.34] | [0.06 0.44] |

This plot shows the distribution of period-independent downsampled &tau;.

| Period-Indep | ![Dowmsampled Histogram](resources/between_events_m7.2_20km_downsampled_hist_period_indep.png) |
|-----|-----|
| 3s | ![Dowmsampled Histogram](resources/between_events_m7.2_20km_downsampled_hist_3s.png) |

These plots show the dependence of &tau; to the number of events included and the number of recordings per event. The left plot holds the number of recordings per event fixed at the full set of simulated recordings (18), varying the number of events. The right plot holds the number of events fixed at the full set of simulated events (400), varying the number of recordings per event.

| Period | Event Count Dependence | Recordings/Event Dependence |
|-----|-----|-----|
| Period Indep. | ![num events dependence](resources/between_events_event_count_dependence_20km_period_indep.png) | ![num recordings dependence](resources/between_events_event_recordings_dependence_20km_period_indep.png) |
| 1s | ![num events dependence](resources/between_events_event_count_dependence_20km_1s.png) | ![num recordings dependence](resources/between_events_event_recordings_dependence_20km_1.png) |

This is a histogram of the number of recordings per event from ASK 2014 with M=[7.0,7.4]. The top plot shows the subset with distance in the range [10.0,30.0], and the bottom the whole distribution at all distances.

![Histogram](resources/between_events_event_recordings_hist_20km.png)


### 50.0 km M7.2 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m7.2_50km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.17 | -3.58 | [-4.05 -3.16] | 0.24 | -3.99 | [-4.69 -3.38] | 0.26 | -4.48 | [-5.18 -3.86] | 0.3 | -4.97 | [-5.79 -4.18] |

#### 50.0 km M7.2 Between-events Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &tau; through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [7.0 7.4], and distance within the range [40.0 60.0] km. We throw out any events with only 1 recording, leaving us with 4 events and a total of 26 recordings. We then downsample our simulated data 100 times, and compute &tau; from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

| Period (s) | Full &tau; | Downsampled median &tau; | Downsampled &tau; std. dev. | Downsampled &tau; 68% conf range | Downsampled &tau; 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.21 | 0.32 | 0.09 | [0.25 0.43] | [0.16 0.51] |
| 1 | 0.13 | 0.25 | 0.11 | [0.14 0.38] | [0.06 0.5] |
| 2 | 0.15 | 0.33 | 0.15 | [0.19 0.5] | [0.07 0.68] |
| 3 | 0.17 | 0.33 | 0.12 | [0.2 0.45] | [0.09 0.59] |
| 4 | 0.2 | 0.32 | 0.14 | [0.17 0.47] | [0.06 0.61] |
| 5 | 0.24 | 0.37 | 0.14 | [0.18 0.5] | [0.07 0.63] |
| 7.5 | 0.26 | 0.33 | 0.16 | [0.19 0.48] | [0.06 0.74] |
| 10 | 0.3 | 0.33 | 0.16 | [0.19 0.5] | [0.08 0.72] |

This plot shows the distribution of period-independent downsampled &tau;.

| Period-Indep | ![Dowmsampled Histogram](resources/between_events_m7.2_50km_downsampled_hist_period_indep.png) |
|-----|-----|
| 3s | ![Dowmsampled Histogram](resources/between_events_m7.2_50km_downsampled_hist_3s.png) |

These plots show the dependence of &tau; to the number of events included and the number of recordings per event. The left plot holds the number of recordings per event fixed at the full set of simulated recordings (18), varying the number of events. The right plot holds the number of events fixed at the full set of simulated events (400), varying the number of recordings per event.

| Period | Event Count Dependence | Recordings/Event Dependence |
|-----|-----|-----|
| Period Indep. | ![num events dependence](resources/between_events_event_count_dependence_50km_period_indep.png) | ![num recordings dependence](resources/between_events_event_recordings_dependence_50km_period_indep.png) |
| 1s | ![num events dependence](resources/between_events_event_count_dependence_50km_1s.png) | ![num recordings dependence](resources/between_events_event_recordings_dependence_50km_1.png) |

This is a histogram of the number of recordings per event from ASK 2014 with M=[7.0,7.4]. The top plot shows the subset with distance in the range [40.0,60.0], and the bottom the whole distribution at all distances.

![Histogram](resources/between_events_event_recordings_hist_50km.png)


### 100.0 km M7.2 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m7.2_100km_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.15 | -4.26 | [-4.67 -3.79] | 0.23 | -4.68 | [-5.39 -4.08] | 0.29 | -5.05 | [-5.76 -4.38] | 0.33 | -5.47 | [-6.47 -4.73] |

#### 100.0 km M7.2 Between-events Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &tau; through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [7.0 7.4], and distance within the range [80.0 120.0] km. We throw out any events with only 1 recording, leaving us with 3 events and a total of 41 recordings. We then downsample our simulated data 100 times, and compute &tau; from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 20 fewer data points.*

| Period (s) | Full &tau; | Downsampled median &tau; | Downsampled &tau; std. dev. | Downsampled &tau; 68% conf range | Downsampled &tau; 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.2 | 0.22 | 0.07 | [0.16 0.31] | [0.12 0.4] |
| 1 | 0.12 | 0.16 | 0.1 | [0.06 0.27] | [0.02 0.38] |
| 2 | 0.14 | 0.16 | 0.09 | [0.07 0.25] | [0.04 0.42] |
| 3 | 0.15 | 0.18 | 0.11 | [0.09 0.29] | [0.03 0.49] |
| 4 | 0.18 | 0.2 | 0.12 | [0.07 0.33] | [0.03 0.48] |
| 5 | 0.23 | 0.25 | 0.14 | [0.1 0.4] | [0.03 0.53] |
| 7.5 | 0.29 | 0.3 | 0.16 | [0.14 0.49] | [0.05 0.69] |
| 10 | 0.33 | 0.33 | 0.17 | [0.16 0.52] | [0.08 0.78] |

This plot shows the distribution of period-independent downsampled &tau;.

| Period-Indep | ![Dowmsampled Histogram](resources/between_events_m7.2_100km_downsampled_hist_period_indep.png) |
|-----|-----|
| 3s | ![Dowmsampled Histogram](resources/between_events_m7.2_100km_downsampled_hist_3s.png) |

These plots show the dependence of &tau; to the number of events included and the number of recordings per event. The left plot holds the number of recordings per event fixed at the full set of simulated recordings (18), varying the number of events. The right plot holds the number of events fixed at the full set of simulated events (400), varying the number of recordings per event.

| Period | Event Count Dependence | Recordings/Event Dependence |
|-----|-----|-----|
| Period Indep. | ![num events dependence](resources/between_events_event_count_dependence_100km_period_indep.png) | ![num recordings dependence](resources/between_events_event_recordings_dependence_100km_period_indep.png) |
| 1s | ![num events dependence](resources/between_events_event_count_dependence_100km_1s.png) | ![num recordings dependence](resources/between_events_event_recordings_dependence_100km_1.png) |

This is a histogram of the number of recordings per event from ASK 2014 with M=[7.0,7.4]. The top plot shows the subset with distance in the range [80.0,120.0], and the bottom the whole distribution at all distances.

![Histogram](resources/between_events_event_recordings_hist_100km.png)


### All Distances M7.2 Between-events Results
*[(top)](#table-of-contents)*

![Between-events Variability](resources/between_events_m7.2_std_dev.png)

| 3s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 7.5s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range | 10s &tau; | Mean &delta;B<sub>e</sub> | &delta;B<sub>e</sub> Range |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0.17 | -3.45 | [-4.67 -1.9] | 0.23 | -3.95 | [-5.39 -2.51] | 0.26 | -4.45 | [-5.76 -3.04] | 0.29 | -4.94 | [-6.47 -3.86] |

#### All Distances M7.2 Between-events Downsampled Results
*[(top)](#table-of-contents)*

We compute uncertainties on &tau; through downsampling the rotational synthetic data to match the sample sizes used in the ASK 2014 regressions. We search the ASK dataset for ruptures with the same mechanism, magnitude in the range [7.0 7.4], and all distances. We throw out any events with only 1 recording, leaving us with 6 events and a total of 273 recordings. We then downsample our simulated data 100 times, and compute &tau; from each sample. The 95% confidence range from these samples is plotted as a shaded region above, and listed in the table below. Weighted standard deviations are calculated, weighted by the square-root of the number of recordings in each event.

*WARNING: Some real events had more recordings than we have rotations per event, so our dataset for this test is smaller. We are using 289 fewer data points.*

| Period (s) | Full &tau; | Downsampled median &tau; | Downsampled &tau; std. dev. | Downsampled &tau; 68% conf range | Downsampled &tau; 95% conf range |
|-----|-----|-----|-----|-----|-----|
| T-independent | 0.2 | 0.23 | 0.03 | [0.2 0.25] | [0.17 0.28] |
| 1 | 0.13 | 0.16 | 0.03 | [0.13 0.19] | [0.1 0.23] |
| 2 | 0.16 | 0.19 | 0.04 | [0.15 0.23] | [0.11 0.26] |
| 3 | 0.17 | 0.19 | 0.04 | [0.15 0.24] | [0.12 0.29] |
| 4 | 0.18 | 0.21 | 0.04 | [0.17 0.26] | [0.12 0.31] |
| 5 | 0.23 | 0.25 | 0.05 | [0.2 0.29] | [0.16 0.34] |
| 7.5 | 0.26 | 0.27 | 0.05 | [0.23 0.32] | [0.18 0.38] |
| 10 | 0.29 | 0.3 | 0.05 | [0.25 0.35] | [0.19 0.4] |

This plot shows the distribution of period-independent downsampled &tau;.

| Period-Indep | ![Dowmsampled Histogram](resources/between_events_m7.2_downsampled_hist_period_indep.png) |
|-----|-----|
| 3s | ![Dowmsampled Histogram](resources/between_events_m7.2_downsampled_hist_3s.png) |

These plots show the dependence of &tau; to the number of events included and the number of recordings per event. The left plot holds the number of recordings per event fixed at the full set of simulated recordings (18), varying the number of events. The right plot holds the number of events fixed at the full set of simulated events (400), varying the number of recordings per event.

| Period | Event Count Dependence | Recordings/Event Dependence |
|-----|-----|-----|
| Period Indep. | ![num events dependence](resources/between_events_event_count_dependence_all_dists_period_indep.png) | ![num recordings dependence](resources/between_events_event_recordings_dependence_all_dists_period_indep.png) |
| 1s | ![num events dependence](resources/between_events_event_count_dependence_all_dists_1s.png) | ![num recordings dependence](resources/between_events_event_recordings_dependence_all_dists_1.png) |

This is a histogram of the number of recordings per event from ASK 2014 with M=[7.0,7.4].

![Histogram](resources/between_events_event_recordings_hist_all_dists.png)


## Event Term Scatters
*[(top)](#table-of-contents)*

### Propagation Velocity Event Term Scatters
*[(top)](#table-of-contents)*

|  | 3 s | 5 s | 7.5 s | 10 s |
|-----|-----|-----|-----|-----|
| **20 km** | ![plot](resources/event_term_scatter_v_prop_m7.2_20km_USC_3s.png) | ![plot](resources/event_term_scatter_v_prop_m7.2_20km_USC_5s.png) | ![plot](resources/event_term_scatter_v_prop_m7.2_20km_USC_7.5s.png) | ![plot](resources/event_term_scatter_v_prop_m7.2_20km_USC_10s.png) |
| **50 km** | ![plot](resources/event_term_scatter_v_prop_m7.2_50km_USC_3s.png) | ![plot](resources/event_term_scatter_v_prop_m7.2_50km_USC_5s.png) | ![plot](resources/event_term_scatter_v_prop_m7.2_50km_USC_7.5s.png) | ![plot](resources/event_term_scatter_v_prop_m7.2_50km_USC_10s.png) |
| **100 km** | ![plot](resources/event_term_scatter_v_prop_m7.2_100km_USC_3s.png) | ![plot](resources/event_term_scatter_v_prop_m7.2_100km_USC_5s.png) | ![plot](resources/event_term_scatter_v_prop_m7.2_100km_USC_7.5s.png) | ![plot](resources/event_term_scatter_v_prop_m7.2_100km_USC_10s.png) |
### Mag Event Term Scatters
*[(top)](#table-of-contents)*

|  | 3 s | 5 s | 7.5 s | 10 s |
|-----|-----|-----|-----|-----|
| **20 km** | ![plot](resources/event_term_scatter_mag_m7.2_20km_USC_3s.png) | ![plot](resources/event_term_scatter_mag_m7.2_20km_USC_5s.png) | ![plot](resources/event_term_scatter_mag_m7.2_20km_USC_7.5s.png) | ![plot](resources/event_term_scatter_mag_m7.2_20km_USC_10s.png) |
| **50 km** | ![plot](resources/event_term_scatter_mag_m7.2_50km_USC_3s.png) | ![plot](resources/event_term_scatter_mag_m7.2_50km_USC_5s.png) | ![plot](resources/event_term_scatter_mag_m7.2_50km_USC_7.5s.png) | ![plot](resources/event_term_scatter_mag_m7.2_50km_USC_10s.png) |
| **100 km** | ![plot](resources/event_term_scatter_mag_m7.2_100km_USC_3s.png) | ![plot](resources/event_term_scatter_mag_m7.2_100km_USC_5s.png) | ![plot](resources/event_term_scatter_mag_m7.2_100km_USC_7.5s.png) | ![plot](resources/event_term_scatter_mag_m7.2_100km_USC_10s.png) |
### Log10(Area) Event Term Scatters
*[(top)](#table-of-contents)*

|  | 3 s | 5 s | 7.5 s | 10 s |
|-----|-----|-----|-----|-----|
| **20 km** | ![plot](resources/event_term_scatter_area_m7.2_20km_USC_3s.png) | ![plot](resources/event_term_scatter_area_m7.2_20km_USC_5s.png) | ![plot](resources/event_term_scatter_area_m7.2_20km_USC_7.5s.png) | ![plot](resources/event_term_scatter_area_m7.2_20km_USC_10s.png) |
| **50 km** | ![plot](resources/event_term_scatter_area_m7.2_50km_USC_3s.png) | ![plot](resources/event_term_scatter_area_m7.2_50km_USC_5s.png) | ![plot](resources/event_term_scatter_area_m7.2_50km_USC_7.5s.png) | ![plot](resources/event_term_scatter_area_m7.2_50km_USC_10s.png) |
| **100 km** | ![plot](resources/event_term_scatter_area_m7.2_100km_USC_3s.png) | ![plot](resources/event_term_scatter_area_m7.2_100km_USC_5s.png) | ![plot](resources/event_term_scatter_area_m7.2_100km_USC_7.5s.png) | ![plot](resources/event_term_scatter_area_m7.2_100km_USC_10s.png) |
### Max Slip Event Term Scatters
*[(top)](#table-of-contents)*

|  | 3 s | 5 s | 7.5 s | 10 s |
|-----|-----|-----|-----|-----|
| **20 km** | ![plot](resources/event_term_scatter_max_slip_m7.2_20km_USC_3s.png) | ![plot](resources/event_term_scatter_max_slip_m7.2_20km_USC_5s.png) | ![plot](resources/event_term_scatter_max_slip_m7.2_20km_USC_7.5s.png) | ![plot](resources/event_term_scatter_max_slip_m7.2_20km_USC_10s.png) |
| **50 km** | ![plot](resources/event_term_scatter_max_slip_m7.2_50km_USC_3s.png) | ![plot](resources/event_term_scatter_max_slip_m7.2_50km_USC_5s.png) | ![plot](resources/event_term_scatter_max_slip_m7.2_50km_USC_7.5s.png) | ![plot](resources/event_term_scatter_max_slip_m7.2_50km_USC_10s.png) |
| **100 km** | ![plot](resources/event_term_scatter_max_slip_m7.2_100km_USC_3s.png) | ![plot](resources/event_term_scatter_max_slip_m7.2_100km_USC_5s.png) | ![plot](resources/event_term_scatter_max_slip_m7.2_100km_USC_7.5s.png) | ![plot](resources/event_term_scatter_max_slip_m7.2_100km_USC_10s.png) |
### Mean Slip Event Term Scatters
*[(top)](#table-of-contents)*

|  | 3 s | 5 s | 7.5 s | 10 s |
|-----|-----|-----|-----|-----|
| **20 km** | ![plot](resources/event_term_scatter_mean_slip_m7.2_20km_USC_3s.png) | ![plot](resources/event_term_scatter_mean_slip_m7.2_20km_USC_5s.png) | ![plot](resources/event_term_scatter_mean_slip_m7.2_20km_USC_7.5s.png) | ![plot](resources/event_term_scatter_mean_slip_m7.2_20km_USC_10s.png) |
| **50 km** | ![plot](resources/event_term_scatter_mean_slip_m7.2_50km_USC_3s.png) | ![plot](resources/event_term_scatter_mean_slip_m7.2_50km_USC_5s.png) | ![plot](resources/event_term_scatter_mean_slip_m7.2_50km_USC_7.5s.png) | ![plot](resources/event_term_scatter_mean_slip_m7.2_50km_USC_10s.png) |
| **100 km** | ![plot](resources/event_term_scatter_mean_slip_m7.2_100km_USC_3s.png) | ![plot](resources/event_term_scatter_mean_slip_m7.2_100km_USC_5s.png) | ![plot](resources/event_term_scatter_mean_slip_m7.2_100km_USC_7.5s.png) | ![plot](resources/event_term_scatter_mean_slip_m7.2_100km_USC_10s.png) |
### Slip Std Dev Event Term Scatters
*[(top)](#table-of-contents)*

|  | 3 s | 5 s | 7.5 s | 10 s |
|-----|-----|-----|-----|-----|
| **20 km** | ![plot](resources/event_term_scatter_slip_std_dev_m7.2_20km_USC_3s.png) | ![plot](resources/event_term_scatter_slip_std_dev_m7.2_20km_USC_5s.png) | ![plot](resources/event_term_scatter_slip_std_dev_m7.2_20km_USC_7.5s.png) | ![plot](resources/event_term_scatter_slip_std_dev_m7.2_20km_USC_10s.png) |
| **50 km** | ![plot](resources/event_term_scatter_slip_std_dev_m7.2_50km_USC_3s.png) | ![plot](resources/event_term_scatter_slip_std_dev_m7.2_50km_USC_5s.png) | ![plot](resources/event_term_scatter_slip_std_dev_m7.2_50km_USC_7.5s.png) | ![plot](resources/event_term_scatter_slip_std_dev_m7.2_50km_USC_10s.png) |
| **100 km** | ![plot](resources/event_term_scatter_slip_std_dev_m7.2_100km_USC_3s.png) | ![plot](resources/event_term_scatter_slip_std_dev_m7.2_100km_USC_5s.png) | ![plot](resources/event_term_scatter_slip_std_dev_m7.2_100km_USC_7.5s.png) | ![plot](resources/event_term_scatter_slip_std_dev_m7.2_100km_USC_10s.png) |
### Mid-Seismogenic Mean Slip Event Term Scatters
*[(top)](#table-of-contents)*

|  | 3 s | 5 s | 7.5 s | 10 s |
|-----|-----|-----|-----|-----|
| **20 km** | ![plot](resources/event_term_scatter_mid_seis_mean_slip_m7.2_20km_USC_3s.png) | ![plot](resources/event_term_scatter_mid_seis_mean_slip_m7.2_20km_USC_5s.png) | ![plot](resources/event_term_scatter_mid_seis_mean_slip_m7.2_20km_USC_7.5s.png) | ![plot](resources/event_term_scatter_mid_seis_mean_slip_m7.2_20km_USC_10s.png) |
| **50 km** | ![plot](resources/event_term_scatter_mid_seis_mean_slip_m7.2_50km_USC_3s.png) | ![plot](resources/event_term_scatter_mid_seis_mean_slip_m7.2_50km_USC_5s.png) | ![plot](resources/event_term_scatter_mid_seis_mean_slip_m7.2_50km_USC_7.5s.png) | ![plot](resources/event_term_scatter_mid_seis_mean_slip_m7.2_50km_USC_10s.png) |
| **100 km** | ![plot](resources/event_term_scatter_mid_seis_mean_slip_m7.2_100km_USC_3s.png) | ![plot](resources/event_term_scatter_mid_seis_mean_slip_m7.2_100km_USC_5s.png) | ![plot](resources/event_term_scatter_mid_seis_mean_slip_m7.2_100km_USC_7.5s.png) | ![plot](resources/event_term_scatter_mid_seis_mean_slip_m7.2_100km_USC_10s.png) |
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
| **M7.2 SS** | *(FAIL)* | *(FAIL)* | *(FAIL)* |

### BBP PartB, M7.2, Vertical Strike-Slip with Surface Rupture
*[(top)](#table-of-contents)*

| 20.0 km | 50.0 km | 100.0 km |
|-----|-----|-----|
| ![PartB Plot](resources/bbp_partB_m7p2_vert_ss_surface_20km.png) | ![PartB Plot](resources/bbp_partB_m7p2_vert_ss_surface_50km.png) | ![PartB Plot](resources/bbp_partB_m7p2_vert_ss_surface_100km.png) |

## CSV Files
*[(top)](#table-of-contents)*

| Magnitude | Distance | Site | CSV File |
|-----|-----|-----|-----|
| M7.2 | 20.0 km | USC | [sa_USC_m7.2_20.0km.csv.gz](resources/sa_USC_m7.2_20.0km.csv.gz) |
| M7.2 | 50.0 km | USC | [sa_USC_m7.2_50.0km.csv.gz](resources/sa_USC_m7.2_50.0km.csv.gz) |
| M7.2 | 100.0 km | USC | [sa_USC_m7.2_100.0km.csv.gz](resources/sa_USC_m7.2_100.0km.csv.gz) |

