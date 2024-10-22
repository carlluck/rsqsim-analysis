# Bruce 2336 BBP Rupture Generator/NGAWest_2014_NoIdr GMPE Comparisons

**NOTE: These tests use the BBP Rupture Generator, not RSQSim slip/time histories.**

*All calculations here (both BBP & GMPE) use simple planar surface representations, which can be a poor approximation for many ruptures, but the same surface is used for both calculations.*

**GMPE: NGAWest2 2014 Averaged No Idriss**

Ruptures are binned by their moment magnitude (**Mw**) and the Joyner-Boore distance (**rJB**), the shortest horizontal distance from a site to the surface projection of the rupture surface

[Catalog Details](../#bruce-2336)
## Table Of Contents
* [All Sites Aggregated](#all-sites-aggregated)
  * [All Sites, 7 < Mw < 7.5](#all-sites-7--mw--75)
    * [All Sites, 7 < Mw < 7.5, Scatter Plots](#all-sites-7--mw--75-scatter-plots)
    * [All Sites, 7 < Mw < 7.5, Standard Normal Plots](#all-sites-7--mw--75-standard-normal-plots)
  * [All Sites, 7.5 < Mw < 8](#all-sites-75--mw--8)
    * [All Sites, 7.5 < Mw < 8, Scatter Plots](#all-sites-75--mw--8-scatter-plots)
    * [All Sites, 7.5 < Mw < 8, Standard Normal Plots](#all-sites-75--mw--8-standard-normal-plots)
  * [All Sites, 8 < Mw < 8.5](#all-sites-8--mw--85)
    * [All Sites, 8 < Mw < 8.5, Scatter Plots](#all-sites-8--mw--85-scatter-plots)
    * [All Sites, 8 < Mw < 8.5, Standard Normal Plots](#all-sites-8--mw--85-standard-normal-plots)
* [Site USC](#site-usc)
  * [USC, 7 < Mw < 7.5](#usc-7--mw--75)
    * [USC, 7 < Mw < 7.5, Scatter Plots](#usc-7--mw--75-scatter-plots)
    * [USC, 7 < Mw < 7.5, Standard Normal Plots](#usc-7--mw--75-standard-normal-plots)
  * [USC, 7.5 < Mw < 8](#usc-75--mw--8)
    * [USC, 7.5 < Mw < 8, Scatter Plots](#usc-75--mw--8-scatter-plots)
    * [USC, 7.5 < Mw < 8, Standard Normal Plots](#usc-75--mw--8-standard-normal-plots)
  * [USC, 8 < Mw < 8.5](#usc-8--mw--85)
    * [USC, 8 < Mw < 8.5, Scatter Plots](#usc-8--mw--85-scatter-plots)
    * [USC, 8 < Mw < 8.5, Standard Normal Plots](#usc-8--mw--85-standard-normal-plots)
* [Site SBSM](#site-sbsm)
  * [SBSM, 7 < Mw < 7.5](#sbsm-7--mw--75)
    * [SBSM, 7 < Mw < 7.5, Scatter Plots](#sbsm-7--mw--75-scatter-plots)
    * [SBSM, 7 < Mw < 7.5, Standard Normal Plots](#sbsm-7--mw--75-standard-normal-plots)
  * [SBSM, 7.5 < Mw < 8](#sbsm-75--mw--8)
    * [SBSM, 7.5 < Mw < 8, Scatter Plots](#sbsm-75--mw--8-scatter-plots)
    * [SBSM, 7.5 < Mw < 8, Standard Normal Plots](#sbsm-75--mw--8-standard-normal-plots)
  * [SBSM, 8 < Mw < 8.5](#sbsm-8--mw--85)
    * [SBSM, 8 < Mw < 8.5, Scatter Plots](#sbsm-8--mw--85-scatter-plots)
    * [SBSM, 8 < Mw < 8.5, Standard Normal Plots](#sbsm-8--mw--85-standard-normal-plots)
* [Hazard Curves](#hazard-curves)
## All Sites Aggregated
*[(top)](#table-of-contents)*

**10 sites**

| Name | Location | # Events |
|-----|-----|-----|
| USC | *34.0192, -118.286* | 1779 |
| SBSM | *34.064987, -117.29201* | 1665 |
| Los Angeles | *34.05, -118.25* | 1794 |
| Riverside | *33.95, -117.4* | 1679 |
| San Diego | *32.7, -117.15* | 1755 |
| Santa Barbara | *34.45, -119.7* | 1193 |
| Oakland | *37.8, -122.25* | 1289 |
| Sacramento | *38.6, -121.5* | 1354 |
| San Francisco | *37.75, -122.4* | 1283 |
| San Jose | *37.35, -121.9* | 1309 |
4008 ruptures within 200.0 km of *any* site
### All Sites, 7 < Mw < 7.5
3101 Ruptures
#### All Sites, 7 < Mw < 7.5, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/RSQSim single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **1 s** | **2 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_0_10_1s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_0_10_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_0_10_5s_NGAWest_2014_NoIdr_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_10_20_1s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_10_20_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_10_20_5s_NGAWest_2014_NoIdr_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_20_40_1s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_20_40_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_20_40_5s_NGAWest_2014_NoIdr_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_40_80_1s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_80_160_1s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_80_160_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_160_200_1s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_160_200_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) |
#### All Sites, 7 < Mw < 7.5, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare RSQSim to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*RSQSim*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/All_Sites_mag_7_7.5_dist_0_10_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7_7.5_dist_10_20_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7_7.5_dist_20_40_NGAWest_2014_NoIdr_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/All_Sites_mag_7_7.5_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7_7.5_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7_7.5_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
### All Sites, 7.5 < Mw < 8
906 Ruptures
#### All Sites, 7.5 < Mw < 8, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/RSQSim single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **1 s** | **2 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_0_10_1s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_0_10_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_0_10_5s_NGAWest_2014_NoIdr_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_10_20_1s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_10_20_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_10_20_5s_NGAWest_2014_NoIdr_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_20_40_1s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_20_40_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_20_40_5s_NGAWest_2014_NoIdr_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_40_80_1s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_80_160_1s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_80_160_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_160_200_1s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_160_200_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) |
#### All Sites, 7.5 < Mw < 8, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare RSQSim to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*RSQSim*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/All_Sites_mag_7.5_8_dist_0_10_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7.5_8_dist_10_20_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7.5_8_dist_20_40_NGAWest_2014_NoIdr_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/All_Sites_mag_7.5_8_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7.5_8_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7.5_8_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
### All Sites, 8 < Mw < 8.5
1 Ruptures
#### All Sites, 8 < Mw < 8.5, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/RSQSim single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **1 s** | **2 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | N/A | N/A | N/A |
| **10 km < rJB < 20 km** | N/A | N/A | N/A |
| **20 km < rJB < 40 km** | N/A | N/A | N/A |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_40_80_1s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | N/A | N/A | N/A |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_160_200_1s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_160_200_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_8_8.5_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) |
#### All Sites, 8 < Mw < 8.5, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare RSQSim to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*RSQSim*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| N/A | N/A | N/A |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/All_Sites_mag_8_8.5_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | N/A | ![Standard Normal Plot](resources/All_Sites_mag_8_8.5_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
## Site USC
*[(top)](#table-of-contents)*

*Location: 34.0192, -118.286*
1779 ruptures within 200.0 km
### USC, 7 < Mw < 7.5
1167 Ruptures
#### USC, 7 < Mw < 7.5, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/RSQSim single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **1 s** | **2 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/USC_mag_7_7.5_dist_0_10_1s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7_7.5_dist_0_10_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7_7.5_dist_0_10_5s_NGAWest_2014_NoIdr_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/USC_mag_7_7.5_dist_10_20_1s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7_7.5_dist_10_20_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7_7.5_dist_10_20_5s_NGAWest_2014_NoIdr_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/USC_mag_7_7.5_dist_20_40_1s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7_7.5_dist_20_40_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7_7.5_dist_20_40_5s_NGAWest_2014_NoIdr_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/USC_mag_7_7.5_dist_40_80_1s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7_7.5_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7_7.5_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/USC_mag_7_7.5_dist_80_160_1s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7_7.5_dist_80_160_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7_7.5_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/USC_mag_7_7.5_dist_160_200_1s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7_7.5_dist_160_200_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7_7.5_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) |
#### USC, 7 < Mw < 7.5, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare RSQSim to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*RSQSim*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/USC_mag_7_7.5_dist_0_10_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_7_7.5_dist_10_20_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_7_7.5_dist_20_40_NGAWest_2014_NoIdr_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/USC_mag_7_7.5_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_7_7.5_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_7_7.5_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
### USC, 7.5 < Mw < 8
611 Ruptures
#### USC, 7.5 < Mw < 8, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/RSQSim single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **1 s** | **2 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/USC_mag_7.5_8_dist_0_10_1s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7.5_8_dist_0_10_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7.5_8_dist_0_10_5s_NGAWest_2014_NoIdr_scatter.png) |
| **10 km < rJB < 20 km** | N/A | N/A | N/A |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/USC_mag_7.5_8_dist_20_40_1s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7.5_8_dist_20_40_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7.5_8_dist_20_40_5s_NGAWest_2014_NoIdr_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/USC_mag_7.5_8_dist_40_80_1s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7.5_8_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7.5_8_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/USC_mag_7.5_8_dist_80_160_1s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7.5_8_dist_80_160_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7.5_8_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/USC_mag_7.5_8_dist_160_200_1s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7.5_8_dist_160_200_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_7.5_8_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) |
#### USC, 7.5 < Mw < 8, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare RSQSim to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*RSQSim*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/USC_mag_7.5_8_dist_0_10_NGAWest_2014_NoIdr_std_norm.png) | N/A | ![Standard Normal Plot](resources/USC_mag_7.5_8_dist_20_40_NGAWest_2014_NoIdr_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/USC_mag_7.5_8_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_7.5_8_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_7.5_8_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
### USC, 8 < Mw < 8.5
1 Ruptures
#### USC, 8 < Mw < 8.5, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/RSQSim single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **1 s** | **2 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | N/A | N/A | N/A |
| **10 km < rJB < 20 km** | N/A | N/A | N/A |
| **20 km < rJB < 40 km** | N/A | N/A | N/A |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/USC_mag_8_8.5_dist_40_80_1s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_8_8.5_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/USC_mag_8_8.5_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | N/A | N/A | N/A |
| **160 km < rJB < 200 km** | N/A | N/A | N/A |
#### USC, 8 < Mw < 8.5, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare RSQSim to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*RSQSim*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| N/A | N/A | N/A |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/USC_mag_8_8.5_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | N/A | N/A |
## Site SBSM
*[(top)](#table-of-contents)*

*Location: 34.064987, -117.29201*
1665 ruptures within 200.0 km
### SBSM, 7 < Mw < 7.5
1153 Ruptures
#### SBSM, 7 < Mw < 7.5, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/RSQSim single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **1 s** | **2 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_0_10_1s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_0_10_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_0_10_5s_NGAWest_2014_NoIdr_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_10_20_1s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_10_20_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_10_20_5s_NGAWest_2014_NoIdr_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_20_40_1s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_20_40_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_20_40_5s_NGAWest_2014_NoIdr_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_40_80_1s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_80_160_1s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_80_160_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_160_200_1s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_160_200_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_7.5_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) |
#### SBSM, 7 < Mw < 7.5, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare RSQSim to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*RSQSim*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/SBSM_mag_7_7.5_dist_0_10_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_7_7.5_dist_10_20_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_7_7.5_dist_20_40_NGAWest_2014_NoIdr_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/SBSM_mag_7_7.5_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_7_7.5_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_7_7.5_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
### SBSM, 7.5 < Mw < 8
511 Ruptures
#### SBSM, 7.5 < Mw < 8, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/RSQSim single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **1 s** | **2 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_0_10_1s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_0_10_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_0_10_5s_NGAWest_2014_NoIdr_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_10_20_1s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_10_20_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_10_20_5s_NGAWest_2014_NoIdr_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_20_40_1s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_20_40_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_20_40_5s_NGAWest_2014_NoIdr_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_40_80_1s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_80_160_1s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_80_160_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_160_200_1s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_160_200_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7.5_8_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) |
#### SBSM, 7.5 < Mw < 8, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare RSQSim to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*RSQSim*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/SBSM_mag_7.5_8_dist_0_10_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_7.5_8_dist_10_20_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_7.5_8_dist_20_40_NGAWest_2014_NoIdr_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/SBSM_mag_7.5_8_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_7.5_8_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_7.5_8_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
### SBSM, 8 < Mw < 8.5
1 Ruptures
#### SBSM, 8 < Mw < 8.5, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/RSQSim single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **1 s** | **2 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | N/A | N/A | N/A |
| **10 km < rJB < 20 km** | N/A | N/A | N/A |
| **20 km < rJB < 40 km** | N/A | N/A | N/A |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_40_80_1s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | N/A | N/A | N/A |
| **160 km < rJB < 200 km** | N/A | N/A | N/A |
#### SBSM, 8 < Mw < 8.5, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare RSQSim to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*RSQSim*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: RSQSim Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| N/A | N/A | N/A |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/SBSM_mag_8_8.5_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | N/A | N/A |
## Hazard Curves

**Legend**:
* Black Solid Line: RSQSim/BBP
* Blue Solid Line: NGAWest_2014_NoIdr
* Blue Dashed Line: NGAWest_2014_NoIdr 3-sigma truncation
* Blue Dotted Line: NGAWest_2014_NoIdr 2-sigma truncation
* Gray Dashed Lines: 1000 yr, 2500 yr, 10000 yr return periods

| Site | 1s | 2s | 5s |
|-----|-----|-----|-----|
| **USC** | ![Hazard Curve](resources/USC_curves_1.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/USC_curves_2.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/USC_curves_5.0s_NGAWest_2014_NoIdr.png) |
| **SBSM** | ![Hazard Curve](resources/SBSM_curves_1.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/SBSM_curves_2.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/SBSM_curves_5.0s_NGAWest_2014_NoIdr.png) |
| **Los Angeles** | ![Hazard Curve](resources/Los_Angeles_curves_1.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/Los_Angeles_curves_2.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/Los_Angeles_curves_5.0s_NGAWest_2014_NoIdr.png) |
| **Riverside** | ![Hazard Curve](resources/Riverside_curves_1.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/Riverside_curves_2.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/Riverside_curves_5.0s_NGAWest_2014_NoIdr.png) |
| **San Diego** | ![Hazard Curve](resources/San_Diego_curves_1.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/San_Diego_curves_2.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/San_Diego_curves_5.0s_NGAWest_2014_NoIdr.png) |
| **Santa Barbara** | ![Hazard Curve](resources/Santa_Barbara_curves_1.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/Santa_Barbara_curves_2.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/Santa_Barbara_curves_5.0s_NGAWest_2014_NoIdr.png) |
| **Oakland** | ![Hazard Curve](resources/Oakland_curves_1.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/Oakland_curves_2.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/Oakland_curves_5.0s_NGAWest_2014_NoIdr.png) |
| **Sacramento** | ![Hazard Curve](resources/Sacramento_curves_1.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/Sacramento_curves_2.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/Sacramento_curves_5.0s_NGAWest_2014_NoIdr.png) |
| **San Francisco** | ![Hazard Curve](resources/San_Francisco_curves_1.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/San_Francisco_curves_2.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/San_Francisco_curves_5.0s_NGAWest_2014_NoIdr.png) |
| **San Jose** | ![Hazard Curve](resources/San_Jose_curves_1.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/San_Jose_curves_2.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/San_Jose_curves_5.0s_NGAWest_2014_NoIdr.png) |
