# Bruce 2579 BBP/CB2014 GMPE Comparisons

**GMPE: Campbell & Bozorgnia (2014)**

Ruptures are binned by their moment magnitude (**Mw**) and the Joyner-Boore distance (**rJB**), the shortest horizontal distance from a site to the surface projection of the rupture surface

[Catalog Details](../#bruce-2579)

## Table Of Contents
* [Site Scatters/Z-Score Histograms](#site-scattersz-score-histograms)
  * [All Sites Aggregated](#all-sites-aggregated)
    * [All Sites, 6 < Mw < 6.5](#all-sites-6--mw--65)
    * [All Sites, 6.5 < Mw < 7](#all-sites-65--mw--7)
    * [All Sites, 7 < Mw < 7.5](#all-sites-7--mw--75)
    * [All Sites, 7.5 < Mw < 8](#all-sites-75--mw--8)
    * [All Sites, 8 < Mw < 8.5](#all-sites-8--mw--85)
    * [All Sites, All Ruptures, Z-Score Histograms](#all-sites-all-ruptures-z-score-histograms)
* [Hazard Curves](#hazard-curves)
* [GMPE Residuals](#gmpe-residuals)
  * [GMPE Magnitude Residuals](#gmpe-magnitude-residuals)
  * [GMPE rJB Residuals](#gmpe-rjb-residuals)
  * [GMPE rRup Residuals](#gmpe-rrup-residuals)
## Site Scatters/Z-Score Histograms
*[(top)](#table-of-contents)*

### All Sites Aggregated
*[(top)](#table-of-contents)*

**10 sites**

| Name | Location | # Ruptures | Vs30 (m/s) | Z1.0 (km) | Z2.5 (km) |
|-----|-----|-----|-----|-----|-----|
| USC | *34.0192, -118.286* | 21566 (21566 sims) | 863 | N/A | N/A |
| SBSM | *34.064987, -117.29201* | 24328 (24328 sims) | 863 | N/A | N/A |
| Los Angeles | *34.05, -118.25* | 21691 (21691 sims) | 863 | N/A | N/A |
| Riverside | *33.95, -117.4* | 24313 (24313 sims) | 863 | N/A | N/A |
| San Diego | *32.7, -117.15* | 23824 (23824 sims) | 863 | N/A | N/A |
| Santa Barbara | *34.45, -119.7* | 13181 (13181 sims) | 863 | N/A | N/A |
| Oakland | *37.8, -122.25* | 34130 (34130 sims) | 863 | N/A | N/A |
| Sacramento | *38.6, -121.5* | 27997 (27997 sims) | 863 | N/A | N/A |
| San Francisco | *37.75, -122.4* | 34159 (34159 sims) | 863 | N/A | N/A |
| San Jose | *37.35, -121.9* | 33699 (33699 sims) | 863 | N/A | N/A |

69724 ruptures within 200 km of *any* site
#### All Sites, 6 < Mw < 6.5
37510 Ruptures
##### All Sites, 6 < Mw < 6.5, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/RSQSim/BBP single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **1 s** | **2 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_0_10_1s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_0_10_2s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_0_10_5s_CB2014_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_10_20_1s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_10_20_2s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_10_20_5s_CB2014_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_20_40_1s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_20_40_2s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_20_40_5s_CB2014_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_40_80_1s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_40_80_2s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_40_80_5s_CB2014_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_80_160_1s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_80_160_2s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_80_160_5s_CB2014_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_160_200_1s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_160_200_2s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_160_200_5s_CB2014_scatter.png) |
##### All Sites, 6 < Mw < 6.5, Z-Score Histograms
*[(top)](#table-of-contents)*

These plots compare RSQSim/BBP to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*RSQSim/BBP*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim/BBP Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/All_Sites_mag_6_6.5_dist_0_10_CB2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_6_6.5_dist_10_20_CB2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_6_6.5_dist_20_40_CB2014_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/All_Sites_mag_6_6.5_dist_40_80_CB2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_6_6.5_dist_80_160_CB2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_6_6.5_dist_160_200_CB2014_std_norm.png) |
#### All Sites, 6.5 < Mw < 7
14374 Ruptures
##### All Sites, 6.5 < Mw < 7, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/RSQSim/BBP single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **1 s** | **2 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_0_10_1s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_0_10_2s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_0_10_5s_CB2014_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_10_20_1s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_10_20_2s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_10_20_5s_CB2014_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_20_40_1s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_20_40_2s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_20_40_5s_CB2014_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_40_80_1s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_40_80_2s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_40_80_5s_CB2014_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_80_160_1s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_80_160_2s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_80_160_5s_CB2014_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_160_200_1s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_160_200_2s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_160_200_5s_CB2014_scatter.png) |
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
| ![Standard Normal Plot](resources/All_Sites_mag_6.5_7_dist_0_10_CB2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_6.5_7_dist_10_20_CB2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_6.5_7_dist_20_40_CB2014_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/All_Sites_mag_6.5_7_dist_40_80_CB2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_6.5_7_dist_80_160_CB2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_6.5_7_dist_160_200_CB2014_std_norm.png) |
#### All Sites, 7 < Mw < 7.5
13573 Ruptures
##### All Sites, 7 < Mw < 7.5, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/RSQSim/BBP single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **1 s** | **2 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_0_10_1s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_0_10_2s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_0_10_5s_CB2014_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_10_20_1s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_10_20_2s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_10_20_5s_CB2014_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_20_40_1s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_20_40_2s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_20_40_5s_CB2014_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_40_80_1s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_40_80_2s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_40_80_5s_CB2014_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_80_160_1s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_80_160_2s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_80_160_5s_CB2014_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_160_200_1s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_160_200_2s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_160_200_5s_CB2014_scatter.png) |
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
| ![Standard Normal Plot](resources/All_Sites_mag_7_7.5_dist_0_10_CB2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7_7.5_dist_10_20_CB2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7_7.5_dist_20_40_CB2014_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/All_Sites_mag_7_7.5_dist_40_80_CB2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7_7.5_dist_80_160_CB2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7_7.5_dist_160_200_CB2014_std_norm.png) |
#### All Sites, 7.5 < Mw < 8
4243 Ruptures
##### All Sites, 7.5 < Mw < 8, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/RSQSim/BBP single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **1 s** | **2 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_0_10_1s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_0_10_2s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_0_10_5s_CB2014_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_10_20_1s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_10_20_2s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_10_20_5s_CB2014_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_20_40_1s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_20_40_2s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_20_40_5s_CB2014_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_40_80_1s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_40_80_2s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_40_80_5s_CB2014_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_80_160_1s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_80_160_2s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_80_160_5s_CB2014_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_160_200_1s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_160_200_2s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_160_200_5s_CB2014_scatter.png) |
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
| ![Standard Normal Plot](resources/All_Sites_mag_7.5_8_dist_0_10_CB2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7.5_8_dist_10_20_CB2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7.5_8_dist_20_40_CB2014_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/All_Sites_mag_7.5_8_dist_40_80_CB2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7.5_8_dist_80_160_CB2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7.5_8_dist_160_200_CB2014_std_norm.png) |
#### All Sites, 8 < Mw < 8.5
24 Ruptures
##### All Sites, 8 < Mw < 8.5, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/RSQSim/BBP single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **1 s** | **2 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_0_10_1s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_0_10_2s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_0_10_5s_CB2014_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_10_20_1s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_10_20_2s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_10_20_5s_CB2014_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_20_40_1s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_20_40_2s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_20_40_5s_CB2014_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_40_80_1s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_40_80_2s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_40_80_5s_CB2014_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_80_160_1s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_80_160_2s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_80_160_5s_CB2014_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_160_200_1s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_160_200_2s_CB2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_160_200_5s_CB2014_scatter.png) |
##### All Sites, 8 < Mw < 8.5, Z-Score Histograms
*[(top)](#table-of-contents)*

These plots compare RSQSim/BBP to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*RSQSim/BBP*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim/BBP Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/All_Sites_mag_8_8.5_dist_0_10_CB2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_8_8.5_dist_10_20_CB2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_8_8.5_dist_20_40_CB2014_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/All_Sites_mag_8_8.5_dist_40_80_CB2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_8_8.5_dist_80_160_CB2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_8_8.5_dist_160_200_CB2014_std_norm.png) |
#### All Sites, All Ruptures, Z-Score Histograms
*[(top)](#table-of-contents)*


z-score standard normal plots across all magnitudes/distances

**z-score**: (ln(*RSQSim/BBP*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim/BBP Mean

![Standard Normal Plot](resources/All_Sites_all_mags_all_dists_CB2014_std_norm.png)
## Hazard Curves
*[(top)](#table-of-contents)*

**Legend**:
* Black Solid Line: RSQSim/BBP
* Blue Solid Line: CB2014
* Blue Dashed Line: CB2014 3-sigma truncation
* Blue Dotted Line: CB2014 2-sigma truncation
* Blue Dotted and dashed Line: CB2014 1-sigma truncation
* Green Dashed Line: CB2014 mean values only
* Gray Dashed Lines: 1000 yr, 2500 yr, 10000 yr return periods

| Site | 1s | 2s | 5s |
|-----|-----|-----|-----|
| **USC** | ![Hazard Curve](resources/USC_curves_1.0s_CB2014.png) | ![Hazard Curve](resources/USC_curves_2.0s_CB2014.png) | ![Hazard Curve](resources/USC_curves_5.0s_CB2014.png) |
| **SBSM** | ![Hazard Curve](resources/SBSM_curves_1.0s_CB2014.png) | ![Hazard Curve](resources/SBSM_curves_2.0s_CB2014.png) | ![Hazard Curve](resources/SBSM_curves_5.0s_CB2014.png) |
| **Los Angeles** | ![Hazard Curve](resources/Los_Angeles_curves_1.0s_CB2014.png) | ![Hazard Curve](resources/Los_Angeles_curves_2.0s_CB2014.png) | ![Hazard Curve](resources/Los_Angeles_curves_5.0s_CB2014.png) |
| **Riverside** | ![Hazard Curve](resources/Riverside_curves_1.0s_CB2014.png) | ![Hazard Curve](resources/Riverside_curves_2.0s_CB2014.png) | ![Hazard Curve](resources/Riverside_curves_5.0s_CB2014.png) |
| **San Diego** | ![Hazard Curve](resources/San_Diego_curves_1.0s_CB2014.png) | ![Hazard Curve](resources/San_Diego_curves_2.0s_CB2014.png) | ![Hazard Curve](resources/San_Diego_curves_5.0s_CB2014.png) |
| **Santa Barbara** | ![Hazard Curve](resources/Santa_Barbara_curves_1.0s_CB2014.png) | ![Hazard Curve](resources/Santa_Barbara_curves_2.0s_CB2014.png) | ![Hazard Curve](resources/Santa_Barbara_curves_5.0s_CB2014.png) |
| **Oakland** | ![Hazard Curve](resources/Oakland_curves_1.0s_CB2014.png) | ![Hazard Curve](resources/Oakland_curves_2.0s_CB2014.png) | ![Hazard Curve](resources/Oakland_curves_5.0s_CB2014.png) |
| **Sacramento** | ![Hazard Curve](resources/Sacramento_curves_1.0s_CB2014.png) | ![Hazard Curve](resources/Sacramento_curves_2.0s_CB2014.png) | ![Hazard Curve](resources/Sacramento_curves_5.0s_CB2014.png) |
| **San Francisco** | ![Hazard Curve](resources/San_Francisco_curves_1.0s_CB2014.png) | ![Hazard Curve](resources/San_Francisco_curves_2.0s_CB2014.png) | ![Hazard Curve](resources/San_Francisco_curves_5.0s_CB2014.png) |
| **San Jose** | ![Hazard Curve](resources/San_Jose_curves_1.0s_CB2014.png) | ![Hazard Curve](resources/San_Jose_curves_2.0s_CB2014.png) | ![Hazard Curve](resources/San_Jose_curves_5.0s_CB2014.png) |
## GMPE Residuals
*[(top)](#table-of-contents)*

Residuals of simulation data (RSQSim/BBP) in log space relative to GMPE log-mean

**Legend**
* Linear Least-Squares Fit to Residuals
  * Black Thick Dashed: fit line
  * Black Thin Dashed: ± data sigma
  * Blue Thin Dashed: ± GMPE sigma
* Binned Linear Least-Squares Fit to Residuals
  * Black Thick Solid: fit lines for each bin
  * Black Thin Dotted: ± data sigma
  * Blue Thin Dotted: ± GMPE sigma

GMPE Residuals use the following values, averaged among all ruptures, for all paremeters which are not varied. All other parameters set to GMPE defaults

| Name | Average Value |
|-----|-----|
| Magnitude | 6.62 |
| rRup | 106.08 |
| rJB | 106.18 |
| Vs30 | 863 |
| Z10 | � |
| Z25 | � |

### GMPE Magnitude Residuals
*[(top)](#table-of-contents)*


| **1 s** | **2 s** | **5 s** |
|-----|-----|-----|
| ![Scatter](resources/gmpe_residuals_MAG_1s_scatter.png) | ![Scatter](resources/gmpe_residuals_MAG_2s_scatter.png) | ![Scatter](resources/gmpe_residuals_MAG_5s_scatter.png) |
| ![2-D Hist](resources/gmpe_residuals_MAG_1s_hist2d.png) | ![2-D Hist](resources/gmpe_residuals_MAG_2s_hist2d.png) | ![2-D Hist](resources/gmpe_residuals_MAG_5s_hist2d.png) |
### GMPE rJB Residuals
*[(top)](#table-of-contents)*


| **1 s** | **2 s** | **5 s** |
|-----|-----|-----|
| ![Scatter](resources/gmpe_residuals_DIST_JB_1s_scatter.png) | ![Scatter](resources/gmpe_residuals_DIST_JB_2s_scatter.png) | ![Scatter](resources/gmpe_residuals_DIST_JB_5s_scatter.png) |
| ![2-D Hist](resources/gmpe_residuals_DIST_JB_1s_hist2d.png) | ![2-D Hist](resources/gmpe_residuals_DIST_JB_2s_hist2d.png) | ![2-D Hist](resources/gmpe_residuals_DIST_JB_5s_hist2d.png) |
### GMPE rRup Residuals
*[(top)](#table-of-contents)*


| **1 s** | **2 s** | **5 s** |
|-----|-----|-----|
| ![Scatter](resources/gmpe_residuals_DIST_RUP_1s_scatter.png) | ![Scatter](resources/gmpe_residuals_DIST_RUP_2s_scatter.png) | ![Scatter](resources/gmpe_residuals_DIST_RUP_5s_scatter.png) |
| ![2-D Hist](resources/gmpe_residuals_DIST_RUP_1s_hist2d.png) | ![2-D Hist](resources/gmpe_residuals_DIST_RUP_2s_hist2d.png) | ![2-D Hist](resources/gmpe_residuals_DIST_RUP_5s_hist2d.png) |
