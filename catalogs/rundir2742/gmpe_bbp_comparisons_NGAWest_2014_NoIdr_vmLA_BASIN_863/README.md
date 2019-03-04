# Bruce 2742 BBP/NGAWest_2014_NoIdr GMPE Comparisons

**GMPE: NGAWest2 2014 Averaged No Idriss**

Ruptures are binned by their moment magnitude (**Mw**) and the Joyner-Boore distance (**rJB**), the shortest horizontal distance from a site to the surface projection of the rupture surface

[Catalog Details](../#bruce-2742)

## Table Of Contents
* [Site Scatters/Z-Score Histograms](#site-scattersz-score-histograms)
  * [All Sites Aggregated](#all-sites-aggregated)
    * [All Sites, 6.5 < Mw < 7](#all-sites-65--mw--7)
    * [All Sites, 7 < Mw < 7.5](#all-sites-7--mw--75)
    * [All Sites, 7.5 < Mw < 8](#all-sites-75--mw--8)
    * [All Sites, All Ruptures, Z-Score Histograms](#all-sites-all-ruptures-z-score-histograms)
  * [Site USC](#site-usc)
    * [USC, 6.5 < Mw < 7](#usc-65--mw--7)
    * [USC, 7 < Mw < 7.5](#usc-7--mw--75)
    * [USC, 7.5 < Mw < 8](#usc-75--mw--8)
    * [USC, All Ruptures, Z-Score Histograms](#usc-all-ruptures-z-score-histograms)
  * [Site SBSM](#site-sbsm)
    * [SBSM, 6.5 < Mw < 7](#sbsm-65--mw--7)
    * [SBSM, 7 < Mw < 7.5](#sbsm-7--mw--75)
    * [SBSM, 7.5 < Mw < 8](#sbsm-75--mw--8)
    * [SBSM, All Ruptures, Z-Score Histograms](#sbsm-all-ruptures-z-score-histograms)
* [Hazard Curves](#hazard-curves)
* [GMPE Residuals](#gmpe-residuals)
  * [Period-Dependent Residual Components](#period-dependent-residual-components)
  * [Detrended Period-Dependent Residual Components](#detrended-period-dependent-residual-components)
  * [GMPE Magnitude Residuals](#gmpe-magnitude-residuals)
  * [GMPE rJB Residuals](#gmpe-rjb-residuals)
  * [GMPE rRup Residuals](#gmpe-rrup-residuals)
  * [GMPE Occurrence Time Residuals](#gmpe-occurrence-time-residuals)
## Site Scatters/Z-Score Histograms
*[(top)](#table-of-contents)*

### All Sites Aggregated
*[(top)](#table-of-contents)*

**6 sites**

| Name | Location | # Ruptures | Vs30 (m/s) | Z1.0 (km) | Z2.5 (km) |
|-----|-----|-----|-----|-----|-----|
| USC | *34.0192, -118.286* | 5206 (5206 sims) | 863 | N/A | N/A |
| PAS | *34.148426, -118.17119* | 5332 (5332 sims) | 863 | N/A | N/A |
| SBSM | *34.064987, -117.29201* | 5714 (5714 sims) | 863 | N/A | N/A |
| WNGC | *34.041824, -118.0653* | 5246 (5246 sims) | 863 | N/A | N/A |
| STNI | *33.93088, -118.17881* | 5137 (5137 sims) | 863 | N/A | N/A |
| LAPD | *34.557, -118.125* | 5445 (5445 sims) | 863 | N/A | N/A |

6386 ruptures within 200 km of *any* site
#### All Sites, 6.5 < Mw < 7
3206 Ruptures
##### All Sites, 6.5 < Mw < 7, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/RSQSim/BBP single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **3 s** | **5 s** | **10 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_0_10_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_0_10_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_0_10_10s_NGAWest_2014_NoIdr_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_10_20_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_10_20_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_10_20_10s_NGAWest_2014_NoIdr_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_20_40_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_20_40_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_20_40_10s_NGAWest_2014_NoIdr_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_40_80_10s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_80_160_10s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_160_200_10s_NGAWest_2014_NoIdr_scatter.png) |
##### All Sites, 6.5 < Mw < 7, Z-Score Histograms
*[(top)](#table-of-contents)*

These plots compare RSQSim/BBP to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*RSQSim/BBP*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim/BBP Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/All_Sites_mag_6.5_7_dist_0_10_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_6.5_7_dist_10_20_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_6.5_7_dist_20_40_NGAWest_2014_NoIdr_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/All_Sites_mag_6.5_7_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_6.5_7_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_6.5_7_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
#### All Sites, 7 < Mw < 7.5
2291 Ruptures
##### All Sites, 7 < Mw < 7.5, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/RSQSim/BBP single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **3 s** | **5 s** | **10 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_0_10_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_0_10_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_0_10_10s_NGAWest_2014_NoIdr_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_10_20_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_10_20_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_10_20_10s_NGAWest_2014_NoIdr_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_20_40_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_20_40_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_20_40_10s_NGAWest_2014_NoIdr_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_40_80_10s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_80_160_10s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_160_200_10s_NGAWest_2014_NoIdr_scatter.png) |
##### All Sites, 7 < Mw < 7.5, Z-Score Histograms
*[(top)](#table-of-contents)*

These plots compare RSQSim/BBP to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*RSQSim/BBP*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim/BBP Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/All_Sites_mag_7_7.5_dist_0_10_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7_7.5_dist_10_20_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7_7.5_dist_20_40_NGAWest_2014_NoIdr_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/All_Sites_mag_7_7.5_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7_7.5_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7_7.5_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
#### All Sites, 7.5 < Mw < 8
889 Ruptures
##### All Sites, 7.5 < Mw < 8, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/RSQSim/BBP single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **3 s** | **5 s** | **10 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_0_10_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_0_10_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_0_10_10s_NGAWest_2014_NoIdr_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_10_20_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_10_20_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_10_20_10s_NGAWest_2014_NoIdr_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_20_40_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_20_40_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_20_40_10s_NGAWest_2014_NoIdr_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_40_80_10s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_80_160_10s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_160_200_10s_NGAWest_2014_NoIdr_scatter.png) |
##### All Sites, 7.5 < Mw < 8, Z-Score Histograms
*[(top)](#table-of-contents)*

These plots compare RSQSim/BBP to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*RSQSim/BBP*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim/BBP Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/All_Sites_mag_7.5_8_dist_0_10_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7.5_8_dist_10_20_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7.5_8_dist_20_40_NGAWest_2014_NoIdr_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/All_Sites_mag_7.5_8_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7.5_8_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7.5_8_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
#### All Sites, All Ruptures, Z-Score Histograms
*[(top)](#table-of-contents)*


z-score standard normal plots across all magnitudes/distances

**z-score**: (ln(*RSQSim/BBP*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim/BBP Mean

![Standard Normal Plot](resources/All_Sites_all_mags_all_dists_NGAWest_2014_NoIdr_std_norm.png)
### Site USC
*[(top)](#table-of-contents)*

*Location: 34.0192, -118.286*
5206 ruptures within 200.0 km
#### USC, 6.5 < Mw < 7
3206 Ruptures
##### USC, 6.5 < Mw < 7, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/RSQSim/BBP single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **3 s** | **5 s** | **10 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/USC_mag_6.5_7_dist_0_10_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_0_10_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_0_10_10s_NGAWest_2014_NoIdr_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/USC_mag_6.5_7_dist_10_20_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_10_20_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_10_20_10s_NGAWest_2014_NoIdr_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/USC_mag_6.5_7_dist_20_40_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_20_40_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_20_40_10s_NGAWest_2014_NoIdr_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/USC_mag_6.5_7_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_40_80_10s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/USC_mag_6.5_7_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_80_160_10s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/USC_mag_6.5_7_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_160_200_10s_NGAWest_2014_NoIdr_scatter.png) |
##### USC, 6.5 < Mw < 7, Z-Score Histograms
*[(top)](#table-of-contents)*

These plots compare RSQSim/BBP to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*RSQSim/BBP*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim/BBP Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/USC_mag_6.5_7_dist_0_10_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_6.5_7_dist_10_20_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_6.5_7_dist_20_40_NGAWest_2014_NoIdr_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/USC_mag_6.5_7_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_6.5_7_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_6.5_7_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
#### USC, 7 < Mw < 7.5
2291 Ruptures
##### USC, 7 < Mw < 7.5, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/RSQSim/BBP single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **3 s** | **5 s** | **10 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/USC_mag_7_7.5_dist_0_10_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7_7.5_dist_0_10_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7_7.5_dist_0_10_10s_NGAWest_2014_NoIdr_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/USC_mag_7_7.5_dist_10_20_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7_7.5_dist_10_20_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7_7.5_dist_10_20_10s_NGAWest_2014_NoIdr_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/USC_mag_7_7.5_dist_20_40_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7_7.5_dist_20_40_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7_7.5_dist_20_40_10s_NGAWest_2014_NoIdr_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/USC_mag_7_7.5_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7_7.5_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7_7.5_dist_40_80_10s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/USC_mag_7_7.5_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7_7.5_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7_7.5_dist_80_160_10s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/USC_mag_7_7.5_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7_7.5_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7_7.5_dist_160_200_10s_NGAWest_2014_NoIdr_scatter.png) |
##### USC, 7 < Mw < 7.5, Z-Score Histograms
*[(top)](#table-of-contents)*

These plots compare RSQSim/BBP to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*RSQSim/BBP*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim/BBP Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/USC_mag_7_7.5_dist_0_10_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_7_7.5_dist_10_20_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_7_7.5_dist_20_40_NGAWest_2014_NoIdr_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/USC_mag_7_7.5_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_7_7.5_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_7_7.5_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
#### USC, 7.5 < Mw < 8
889 Ruptures
##### USC, 7.5 < Mw < 8, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/RSQSim/BBP single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **3 s** | **5 s** | **10 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/USC_mag_7.5_8_dist_0_10_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7.5_8_dist_0_10_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7.5_8_dist_0_10_10s_NGAWest_2014_NoIdr_scatter.png) |
| **10 km < rJB < 20 km** | N/A | N/A | N/A |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/USC_mag_7.5_8_dist_20_40_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7.5_8_dist_20_40_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7.5_8_dist_20_40_10s_NGAWest_2014_NoIdr_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/USC_mag_7.5_8_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7.5_8_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7.5_8_dist_40_80_10s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/USC_mag_7.5_8_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7.5_8_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7.5_8_dist_80_160_10s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/USC_mag_7.5_8_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7.5_8_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7.5_8_dist_160_200_10s_NGAWest_2014_NoIdr_scatter.png) |
##### USC, 7.5 < Mw < 8, Z-Score Histograms
*[(top)](#table-of-contents)*

These plots compare RSQSim/BBP to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*RSQSim/BBP*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim/BBP Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/USC_mag_7.5_8_dist_0_10_NGAWest_2014_NoIdr_std_norm.png) | N/A | ![Standard Normal Plot](resources/USC_mag_7.5_8_dist_20_40_NGAWest_2014_NoIdr_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/USC_mag_7.5_8_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_7.5_8_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_7.5_8_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
#### USC, All Ruptures, Z-Score Histograms
*[(top)](#table-of-contents)*


z-score standard normal plots across all magnitudes/distances

**z-score**: (ln(*RSQSim/BBP*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim/BBP Mean

![Standard Normal Plot](resources/USC_all_mags_all_dists_NGAWest_2014_NoIdr_std_norm.png)
### Site SBSM
*[(top)](#table-of-contents)*

*Location: 34.064987, -117.29201*
5714 ruptures within 200.0 km
#### SBSM, 6.5 < Mw < 7
3206 Ruptures
##### SBSM, 6.5 < Mw < 7, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/RSQSim/BBP single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **3 s** | **5 s** | **10 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_0_10_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_0_10_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_0_10_10s_NGAWest_2014_NoIdr_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_10_20_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_10_20_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_10_20_10s_NGAWest_2014_NoIdr_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_20_40_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_20_40_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_20_40_10s_NGAWest_2014_NoIdr_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_40_80_10s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_80_160_10s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_160_200_10s_NGAWest_2014_NoIdr_scatter.png) |
##### SBSM, 6.5 < Mw < 7, Z-Score Histograms
*[(top)](#table-of-contents)*

These plots compare RSQSim/BBP to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*RSQSim/BBP*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim/BBP Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/SBSM_mag_6.5_7_dist_0_10_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_6.5_7_dist_10_20_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_6.5_7_dist_20_40_NGAWest_2014_NoIdr_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/SBSM_mag_6.5_7_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_6.5_7_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_6.5_7_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
#### SBSM, 7 < Mw < 7.5
2291 Ruptures
##### SBSM, 7 < Mw < 7.5, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/RSQSim/BBP single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **3 s** | **5 s** | **10 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_0_10_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_0_10_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_0_10_10s_NGAWest_2014_NoIdr_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_10_20_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_10_20_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_10_20_10s_NGAWest_2014_NoIdr_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_20_40_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_20_40_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_20_40_10s_NGAWest_2014_NoIdr_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_40_80_10s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_80_160_10s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_160_200_10s_NGAWest_2014_NoIdr_scatter.png) |
##### SBSM, 7 < Mw < 7.5, Z-Score Histograms
*[(top)](#table-of-contents)*

These plots compare RSQSim/BBP to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*RSQSim/BBP*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim/BBP Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/SBSM_mag_7_7.5_dist_0_10_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_7_7.5_dist_10_20_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_7_7.5_dist_20_40_NGAWest_2014_NoIdr_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/SBSM_mag_7_7.5_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_7_7.5_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_7_7.5_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
#### SBSM, 7.5 < Mw < 8
889 Ruptures
##### SBSM, 7.5 < Mw < 8, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/RSQSim/BBP single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **3 s** | **5 s** | **10 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_0_10_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_0_10_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_0_10_10s_NGAWest_2014_NoIdr_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_10_20_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_10_20_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_10_20_10s_NGAWest_2014_NoIdr_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_20_40_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_20_40_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_20_40_10s_NGAWest_2014_NoIdr_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_40_80_10s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_80_160_10s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_160_200_10s_NGAWest_2014_NoIdr_scatter.png) |
##### SBSM, 7.5 < Mw < 8, Z-Score Histograms
*[(top)](#table-of-contents)*

These plots compare RSQSim/BBP to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*RSQSim/BBP*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim/BBP Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/SBSM_mag_7.5_8_dist_0_10_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_7.5_8_dist_10_20_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_7.5_8_dist_20_40_NGAWest_2014_NoIdr_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/SBSM_mag_7.5_8_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_7.5_8_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_7.5_8_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
#### SBSM, All Ruptures, Z-Score Histograms
*[(top)](#table-of-contents)*


z-score standard normal plots across all magnitudes/distances

**z-score**: (ln(*RSQSim/BBP*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim/BBP Mean

![Standard Normal Plot](resources/SBSM_all_mags_all_dists_NGAWest_2014_NoIdr_std_norm.png)
## Hazard Curves
*[(top)](#table-of-contents)*

**Legend**:
* **Simulation Curves** *(truncated below lowest possible y-value)*
  * Black Solid Line: RSQSim/BBP
* **GMPE Curves**
  * Blue Solid Line: NGAWest_2014_NoIdr full curves
  * Blue Dashed Line: NGAWest_2014_NoIdr, 3-sigma truncation
  * Blue Dotted Line: NGAWest_2014_NoIdr, 2-sigma truncation
  * Blue Dotted and dashed Line: NGAWest_2014_NoIdr, 1-sigma truncation
  * Green Dashed Line: NGAWest_2014_NoIdr, Fixed sigma=0
* Gray Dashed Lines: 1000 yr, 2500 yr, 10000 yr return periods

| Site | 3s | 5s | 10s |
|-----|-----|-----|-----|
| **USC** | ![Hazard Curve](resources/USC_curves_3.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/USC_curves_5.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/USC_curves_10.0s_NGAWest_2014_NoIdr.png) |
| **PAS** | ![Hazard Curve](resources/PAS_curves_3.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/PAS_curves_5.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/PAS_curves_10.0s_NGAWest_2014_NoIdr.png) |
| **SBSM** | ![Hazard Curve](resources/SBSM_curves_3.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/SBSM_curves_5.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/SBSM_curves_10.0s_NGAWest_2014_NoIdr.png) |
| **WNGC** | ![Hazard Curve](resources/WNGC_curves_3.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/WNGC_curves_5.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/WNGC_curves_10.0s_NGAWest_2014_NoIdr.png) |
| **STNI** | ![Hazard Curve](resources/STNI_curves_3.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/STNI_curves_5.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/STNI_curves_10.0s_NGAWest_2014_NoIdr.png) |
| **LAPD** | ![Hazard Curve](resources/LAPD_curves_3.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/LAPD_curves_5.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/LAPD_curves_10.0s_NGAWest_2014_NoIdr.png) |
## GMPE Residuals
*[(top)](#table-of-contents)*

Residuals of simulation data (RSQSim/BBP) in log space relative to GMPE log-mean

**Legend**
* Black Thick Line: Linear Least-Squares Fit to Residuals
* Black Circles: Binned Linear Least-Squares Fit to Residuals
  * Black Thin Dashes: binned mean ± data sigma
  * Blue Thin Dotted: binned mean ± GMPE sigma

GMPE Residuals use the following values, averaged among all ruptures, for all paremeters which are not varied. All other parameters set to GMPE defaults

| Name | Average Value |
|-----|-----|
| Magnitude | 7.05 |
| rRup | 107.08 |
| rJB | 107.55 |
| Vs30 | 863 |
| Z10 | � |
| Z25 | � |
| Occurrence Time | 28829.06 |

### Period-Dependent Residual Components
*[(top)](#table-of-contents)*

**Note: These are not yet corrected for covariance. Currently only useful for comparing relative phi and tau, not absolute values**

![Residual Components](resources/period_residual_components.png)

### Detrended Period-Dependent Residual Components
*[(top)](#table-of-contents)*

**Note: These are not yet corrected for covariance. Currently only useful for comparing relative phi and tau, not absolute values**

Residuals shown here are first detrended according to the following magnitude & log-distance dependent average residuals

| **3s** | **5s** | **10s** |
|-----|-----|-----|
| ![Detrend XYZ](resources/detrend_residuals_3s.png) | ![Detrend XYZ](resources/detrend_residuals_5s.png) | ![Detrend XYZ](resources/detrend_residuals_10s.png) |

![Residual Components](resources/period_residual_detrend_components.png)

### GMPE Magnitude Residuals
*[(top)](#table-of-contents)*


| **3 s** | **5 s** | **10 s** |
|-----|-----|-----|
| ![Scatter](resources/gmpe_residuals_MAG_3s_scatter.png) | ![Scatter](resources/gmpe_residuals_MAG_5s_scatter.png) | ![Scatter](resources/gmpe_residuals_MAG_10s_scatter.png) |
| ![2-D Hist](resources/gmpe_residuals_MAG_3s_hist2d.png) | ![2-D Hist](resources/gmpe_residuals_MAG_5s_hist2d.png) | ![2-D Hist](resources/gmpe_residuals_MAG_10s_hist2d.png) |
### GMPE rJB Residuals
*[(top)](#table-of-contents)*


| **3 s** | **5 s** | **10 s** |
|-----|-----|-----|
| ![Scatter](resources/gmpe_residuals_DIST_JB_3s_scatter.png) | ![Scatter](resources/gmpe_residuals_DIST_JB_5s_scatter.png) | ![Scatter](resources/gmpe_residuals_DIST_JB_10s_scatter.png) |
| ![2-D Hist](resources/gmpe_residuals_DIST_JB_3s_hist2d.png) | ![2-D Hist](resources/gmpe_residuals_DIST_JB_5s_hist2d.png) | ![2-D Hist](resources/gmpe_residuals_DIST_JB_10s_hist2d.png) |
### GMPE rRup Residuals
*[(top)](#table-of-contents)*


| **3 s** | **5 s** | **10 s** |
|-----|-----|-----|
| ![Scatter](resources/gmpe_residuals_DIST_RUP_3s_scatter.png) | ![Scatter](resources/gmpe_residuals_DIST_RUP_5s_scatter.png) | ![Scatter](resources/gmpe_residuals_DIST_RUP_10s_scatter.png) |
| ![2-D Hist](resources/gmpe_residuals_DIST_RUP_3s_hist2d.png) | ![2-D Hist](resources/gmpe_residuals_DIST_RUP_5s_hist2d.png) | ![2-D Hist](resources/gmpe_residuals_DIST_RUP_10s_hist2d.png) |
### GMPE Occurrence Time Residuals
*[(top)](#table-of-contents)*


| **3 s** | **5 s** | **10 s** |
|-----|-----|-----|
| ![Scatter](resources/gmpe_residuals_OCCUR_TIME_3s_scatter.png) | ![Scatter](resources/gmpe_residuals_OCCUR_TIME_5s_scatter.png) | ![Scatter](resources/gmpe_residuals_OCCUR_TIME_10s_scatter.png) |
| ![2-D Hist](resources/gmpe_residuals_OCCUR_TIME_3s_hist2d.png) | ![2-D Hist](resources/gmpe_residuals_OCCUR_TIME_5s_hist2d.png) | ![2-D Hist](resources/gmpe_residuals_OCCUR_TIME_10s_hist2d.png) |
