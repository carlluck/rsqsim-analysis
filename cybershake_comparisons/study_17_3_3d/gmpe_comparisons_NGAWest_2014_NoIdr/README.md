# CS Study 17.3 3-D/NGAWest_2014_NoIdr GMPE Comparisons

**GMPE: NGAWest2 2014 Averaged No Idriss**

Ruptures are binned by their moment magnitude (**Mw**) and the Joyner-Boore distance (**rJB**), the shortest horizontal distance from a site to the surface projection of the rupture surface

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
  * [All Sites, 8 < Mw < 9](#all-sites-8--mw--9)
    * [All Sites, 8 < Mw < 9, Scatter Plots](#all-sites-8--mw--9-scatter-plots)
    * [All Sites, 8 < Mw < 9, Standard Normal Plots](#all-sites-8--mw--9-standard-normal-plots)
  * [All Sites, All Ruptures, Standard Normal Plots](#all-sites-all-ruptures-standard-normal-plots)
* [Site LEM](#site-lem)
  * [LEM, 6 < Mw < 6.5](#lem-6--mw--65)
    * [LEM, 6 < Mw < 6.5, Scatter Plots](#lem-6--mw--65-scatter-plots)
    * [LEM, 6 < Mw < 6.5, Standard Normal Plots](#lem-6--mw--65-standard-normal-plots)
  * [LEM, 6.5 < Mw < 7](#lem-65--mw--7)
    * [LEM, 6.5 < Mw < 7, Scatter Plots](#lem-65--mw--7-scatter-plots)
    * [LEM, 6.5 < Mw < 7, Standard Normal Plots](#lem-65--mw--7-standard-normal-plots)
  * [LEM, 7 < Mw < 7.5](#lem-7--mw--75)
    * [LEM, 7 < Mw < 7.5, Scatter Plots](#lem-7--mw--75-scatter-plots)
    * [LEM, 7 < Mw < 7.5, Standard Normal Plots](#lem-7--mw--75-standard-normal-plots)
  * [LEM, 7.5 < Mw < 8](#lem-75--mw--8)
    * [LEM, 7.5 < Mw < 8, Scatter Plots](#lem-75--mw--8-scatter-plots)
    * [LEM, 7.5 < Mw < 8, Standard Normal Plots](#lem-75--mw--8-standard-normal-plots)
  * [LEM, 8 < Mw < 9](#lem-8--mw--9)
    * [LEM, 8 < Mw < 9, Scatter Plots](#lem-8--mw--9-scatter-plots)
    * [LEM, 8 < Mw < 9, Standard Normal Plots](#lem-8--mw--9-standard-normal-plots)
  * [LEM, All Ruptures, Standard Normal Plots](#lem-all-ruptures-standard-normal-plots)
* [Site SLO](#site-slo)
  * [SLO, 6 < Mw < 6.5](#slo-6--mw--65)
    * [SLO, 6 < Mw < 6.5, Scatter Plots](#slo-6--mw--65-scatter-plots)
    * [SLO, 6 < Mw < 6.5, Standard Normal Plots](#slo-6--mw--65-standard-normal-plots)
  * [SLO, 6.5 < Mw < 7](#slo-65--mw--7)
    * [SLO, 6.5 < Mw < 7, Scatter Plots](#slo-65--mw--7-scatter-plots)
    * [SLO, 6.5 < Mw < 7, Standard Normal Plots](#slo-65--mw--7-standard-normal-plots)
  * [SLO, 7 < Mw < 7.5](#slo-7--mw--75)
    * [SLO, 7 < Mw < 7.5, Scatter Plots](#slo-7--mw--75-scatter-plots)
    * [SLO, 7 < Mw < 7.5, Standard Normal Plots](#slo-7--mw--75-standard-normal-plots)
  * [SLO, 7.5 < Mw < 8](#slo-75--mw--8)
    * [SLO, 7.5 < Mw < 8, Scatter Plots](#slo-75--mw--8-scatter-plots)
    * [SLO, 7.5 < Mw < 8, Standard Normal Plots](#slo-75--mw--8-standard-normal-plots)
  * [SLO, 8 < Mw < 9](#slo-8--mw--9)
    * [SLO, 8 < Mw < 9, Scatter Plots](#slo-8--mw--9-scatter-plots)
    * [SLO, 8 < Mw < 9, Standard Normal Plots](#slo-8--mw--9-standard-normal-plots)
  * [SLO, All Ruptures, Standard Normal Plots](#slo-all-ruptures-standard-normal-plots)
* [Site CAR](#site-car)
  * [CAR, 6 < Mw < 6.5](#car-6--mw--65)
    * [CAR, 6 < Mw < 6.5, Scatter Plots](#car-6--mw--65-scatter-plots)
    * [CAR, 6 < Mw < 6.5, Standard Normal Plots](#car-6--mw--65-standard-normal-plots)
  * [CAR, 6.5 < Mw < 7](#car-65--mw--7)
    * [CAR, 6.5 < Mw < 7, Scatter Plots](#car-65--mw--7-scatter-plots)
    * [CAR, 6.5 < Mw < 7, Standard Normal Plots](#car-65--mw--7-standard-normal-plots)
  * [CAR, 7 < Mw < 7.5](#car-7--mw--75)
    * [CAR, 7 < Mw < 7.5, Scatter Plots](#car-7--mw--75-scatter-plots)
    * [CAR, 7 < Mw < 7.5, Standard Normal Plots](#car-7--mw--75-standard-normal-plots)
  * [CAR, 7.5 < Mw < 8](#car-75--mw--8)
    * [CAR, 7.5 < Mw < 8, Scatter Plots](#car-75--mw--8-scatter-plots)
    * [CAR, 7.5 < Mw < 8, Standard Normal Plots](#car-75--mw--8-standard-normal-plots)
  * [CAR, 8 < Mw < 9](#car-8--mw--9)
    * [CAR, 8 < Mw < 9, Scatter Plots](#car-8--mw--9-scatter-plots)
    * [CAR, 8 < Mw < 9, Standard Normal Plots](#car-8--mw--9-standard-normal-plots)
  * [CAR, All Ruptures, Standard Normal Plots](#car-all-ruptures-standard-normal-plots)
* [Site BAK](#site-bak)
  * [BAK, 6 < Mw < 6.5](#bak-6--mw--65)
    * [BAK, 6 < Mw < 6.5, Scatter Plots](#bak-6--mw--65-scatter-plots)
    * [BAK, 6 < Mw < 6.5, Standard Normal Plots](#bak-6--mw--65-standard-normal-plots)
  * [BAK, 6.5 < Mw < 7](#bak-65--mw--7)
    * [BAK, 6.5 < Mw < 7, Scatter Plots](#bak-65--mw--7-scatter-plots)
    * [BAK, 6.5 < Mw < 7, Standard Normal Plots](#bak-65--mw--7-standard-normal-plots)
  * [BAK, 7 < Mw < 7.5](#bak-7--mw--75)
    * [BAK, 7 < Mw < 7.5, Scatter Plots](#bak-7--mw--75-scatter-plots)
    * [BAK, 7 < Mw < 7.5, Standard Normal Plots](#bak-7--mw--75-standard-normal-plots)
  * [BAK, 7.5 < Mw < 8](#bak-75--mw--8)
    * [BAK, 7.5 < Mw < 8, Scatter Plots](#bak-75--mw--8-scatter-plots)
    * [BAK, 7.5 < Mw < 8, Standard Normal Plots](#bak-75--mw--8-standard-normal-plots)
  * [BAK, 8 < Mw < 9](#bak-8--mw--9)
    * [BAK, 8 < Mw < 9, Scatter Plots](#bak-8--mw--9-scatter-plots)
    * [BAK, 8 < Mw < 9, Standard Normal Plots](#bak-8--mw--9-standard-normal-plots)
  * [BAK, All Ruptures, Standard Normal Plots](#bak-all-ruptures-standard-normal-plots)
* [Site SBR](#site-sbr)
  * [SBR, 6 < Mw < 6.5](#sbr-6--mw--65)
    * [SBR, 6 < Mw < 6.5, Scatter Plots](#sbr-6--mw--65-scatter-plots)
    * [SBR, 6 < Mw < 6.5, Standard Normal Plots](#sbr-6--mw--65-standard-normal-plots)
  * [SBR, 6.5 < Mw < 7](#sbr-65--mw--7)
    * [SBR, 6.5 < Mw < 7, Scatter Plots](#sbr-65--mw--7-scatter-plots)
    * [SBR, 6.5 < Mw < 7, Standard Normal Plots](#sbr-65--mw--7-standard-normal-plots)
  * [SBR, 7 < Mw < 7.5](#sbr-7--mw--75)
    * [SBR, 7 < Mw < 7.5, Scatter Plots](#sbr-7--mw--75-scatter-plots)
    * [SBR, 7 < Mw < 7.5, Standard Normal Plots](#sbr-7--mw--75-standard-normal-plots)
  * [SBR, 7.5 < Mw < 8](#sbr-75--mw--8)
    * [SBR, 7.5 < Mw < 8, Scatter Plots](#sbr-75--mw--8-scatter-plots)
    * [SBR, 7.5 < Mw < 8, Standard Normal Plots](#sbr-75--mw--8-standard-normal-plots)
  * [SBR, 8 < Mw < 9](#sbr-8--mw--9)
    * [SBR, 8 < Mw < 9, Scatter Plots](#sbr-8--mw--9-scatter-plots)
    * [SBR, 8 < Mw < 9, Standard Normal Plots](#sbr-8--mw--9-standard-normal-plots)
  * [SBR, All Ruptures, Standard Normal Plots](#sbr-all-ruptures-standard-normal-plots)
* [Site VENT](#site-vent)
  * [VENT, 6 < Mw < 6.5](#vent-6--mw--65)
    * [VENT, 6 < Mw < 6.5, Scatter Plots](#vent-6--mw--65-scatter-plots)
    * [VENT, 6 < Mw < 6.5, Standard Normal Plots](#vent-6--mw--65-standard-normal-plots)
  * [VENT, 6.5 < Mw < 7](#vent-65--mw--7)
    * [VENT, 6.5 < Mw < 7, Scatter Plots](#vent-65--mw--7-scatter-plots)
    * [VENT, 6.5 < Mw < 7, Standard Normal Plots](#vent-65--mw--7-standard-normal-plots)
  * [VENT, 7 < Mw < 7.5](#vent-7--mw--75)
    * [VENT, 7 < Mw < 7.5, Scatter Plots](#vent-7--mw--75-scatter-plots)
    * [VENT, 7 < Mw < 7.5, Standard Normal Plots](#vent-7--mw--75-standard-normal-plots)
  * [VENT, 7.5 < Mw < 8](#vent-75--mw--8)
    * [VENT, 7.5 < Mw < 8, Scatter Plots](#vent-75--mw--8-scatter-plots)
    * [VENT, 7.5 < Mw < 8, Standard Normal Plots](#vent-75--mw--8-standard-normal-plots)
  * [VENT, 8 < Mw < 9](#vent-8--mw--9)
    * [VENT, 8 < Mw < 9, Scatter Plots](#vent-8--mw--9-scatter-plots)
    * [VENT, 8 < Mw < 9, Standard Normal Plots](#vent-8--mw--9-standard-normal-plots)
  * [VENT, All Ruptures, Standard Normal Plots](#vent-all-ruptures-standard-normal-plots)
* [Hazard Curves](#hazard-curves)
## All Sites Aggregated
*[(top)](#table-of-contents)*

**6 sites**

| Name | Location | # Ruptures | Vs30 (m/s) | Z1.0 (km) | Z2.5 (km) |
|-----|-----|-----|-----|-----|-----|
| LEM | *36.30078, -119.78291* | 3414 (278567 sims) | 228.2 | 0 | 7.85 |
| SLO | *35.28286, -120.66268* | 3297 (261448 sims) | 351.9 | 0 | 0 |
| CAR | *35.30819, -119.84583* | 4130 (305087 sims) | 444 | 0 | 4.75 |
| BAK | *35.34444, -119.10445* | 5723 (394368 sims) | 228.2 | 0 | 5.15 |
| SBR | *34.42083, -119.69819* | 4749 (358868 sims) | 386.6 | 0 | 5.05 |
| VENT | *34.27464, -119.229004* | 5740 (421461 sims) | 351.9 | 0.55 | 6.15 |

7586 ruptures within 200 km of *any* site
### All Sites, 6 < Mw < 6.5
204 Ruptures
#### All Sites, 6 < Mw < 6.5, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/CS Study 17.3 3-D single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **2 s** | **3 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_0_10_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_0_10_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_0_10_5s_NGAWest_2014_NoIdr_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_10_20_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_10_20_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_10_20_5s_NGAWest_2014_NoIdr_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_20_40_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_20_40_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_20_40_5s_NGAWest_2014_NoIdr_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_80_160_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_160_200_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6_6.5_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) |
#### All Sites, 6 < Mw < 6.5, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare CS Study 17.3 3-D to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/All_Sites_mag_6_6.5_dist_0_10_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_6_6.5_dist_10_20_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_6_6.5_dist_20_40_NGAWest_2014_NoIdr_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/All_Sites_mag_6_6.5_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_6_6.5_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_6_6.5_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
### All Sites, 6.5 < Mw < 7
4313 Ruptures
#### All Sites, 6.5 < Mw < 7, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/CS Study 17.3 3-D single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **2 s** | **3 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_0_10_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_0_10_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_0_10_5s_NGAWest_2014_NoIdr_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_10_20_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_10_20_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_10_20_5s_NGAWest_2014_NoIdr_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_20_40_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_20_40_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_20_40_5s_NGAWest_2014_NoIdr_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_80_160_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_160_200_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_6.5_7_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) |
#### All Sites, 6.5 < Mw < 7, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare CS Study 17.3 3-D to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/All_Sites_mag_6.5_7_dist_0_10_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_6.5_7_dist_10_20_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_6.5_7_dist_20_40_NGAWest_2014_NoIdr_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/All_Sites_mag_6.5_7_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_6.5_7_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_6.5_7_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
### All Sites, 7 < Mw < 7.5
2233 Ruptures
#### All Sites, 7 < Mw < 7.5, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/CS Study 17.3 3-D single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **2 s** | **3 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_0_10_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_0_10_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_0_10_5s_NGAWest_2014_NoIdr_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_10_20_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_10_20_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_10_20_5s_NGAWest_2014_NoIdr_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_20_40_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_20_40_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_20_40_5s_NGAWest_2014_NoIdr_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_80_160_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_160_200_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7_7.5_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) |
#### All Sites, 7 < Mw < 7.5, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare CS Study 17.3 3-D to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/All_Sites_mag_7_7.5_dist_0_10_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7_7.5_dist_10_20_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7_7.5_dist_20_40_NGAWest_2014_NoIdr_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/All_Sites_mag_7_7.5_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7_7.5_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7_7.5_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
### All Sites, 7.5 < Mw < 8
742 Ruptures
#### All Sites, 7.5 < Mw < 8, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/CS Study 17.3 3-D single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **2 s** | **3 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_0_10_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_0_10_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_0_10_5s_NGAWest_2014_NoIdr_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_10_20_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_10_20_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_10_20_5s_NGAWest_2014_NoIdr_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_20_40_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_20_40_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_20_40_5s_NGAWest_2014_NoIdr_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_80_160_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_160_200_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_7.5_8_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) |
#### All Sites, 7.5 < Mw < 8, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare CS Study 17.3 3-D to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/All_Sites_mag_7.5_8_dist_0_10_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7.5_8_dist_10_20_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7.5_8_dist_20_40_NGAWest_2014_NoIdr_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/All_Sites_mag_7.5_8_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7.5_8_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_7.5_8_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
### All Sites, 8 < Mw < 9
80 Ruptures
#### All Sites, 8 < Mw < 9, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/CS Study 17.3 3-D single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **2 s** | **3 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/All_Sites_mag_8_9_dist_0_10_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_8_9_dist_0_10_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_8_9_dist_0_10_5s_NGAWest_2014_NoIdr_scatter.png) |
| **10 km < rJB < 20 km** | N/A | N/A | N/A |
| **20 km < rJB < 40 km** | N/A | N/A | N/A |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/All_Sites_mag_8_9_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_8_9_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_8_9_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/All_Sites_mag_8_9_dist_80_160_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_8_9_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_8_9_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/All_Sites_mag_8_9_dist_160_200_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_8_9_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/All_Sites_mag_8_9_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) |
#### All Sites, 8 < Mw < 9, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare CS Study 17.3 3-D to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/All_Sites_mag_8_9_dist_0_10_NGAWest_2014_NoIdr_std_norm.png) | N/A | N/A |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/All_Sites_mag_8_9_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_8_9_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/All_Sites_mag_8_9_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
### All Sites, All Ruptures, Standard Normal Plots
*[(top)](#table-of-contents)*


z-score standard normal plots across all magnitudes/distances

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

![Standard Normal Plot](resources/All_Sites_all_mags_all_dists_NGAWest_2014_NoIdr_std_norm.png)
## Site LEM
*[(top)](#table-of-contents)*

*Location: 36.30078, -119.78291*
3414 ruptures within 200.0 km
### LEM, 6 < Mw < 6.5
204 Ruptures
#### LEM, 6 < Mw < 6.5, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/CS Study 17.3 3-D single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **2 s** | **3 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | N/A | N/A | N/A |
| **10 km < rJB < 20 km** | N/A | N/A | N/A |
| **20 km < rJB < 40 km** | N/A | N/A | N/A |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/LEM_mag_6_6.5_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/LEM_mag_6_6.5_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/LEM_mag_6_6.5_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/LEM_mag_6_6.5_dist_80_160_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/LEM_mag_6_6.5_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/LEM_mag_6_6.5_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/LEM_mag_6_6.5_dist_160_200_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/LEM_mag_6_6.5_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/LEM_mag_6_6.5_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) |
#### LEM, 6 < Mw < 6.5, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare CS Study 17.3 3-D to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| N/A | N/A | N/A |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/LEM_mag_6_6.5_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/LEM_mag_6_6.5_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/LEM_mag_6_6.5_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
### LEM, 6.5 < Mw < 7
4313 Ruptures
#### LEM, 6.5 < Mw < 7, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/CS Study 17.3 3-D single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **2 s** | **3 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | N/A | N/A | N/A |
| **10 km < rJB < 20 km** | N/A | N/A | N/A |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/LEM_mag_6.5_7_dist_20_40_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/LEM_mag_6.5_7_dist_20_40_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/LEM_mag_6.5_7_dist_20_40_5s_NGAWest_2014_NoIdr_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/LEM_mag_6.5_7_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/LEM_mag_6.5_7_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/LEM_mag_6.5_7_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/LEM_mag_6.5_7_dist_80_160_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/LEM_mag_6.5_7_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/LEM_mag_6.5_7_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/LEM_mag_6.5_7_dist_160_200_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/LEM_mag_6.5_7_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/LEM_mag_6.5_7_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) |
#### LEM, 6.5 < Mw < 7, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare CS Study 17.3 3-D to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| N/A | N/A | ![Standard Normal Plot](resources/LEM_mag_6.5_7_dist_20_40_NGAWest_2014_NoIdr_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/LEM_mag_6.5_7_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/LEM_mag_6.5_7_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/LEM_mag_6.5_7_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
### LEM, 7 < Mw < 7.5
2233 Ruptures
#### LEM, 7 < Mw < 7.5, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/CS Study 17.3 3-D single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **2 s** | **3 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | N/A | N/A | N/A |
| **10 km < rJB < 20 km** | N/A | N/A | N/A |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/LEM_mag_7_7.5_dist_20_40_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/LEM_mag_7_7.5_dist_20_40_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/LEM_mag_7_7.5_dist_20_40_5s_NGAWest_2014_NoIdr_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/LEM_mag_7_7.5_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/LEM_mag_7_7.5_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/LEM_mag_7_7.5_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/LEM_mag_7_7.5_dist_80_160_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/LEM_mag_7_7.5_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/LEM_mag_7_7.5_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/LEM_mag_7_7.5_dist_160_200_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/LEM_mag_7_7.5_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/LEM_mag_7_7.5_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) |
#### LEM, 7 < Mw < 7.5, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare CS Study 17.3 3-D to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| N/A | N/A | ![Standard Normal Plot](resources/LEM_mag_7_7.5_dist_20_40_NGAWest_2014_NoIdr_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/LEM_mag_7_7.5_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/LEM_mag_7_7.5_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/LEM_mag_7_7.5_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
### LEM, 7.5 < Mw < 8
742 Ruptures
#### LEM, 7.5 < Mw < 8, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/CS Study 17.3 3-D single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **2 s** | **3 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | N/A | N/A | N/A |
| **10 km < rJB < 20 km** | N/A | N/A | N/A |
| **20 km < rJB < 40 km** | N/A | N/A | N/A |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/LEM_mag_7.5_8_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/LEM_mag_7.5_8_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/LEM_mag_7.5_8_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/LEM_mag_7.5_8_dist_80_160_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/LEM_mag_7.5_8_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/LEM_mag_7.5_8_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/LEM_mag_7.5_8_dist_160_200_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/LEM_mag_7.5_8_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/LEM_mag_7.5_8_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) |
#### LEM, 7.5 < Mw < 8, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare CS Study 17.3 3-D to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| N/A | N/A | N/A |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/LEM_mag_7.5_8_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/LEM_mag_7.5_8_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/LEM_mag_7.5_8_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
### LEM, 8 < Mw < 9
80 Ruptures
#### LEM, 8 < Mw < 9, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/CS Study 17.3 3-D single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **2 s** | **3 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | N/A | N/A | N/A |
| **10 km < rJB < 20 km** | N/A | N/A | N/A |
| **20 km < rJB < 40 km** | N/A | N/A | N/A |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/LEM_mag_8_9_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/LEM_mag_8_9_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/LEM_mag_8_9_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/LEM_mag_8_9_dist_80_160_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/LEM_mag_8_9_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/LEM_mag_8_9_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/LEM_mag_8_9_dist_160_200_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/LEM_mag_8_9_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/LEM_mag_8_9_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) |
#### LEM, 8 < Mw < 9, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare CS Study 17.3 3-D to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| N/A | N/A | N/A |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/LEM_mag_8_9_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/LEM_mag_8_9_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/LEM_mag_8_9_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
### LEM, All Ruptures, Standard Normal Plots
*[(top)](#table-of-contents)*


z-score standard normal plots across all magnitudes/distances

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

![Standard Normal Plot](resources/LEM_all_mags_all_dists_NGAWest_2014_NoIdr_std_norm.png)
## Site SLO
*[(top)](#table-of-contents)*

*Location: 35.28286, -120.66268*
3297 ruptures within 200.0 km
### SLO, 6 < Mw < 6.5
204 Ruptures
#### SLO, 6 < Mw < 6.5, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/CS Study 17.3 3-D single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **2 s** | **3 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | N/A | N/A | N/A |
| **10 km < rJB < 20 km** | N/A | N/A | N/A |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/SLO_mag_6_6.5_dist_20_40_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_6_6.5_dist_20_40_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_6_6.5_dist_20_40_5s_NGAWest_2014_NoIdr_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/SLO_mag_6_6.5_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_6_6.5_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_6_6.5_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/SLO_mag_6_6.5_dist_80_160_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_6_6.5_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_6_6.5_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/SLO_mag_6_6.5_dist_160_200_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_6_6.5_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_6_6.5_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) |
#### SLO, 6 < Mw < 6.5, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare CS Study 17.3 3-D to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| N/A | N/A | ![Standard Normal Plot](resources/SLO_mag_6_6.5_dist_20_40_NGAWest_2014_NoIdr_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/SLO_mag_6_6.5_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SLO_mag_6_6.5_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SLO_mag_6_6.5_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
### SLO, 6.5 < Mw < 7
4313 Ruptures
#### SLO, 6.5 < Mw < 7, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/CS Study 17.3 3-D single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **2 s** | **3 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/SLO_mag_6.5_7_dist_0_10_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_6.5_7_dist_0_10_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_6.5_7_dist_0_10_5s_NGAWest_2014_NoIdr_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/SLO_mag_6.5_7_dist_10_20_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_6.5_7_dist_10_20_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_6.5_7_dist_10_20_5s_NGAWest_2014_NoIdr_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/SLO_mag_6.5_7_dist_20_40_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_6.5_7_dist_20_40_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_6.5_7_dist_20_40_5s_NGAWest_2014_NoIdr_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/SLO_mag_6.5_7_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_6.5_7_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_6.5_7_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/SLO_mag_6.5_7_dist_80_160_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_6.5_7_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_6.5_7_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/SLO_mag_6.5_7_dist_160_200_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_6.5_7_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_6.5_7_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) |
#### SLO, 6.5 < Mw < 7, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare CS Study 17.3 3-D to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/SLO_mag_6.5_7_dist_0_10_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SLO_mag_6.5_7_dist_10_20_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SLO_mag_6.5_7_dist_20_40_NGAWest_2014_NoIdr_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/SLO_mag_6.5_7_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SLO_mag_6.5_7_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SLO_mag_6.5_7_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
### SLO, 7 < Mw < 7.5
2233 Ruptures
#### SLO, 7 < Mw < 7.5, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/CS Study 17.3 3-D single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **2 s** | **3 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/SLO_mag_7_7.5_dist_0_10_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_7_7.5_dist_0_10_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_7_7.5_dist_0_10_5s_NGAWest_2014_NoIdr_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/SLO_mag_7_7.5_dist_10_20_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_7_7.5_dist_10_20_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_7_7.5_dist_10_20_5s_NGAWest_2014_NoIdr_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/SLO_mag_7_7.5_dist_20_40_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_7_7.5_dist_20_40_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_7_7.5_dist_20_40_5s_NGAWest_2014_NoIdr_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/SLO_mag_7_7.5_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_7_7.5_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_7_7.5_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/SLO_mag_7_7.5_dist_80_160_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_7_7.5_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_7_7.5_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/SLO_mag_7_7.5_dist_160_200_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_7_7.5_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_7_7.5_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) |
#### SLO, 7 < Mw < 7.5, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare CS Study 17.3 3-D to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/SLO_mag_7_7.5_dist_0_10_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SLO_mag_7_7.5_dist_10_20_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SLO_mag_7_7.5_dist_20_40_NGAWest_2014_NoIdr_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/SLO_mag_7_7.5_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SLO_mag_7_7.5_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SLO_mag_7_7.5_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
### SLO, 7.5 < Mw < 8
742 Ruptures
#### SLO, 7.5 < Mw < 8, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/CS Study 17.3 3-D single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **2 s** | **3 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | N/A | N/A | N/A |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/SLO_mag_7.5_8_dist_10_20_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_7.5_8_dist_10_20_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_7.5_8_dist_10_20_5s_NGAWest_2014_NoIdr_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/SLO_mag_7.5_8_dist_20_40_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_7.5_8_dist_20_40_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_7.5_8_dist_20_40_5s_NGAWest_2014_NoIdr_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/SLO_mag_7.5_8_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_7.5_8_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_7.5_8_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/SLO_mag_7.5_8_dist_80_160_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_7.5_8_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_7.5_8_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/SLO_mag_7.5_8_dist_160_200_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_7.5_8_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_7.5_8_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) |
#### SLO, 7.5 < Mw < 8, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare CS Study 17.3 3-D to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| N/A | ![Standard Normal Plot](resources/SLO_mag_7.5_8_dist_10_20_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SLO_mag_7.5_8_dist_20_40_NGAWest_2014_NoIdr_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/SLO_mag_7.5_8_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SLO_mag_7.5_8_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SLO_mag_7.5_8_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
### SLO, 8 < Mw < 9
80 Ruptures
#### SLO, 8 < Mw < 9, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/CS Study 17.3 3-D single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **2 s** | **3 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | N/A | N/A | N/A |
| **10 km < rJB < 20 km** | N/A | N/A | N/A |
| **20 km < rJB < 40 km** | N/A | N/A | N/A |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/SLO_mag_8_9_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_8_9_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_8_9_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/SLO_mag_8_9_dist_80_160_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_8_9_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_8_9_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/SLO_mag_8_9_dist_160_200_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_8_9_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SLO_mag_8_9_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) |
#### SLO, 8 < Mw < 9, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare CS Study 17.3 3-D to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| N/A | N/A | N/A |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/SLO_mag_8_9_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SLO_mag_8_9_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SLO_mag_8_9_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
### SLO, All Ruptures, Standard Normal Plots
*[(top)](#table-of-contents)*


z-score standard normal plots across all magnitudes/distances

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

![Standard Normal Plot](resources/SLO_all_mags_all_dists_NGAWest_2014_NoIdr_std_norm.png)
## Site CAR
*[(top)](#table-of-contents)*

*Location: 35.30819, -119.84583*
4130 ruptures within 200.0 km
### CAR, 6 < Mw < 6.5
204 Ruptures
#### CAR, 6 < Mw < 6.5, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/CS Study 17.3 3-D single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **2 s** | **3 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | N/A | N/A | N/A |
| **10 km < rJB < 20 km** | N/A | N/A | N/A |
| **20 km < rJB < 40 km** | N/A | N/A | N/A |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/CAR_mag_6_6.5_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_6_6.5_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_6_6.5_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/CAR_mag_6_6.5_dist_80_160_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_6_6.5_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_6_6.5_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/CAR_mag_6_6.5_dist_160_200_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_6_6.5_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_6_6.5_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) |
#### CAR, 6 < Mw < 6.5, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare CS Study 17.3 3-D to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| N/A | N/A | N/A |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/CAR_mag_6_6.5_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/CAR_mag_6_6.5_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/CAR_mag_6_6.5_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
### CAR, 6.5 < Mw < 7
4313 Ruptures
#### CAR, 6.5 < Mw < 7, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/CS Study 17.3 3-D single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **2 s** | **3 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/CAR_mag_6.5_7_dist_0_10_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_6.5_7_dist_0_10_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_6.5_7_dist_0_10_5s_NGAWest_2014_NoIdr_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/CAR_mag_6.5_7_dist_10_20_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_6.5_7_dist_10_20_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_6.5_7_dist_10_20_5s_NGAWest_2014_NoIdr_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/CAR_mag_6.5_7_dist_20_40_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_6.5_7_dist_20_40_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_6.5_7_dist_20_40_5s_NGAWest_2014_NoIdr_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/CAR_mag_6.5_7_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_6.5_7_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_6.5_7_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/CAR_mag_6.5_7_dist_80_160_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_6.5_7_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_6.5_7_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/CAR_mag_6.5_7_dist_160_200_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_6.5_7_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_6.5_7_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) |
#### CAR, 6.5 < Mw < 7, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare CS Study 17.3 3-D to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/CAR_mag_6.5_7_dist_0_10_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/CAR_mag_6.5_7_dist_10_20_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/CAR_mag_6.5_7_dist_20_40_NGAWest_2014_NoIdr_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/CAR_mag_6.5_7_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/CAR_mag_6.5_7_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/CAR_mag_6.5_7_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
### CAR, 7 < Mw < 7.5
2233 Ruptures
#### CAR, 7 < Mw < 7.5, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/CS Study 17.3 3-D single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **2 s** | **3 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/CAR_mag_7_7.5_dist_0_10_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_7_7.5_dist_0_10_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_7_7.5_dist_0_10_5s_NGAWest_2014_NoIdr_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/CAR_mag_7_7.5_dist_10_20_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_7_7.5_dist_10_20_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_7_7.5_dist_10_20_5s_NGAWest_2014_NoIdr_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/CAR_mag_7_7.5_dist_20_40_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_7_7.5_dist_20_40_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_7_7.5_dist_20_40_5s_NGAWest_2014_NoIdr_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/CAR_mag_7_7.5_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_7_7.5_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_7_7.5_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/CAR_mag_7_7.5_dist_80_160_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_7_7.5_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_7_7.5_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/CAR_mag_7_7.5_dist_160_200_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_7_7.5_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_7_7.5_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) |
#### CAR, 7 < Mw < 7.5, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare CS Study 17.3 3-D to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/CAR_mag_7_7.5_dist_0_10_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/CAR_mag_7_7.5_dist_10_20_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/CAR_mag_7_7.5_dist_20_40_NGAWest_2014_NoIdr_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/CAR_mag_7_7.5_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/CAR_mag_7_7.5_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/CAR_mag_7_7.5_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
### CAR, 7.5 < Mw < 8
742 Ruptures
#### CAR, 7.5 < Mw < 8, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/CS Study 17.3 3-D single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **2 s** | **3 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/CAR_mag_7.5_8_dist_0_10_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_7.5_8_dist_0_10_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_7.5_8_dist_0_10_5s_NGAWest_2014_NoIdr_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/CAR_mag_7.5_8_dist_10_20_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_7.5_8_dist_10_20_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_7.5_8_dist_10_20_5s_NGAWest_2014_NoIdr_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/CAR_mag_7.5_8_dist_20_40_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_7.5_8_dist_20_40_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_7.5_8_dist_20_40_5s_NGAWest_2014_NoIdr_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/CAR_mag_7.5_8_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_7.5_8_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_7.5_8_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/CAR_mag_7.5_8_dist_80_160_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_7.5_8_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_7.5_8_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/CAR_mag_7.5_8_dist_160_200_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_7.5_8_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_7.5_8_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) |
#### CAR, 7.5 < Mw < 8, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare CS Study 17.3 3-D to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/CAR_mag_7.5_8_dist_0_10_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/CAR_mag_7.5_8_dist_10_20_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/CAR_mag_7.5_8_dist_20_40_NGAWest_2014_NoIdr_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/CAR_mag_7.5_8_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/CAR_mag_7.5_8_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/CAR_mag_7.5_8_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
### CAR, 8 < Mw < 9
80 Ruptures
#### CAR, 8 < Mw < 9, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/CS Study 17.3 3-D single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **2 s** | **3 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/CAR_mag_8_9_dist_0_10_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_8_9_dist_0_10_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_8_9_dist_0_10_5s_NGAWest_2014_NoIdr_scatter.png) |
| **10 km < rJB < 20 km** | N/A | N/A | N/A |
| **20 km < rJB < 40 km** | N/A | N/A | N/A |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/CAR_mag_8_9_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_8_9_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_8_9_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/CAR_mag_8_9_dist_80_160_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_8_9_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/CAR_mag_8_9_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | N/A | N/A | N/A |
#### CAR, 8 < Mw < 9, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare CS Study 17.3 3-D to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/CAR_mag_8_9_dist_0_10_NGAWest_2014_NoIdr_std_norm.png) | N/A | N/A |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/CAR_mag_8_9_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/CAR_mag_8_9_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | N/A |
### CAR, All Ruptures, Standard Normal Plots
*[(top)](#table-of-contents)*


z-score standard normal plots across all magnitudes/distances

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

![Standard Normal Plot](resources/CAR_all_mags_all_dists_NGAWest_2014_NoIdr_std_norm.png)
## Site BAK
*[(top)](#table-of-contents)*

*Location: 35.34444, -119.10445*
5723 ruptures within 200.0 km
### BAK, 6 < Mw < 6.5
204 Ruptures
#### BAK, 6 < Mw < 6.5, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/CS Study 17.3 3-D single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **2 s** | **3 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | N/A | N/A | N/A |
| **10 km < rJB < 20 km** | N/A | N/A | N/A |
| **20 km < rJB < 40 km** | N/A | N/A | N/A |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/BAK_mag_6_6.5_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/BAK_mag_6_6.5_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/BAK_mag_6_6.5_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/BAK_mag_6_6.5_dist_80_160_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/BAK_mag_6_6.5_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/BAK_mag_6_6.5_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/BAK_mag_6_6.5_dist_160_200_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/BAK_mag_6_6.5_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/BAK_mag_6_6.5_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) |
#### BAK, 6 < Mw < 6.5, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare CS Study 17.3 3-D to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| N/A | N/A | N/A |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/BAK_mag_6_6.5_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/BAK_mag_6_6.5_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/BAK_mag_6_6.5_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
### BAK, 6.5 < Mw < 7
4313 Ruptures
#### BAK, 6.5 < Mw < 7, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/CS Study 17.3 3-D single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **2 s** | **3 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | N/A | N/A | N/A |
| **10 km < rJB < 20 km** | N/A | N/A | N/A |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/BAK_mag_6.5_7_dist_20_40_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/BAK_mag_6.5_7_dist_20_40_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/BAK_mag_6.5_7_dist_20_40_5s_NGAWest_2014_NoIdr_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/BAK_mag_6.5_7_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/BAK_mag_6.5_7_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/BAK_mag_6.5_7_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/BAK_mag_6.5_7_dist_80_160_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/BAK_mag_6.5_7_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/BAK_mag_6.5_7_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/BAK_mag_6.5_7_dist_160_200_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/BAK_mag_6.5_7_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/BAK_mag_6.5_7_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) |
#### BAK, 6.5 < Mw < 7, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare CS Study 17.3 3-D to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| N/A | N/A | ![Standard Normal Plot](resources/BAK_mag_6.5_7_dist_20_40_NGAWest_2014_NoIdr_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/BAK_mag_6.5_7_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/BAK_mag_6.5_7_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/BAK_mag_6.5_7_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
### BAK, 7 < Mw < 7.5
2233 Ruptures
#### BAK, 7 < Mw < 7.5, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/CS Study 17.3 3-D single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **2 s** | **3 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | N/A | N/A | N/A |
| **10 km < rJB < 20 km** | N/A | N/A | N/A |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/BAK_mag_7_7.5_dist_20_40_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/BAK_mag_7_7.5_dist_20_40_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/BAK_mag_7_7.5_dist_20_40_5s_NGAWest_2014_NoIdr_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/BAK_mag_7_7.5_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/BAK_mag_7_7.5_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/BAK_mag_7_7.5_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/BAK_mag_7_7.5_dist_80_160_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/BAK_mag_7_7.5_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/BAK_mag_7_7.5_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/BAK_mag_7_7.5_dist_160_200_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/BAK_mag_7_7.5_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/BAK_mag_7_7.5_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) |
#### BAK, 7 < Mw < 7.5, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare CS Study 17.3 3-D to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| N/A | N/A | ![Standard Normal Plot](resources/BAK_mag_7_7.5_dist_20_40_NGAWest_2014_NoIdr_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/BAK_mag_7_7.5_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/BAK_mag_7_7.5_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/BAK_mag_7_7.5_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
### BAK, 7.5 < Mw < 8
742 Ruptures
#### BAK, 7.5 < Mw < 8, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/CS Study 17.3 3-D single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **2 s** | **3 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | N/A | N/A | N/A |
| **10 km < rJB < 20 km** | N/A | N/A | N/A |
| **20 km < rJB < 40 km** | N/A | N/A | N/A |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/BAK_mag_7.5_8_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/BAK_mag_7.5_8_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/BAK_mag_7.5_8_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/BAK_mag_7.5_8_dist_80_160_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/BAK_mag_7.5_8_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/BAK_mag_7.5_8_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/BAK_mag_7.5_8_dist_160_200_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/BAK_mag_7.5_8_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/BAK_mag_7.5_8_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) |
#### BAK, 7.5 < Mw < 8, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare CS Study 17.3 3-D to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| N/A | N/A | N/A |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/BAK_mag_7.5_8_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/BAK_mag_7.5_8_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/BAK_mag_7.5_8_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
### BAK, 8 < Mw < 9
80 Ruptures
#### BAK, 8 < Mw < 9, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/CS Study 17.3 3-D single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **2 s** | **3 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | N/A | N/A | N/A |
| **10 km < rJB < 20 km** | N/A | N/A | N/A |
| **20 km < rJB < 40 km** | N/A | N/A | N/A |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/BAK_mag_8_9_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/BAK_mag_8_9_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/BAK_mag_8_9_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/BAK_mag_8_9_dist_80_160_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/BAK_mag_8_9_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/BAK_mag_8_9_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/BAK_mag_8_9_dist_160_200_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/BAK_mag_8_9_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/BAK_mag_8_9_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) |
#### BAK, 8 < Mw < 9, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare CS Study 17.3 3-D to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| N/A | N/A | N/A |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/BAK_mag_8_9_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/BAK_mag_8_9_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/BAK_mag_8_9_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
### BAK, All Ruptures, Standard Normal Plots
*[(top)](#table-of-contents)*


z-score standard normal plots across all magnitudes/distances

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

![Standard Normal Plot](resources/BAK_all_mags_all_dists_NGAWest_2014_NoIdr_std_norm.png)
## Site SBR
*[(top)](#table-of-contents)*

*Location: 34.42083, -119.69819*
4749 ruptures within 200.0 km
### SBR, 6 < Mw < 6.5
204 Ruptures
#### SBR, 6 < Mw < 6.5, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/CS Study 17.3 3-D single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **2 s** | **3 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/SBR_mag_6_6.5_dist_0_10_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_6_6.5_dist_0_10_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_6_6.5_dist_0_10_5s_NGAWest_2014_NoIdr_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/SBR_mag_6_6.5_dist_10_20_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_6_6.5_dist_10_20_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_6_6.5_dist_10_20_5s_NGAWest_2014_NoIdr_scatter.png) |
| **20 km < rJB < 40 km** | N/A | N/A | N/A |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/SBR_mag_6_6.5_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_6_6.5_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_6_6.5_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/SBR_mag_6_6.5_dist_80_160_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_6_6.5_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_6_6.5_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/SBR_mag_6_6.5_dist_160_200_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_6_6.5_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_6_6.5_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) |
#### SBR, 6 < Mw < 6.5, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare CS Study 17.3 3-D to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/SBR_mag_6_6.5_dist_0_10_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SBR_mag_6_6.5_dist_10_20_NGAWest_2014_NoIdr_std_norm.png) | N/A |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/SBR_mag_6_6.5_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SBR_mag_6_6.5_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SBR_mag_6_6.5_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
### SBR, 6.5 < Mw < 7
4313 Ruptures
#### SBR, 6.5 < Mw < 7, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/CS Study 17.3 3-D single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **2 s** | **3 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/SBR_mag_6.5_7_dist_0_10_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_6.5_7_dist_0_10_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_6.5_7_dist_0_10_5s_NGAWest_2014_NoIdr_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/SBR_mag_6.5_7_dist_10_20_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_6.5_7_dist_10_20_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_6.5_7_dist_10_20_5s_NGAWest_2014_NoIdr_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/SBR_mag_6.5_7_dist_20_40_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_6.5_7_dist_20_40_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_6.5_7_dist_20_40_5s_NGAWest_2014_NoIdr_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/SBR_mag_6.5_7_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_6.5_7_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_6.5_7_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/SBR_mag_6.5_7_dist_80_160_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_6.5_7_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_6.5_7_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/SBR_mag_6.5_7_dist_160_200_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_6.5_7_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_6.5_7_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) |
#### SBR, 6.5 < Mw < 7, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare CS Study 17.3 3-D to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/SBR_mag_6.5_7_dist_0_10_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SBR_mag_6.5_7_dist_10_20_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SBR_mag_6.5_7_dist_20_40_NGAWest_2014_NoIdr_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/SBR_mag_6.5_7_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SBR_mag_6.5_7_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SBR_mag_6.5_7_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
### SBR, 7 < Mw < 7.5
2233 Ruptures
#### SBR, 7 < Mw < 7.5, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/CS Study 17.3 3-D single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **2 s** | **3 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/SBR_mag_7_7.5_dist_0_10_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_7_7.5_dist_0_10_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_7_7.5_dist_0_10_5s_NGAWest_2014_NoIdr_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/SBR_mag_7_7.5_dist_10_20_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_7_7.5_dist_10_20_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_7_7.5_dist_10_20_5s_NGAWest_2014_NoIdr_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/SBR_mag_7_7.5_dist_20_40_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_7_7.5_dist_20_40_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_7_7.5_dist_20_40_5s_NGAWest_2014_NoIdr_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/SBR_mag_7_7.5_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_7_7.5_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_7_7.5_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/SBR_mag_7_7.5_dist_80_160_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_7_7.5_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_7_7.5_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/SBR_mag_7_7.5_dist_160_200_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_7_7.5_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_7_7.5_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) |
#### SBR, 7 < Mw < 7.5, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare CS Study 17.3 3-D to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/SBR_mag_7_7.5_dist_0_10_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SBR_mag_7_7.5_dist_10_20_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SBR_mag_7_7.5_dist_20_40_NGAWest_2014_NoIdr_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/SBR_mag_7_7.5_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SBR_mag_7_7.5_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SBR_mag_7_7.5_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
### SBR, 7.5 < Mw < 8
742 Ruptures
#### SBR, 7.5 < Mw < 8, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/CS Study 17.3 3-D single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **2 s** | **3 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/SBR_mag_7.5_8_dist_0_10_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_7.5_8_dist_0_10_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_7.5_8_dist_0_10_5s_NGAWest_2014_NoIdr_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/SBR_mag_7.5_8_dist_10_20_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_7.5_8_dist_10_20_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_7.5_8_dist_10_20_5s_NGAWest_2014_NoIdr_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/SBR_mag_7.5_8_dist_20_40_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_7.5_8_dist_20_40_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_7.5_8_dist_20_40_5s_NGAWest_2014_NoIdr_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/SBR_mag_7.5_8_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_7.5_8_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_7.5_8_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/SBR_mag_7.5_8_dist_80_160_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_7.5_8_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_7.5_8_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/SBR_mag_7.5_8_dist_160_200_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_7.5_8_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_7.5_8_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) |
#### SBR, 7.5 < Mw < 8, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare CS Study 17.3 3-D to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/SBR_mag_7.5_8_dist_0_10_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SBR_mag_7.5_8_dist_10_20_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SBR_mag_7.5_8_dist_20_40_NGAWest_2014_NoIdr_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/SBR_mag_7.5_8_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SBR_mag_7.5_8_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SBR_mag_7.5_8_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
### SBR, 8 < Mw < 9
80 Ruptures
#### SBR, 8 < Mw < 9, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/CS Study 17.3 3-D single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **2 s** | **3 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | N/A | N/A | N/A |
| **10 km < rJB < 20 km** | N/A | N/A | N/A |
| **20 km < rJB < 40 km** | N/A | N/A | N/A |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/SBR_mag_8_9_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_8_9_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_8_9_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/SBR_mag_8_9_dist_80_160_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_8_9_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_8_9_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/SBR_mag_8_9_dist_160_200_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_8_9_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/SBR_mag_8_9_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) |
#### SBR, 8 < Mw < 9, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare CS Study 17.3 3-D to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| N/A | N/A | N/A |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/SBR_mag_8_9_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SBR_mag_8_9_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/SBR_mag_8_9_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
### SBR, All Ruptures, Standard Normal Plots
*[(top)](#table-of-contents)*


z-score standard normal plots across all magnitudes/distances

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

![Standard Normal Plot](resources/SBR_all_mags_all_dists_NGAWest_2014_NoIdr_std_norm.png)
## Site VENT
*[(top)](#table-of-contents)*

*Location: 34.27464, -119.229004*
5740 ruptures within 200.0 km
### VENT, 6 < Mw < 6.5
204 Ruptures
#### VENT, 6 < Mw < 6.5, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/CS Study 17.3 3-D single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **2 s** | **3 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/VENT_mag_6_6.5_dist_0_10_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_6_6.5_dist_0_10_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_6_6.5_dist_0_10_5s_NGAWest_2014_NoIdr_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/VENT_mag_6_6.5_dist_10_20_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_6_6.5_dist_10_20_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_6_6.5_dist_10_20_5s_NGAWest_2014_NoIdr_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/VENT_mag_6_6.5_dist_20_40_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_6_6.5_dist_20_40_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_6_6.5_dist_20_40_5s_NGAWest_2014_NoIdr_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/VENT_mag_6_6.5_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_6_6.5_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_6_6.5_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/VENT_mag_6_6.5_dist_80_160_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_6_6.5_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_6_6.5_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/VENT_mag_6_6.5_dist_160_200_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_6_6.5_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_6_6.5_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) |
#### VENT, 6 < Mw < 6.5, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare CS Study 17.3 3-D to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/VENT_mag_6_6.5_dist_0_10_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/VENT_mag_6_6.5_dist_10_20_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/VENT_mag_6_6.5_dist_20_40_NGAWest_2014_NoIdr_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/VENT_mag_6_6.5_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/VENT_mag_6_6.5_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/VENT_mag_6_6.5_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
### VENT, 6.5 < Mw < 7
4313 Ruptures
#### VENT, 6.5 < Mw < 7, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/CS Study 17.3 3-D single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **2 s** | **3 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/VENT_mag_6.5_7_dist_0_10_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_6.5_7_dist_0_10_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_6.5_7_dist_0_10_5s_NGAWest_2014_NoIdr_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/VENT_mag_6.5_7_dist_10_20_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_6.5_7_dist_10_20_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_6.5_7_dist_10_20_5s_NGAWest_2014_NoIdr_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/VENT_mag_6.5_7_dist_20_40_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_6.5_7_dist_20_40_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_6.5_7_dist_20_40_5s_NGAWest_2014_NoIdr_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/VENT_mag_6.5_7_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_6.5_7_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_6.5_7_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/VENT_mag_6.5_7_dist_80_160_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_6.5_7_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_6.5_7_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/VENT_mag_6.5_7_dist_160_200_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_6.5_7_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_6.5_7_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) |
#### VENT, 6.5 < Mw < 7, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare CS Study 17.3 3-D to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/VENT_mag_6.5_7_dist_0_10_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/VENT_mag_6.5_7_dist_10_20_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/VENT_mag_6.5_7_dist_20_40_NGAWest_2014_NoIdr_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/VENT_mag_6.5_7_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/VENT_mag_6.5_7_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/VENT_mag_6.5_7_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
### VENT, 7 < Mw < 7.5
2233 Ruptures
#### VENT, 7 < Mw < 7.5, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/CS Study 17.3 3-D single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **2 s** | **3 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/VENT_mag_7_7.5_dist_0_10_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_7_7.5_dist_0_10_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_7_7.5_dist_0_10_5s_NGAWest_2014_NoIdr_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/VENT_mag_7_7.5_dist_10_20_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_7_7.5_dist_10_20_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_7_7.5_dist_10_20_5s_NGAWest_2014_NoIdr_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/VENT_mag_7_7.5_dist_20_40_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_7_7.5_dist_20_40_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_7_7.5_dist_20_40_5s_NGAWest_2014_NoIdr_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/VENT_mag_7_7.5_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_7_7.5_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_7_7.5_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/VENT_mag_7_7.5_dist_80_160_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_7_7.5_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_7_7.5_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/VENT_mag_7_7.5_dist_160_200_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_7_7.5_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_7_7.5_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) |
#### VENT, 7 < Mw < 7.5, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare CS Study 17.3 3-D to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/VENT_mag_7_7.5_dist_0_10_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/VENT_mag_7_7.5_dist_10_20_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/VENT_mag_7_7.5_dist_20_40_NGAWest_2014_NoIdr_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/VENT_mag_7_7.5_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/VENT_mag_7_7.5_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/VENT_mag_7_7.5_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
### VENT, 7.5 < Mw < 8
742 Ruptures
#### VENT, 7.5 < Mw < 8, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/CS Study 17.3 3-D single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **2 s** | **3 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | ![Scatter Plot](resources/VENT_mag_7.5_8_dist_0_10_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_7.5_8_dist_0_10_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_7.5_8_dist_0_10_5s_NGAWest_2014_NoIdr_scatter.png) |
| **10 km < rJB < 20 km** | ![Scatter Plot](resources/VENT_mag_7.5_8_dist_10_20_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_7.5_8_dist_10_20_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_7.5_8_dist_10_20_5s_NGAWest_2014_NoIdr_scatter.png) |
| **20 km < rJB < 40 km** | ![Scatter Plot](resources/VENT_mag_7.5_8_dist_20_40_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_7.5_8_dist_20_40_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_7.5_8_dist_20_40_5s_NGAWest_2014_NoIdr_scatter.png) |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/VENT_mag_7.5_8_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_7.5_8_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_7.5_8_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/VENT_mag_7.5_8_dist_80_160_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_7.5_8_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_7.5_8_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | ![Scatter Plot](resources/VENT_mag_7.5_8_dist_160_200_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_7.5_8_dist_160_200_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_7.5_8_dist_160_200_5s_NGAWest_2014_NoIdr_scatter.png) |
#### VENT, 7.5 < Mw < 8, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare CS Study 17.3 3-D to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| ![Standard Normal Plot](resources/VENT_mag_7.5_8_dist_0_10_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/VENT_mag_7.5_8_dist_10_20_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/VENT_mag_7.5_8_dist_20_40_NGAWest_2014_NoIdr_std_norm.png) |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/VENT_mag_7.5_8_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/VENT_mag_7.5_8_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/VENT_mag_7.5_8_dist_160_200_NGAWest_2014_NoIdr_std_norm.png) |
### VENT, 8 < Mw < 9
80 Ruptures
#### VENT, 8 < Mw < 9, Scatter Plots
*[(top)](#table-of-contents)*

**Legend**
* Red +: GMPE Mean/CS Study 17.3 3-D single rupture comparison
* Yellow Region: Factor of 2 above & below
* Green Line: Linear Regression

| **Distance Bin** | **2 s** | **3 s** | **5 s** |
|-----|-----|-----|-----|
| **0 km < rJB < 10 km** | N/A | N/A | N/A |
| **10 km < rJB < 20 km** | N/A | N/A | N/A |
| **20 km < rJB < 40 km** | N/A | N/A | N/A |
| **40 km < rJB < 80 km** | ![Scatter Plot](resources/VENT_mag_8_9_dist_40_80_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_8_9_dist_40_80_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_8_9_dist_40_80_5s_NGAWest_2014_NoIdr_scatter.png) |
| **80 km < rJB < 160 km** | ![Scatter Plot](resources/VENT_mag_8_9_dist_80_160_2s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_8_9_dist_80_160_3s_NGAWest_2014_NoIdr_scatter.png) | ![Scatter Plot](resources/VENT_mag_8_9_dist_80_160_5s_NGAWest_2014_NoIdr_scatter.png) |
| **160 km < rJB < 200 km** | N/A | N/A | N/A |
#### VENT, 8 < Mw < 9, Standard Normal Plots
*[(top)](#table-of-contents)*

These plots compare CS Study 17.3 3-D to the full GMPE log-normal distributions. Each rupture's GMPE distribution is converted to a standard log-normal distribution, and the z-score is computed for each rupture:

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

| **0 km < rJB < 10 km** | **10 km < rJB < 20 km** | **20 km < rJB < 40 km** |
|-----|-----|-----|
| N/A | N/A | N/A |
| **40 km < rJB < 80 km** | **80 km < rJB < 160 km** | **160 km < rJB < 200 km** |
| ![Standard Normal Plot](resources/VENT_mag_8_9_dist_40_80_NGAWest_2014_NoIdr_std_norm.png) | ![Standard Normal Plot](resources/VENT_mag_8_9_dist_80_160_NGAWest_2014_NoIdr_std_norm.png) | N/A |
### VENT, All Ruptures, Standard Normal Plots
*[(top)](#table-of-contents)*


z-score standard normal plots across all magnitudes/distances

**z-score**: (ln(*CS Study 17.3 3-D*) - ln(*GMPE-mean*)) / *GMPE-sigma*

**Legend**
* Black Line: Standard Normal distribution (in natural log space)
* Gray Histogram: z-score for each rupture
* Blue Dashed Line: CS Study 17.3 3-D Mean

![Standard Normal Plot](resources/VENT_all_mags_all_dists_NGAWest_2014_NoIdr_std_norm.png)
## Hazard Curves
*[(top)](#table-of-contents)*

**Legend**:
* Black Solid Line: CS Study 17.3 3-D
* Blue Solid Line: NGAWest_2014_NoIdr
* Blue Dashed Line: NGAWest_2014_NoIdr 3-sigma truncation
* Blue Dotted Line: NGAWest_2014_NoIdr 2-sigma truncation
* Blue Dotted and dashed Line: NGAWest_2014_NoIdr 1-sigma truncation
* Green Dashed Line: NGAWest_2014_NoIdr mean values only
* Gray Dashed Lines: 1000 yr, 2500 yr, 10000 yr return periods

| Site | 2s | 3s | 5s |
|-----|-----|-----|-----|
| **LEM** | ![Hazard Curve](resources/LEM_curves_2.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/LEM_curves_3.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/LEM_curves_5.0s_NGAWest_2014_NoIdr.png) |
| **SLO** | ![Hazard Curve](resources/SLO_curves_2.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/SLO_curves_3.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/SLO_curves_5.0s_NGAWest_2014_NoIdr.png) |
| **CAR** | ![Hazard Curve](resources/CAR_curves_2.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/CAR_curves_3.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/CAR_curves_5.0s_NGAWest_2014_NoIdr.png) |
| **BAK** | ![Hazard Curve](resources/BAK_curves_2.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/BAK_curves_3.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/BAK_curves_5.0s_NGAWest_2014_NoIdr.png) |
| **SBR** | ![Hazard Curve](resources/SBR_curves_2.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/SBR_curves_3.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/SBR_curves_5.0s_NGAWest_2014_NoIdr.png) |
| **VENT** | ![Hazard Curve](resources/VENT_curves_2.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/VENT_curves_3.0s_NGAWest_2014_NoIdr.png) | ![Hazard Curve](resources/VENT_curves_5.0s_NGAWest_2014_NoIdr.png) |
