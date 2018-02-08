# Bruce 2579 BBP/CY2014 GMPE Comparisons

**GMPE: Chiou & Youngs (2014)**

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
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_0_10_1s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_0_10_2s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_0_10_5s_CY2014_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_10_20_1s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_10_20_2s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_10_20_5s_CY2014_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_20_40_1s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_20_40_2s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_20_40_5s_CY2014_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_40_80_1s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_40_80_2s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_40_80_5s_CY2014_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_80_160_1s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_80_160_2s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_80_160_5s_CY2014_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_160_200_1s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_160_200_2s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_160_200_5s_CY2014_scatter.png) |
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
| ![Standard Normal Plot](resources/All_Sites_mag_6_6.5_dist_0_10_CY2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_6_6.5_dist_10_20_CY2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_6_6.5_dist_20_40_CY2014_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/All_Sites_mag_6_6.5_dist_40_80_CY2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_6_6.5_dist_80_160_CY2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_6_6.5_dist_160_200_CY2014_std_norm.png) |
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
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_0_10_1s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_0_10_2s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_0_10_5s_CY2014_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_10_20_1s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_10_20_2s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_10_20_5s_CY2014_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_20_40_1s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_20_40_2s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_20_40_5s_CY2014_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_40_80_1s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_40_80_2s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_40_80_5s_CY2014_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_80_160_1s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_80_160_2s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_80_160_5s_CY2014_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_160_200_1s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_160_200_2s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_160_200_5s_CY2014_scatter.png) |
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
| ![Standard Normal Plot](resources/All_Sites_mag_6.5_7_dist_0_10_CY2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_6.5_7_dist_10_20_CY2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_6.5_7_dist_20_40_CY2014_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/All_Sites_mag_6.5_7_dist_40_80_CY2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_6.5_7_dist_80_160_CY2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_6.5_7_dist_160_200_CY2014_std_norm.png) |
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
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_0_10_1s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_0_10_2s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_0_10_5s_CY2014_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_10_20_1s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_10_20_2s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_10_20_5s_CY2014_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_20_40_1s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_20_40_2s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_20_40_5s_CY2014_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_40_80_1s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_40_80_2s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_40_80_5s_CY2014_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_80_160_1s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_80_160_2s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_80_160_5s_CY2014_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_160_200_1s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_160_200_2s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_160_200_5s_CY2014_scatter.png) |
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
| ![Standard Normal Plot](resources/All_Sites_mag_7_7.5_dist_0_10_CY2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7_7.5_dist_10_20_CY2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7_7.5_dist_20_40_CY2014_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/All_Sites_mag_7_7.5_dist_40_80_CY2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7_7.5_dist_80_160_CY2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7_7.5_dist_160_200_CY2014_std_norm.png) |
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
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_0_10_1s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_0_10_2s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_0_10_5s_CY2014_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_10_20_1s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_10_20_2s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_10_20_5s_CY2014_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_20_40_1s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_20_40_2s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_20_40_5s_CY2014_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_40_80_1s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_40_80_2s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_40_80_5s_CY2014_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_80_160_1s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_80_160_2s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_80_160_5s_CY2014_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_160_200_1s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_160_200_2s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_160_200_5s_CY2014_scatter.png) |
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
| ![Standard Normal Plot](resources/All_Sites_mag_7.5_8_dist_0_10_CY2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7.5_8_dist_10_20_CY2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7.5_8_dist_20_40_CY2014_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/All_Sites_mag_7.5_8_dist_40_80_CY2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7.5_8_dist_80_160_CY2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7.5_8_dist_160_200_CY2014_std_norm.png) |
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
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_0_10_1s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_0_10_2s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_0_10_5s_CY2014_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_10_20_1s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_10_20_2s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_10_20_5s_CY2014_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_20_40_1s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_20_40_2s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_20_40_5s_CY2014_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_40_80_1s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_40_80_2s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_40_80_5s_CY2014_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_80_160_1s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_80_160_2s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_80_160_5s_CY2014_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_160_200_1s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_160_200_2s_CY2014_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_160_200_5s_CY2014_scatter.png) |
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
| ![Standard Normal Plot](resources/All_Sites_mag_8_8.5_dist_0_10_CY2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_8_8.5_dist_10_20_CY2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_8_8.5_dist_20_40_CY2014_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/All_Sites_mag_8_8.5_dist_40_80_CY2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_8_8.5_dist_80_160_CY2014_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_8_8.5_dist_160_200_CY2014_std_norm.png) |
#### All Sites, All Ruptures, Z-Score Histograms
*[(top)](#table-of-contents)*


z-score standard normal plots across all magnitudes/distances

**z-score**: (ln(*RSQSim/BBP*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim/BBP Mean

![Standard Normal Plot](resources/All_Sites_all_mags_all_dists_CY2014_std_norm.png)
## GMPE Residuals
*[(top)](#table-of-contents)*

Residuals of simulation data (RSQSim/BBP) in log space relative to GMPE log-mean

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
