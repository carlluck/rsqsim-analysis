# Bruce 2381 BBP/BSSA2014 GMPE Comparisons

**GMPE: Boore, Stewart, Seyhan & Atkinson (2014)**

Ruptures are binned by their moment magnitude (**Mw**) and the Joyner-Boore distance (**rJB**), the shortest horizontal distance from a site to the surface projection of the rupture surface

[Catalog Details](../#bruce-2381)

## Table Of Contents
* [All Sites Aggregated](#all-sites-aggregated)
  * [All Sites, 6 < Mw < 6.5](#all-sites-6--mw--65)
    * [All Sites, 6 < Mw < 6.5, Scatter Plots](#all-sites-6--mw--65-scatter-plots)
    * [All Sites, 6 < Mw < 6.5, Standard Normal Plots](#all-sites-6--mw--65-standard-normal-plots)
  * [All Sites, 6.5 < Mw < 7](#all-sites-65--mw--7)
    * [All Sites, 6.5 < Mw < 7, Scatter Plots](#all-sites-65--mw--7-scatter-plots)
    * [All Sites, 6.5 < Mw < 7, Standard Normal Plots](#all-sites-65--mw--7-standard-normal-plots)
  * [All Sites, 7 < Mw < 7.5](#all-sites-7--mw--75)
    * [All Sites, 7 < Mw < 7.5, Scatter Plots](#all-sites-7--mw--75-scatter-plots)
    * [All Sites, 7 < Mw < 7.5, Standard Normal Plots](#all-sites-7--mw--75-standard-normal-plots)
  * [All Sites, 7.5 < Mw < 8](#all-sites-75--mw--8)
    * [All Sites, 7.5 < Mw < 8, Scatter Plots](#all-sites-75--mw--8-scatter-plots)
    * [All Sites, 7.5 < Mw < 8, Standard Normal Plots](#all-sites-75--mw--8-standard-normal-plots)
  * [All Sites, 8 < Mw < 8.5](#all-sites-8--mw--85)
    * [All Sites, 8 < Mw < 8.5, Scatter Plots](#all-sites-8--mw--85-scatter-plots)
    * [All Sites, 8 < Mw < 8.5, Standard Normal Plots](#all-sites-8--mw--85-standard-normal-plots)
  * [All Sites, All Ruptures, Standard Normal Plots](#all-sites-all-ruptures-standard-normal-plots)
* [Site USC](#site-usc)
  * [USC, 6 < Mw < 6.5](#usc-6--mw--65)
    * [USC, 6 < Mw < 6.5, Scatter Plots](#usc-6--mw--65-scatter-plots)
    * [USC, 6 < Mw < 6.5, Standard Normal Plots](#usc-6--mw--65-standard-normal-plots)
  * [USC, 6.5 < Mw < 7](#usc-65--mw--7)
    * [USC, 6.5 < Mw < 7, Scatter Plots](#usc-65--mw--7-scatter-plots)
    * [USC, 6.5 < Mw < 7, Standard Normal Plots](#usc-65--mw--7-standard-normal-plots)
  * [USC, 7 < Mw < 7.5](#usc-7--mw--75)
    * [USC, 7 < Mw < 7.5, Scatter Plots](#usc-7--mw--75-scatter-plots)
    * [USC, 7 < Mw < 7.5, Standard Normal Plots](#usc-7--mw--75-standard-normal-plots)
  * [USC, 7.5 < Mw < 8](#usc-75--mw--8)
    * [USC, 7.5 < Mw < 8, Scatter Plots](#usc-75--mw--8-scatter-plots)
    * [USC, 7.5 < Mw < 8, Standard Normal Plots](#usc-75--mw--8-standard-normal-plots)
  * [USC, 8 < Mw < 8.5](#usc-8--mw--85)
    * [USC, 8 < Mw < 8.5, Scatter Plots](#usc-8--mw--85-scatter-plots)
    * [USC, 8 < Mw < 8.5, Standard Normal Plots](#usc-8--mw--85-standard-normal-plots)
  * [USC, All Ruptures, Standard Normal Plots](#usc-all-ruptures-standard-normal-plots)
* [Site SBSM](#site-sbsm)
  * [SBSM, 6 < Mw < 6.5](#sbsm-6--mw--65)
    * [SBSM, 6 < Mw < 6.5, Scatter Plots](#sbsm-6--mw--65-scatter-plots)
    * [SBSM, 6 < Mw < 6.5, Standard Normal Plots](#sbsm-6--mw--65-standard-normal-plots)
  * [SBSM, 6.5 < Mw < 7](#sbsm-65--mw--7)
    * [SBSM, 6.5 < Mw < 7, Scatter Plots](#sbsm-65--mw--7-scatter-plots)
    * [SBSM, 6.5 < Mw < 7, Standard Normal Plots](#sbsm-65--mw--7-standard-normal-plots)
  * [SBSM, 7 < Mw < 7.5](#sbsm-7--mw--75)
    * [SBSM, 7 < Mw < 7.5, Scatter Plots](#sbsm-7--mw--75-scatter-plots)
    * [SBSM, 7 < Mw < 7.5, Standard Normal Plots](#sbsm-7--mw--75-standard-normal-plots)
  * [SBSM, 7.5 < Mw < 8](#sbsm-75--mw--8)
    * [SBSM, 7.5 < Mw < 8, Scatter Plots](#sbsm-75--mw--8-scatter-plots)
    * [SBSM, 7.5 < Mw < 8, Standard Normal Plots](#sbsm-75--mw--8-standard-normal-plots)
  * [SBSM, 8 < Mw < 8.5](#sbsm-8--mw--85)
    * [SBSM, 8 < Mw < 8.5, Scatter Plots](#sbsm-8--mw--85-scatter-plots)
    * [SBSM, 8 < Mw < 8.5, Standard Normal Plots](#sbsm-8--mw--85-standard-normal-plots)
  * [SBSM, All Ruptures, Standard Normal Plots](#sbsm-all-ruptures-standard-normal-plots)
* [Hazard Curves](#hazard-curves)
## All Sites Aggregated
*[(top)](#table-of-contents)*

**10 sites**

| Name | Location | # Ruptures | Vs30 (m/s) | Z1.0 (km) | Z2.5 (km) |
|-----|-----|-----|-----|-----|-----|
| USC | *34.0192, -118.286* | 48654 (48654 sims) | 863 | N/A | N/A |
| SBSM | *34.064987, -117.29201* | 52081 (52081 sims) | 863 | N/A | N/A |
| Los Angeles | *34.05, -118.25* | 48935 (48935 sims) | 863 | N/A | N/A |
| Riverside | *33.95, -117.4* | 52396 (52396 sims) | 863 | N/A | N/A |
| San Diego | *32.7, -117.15* | 52525 (52525 sims) | 863 | N/A | N/A |
| Santa Barbara | *34.45, -119.7* | 28855 (28855 sims) | 863 | N/A | N/A |
| Oakland | *37.8, -122.25* | 75511 (75511 sims) | 863 | N/A | N/A |
| Sacramento | *38.6, -121.5* | 62955 (62955 sims) | 863 | N/A | N/A |
| San Francisco | *37.75, -122.4* | 75311 (75311 sims) | 863 | N/A | N/A |
| San Jose | *37.35, -121.9* | 75413 (75413 sims) | 863 | N/A | N/A |

154711 ruptures within 200 km of *any* site
### All Sites, 6 < Mw < 6.5
80150 Ruptures
#### All Sites, 6 < Mw < 6.5, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/RSQSim/BBP single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **1 s** | **2 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_0_10_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_0_10_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_0_10_5s_BSSA2014_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_10_20_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_10_20_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_10_20_5s_BSSA2014_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_20_40_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_20_40_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_20_40_5s_BSSA2014_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_40_80_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_40_80_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_40_80_5s_BSSA2014_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_80_160_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_80_160_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_80_160_5s_BSSA2014_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_160_200_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_160_200_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_160_200_5s_BSSA2014_scatter.png) |
#### All Sites, 6 < Mw < 6.5, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare RSQSim/BBP to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*RSQSim/BBP*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim/BBP Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/All_Sites_mag_6_6.5_dist_0_10_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_6_6.5_dist_10_20_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_6_6.5_dist_20_40_BSSA2014_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/All_Sites_mag_6_6.5_dist_40_80_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_6_6.5_dist_80_160_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_6_6.5_dist_160_200_BSSA2014_std_norm.png) |
### All Sites, 6.5 < Mw < 7
35436 Ruptures
#### All Sites, 6.5 < Mw < 7, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/RSQSim/BBP single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **1 s** | **2 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_0_10_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_0_10_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_0_10_5s_BSSA2014_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_10_20_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_10_20_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_10_20_5s_BSSA2014_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_20_40_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_20_40_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_20_40_5s_BSSA2014_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_40_80_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_40_80_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_40_80_5s_BSSA2014_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_80_160_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_80_160_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_80_160_5s_BSSA2014_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_160_200_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_160_200_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_160_200_5s_BSSA2014_scatter.png) |
#### All Sites, 6.5 < Mw < 7, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare RSQSim/BBP to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*RSQSim/BBP*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim/BBP Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/All_Sites_mag_6.5_7_dist_0_10_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_6.5_7_dist_10_20_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_6.5_7_dist_20_40_BSSA2014_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/All_Sites_mag_6.5_7_dist_40_80_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_6.5_7_dist_80_160_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_6.5_7_dist_160_200_BSSA2014_std_norm.png) |
### All Sites, 7 < Mw < 7.5
30023 Ruptures
#### All Sites, 7 < Mw < 7.5, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/RSQSim/BBP single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **1 s** | **2 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_0_10_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_0_10_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_0_10_5s_BSSA2014_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_10_20_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_10_20_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_10_20_5s_BSSA2014_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_20_40_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_20_40_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_20_40_5s_BSSA2014_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_40_80_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_40_80_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_40_80_5s_BSSA2014_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_80_160_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_80_160_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_80_160_5s_BSSA2014_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_160_200_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_160_200_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_160_200_5s_BSSA2014_scatter.png) |
#### All Sites, 7 < Mw < 7.5, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare RSQSim/BBP to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*RSQSim/BBP*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim/BBP Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/All_Sites_mag_7_7.5_dist_0_10_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7_7.5_dist_10_20_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7_7.5_dist_20_40_BSSA2014_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/All_Sites_mag_7_7.5_dist_40_80_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7_7.5_dist_80_160_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7_7.5_dist_160_200_BSSA2014_std_norm.png) |
### All Sites, 7.5 < Mw < 8
9101 Ruptures
#### All Sites, 7.5 < Mw < 8, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/RSQSim/BBP single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **1 s** | **2 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_0_10_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_0_10_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_0_10_5s_BSSA2014_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_10_20_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_10_20_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_10_20_5s_BSSA2014_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_20_40_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_20_40_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_20_40_5s_BSSA2014_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_40_80_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_40_80_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_40_80_5s_BSSA2014_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_80_160_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_80_160_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_80_160_5s_BSSA2014_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_160_200_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_160_200_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_160_200_5s_BSSA2014_scatter.png) |
#### All Sites, 7.5 < Mw < 8, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare RSQSim/BBP to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*RSQSim/BBP*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim/BBP Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/All_Sites_mag_7.5_8_dist_0_10_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7.5_8_dist_10_20_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7.5_8_dist_20_40_BSSA2014_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/All_Sites_mag_7.5_8_dist_40_80_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7.5_8_dist_80_160_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7.5_8_dist_160_200_BSSA2014_std_norm.png) |
### All Sites, 8 < Mw < 8.5
1 Ruptures
#### All Sites, 8 < Mw < 8.5, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/RSQSim/BBP single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **1 s** | **2 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | N/A | N/A | N/A |
| **10 km < rJB < 20 km** | N/A | N/A | N/A |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_20_40_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_20_40_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_20_40_5s_BSSA2014_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_40_80_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_40_80_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_40_80_5s_BSSA2014_scatter.png) |
| **80 km < rJB < 160 km** | N/A | N/A | N/A |
| **160 km < rJB < 200 km** | N/A | N/A | N/A |
#### All Sites, 8 < Mw < 8.5, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare RSQSim/BBP to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*RSQSim/BBP*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim/BBP Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| N/A | N/A | ![Standard Normal Plot](resources/All_Sites_mag_8_8.5_dist_20_40_BSSA2014_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/All_Sites_mag_8_8.5_dist_40_80_BSSA2014_std_norm.png) | N/A | N/A |
### All Sites, All Ruptures, Standard Normal Plots
*[(top)](#table-of-contents)*


z-score standard normal plots across all magnitudes/distances

**z-score**: (ln(*RSQSim/BBP*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim/BBP Mean

![Standard Normal Plot](resources/All_Sites_all_mags_all_dists_BSSA2014_std_norm.png)
## Site USC
*[(top)](#table-of-contents)*

*Location: 34.0192, -118.286*
48654 ruptures within 200.0 km
### USC, 6 < Mw < 6.5
80150 Ruptures
#### USC, 6 < Mw < 6.5, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/RSQSim/BBP single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **1 s** | **2 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/USC_mag_6_6.5_dist_0_10_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6_6.5_dist_0_10_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6_6.5_dist_0_10_5s_BSSA2014_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/USC_mag_6_6.5_dist_10_20_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6_6.5_dist_10_20_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6_6.5_dist_10_20_5s_BSSA2014_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/USC_mag_6_6.5_dist_20_40_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6_6.5_dist_20_40_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6_6.5_dist_20_40_5s_BSSA2014_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/USC_mag_6_6.5_dist_40_80_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6_6.5_dist_40_80_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6_6.5_dist_40_80_5s_BSSA2014_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/USC_mag_6_6.5_dist_80_160_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6_6.5_dist_80_160_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6_6.5_dist_80_160_5s_BSSA2014_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/USC_mag_6_6.5_dist_160_200_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6_6.5_dist_160_200_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6_6.5_dist_160_200_5s_BSSA2014_scatter.png) |
#### USC, 6 < Mw < 6.5, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare RSQSim/BBP to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*RSQSim/BBP*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim/BBP Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/USC_mag_6_6.5_dist_0_10_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_6_6.5_dist_10_20_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_6_6.5_dist_20_40_BSSA2014_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/USC_mag_6_6.5_dist_40_80_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_6_6.5_dist_80_160_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_6_6.5_dist_160_200_BSSA2014_std_norm.png) |
### USC, 6.5 < Mw < 7
35436 Ruptures
#### USC, 6.5 < Mw < 7, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/RSQSim/BBP single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **1 s** | **2 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/USC_mag_6.5_7_dist_0_10_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_0_10_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_0_10_5s_BSSA2014_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/USC_mag_6.5_7_dist_10_20_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_10_20_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_10_20_5s_BSSA2014_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/USC_mag_6.5_7_dist_20_40_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_20_40_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_20_40_5s_BSSA2014_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/USC_mag_6.5_7_dist_40_80_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_40_80_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_40_80_5s_BSSA2014_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/USC_mag_6.5_7_dist_80_160_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_80_160_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_80_160_5s_BSSA2014_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/USC_mag_6.5_7_dist_160_200_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_160_200_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_160_200_5s_BSSA2014_scatter.png) |
#### USC, 6.5 < Mw < 7, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare RSQSim/BBP to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*RSQSim/BBP*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim/BBP Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/USC_mag_6.5_7_dist_0_10_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_6.5_7_dist_10_20_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_6.5_7_dist_20_40_BSSA2014_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/USC_mag_6.5_7_dist_40_80_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_6.5_7_dist_80_160_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_6.5_7_dist_160_200_BSSA2014_std_norm.png) |
### USC, 7 < Mw < 7.5
30023 Ruptures
#### USC, 7 < Mw < 7.5, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/RSQSim/BBP single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **1 s** | **2 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/USC_mag_7_7.5_dist_0_10_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_7.5_dist_0_10_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_7.5_dist_0_10_5s_BSSA2014_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/USC_mag_7_7.5_dist_10_20_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_7.5_dist_10_20_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_7.5_dist_10_20_5s_BSSA2014_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/USC_mag_7_7.5_dist_20_40_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_7.5_dist_20_40_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_7.5_dist_20_40_5s_BSSA2014_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/USC_mag_7_7.5_dist_40_80_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_7.5_dist_40_80_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_7.5_dist_40_80_5s_BSSA2014_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/USC_mag_7_7.5_dist_80_160_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_7.5_dist_80_160_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_7.5_dist_80_160_5s_BSSA2014_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/USC_mag_7_7.5_dist_160_200_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_7.5_dist_160_200_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_7.5_dist_160_200_5s_BSSA2014_scatter.png) |
#### USC, 7 < Mw < 7.5, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare RSQSim/BBP to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*RSQSim/BBP*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim/BBP Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/USC_mag_7_7.5_dist_0_10_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_7_7.5_dist_10_20_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_7_7.5_dist_20_40_BSSA2014_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/USC_mag_7_7.5_dist_40_80_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_7_7.5_dist_80_160_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_7_7.5_dist_160_200_BSSA2014_std_norm.png) |
### USC, 7.5 < Mw < 8
9101 Ruptures
#### USC, 7.5 < Mw < 8, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/RSQSim/BBP single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **1 s** | **2 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/USC_mag_7.5_8_dist_0_10_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7.5_8_dist_0_10_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7.5_8_dist_0_10_5s_BSSA2014_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/USC_mag_7.5_8_dist_10_20_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7.5_8_dist_10_20_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7.5_8_dist_10_20_5s_BSSA2014_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/USC_mag_7.5_8_dist_20_40_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7.5_8_dist_20_40_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7.5_8_dist_20_40_5s_BSSA2014_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/USC_mag_7.5_8_dist_40_80_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7.5_8_dist_40_80_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7.5_8_dist_40_80_5s_BSSA2014_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/USC_mag_7.5_8_dist_80_160_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7.5_8_dist_80_160_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7.5_8_dist_80_160_5s_BSSA2014_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/USC_mag_7.5_8_dist_160_200_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7.5_8_dist_160_200_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7.5_8_dist_160_200_5s_BSSA2014_scatter.png) |
#### USC, 7.5 < Mw < 8, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare RSQSim/BBP to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*RSQSim/BBP*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim/BBP Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/USC_mag_7.5_8_dist_0_10_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_7.5_8_dist_10_20_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_7.5_8_dist_20_40_BSSA2014_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/USC_mag_7.5_8_dist_40_80_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_7.5_8_dist_80_160_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_7.5_8_dist_160_200_BSSA2014_std_norm.png) |
### USC, 8 < Mw < 8.5
1 Ruptures
#### USC, 8 < Mw < 8.5, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/RSQSim/BBP single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **1 s** | **2 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | N/A | N/A | N/A |
| **10 km < rJB < 20 km** | N/A | N/A | N/A |
| **20 km < rJB < 40 km** | N/A | N/A | N/A |
| **40 km < rJB < 80 km** | N/A | N/A | N/A |
| **80 km < rJB < 160 km** | N/A | N/A | N/A |
| **160 km < rJB < 200 km** | N/A | N/A | N/A |
#### USC, 8 < Mw < 8.5, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare RSQSim/BBP to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*RSQSim/BBP*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim/BBP Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| N/A | N/A | N/A |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| N/A | N/A | N/A |
### USC, All Ruptures, Standard Normal Plots
*[(top)](#table-of-contents)*


z-score standard normal plots across all magnitudes/distances

**z-score**: (ln(*RSQSim/BBP*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim/BBP Mean

![Standard Normal Plot](resources/USC_all_mags_all_dists_BSSA2014_std_norm.png)
## Site SBSM
*[(top)](#table-of-contents)*

*Location: 34.064987, -117.29201*
52081 ruptures within 200.0 km
### SBSM, 6 < Mw < 6.5
80150 Ruptures
#### SBSM, 6 < Mw < 6.5, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/RSQSim/BBP single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **1 s** | **2 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/SBSM_mag_6_6.5_dist_0_10_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6_6.5_dist_0_10_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6_6.5_dist_0_10_5s_BSSA2014_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/SBSM_mag_6_6.5_dist_10_20_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6_6.5_dist_10_20_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6_6.5_dist_10_20_5s_BSSA2014_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/SBSM_mag_6_6.5_dist_20_40_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6_6.5_dist_20_40_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6_6.5_dist_20_40_5s_BSSA2014_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/SBSM_mag_6_6.5_dist_40_80_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6_6.5_dist_40_80_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6_6.5_dist_40_80_5s_BSSA2014_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/SBSM_mag_6_6.5_dist_80_160_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6_6.5_dist_80_160_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6_6.5_dist_80_160_5s_BSSA2014_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/SBSM_mag_6_6.5_dist_160_200_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6_6.5_dist_160_200_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6_6.5_dist_160_200_5s_BSSA2014_scatter.png) |
#### SBSM, 6 < Mw < 6.5, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare RSQSim/BBP to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*RSQSim/BBP*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim/BBP Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/SBSM_mag_6_6.5_dist_0_10_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_6_6.5_dist_10_20_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_6_6.5_dist_20_40_BSSA2014_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/SBSM_mag_6_6.5_dist_40_80_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_6_6.5_dist_80_160_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_6_6.5_dist_160_200_BSSA2014_std_norm.png) |
### SBSM, 6.5 < Mw < 7
35436 Ruptures
#### SBSM, 6.5 < Mw < 7, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/RSQSim/BBP single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **1 s** | **2 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_0_10_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_0_10_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_0_10_5s_BSSA2014_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_10_20_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_10_20_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_10_20_5s_BSSA2014_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_20_40_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_20_40_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_20_40_5s_BSSA2014_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_40_80_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_40_80_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_40_80_5s_BSSA2014_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_80_160_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_80_160_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_80_160_5s_BSSA2014_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_160_200_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_160_200_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_160_200_5s_BSSA2014_scatter.png) |
#### SBSM, 6.5 < Mw < 7, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare RSQSim/BBP to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*RSQSim/BBP*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim/BBP Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/SBSM_mag_6.5_7_dist_0_10_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_6.5_7_dist_10_20_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_6.5_7_dist_20_40_BSSA2014_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/SBSM_mag_6.5_7_dist_40_80_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_6.5_7_dist_80_160_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_6.5_7_dist_160_200_BSSA2014_std_norm.png) |
### SBSM, 7 < Mw < 7.5
30023 Ruptures
#### SBSM, 7 < Mw < 7.5, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/RSQSim/BBP single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **1 s** | **2 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_0_10_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_0_10_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_0_10_5s_BSSA2014_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_10_20_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_10_20_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_10_20_5s_BSSA2014_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_20_40_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_20_40_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_20_40_5s_BSSA2014_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_40_80_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_40_80_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_40_80_5s_BSSA2014_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_80_160_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_80_160_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_80_160_5s_BSSA2014_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_160_200_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_160_200_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_160_200_5s_BSSA2014_scatter.png) |
#### SBSM, 7 < Mw < 7.5, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare RSQSim/BBP to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*RSQSim/BBP*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim/BBP Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/SBSM_mag_7_7.5_dist_0_10_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_7_7.5_dist_10_20_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_7_7.5_dist_20_40_BSSA2014_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/SBSM_mag_7_7.5_dist_40_80_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_7_7.5_dist_80_160_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_7_7.5_dist_160_200_BSSA2014_std_norm.png) |
### SBSM, 7.5 < Mw < 8
9101 Ruptures
#### SBSM, 7.5 < Mw < 8, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/RSQSim/BBP single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **1 s** | **2 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_0_10_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_0_10_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_0_10_5s_BSSA2014_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_10_20_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_10_20_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_10_20_5s_BSSA2014_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_20_40_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_20_40_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_20_40_5s_BSSA2014_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_40_80_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_40_80_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_40_80_5s_BSSA2014_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_80_160_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_80_160_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_80_160_5s_BSSA2014_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_160_200_1s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_160_200_2s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_160_200_5s_BSSA2014_scatter.png) |
#### SBSM, 7.5 < Mw < 8, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare RSQSim/BBP to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*RSQSim/BBP*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim/BBP Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/SBSM_mag_7.5_8_dist_0_10_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_7.5_8_dist_10_20_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_7.5_8_dist_20_40_BSSA2014_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/SBSM_mag_7.5_8_dist_40_80_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_7.5_8_dist_80_160_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_7.5_8_dist_160_200_BSSA2014_std_norm.png) |
### SBSM, 8 < Mw < 8.5
1 Ruptures
#### SBSM, 8 < Mw < 8.5, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/RSQSim/BBP single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **1 s** | **2 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | N/A | N/A | N/A |
| **10 km < rJB < 20 km** | N/A | N/A | N/A |
| **20 km < rJB < 40 km** | N/A | N/A | N/A |
| **40 km < rJB < 80 km** | N/A | N/A | N/A |
| **80 km < rJB < 160 km** | N/A | N/A | N/A |
| **160 km < rJB < 200 km** | N/A | N/A | N/A |
#### SBSM, 8 < Mw < 8.5, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare RSQSim/BBP to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*RSQSim/BBP*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim/BBP Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| N/A | N/A | N/A |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| N/A | N/A | N/A |
### SBSM, All Ruptures, Standard Normal Plots
*[(top)](#table-of-contents)*


z-score standard normal plots across all magnitudes/distances

**z-score**: (ln(*RSQSim/BBP*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim/BBP Mean

![Standard Normal Plot](resources/SBSM_all_mags_all_dists_BSSA2014_std_norm.png)
## Hazard Curves
*[(top)](#table-of-contents)*

**Legend**:
* Black Solid Line: RSQSim/BBP
* Blue Solid Line: BSSA2014
* Blue Dashed Line: BSSA2014 3-sigma truncation
* Blue Dotted Line: BSSA2014 2-sigma truncation
* Blue Dotted and dashed Line: BSSA2014 1-sigma truncation
* Green Dashed Line: BSSA2014 mean values only
* Gray Dashed Lines: 1000 yr, 2500 yr, 10000 yr return periods

| Site | 1s | 2s | 5s |
|-----|-----|-----|-----|
| **USC** | ![Hazard Curve](resources/USC_curves_1.0s_BSSA2014.png) | ![Hazard Curve](resources/USC_curves_2.0s_BSSA2014.png) | ![Hazard Curve](resources/USC_curves_5.0s_BSSA2014.png) |
| **SBSM** | ![Hazard Curve](resources/SBSM_curves_1.0s_BSSA2014.png) | ![Hazard Curve](resources/SBSM_curves_2.0s_BSSA2014.png) | ![Hazard Curve](resources/SBSM_curves_5.0s_BSSA2014.png) |
| **Los Angeles** | ![Hazard Curve](resources/Los_Angeles_curves_1.0s_BSSA2014.png) | ![Hazard Curve](resources/Los_Angeles_curves_2.0s_BSSA2014.png) | ![Hazard Curve](resources/Los_Angeles_curves_5.0s_BSSA2014.png) |
| **Riverside** | ![Hazard Curve](resources/Riverside_curves_1.0s_BSSA2014.png) | ![Hazard Curve](resources/Riverside_curves_2.0s_BSSA2014.png) | ![Hazard Curve](resources/Riverside_curves_5.0s_BSSA2014.png) |
| **San Diego** | ![Hazard Curve](resources/San_Diego_curves_1.0s_BSSA2014.png) | ![Hazard Curve](resources/San_Diego_curves_2.0s_BSSA2014.png) | ![Hazard Curve](resources/San_Diego_curves_5.0s_BSSA2014.png) |
| **Santa Barbara** | ![Hazard Curve](resources/Santa_Barbara_curves_1.0s_BSSA2014.png) | ![Hazard Curve](resources/Santa_Barbara_curves_2.0s_BSSA2014.png) | ![Hazard Curve](resources/Santa_Barbara_curves_5.0s_BSSA2014.png) |
| **Oakland** | ![Hazard Curve](resources/Oakland_curves_1.0s_BSSA2014.png) | ![Hazard Curve](resources/Oakland_curves_2.0s_BSSA2014.png) | ![Hazard Curve](resources/Oakland_curves_5.0s_BSSA2014.png) |
| **Sacramento** | ![Hazard Curve](resources/Sacramento_curves_1.0s_BSSA2014.png) | ![Hazard Curve](resources/Sacramento_curves_2.0s_BSSA2014.png) | ![Hazard Curve](resources/Sacramento_curves_5.0s_BSSA2014.png) |
| **San Francisco** | ![Hazard Curve](resources/San_Francisco_curves_1.0s_BSSA2014.png) | ![Hazard Curve](resources/San_Francisco_curves_2.0s_BSSA2014.png) | ![Hazard Curve](resources/San_Francisco_curves_5.0s_BSSA2014.png) |
| **San Jose** | ![Hazard Curve](resources/San_Jose_curves_1.0s_BSSA2014.png) | ![Hazard Curve](resources/San_Jose_curves_2.0s_BSSA2014.png) | ![Hazard Curve](resources/San_Jose_curves_5.0s_BSSA2014.png) |
