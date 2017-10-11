# Bruce 2194 Long BBP/GMPE Comparisons

| Catalog | Bruce 2194 Long |
|-----|-----|
| Author | Bruce Shaw (extended by Jacqui Gilchrist), 2017/08/31 |
| Description | Catalog with decent large event scaling and distribution of sizes while not using any of the enhanced frictional weakening terms. |
| Fault/Def Model | Fault Model 3.1, Geologic |
| Slim Velocity | 1.0 m/s |
| Average Element Area | 1.34 km^2 |

## Table Of Contents
* [Site USC](#site-usc)
  * [USC, 6.5 < Mw < 7](#usc-65--mw--7)
    * [USC, 6.5 < Mw < 7, 1s SA Scatter Plots](#usc-65--mw--7-1s-sa-scatter-plots)
    * [USC, 6.5 < Mw < 7, 2s SA Scatter Plots](#usc-65--mw--7-2s-sa-scatter-plots)
    * [USC, 6.5 < Mw < 7, 3s SA Scatter Plots](#usc-65--mw--7-3s-sa-scatter-plots)
    * [USC, 6.5 < Mw < 7, 5s SA Scatter Plots](#usc-65--mw--7-5s-sa-scatter-plots)
    * [USC, 6.5 < Mw < 7, 10s SA Scatter Plots](#usc-65--mw--7-10s-sa-scatter-plots)
    * [USC, 6.5 < Mw < 7, Standard Normal Plots](#usc-65--mw--7-standard-normal-plots)
  * [USC, 7 < Mw < 8](#usc-7--mw--8)
    * [USC, 7 < Mw < 8, 1s SA Scatter Plots](#usc-7--mw--8-1s-sa-scatter-plots)
    * [USC, 7 < Mw < 8, 2s SA Scatter Plots](#usc-7--mw--8-2s-sa-scatter-plots)
    * [USC, 7 < Mw < 8, 3s SA Scatter Plots](#usc-7--mw--8-3s-sa-scatter-plots)
    * [USC, 7 < Mw < 8, 5s SA Scatter Plots](#usc-7--mw--8-5s-sa-scatter-plots)
    * [USC, 7 < Mw < 8, 10s SA Scatter Plots](#usc-7--mw--8-10s-sa-scatter-plots)
    * [USC, 7 < Mw < 8, Standard Normal Plots](#usc-7--mw--8-standard-normal-plots)
  * [USC, 8 < Mw < 8.5](#usc-8--mw--85)
    * [USC, 8 < Mw < 8.5, 1s SA Scatter Plots](#usc-8--mw--85-1s-sa-scatter-plots)
    * [USC, 8 < Mw < 8.5, 2s SA Scatter Plots](#usc-8--mw--85-2s-sa-scatter-plots)
    * [USC, 8 < Mw < 8.5, 3s SA Scatter Plots](#usc-8--mw--85-3s-sa-scatter-plots)
    * [USC, 8 < Mw < 8.5, 5s SA Scatter Plots](#usc-8--mw--85-5s-sa-scatter-plots)
    * [USC, 8 < Mw < 8.5, 10s SA Scatter Plots](#usc-8--mw--85-10s-sa-scatter-plots)
    * [USC, 8 < Mw < 8.5, Standard Normal Plots](#usc-8--mw--85-standard-normal-plots)
* [Site SBSM](#site-sbsm)
  * [SBSM, 6.5 < Mw < 7](#sbsm-65--mw--7)
    * [SBSM, 6.5 < Mw < 7, 1s SA Scatter Plots](#sbsm-65--mw--7-1s-sa-scatter-plots)
    * [SBSM, 6.5 < Mw < 7, 2s SA Scatter Plots](#sbsm-65--mw--7-2s-sa-scatter-plots)
    * [SBSM, 6.5 < Mw < 7, 3s SA Scatter Plots](#sbsm-65--mw--7-3s-sa-scatter-plots)
    * [SBSM, 6.5 < Mw < 7, 5s SA Scatter Plots](#sbsm-65--mw--7-5s-sa-scatter-plots)
    * [SBSM, 6.5 < Mw < 7, 10s SA Scatter Plots](#sbsm-65--mw--7-10s-sa-scatter-plots)
    * [SBSM, 6.5 < Mw < 7, Standard Normal Plots](#sbsm-65--mw--7-standard-normal-plots)
  * [SBSM, 7 < Mw < 8](#sbsm-7--mw--8)
    * [SBSM, 7 < Mw < 8, 1s SA Scatter Plots](#sbsm-7--mw--8-1s-sa-scatter-plots)
    * [SBSM, 7 < Mw < 8, 2s SA Scatter Plots](#sbsm-7--mw--8-2s-sa-scatter-plots)
    * [SBSM, 7 < Mw < 8, 3s SA Scatter Plots](#sbsm-7--mw--8-3s-sa-scatter-plots)
    * [SBSM, 7 < Mw < 8, 5s SA Scatter Plots](#sbsm-7--mw--8-5s-sa-scatter-plots)
    * [SBSM, 7 < Mw < 8, 10s SA Scatter Plots](#sbsm-7--mw--8-10s-sa-scatter-plots)
    * [SBSM, 7 < Mw < 8, Standard Normal Plots](#sbsm-7--mw--8-standard-normal-plots)
  * [SBSM, 8 < Mw < 8.5](#sbsm-8--mw--85)
    * [SBSM, 8 < Mw < 8.5, 1s SA Scatter Plots](#sbsm-8--mw--85-1s-sa-scatter-plots)
    * [SBSM, 8 < Mw < 8.5, 2s SA Scatter Plots](#sbsm-8--mw--85-2s-sa-scatter-plots)
    * [SBSM, 8 < Mw < 8.5, 3s SA Scatter Plots](#sbsm-8--mw--85-3s-sa-scatter-plots)
    * [SBSM, 8 < Mw < 8.5, 5s SA Scatter Plots](#sbsm-8--mw--85-5s-sa-scatter-plots)
    * [SBSM, 8 < Mw < 8.5, 10s SA Scatter Plots](#sbsm-8--mw--85-10s-sa-scatter-plots)
    * [SBSM, 8 < Mw < 8.5, Standard Normal Plots](#sbsm-8--mw--85-standard-normal-plots)
## Site USC
*[(top)](#table-of-contents)*

*Location: 34.0192, -118.286*
66200 ruptures within 200.0 km
### USC, 6.5 < Mw < 7
*[(top)](#table-of-contents)*

#### USC, 6.5 < Mw < 7, 1s SA Scatter Plots
*[(top)](#table-of-contents)*


| GMPE | 0 km < rJB < 70 km | 70 km < rJB < 140 km | 140 km < rJB < 200 km |
|-----|-----|-----|-----|
| NGAWest_2014 | ![Scatter Plot](resources/USC_mag_6.5_7_dist_0_701s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_70_1401s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_140_2001s_NGAWest_2014_scatter.png) |
| ASK2014 | ![Scatter Plot](resources/USC_mag_6.5_7_dist_0_701s_ASK2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_70_1401s_ASK2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_140_2001s_ASK2014_scatter.png) |
| BSSA2014 | ![Scatter Plot](resources/USC_mag_6.5_7_dist_0_701s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_70_1401s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_140_2001s_BSSA2014_scatter.png) |
| CB2014 | ![Scatter Plot](resources/USC_mag_6.5_7_dist_0_701s_CB2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_70_1401s_CB2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_140_2001s_CB2014_scatter.png) |
| CY2014 | ![Scatter Plot](resources/USC_mag_6.5_7_dist_0_701s_CY2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_70_1401s_CY2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_140_2001s_CY2014_scatter.png) |
#### USC, 6.5 < Mw < 7, 2s SA Scatter Plots
*[(top)](#table-of-contents)*


| GMPE | 0 km < rJB < 70 km | 70 km < rJB < 140 km | 140 km < rJB < 200 km |
|-----|-----|-----|-----|
| NGAWest_2014 | ![Scatter Plot](resources/USC_mag_6.5_7_dist_0_702s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_70_1402s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_140_2002s_NGAWest_2014_scatter.png) |
| ASK2014 | ![Scatter Plot](resources/USC_mag_6.5_7_dist_0_702s_ASK2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_70_1402s_ASK2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_140_2002s_ASK2014_scatter.png) |
| BSSA2014 | ![Scatter Plot](resources/USC_mag_6.5_7_dist_0_702s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_70_1402s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_140_2002s_BSSA2014_scatter.png) |
| CB2014 | ![Scatter Plot](resources/USC_mag_6.5_7_dist_0_702s_CB2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_70_1402s_CB2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_140_2002s_CB2014_scatter.png) |
| CY2014 | ![Scatter Plot](resources/USC_mag_6.5_7_dist_0_702s_CY2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_70_1402s_CY2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_140_2002s_CY2014_scatter.png) |
#### USC, 6.5 < Mw < 7, 3s SA Scatter Plots
*[(top)](#table-of-contents)*


| GMPE | 0 km < rJB < 70 km | 70 km < rJB < 140 km | 140 km < rJB < 200 km |
|-----|-----|-----|-----|
| NGAWest_2014 | ![Scatter Plot](resources/USC_mag_6.5_7_dist_0_703s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_70_1403s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_140_2003s_NGAWest_2014_scatter.png) |
| ASK2014 | ![Scatter Plot](resources/USC_mag_6.5_7_dist_0_703s_ASK2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_70_1403s_ASK2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_140_2003s_ASK2014_scatter.png) |
| BSSA2014 | ![Scatter Plot](resources/USC_mag_6.5_7_dist_0_703s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_70_1403s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_140_2003s_BSSA2014_scatter.png) |
| CB2014 | ![Scatter Plot](resources/USC_mag_6.5_7_dist_0_703s_CB2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_70_1403s_CB2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_140_2003s_CB2014_scatter.png) |
| CY2014 | ![Scatter Plot](resources/USC_mag_6.5_7_dist_0_703s_CY2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_70_1403s_CY2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_140_2003s_CY2014_scatter.png) |
#### USC, 6.5 < Mw < 7, 5s SA Scatter Plots
*[(top)](#table-of-contents)*


| GMPE | 0 km < rJB < 70 km | 70 km < rJB < 140 km | 140 km < rJB < 200 km |
|-----|-----|-----|-----|
| NGAWest_2014 | ![Scatter Plot](resources/USC_mag_6.5_7_dist_0_705s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_70_1405s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_140_2005s_NGAWest_2014_scatter.png) |
| ASK2014 | ![Scatter Plot](resources/USC_mag_6.5_7_dist_0_705s_ASK2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_70_1405s_ASK2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_140_2005s_ASK2014_scatter.png) |
| BSSA2014 | ![Scatter Plot](resources/USC_mag_6.5_7_dist_0_705s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_70_1405s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_140_2005s_BSSA2014_scatter.png) |
| CB2014 | ![Scatter Plot](resources/USC_mag_6.5_7_dist_0_705s_CB2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_70_1405s_CB2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_140_2005s_CB2014_scatter.png) |
| CY2014 | ![Scatter Plot](resources/USC_mag_6.5_7_dist_0_705s_CY2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_70_1405s_CY2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_140_2005s_CY2014_scatter.png) |
#### USC, 6.5 < Mw < 7, 10s SA Scatter Plots
*[(top)](#table-of-contents)*


| GMPE | 0 km < rJB < 70 km | 70 km < rJB < 140 km | 140 km < rJB < 200 km |
|-----|-----|-----|-----|
| NGAWest_2014 | ![Scatter Plot](resources/USC_mag_6.5_7_dist_0_7010s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_70_14010s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_140_20010s_NGAWest_2014_scatter.png) |
| ASK2014 | ![Scatter Plot](resources/USC_mag_6.5_7_dist_0_7010s_ASK2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_70_14010s_ASK2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_140_20010s_ASK2014_scatter.png) |
| BSSA2014 | ![Scatter Plot](resources/USC_mag_6.5_7_dist_0_7010s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_70_14010s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_140_20010s_BSSA2014_scatter.png) |
| CB2014 | ![Scatter Plot](resources/USC_mag_6.5_7_dist_0_7010s_CB2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_70_14010s_CB2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_140_20010s_CB2014_scatter.png) |
| CY2014 | ![Scatter Plot](resources/USC_mag_6.5_7_dist_0_7010s_CY2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_70_14010s_CY2014_scatter.png) | ![Scatter Plot](resources/USC_mag_6.5_7_dist_140_20010s_CY2014_scatter.png) |
#### USC, 6.5 < Mw < 7, Standard Normal Plots
*[(top)](#table-of-contents)*


| GMPE | 0 km < rJB < 70 km | 70 km < rJB < 140 km | 140 km < rJB < 200 km |
|-----|-----|-----|-----|
| NGAWest_2014 | ![Standard Normal Plot](resources/USC_mag_6.5_7_dist_0_70_NGAWest_2014_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_6.5_7_dist_70_140_NGAWest_2014_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_6.5_7_dist_140_200_NGAWest_2014_std_norm.png) |
| ASK2014 | ![Standard Normal Plot](resources/USC_mag_6.5_7_dist_0_70_ASK2014_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_6.5_7_dist_70_140_ASK2014_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_6.5_7_dist_140_200_ASK2014_std_norm.png) |
| BSSA2014 | ![Standard Normal Plot](resources/USC_mag_6.5_7_dist_0_70_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_6.5_7_dist_70_140_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_6.5_7_dist_140_200_BSSA2014_std_norm.png) |
| CB2014 | ![Standard Normal Plot](resources/USC_mag_6.5_7_dist_0_70_CB2014_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_6.5_7_dist_70_140_CB2014_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_6.5_7_dist_140_200_CB2014_std_norm.png) |
| CY2014 | ![Standard Normal Plot](resources/USC_mag_6.5_7_dist_0_70_CY2014_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_6.5_7_dist_70_140_CY2014_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_6.5_7_dist_140_200_CY2014_std_norm.png) |
### USC, 7 < Mw < 8
*[(top)](#table-of-contents)*

#### USC, 7 < Mw < 8, 1s SA Scatter Plots
*[(top)](#table-of-contents)*


| GMPE | 0 km < rJB < 70 km | 70 km < rJB < 140 km | 140 km < rJB < 200 km |
|-----|-----|-----|-----|
| NGAWest_2014 | ![Scatter Plot](resources/USC_mag_7_8_dist_0_701s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_70_1401s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_140_2001s_NGAWest_2014_scatter.png) |
| ASK2014 | ![Scatter Plot](resources/USC_mag_7_8_dist_0_701s_ASK2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_70_1401s_ASK2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_140_2001s_ASK2014_scatter.png) |
| BSSA2014 | ![Scatter Plot](resources/USC_mag_7_8_dist_0_701s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_70_1401s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_140_2001s_BSSA2014_scatter.png) |
| CB2014 | ![Scatter Plot](resources/USC_mag_7_8_dist_0_701s_CB2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_70_1401s_CB2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_140_2001s_CB2014_scatter.png) |
| CY2014 | ![Scatter Plot](resources/USC_mag_7_8_dist_0_701s_CY2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_70_1401s_CY2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_140_2001s_CY2014_scatter.png) |
#### USC, 7 < Mw < 8, 2s SA Scatter Plots
*[(top)](#table-of-contents)*


| GMPE | 0 km < rJB < 70 km | 70 km < rJB < 140 km | 140 km < rJB < 200 km |
|-----|-----|-----|-----|
| NGAWest_2014 | ![Scatter Plot](resources/USC_mag_7_8_dist_0_702s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_70_1402s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_140_2002s_NGAWest_2014_scatter.png) |
| ASK2014 | ![Scatter Plot](resources/USC_mag_7_8_dist_0_702s_ASK2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_70_1402s_ASK2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_140_2002s_ASK2014_scatter.png) |
| BSSA2014 | ![Scatter Plot](resources/USC_mag_7_8_dist_0_702s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_70_1402s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_140_2002s_BSSA2014_scatter.png) |
| CB2014 | ![Scatter Plot](resources/USC_mag_7_8_dist_0_702s_CB2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_70_1402s_CB2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_140_2002s_CB2014_scatter.png) |
| CY2014 | ![Scatter Plot](resources/USC_mag_7_8_dist_0_702s_CY2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_70_1402s_CY2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_140_2002s_CY2014_scatter.png) |
#### USC, 7 < Mw < 8, 3s SA Scatter Plots
*[(top)](#table-of-contents)*


| GMPE | 0 km < rJB < 70 km | 70 km < rJB < 140 km | 140 km < rJB < 200 km |
|-----|-----|-----|-----|
| NGAWest_2014 | ![Scatter Plot](resources/USC_mag_7_8_dist_0_703s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_70_1403s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_140_2003s_NGAWest_2014_scatter.png) |
| ASK2014 | ![Scatter Plot](resources/USC_mag_7_8_dist_0_703s_ASK2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_70_1403s_ASK2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_140_2003s_ASK2014_scatter.png) |
| BSSA2014 | ![Scatter Plot](resources/USC_mag_7_8_dist_0_703s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_70_1403s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_140_2003s_BSSA2014_scatter.png) |
| CB2014 | ![Scatter Plot](resources/USC_mag_7_8_dist_0_703s_CB2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_70_1403s_CB2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_140_2003s_CB2014_scatter.png) |
| CY2014 | ![Scatter Plot](resources/USC_mag_7_8_dist_0_703s_CY2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_70_1403s_CY2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_140_2003s_CY2014_scatter.png) |
#### USC, 7 < Mw < 8, 5s SA Scatter Plots
*[(top)](#table-of-contents)*


| GMPE | 0 km < rJB < 70 km | 70 km < rJB < 140 km | 140 km < rJB < 200 km |
|-----|-----|-----|-----|
| NGAWest_2014 | ![Scatter Plot](resources/USC_mag_7_8_dist_0_705s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_70_1405s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_140_2005s_NGAWest_2014_scatter.png) |
| ASK2014 | ![Scatter Plot](resources/USC_mag_7_8_dist_0_705s_ASK2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_70_1405s_ASK2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_140_2005s_ASK2014_scatter.png) |
| BSSA2014 | ![Scatter Plot](resources/USC_mag_7_8_dist_0_705s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_70_1405s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_140_2005s_BSSA2014_scatter.png) |
| CB2014 | ![Scatter Plot](resources/USC_mag_7_8_dist_0_705s_CB2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_70_1405s_CB2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_140_2005s_CB2014_scatter.png) |
| CY2014 | ![Scatter Plot](resources/USC_mag_7_8_dist_0_705s_CY2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_70_1405s_CY2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_140_2005s_CY2014_scatter.png) |
#### USC, 7 < Mw < 8, 10s SA Scatter Plots
*[(top)](#table-of-contents)*


| GMPE | 0 km < rJB < 70 km | 70 km < rJB < 140 km | 140 km < rJB < 200 km |
|-----|-----|-----|-----|
| NGAWest_2014 | ![Scatter Plot](resources/USC_mag_7_8_dist_0_7010s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_70_14010s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_140_20010s_NGAWest_2014_scatter.png) |
| ASK2014 | ![Scatter Plot](resources/USC_mag_7_8_dist_0_7010s_ASK2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_70_14010s_ASK2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_140_20010s_ASK2014_scatter.png) |
| BSSA2014 | ![Scatter Plot](resources/USC_mag_7_8_dist_0_7010s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_70_14010s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_140_20010s_BSSA2014_scatter.png) |
| CB2014 | ![Scatter Plot](resources/USC_mag_7_8_dist_0_7010s_CB2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_70_14010s_CB2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_140_20010s_CB2014_scatter.png) |
| CY2014 | ![Scatter Plot](resources/USC_mag_7_8_dist_0_7010s_CY2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_70_14010s_CY2014_scatter.png) | ![Scatter Plot](resources/USC_mag_7_8_dist_140_20010s_CY2014_scatter.png) |
#### USC, 7 < Mw < 8, Standard Normal Plots
*[(top)](#table-of-contents)*


| GMPE | 0 km < rJB < 70 km | 70 km < rJB < 140 km | 140 km < rJB < 200 km |
|-----|-----|-----|-----|
| NGAWest_2014 | ![Standard Normal Plot](resources/USC_mag_7_8_dist_0_70_NGAWest_2014_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_7_8_dist_70_140_NGAWest_2014_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_7_8_dist_140_200_NGAWest_2014_std_norm.png) |
| ASK2014 | ![Standard Normal Plot](resources/USC_mag_7_8_dist_0_70_ASK2014_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_7_8_dist_70_140_ASK2014_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_7_8_dist_140_200_ASK2014_std_norm.png) |
| BSSA2014 | ![Standard Normal Plot](resources/USC_mag_7_8_dist_0_70_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_7_8_dist_70_140_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_7_8_dist_140_200_BSSA2014_std_norm.png) |
| CB2014 | ![Standard Normal Plot](resources/USC_mag_7_8_dist_0_70_CB2014_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_7_8_dist_70_140_CB2014_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_7_8_dist_140_200_CB2014_std_norm.png) |
| CY2014 | ![Standard Normal Plot](resources/USC_mag_7_8_dist_0_70_CY2014_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_7_8_dist_70_140_CY2014_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_7_8_dist_140_200_CY2014_std_norm.png) |
### USC, 8 < Mw < 8.5
*[(top)](#table-of-contents)*

#### USC, 8 < Mw < 8.5, 1s SA Scatter Plots
*[(top)](#table-of-contents)*


| GMPE | 0 km < rJB < 70 km | 70 km < rJB < 140 km |
|-----|-----|-----|
| NGAWest_2014 | ![Scatter Plot](resources/USC_mag_8_8.5_dist_0_701s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/USC_mag_8_8.5_dist_70_1401s_NGAWest_2014_scatter.png) | N/A |
| ASK2014 | ![Scatter Plot](resources/USC_mag_8_8.5_dist_0_701s_ASK2014_scatter.png) | ![Scatter Plot](resources/USC_mag_8_8.5_dist_70_1401s_ASK2014_scatter.png) | N/A |
| BSSA2014 | ![Scatter Plot](resources/USC_mag_8_8.5_dist_0_701s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_8_8.5_dist_70_1401s_BSSA2014_scatter.png) | N/A |
| CB2014 | ![Scatter Plot](resources/USC_mag_8_8.5_dist_0_701s_CB2014_scatter.png) | ![Scatter Plot](resources/USC_mag_8_8.5_dist_70_1401s_CB2014_scatter.png) | N/A |
| CY2014 | ![Scatter Plot](resources/USC_mag_8_8.5_dist_0_701s_CY2014_scatter.png) | ![Scatter Plot](resources/USC_mag_8_8.5_dist_70_1401s_CY2014_scatter.png) | N/A |
#### USC, 8 < Mw < 8.5, 2s SA Scatter Plots
*[(top)](#table-of-contents)*


| GMPE | 0 km < rJB < 70 km | 70 km < rJB < 140 km |
|-----|-----|-----|
| NGAWest_2014 | ![Scatter Plot](resources/USC_mag_8_8.5_dist_0_702s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/USC_mag_8_8.5_dist_70_1402s_NGAWest_2014_scatter.png) | N/A |
| ASK2014 | ![Scatter Plot](resources/USC_mag_8_8.5_dist_0_702s_ASK2014_scatter.png) | ![Scatter Plot](resources/USC_mag_8_8.5_dist_70_1402s_ASK2014_scatter.png) | N/A |
| BSSA2014 | ![Scatter Plot](resources/USC_mag_8_8.5_dist_0_702s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_8_8.5_dist_70_1402s_BSSA2014_scatter.png) | N/A |
| CB2014 | ![Scatter Plot](resources/USC_mag_8_8.5_dist_0_702s_CB2014_scatter.png) | ![Scatter Plot](resources/USC_mag_8_8.5_dist_70_1402s_CB2014_scatter.png) | N/A |
| CY2014 | ![Scatter Plot](resources/USC_mag_8_8.5_dist_0_702s_CY2014_scatter.png) | ![Scatter Plot](resources/USC_mag_8_8.5_dist_70_1402s_CY2014_scatter.png) | N/A |
#### USC, 8 < Mw < 8.5, 3s SA Scatter Plots
*[(top)](#table-of-contents)*


| GMPE | 0 km < rJB < 70 km | 70 km < rJB < 140 km |
|-----|-----|-----|
| NGAWest_2014 | ![Scatter Plot](resources/USC_mag_8_8.5_dist_0_703s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/USC_mag_8_8.5_dist_70_1403s_NGAWest_2014_scatter.png) | N/A |
| ASK2014 | ![Scatter Plot](resources/USC_mag_8_8.5_dist_0_703s_ASK2014_scatter.png) | ![Scatter Plot](resources/USC_mag_8_8.5_dist_70_1403s_ASK2014_scatter.png) | N/A |
| BSSA2014 | ![Scatter Plot](resources/USC_mag_8_8.5_dist_0_703s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_8_8.5_dist_70_1403s_BSSA2014_scatter.png) | N/A |
| CB2014 | ![Scatter Plot](resources/USC_mag_8_8.5_dist_0_703s_CB2014_scatter.png) | ![Scatter Plot](resources/USC_mag_8_8.5_dist_70_1403s_CB2014_scatter.png) | N/A |
| CY2014 | ![Scatter Plot](resources/USC_mag_8_8.5_dist_0_703s_CY2014_scatter.png) | ![Scatter Plot](resources/USC_mag_8_8.5_dist_70_1403s_CY2014_scatter.png) | N/A |
#### USC, 8 < Mw < 8.5, 5s SA Scatter Plots
*[(top)](#table-of-contents)*


| GMPE | 0 km < rJB < 70 km | 70 km < rJB < 140 km |
|-----|-----|-----|
| NGAWest_2014 | ![Scatter Plot](resources/USC_mag_8_8.5_dist_0_705s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/USC_mag_8_8.5_dist_70_1405s_NGAWest_2014_scatter.png) | N/A |
| ASK2014 | ![Scatter Plot](resources/USC_mag_8_8.5_dist_0_705s_ASK2014_scatter.png) | ![Scatter Plot](resources/USC_mag_8_8.5_dist_70_1405s_ASK2014_scatter.png) | N/A |
| BSSA2014 | ![Scatter Plot](resources/USC_mag_8_8.5_dist_0_705s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_8_8.5_dist_70_1405s_BSSA2014_scatter.png) | N/A |
| CB2014 | ![Scatter Plot](resources/USC_mag_8_8.5_dist_0_705s_CB2014_scatter.png) | ![Scatter Plot](resources/USC_mag_8_8.5_dist_70_1405s_CB2014_scatter.png) | N/A |
| CY2014 | ![Scatter Plot](resources/USC_mag_8_8.5_dist_0_705s_CY2014_scatter.png) | ![Scatter Plot](resources/USC_mag_8_8.5_dist_70_1405s_CY2014_scatter.png) | N/A |
#### USC, 8 < Mw < 8.5, 10s SA Scatter Plots
*[(top)](#table-of-contents)*


| GMPE | 0 km < rJB < 70 km | 70 km < rJB < 140 km |
|-----|-----|-----|
| NGAWest_2014 | ![Scatter Plot](resources/USC_mag_8_8.5_dist_0_7010s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/USC_mag_8_8.5_dist_70_14010s_NGAWest_2014_scatter.png) | N/A |
| ASK2014 | ![Scatter Plot](resources/USC_mag_8_8.5_dist_0_7010s_ASK2014_scatter.png) | ![Scatter Plot](resources/USC_mag_8_8.5_dist_70_14010s_ASK2014_scatter.png) | N/A |
| BSSA2014 | ![Scatter Plot](resources/USC_mag_8_8.5_dist_0_7010s_BSSA2014_scatter.png) | ![Scatter Plot](resources/USC_mag_8_8.5_dist_70_14010s_BSSA2014_scatter.png) | N/A |
| CB2014 | ![Scatter Plot](resources/USC_mag_8_8.5_dist_0_7010s_CB2014_scatter.png) | ![Scatter Plot](resources/USC_mag_8_8.5_dist_70_14010s_CB2014_scatter.png) | N/A |
| CY2014 | ![Scatter Plot](resources/USC_mag_8_8.5_dist_0_7010s_CY2014_scatter.png) | ![Scatter Plot](resources/USC_mag_8_8.5_dist_70_14010s_CY2014_scatter.png) | N/A |
#### USC, 8 < Mw < 8.5, Standard Normal Plots
*[(top)](#table-of-contents)*


| GMPE | 0 km < rJB < 70 km | 70 km < rJB < 140 km |
|-----|-----|-----|
| NGAWest_2014 | ![Standard Normal Plot](resources/USC_mag_8_8.5_dist_0_70_NGAWest_2014_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_8_8.5_dist_70_140_NGAWest_2014_std_norm.png) |
| ASK2014 | ![Standard Normal Plot](resources/USC_mag_8_8.5_dist_0_70_ASK2014_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_8_8.5_dist_70_140_ASK2014_std_norm.png) |
| BSSA2014 | ![Standard Normal Plot](resources/USC_mag_8_8.5_dist_0_70_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_8_8.5_dist_70_140_BSSA2014_std_norm.png) |
| CB2014 | ![Standard Normal Plot](resources/USC_mag_8_8.5_dist_0_70_CB2014_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_8_8.5_dist_70_140_CB2014_std_norm.png) |
| CY2014 | ![Standard Normal Plot](resources/USC_mag_8_8.5_dist_0_70_CY2014_std_norm.png) | ![Standard Normal Plot](resources/USC_mag_8_8.5_dist_70_140_CY2014_std_norm.png) |
## Site SBSM
*[(top)](#table-of-contents)*

*Location: 34.064987, -117.29201*
67441 ruptures within 200.0 km
### SBSM, 6.5 < Mw < 7
*[(top)](#table-of-contents)*

#### SBSM, 6.5 < Mw < 7, 1s SA Scatter Plots
*[(top)](#table-of-contents)*


| GMPE | 0 km < rJB < 70 km | 70 km < rJB < 140 km | 140 km < rJB < 200 km |
|-----|-----|-----|-----|
| NGAWest_2014 | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_0_701s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_70_1401s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_140_2001s_NGAWest_2014_scatter.png) |
| ASK2014 | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_0_701s_ASK2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_70_1401s_ASK2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_140_2001s_ASK2014_scatter.png) |
| BSSA2014 | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_0_701s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_70_1401s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_140_2001s_BSSA2014_scatter.png) |
| CB2014 | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_0_701s_CB2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_70_1401s_CB2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_140_2001s_CB2014_scatter.png) |
| CY2014 | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_0_701s_CY2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_70_1401s_CY2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_140_2001s_CY2014_scatter.png) |
#### SBSM, 6.5 < Mw < 7, 2s SA Scatter Plots
*[(top)](#table-of-contents)*


| GMPE | 0 km < rJB < 70 km | 70 km < rJB < 140 km | 140 km < rJB < 200 km |
|-----|-----|-----|-----|
| NGAWest_2014 | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_0_702s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_70_1402s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_140_2002s_NGAWest_2014_scatter.png) |
| ASK2014 | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_0_702s_ASK2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_70_1402s_ASK2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_140_2002s_ASK2014_scatter.png) |
| BSSA2014 | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_0_702s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_70_1402s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_140_2002s_BSSA2014_scatter.png) |
| CB2014 | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_0_702s_CB2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_70_1402s_CB2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_140_2002s_CB2014_scatter.png) |
| CY2014 | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_0_702s_CY2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_70_1402s_CY2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_140_2002s_CY2014_scatter.png) |
#### SBSM, 6.5 < Mw < 7, 3s SA Scatter Plots
*[(top)](#table-of-contents)*


| GMPE | 0 km < rJB < 70 km | 70 km < rJB < 140 km | 140 km < rJB < 200 km |
|-----|-----|-----|-----|
| NGAWest_2014 | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_0_703s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_70_1403s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_140_2003s_NGAWest_2014_scatter.png) |
| ASK2014 | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_0_703s_ASK2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_70_1403s_ASK2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_140_2003s_ASK2014_scatter.png) |
| BSSA2014 | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_0_703s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_70_1403s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_140_2003s_BSSA2014_scatter.png) |
| CB2014 | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_0_703s_CB2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_70_1403s_CB2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_140_2003s_CB2014_scatter.png) |
| CY2014 | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_0_703s_CY2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_70_1403s_CY2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_140_2003s_CY2014_scatter.png) |
#### SBSM, 6.5 < Mw < 7, 5s SA Scatter Plots
*[(top)](#table-of-contents)*


| GMPE | 0 km < rJB < 70 km | 70 km < rJB < 140 km | 140 km < rJB < 200 km |
|-----|-----|-----|-----|
| NGAWest_2014 | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_0_705s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_70_1405s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_140_2005s_NGAWest_2014_scatter.png) |
| ASK2014 | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_0_705s_ASK2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_70_1405s_ASK2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_140_2005s_ASK2014_scatter.png) |
| BSSA2014 | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_0_705s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_70_1405s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_140_2005s_BSSA2014_scatter.png) |
| CB2014 | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_0_705s_CB2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_70_1405s_CB2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_140_2005s_CB2014_scatter.png) |
| CY2014 | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_0_705s_CY2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_70_1405s_CY2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_140_2005s_CY2014_scatter.png) |
#### SBSM, 6.5 < Mw < 7, 10s SA Scatter Plots
*[(top)](#table-of-contents)*


| GMPE | 0 km < rJB < 70 km | 70 km < rJB < 140 km | 140 km < rJB < 200 km |
|-----|-----|-----|-----|
| NGAWest_2014 | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_0_7010s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_70_14010s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_140_20010s_NGAWest_2014_scatter.png) |
| ASK2014 | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_0_7010s_ASK2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_70_14010s_ASK2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_140_20010s_ASK2014_scatter.png) |
| BSSA2014 | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_0_7010s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_70_14010s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_140_20010s_BSSA2014_scatter.png) |
| CB2014 | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_0_7010s_CB2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_70_14010s_CB2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_140_20010s_CB2014_scatter.png) |
| CY2014 | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_0_7010s_CY2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_70_14010s_CY2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_6.5_7_dist_140_20010s_CY2014_scatter.png) |
#### SBSM, 6.5 < Mw < 7, Standard Normal Plots
*[(top)](#table-of-contents)*


| GMPE | 0 km < rJB < 70 km | 70 km < rJB < 140 km | 140 km < rJB < 200 km |
|-----|-----|-----|-----|
| NGAWest_2014 | ![Standard Normal Plot](resources/SBSM_mag_6.5_7_dist_0_70_NGAWest_2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_6.5_7_dist_70_140_NGAWest_2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_6.5_7_dist_140_200_NGAWest_2014_std_norm.png) |
| ASK2014 | ![Standard Normal Plot](resources/SBSM_mag_6.5_7_dist_0_70_ASK2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_6.5_7_dist_70_140_ASK2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_6.5_7_dist_140_200_ASK2014_std_norm.png) |
| BSSA2014 | ![Standard Normal Plot](resources/SBSM_mag_6.5_7_dist_0_70_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_6.5_7_dist_70_140_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_6.5_7_dist_140_200_BSSA2014_std_norm.png) |
| CB2014 | ![Standard Normal Plot](resources/SBSM_mag_6.5_7_dist_0_70_CB2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_6.5_7_dist_70_140_CB2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_6.5_7_dist_140_200_CB2014_std_norm.png) |
| CY2014 | ![Standard Normal Plot](resources/SBSM_mag_6.5_7_dist_0_70_CY2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_6.5_7_dist_70_140_CY2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_6.5_7_dist_140_200_CY2014_std_norm.png) |
### SBSM, 7 < Mw < 8
*[(top)](#table-of-contents)*

#### SBSM, 7 < Mw < 8, 1s SA Scatter Plots
*[(top)](#table-of-contents)*


| GMPE | 0 km < rJB < 70 km | 70 km < rJB < 140 km | 140 km < rJB < 200 km |
|-----|-----|-----|-----|
| NGAWest_2014 | ![Scatter Plot](resources/SBSM_mag_7_8_dist_0_701s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_70_1401s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_140_2001s_NGAWest_2014_scatter.png) |
| ASK2014 | ![Scatter Plot](resources/SBSM_mag_7_8_dist_0_701s_ASK2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_70_1401s_ASK2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_140_2001s_ASK2014_scatter.png) |
| BSSA2014 | ![Scatter Plot](resources/SBSM_mag_7_8_dist_0_701s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_70_1401s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_140_2001s_BSSA2014_scatter.png) |
| CB2014 | ![Scatter Plot](resources/SBSM_mag_7_8_dist_0_701s_CB2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_70_1401s_CB2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_140_2001s_CB2014_scatter.png) |
| CY2014 | ![Scatter Plot](resources/SBSM_mag_7_8_dist_0_701s_CY2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_70_1401s_CY2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_140_2001s_CY2014_scatter.png) |
#### SBSM, 7 < Mw < 8, 2s SA Scatter Plots
*[(top)](#table-of-contents)*


| GMPE | 0 km < rJB < 70 km | 70 km < rJB < 140 km | 140 km < rJB < 200 km |
|-----|-----|-----|-----|
| NGAWest_2014 | ![Scatter Plot](resources/SBSM_mag_7_8_dist_0_702s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_70_1402s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_140_2002s_NGAWest_2014_scatter.png) |
| ASK2014 | ![Scatter Plot](resources/SBSM_mag_7_8_dist_0_702s_ASK2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_70_1402s_ASK2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_140_2002s_ASK2014_scatter.png) |
| BSSA2014 | ![Scatter Plot](resources/SBSM_mag_7_8_dist_0_702s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_70_1402s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_140_2002s_BSSA2014_scatter.png) |
| CB2014 | ![Scatter Plot](resources/SBSM_mag_7_8_dist_0_702s_CB2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_70_1402s_CB2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_140_2002s_CB2014_scatter.png) |
| CY2014 | ![Scatter Plot](resources/SBSM_mag_7_8_dist_0_702s_CY2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_70_1402s_CY2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_140_2002s_CY2014_scatter.png) |
#### SBSM, 7 < Mw < 8, 3s SA Scatter Plots
*[(top)](#table-of-contents)*


| GMPE | 0 km < rJB < 70 km | 70 km < rJB < 140 km | 140 km < rJB < 200 km |
|-----|-----|-----|-----|
| NGAWest_2014 | ![Scatter Plot](resources/SBSM_mag_7_8_dist_0_703s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_70_1403s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_140_2003s_NGAWest_2014_scatter.png) |
| ASK2014 | ![Scatter Plot](resources/SBSM_mag_7_8_dist_0_703s_ASK2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_70_1403s_ASK2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_140_2003s_ASK2014_scatter.png) |
| BSSA2014 | ![Scatter Plot](resources/SBSM_mag_7_8_dist_0_703s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_70_1403s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_140_2003s_BSSA2014_scatter.png) |
| CB2014 | ![Scatter Plot](resources/SBSM_mag_7_8_dist_0_703s_CB2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_70_1403s_CB2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_140_2003s_CB2014_scatter.png) |
| CY2014 | ![Scatter Plot](resources/SBSM_mag_7_8_dist_0_703s_CY2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_70_1403s_CY2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_140_2003s_CY2014_scatter.png) |
#### SBSM, 7 < Mw < 8, 5s SA Scatter Plots
*[(top)](#table-of-contents)*


| GMPE | 0 km < rJB < 70 km | 70 km < rJB < 140 km | 140 km < rJB < 200 km |
|-----|-----|-----|-----|
| NGAWest_2014 | ![Scatter Plot](resources/SBSM_mag_7_8_dist_0_705s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_70_1405s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_140_2005s_NGAWest_2014_scatter.png) |
| ASK2014 | ![Scatter Plot](resources/SBSM_mag_7_8_dist_0_705s_ASK2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_70_1405s_ASK2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_140_2005s_ASK2014_scatter.png) |
| BSSA2014 | ![Scatter Plot](resources/SBSM_mag_7_8_dist_0_705s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_70_1405s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_140_2005s_BSSA2014_scatter.png) |
| CB2014 | ![Scatter Plot](resources/SBSM_mag_7_8_dist_0_705s_CB2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_70_1405s_CB2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_140_2005s_CB2014_scatter.png) |
| CY2014 | ![Scatter Plot](resources/SBSM_mag_7_8_dist_0_705s_CY2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_70_1405s_CY2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_140_2005s_CY2014_scatter.png) |
#### SBSM, 7 < Mw < 8, 10s SA Scatter Plots
*[(top)](#table-of-contents)*


| GMPE | 0 km < rJB < 70 km | 70 km < rJB < 140 km | 140 km < rJB < 200 km |
|-----|-----|-----|-----|
| NGAWest_2014 | ![Scatter Plot](resources/SBSM_mag_7_8_dist_0_7010s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_70_14010s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_140_20010s_NGAWest_2014_scatter.png) |
| ASK2014 | ![Scatter Plot](resources/SBSM_mag_7_8_dist_0_7010s_ASK2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_70_14010s_ASK2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_140_20010s_ASK2014_scatter.png) |
| BSSA2014 | ![Scatter Plot](resources/SBSM_mag_7_8_dist_0_7010s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_70_14010s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_140_20010s_BSSA2014_scatter.png) |
| CB2014 | ![Scatter Plot](resources/SBSM_mag_7_8_dist_0_7010s_CB2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_70_14010s_CB2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_140_20010s_CB2014_scatter.png) |
| CY2014 | ![Scatter Plot](resources/SBSM_mag_7_8_dist_0_7010s_CY2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_70_14010s_CY2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_7_8_dist_140_20010s_CY2014_scatter.png) |
#### SBSM, 7 < Mw < 8, Standard Normal Plots
*[(top)](#table-of-contents)*


| GMPE | 0 km < rJB < 70 km | 70 km < rJB < 140 km | 140 km < rJB < 200 km |
|-----|-----|-----|-----|
| NGAWest_2014 | ![Standard Normal Plot](resources/SBSM_mag_7_8_dist_0_70_NGAWest_2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_7_8_dist_70_140_NGAWest_2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_7_8_dist_140_200_NGAWest_2014_std_norm.png) |
| ASK2014 | ![Standard Normal Plot](resources/SBSM_mag_7_8_dist_0_70_ASK2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_7_8_dist_70_140_ASK2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_7_8_dist_140_200_ASK2014_std_norm.png) |
| BSSA2014 | ![Standard Normal Plot](resources/SBSM_mag_7_8_dist_0_70_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_7_8_dist_70_140_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_7_8_dist_140_200_BSSA2014_std_norm.png) |
| CB2014 | ![Standard Normal Plot](resources/SBSM_mag_7_8_dist_0_70_CB2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_7_8_dist_70_140_CB2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_7_8_dist_140_200_CB2014_std_norm.png) |
| CY2014 | ![Standard Normal Plot](resources/SBSM_mag_7_8_dist_0_70_CY2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_7_8_dist_70_140_CY2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_7_8_dist_140_200_CY2014_std_norm.png) |
### SBSM, 8 < Mw < 8.5
*[(top)](#table-of-contents)*

#### SBSM, 8 < Mw < 8.5, 1s SA Scatter Plots
*[(top)](#table-of-contents)*


| GMPE | 0 km < rJB < 70 km | 70 km < rJB < 140 km | 140 km < rJB < 200 km |
|-----|-----|-----|-----|
| NGAWest_2014 | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_0_701s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_70_1401s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_140_2001s_NGAWest_2014_scatter.png) |
| ASK2014 | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_0_701s_ASK2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_70_1401s_ASK2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_140_2001s_ASK2014_scatter.png) |
| BSSA2014 | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_0_701s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_70_1401s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_140_2001s_BSSA2014_scatter.png) |
| CB2014 | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_0_701s_CB2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_70_1401s_CB2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_140_2001s_CB2014_scatter.png) |
| CY2014 | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_0_701s_CY2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_70_1401s_CY2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_140_2001s_CY2014_scatter.png) |
#### SBSM, 8 < Mw < 8.5, 2s SA Scatter Plots
*[(top)](#table-of-contents)*


| GMPE | 0 km < rJB < 70 km | 70 km < rJB < 140 km | 140 km < rJB < 200 km |
|-----|-----|-----|-----|
| NGAWest_2014 | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_0_702s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_70_1402s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_140_2002s_NGAWest_2014_scatter.png) |
| ASK2014 | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_0_702s_ASK2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_70_1402s_ASK2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_140_2002s_ASK2014_scatter.png) |
| BSSA2014 | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_0_702s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_70_1402s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_140_2002s_BSSA2014_scatter.png) |
| CB2014 | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_0_702s_CB2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_70_1402s_CB2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_140_2002s_CB2014_scatter.png) |
| CY2014 | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_0_702s_CY2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_70_1402s_CY2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_140_2002s_CY2014_scatter.png) |
#### SBSM, 8 < Mw < 8.5, 3s SA Scatter Plots
*[(top)](#table-of-contents)*


| GMPE | 0 km < rJB < 70 km | 70 km < rJB < 140 km | 140 km < rJB < 200 km |
|-----|-----|-----|-----|
| NGAWest_2014 | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_0_703s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_70_1403s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_140_2003s_NGAWest_2014_scatter.png) |
| ASK2014 | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_0_703s_ASK2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_70_1403s_ASK2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_140_2003s_ASK2014_scatter.png) |
| BSSA2014 | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_0_703s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_70_1403s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_140_2003s_BSSA2014_scatter.png) |
| CB2014 | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_0_703s_CB2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_70_1403s_CB2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_140_2003s_CB2014_scatter.png) |
| CY2014 | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_0_703s_CY2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_70_1403s_CY2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_140_2003s_CY2014_scatter.png) |
#### SBSM, 8 < Mw < 8.5, 5s SA Scatter Plots
*[(top)](#table-of-contents)*


| GMPE | 0 km < rJB < 70 km | 70 km < rJB < 140 km | 140 km < rJB < 200 km |
|-----|-----|-----|-----|
| NGAWest_2014 | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_0_705s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_70_1405s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_140_2005s_NGAWest_2014_scatter.png) |
| ASK2014 | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_0_705s_ASK2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_70_1405s_ASK2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_140_2005s_ASK2014_scatter.png) |
| BSSA2014 | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_0_705s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_70_1405s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_140_2005s_BSSA2014_scatter.png) |
| CB2014 | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_0_705s_CB2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_70_1405s_CB2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_140_2005s_CB2014_scatter.png) |
| CY2014 | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_0_705s_CY2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_70_1405s_CY2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_140_2005s_CY2014_scatter.png) |
#### SBSM, 8 < Mw < 8.5, 10s SA Scatter Plots
*[(top)](#table-of-contents)*


| GMPE | 0 km < rJB < 70 km | 70 km < rJB < 140 km | 140 km < rJB < 200 km |
|-----|-----|-----|-----|
| NGAWest_2014 | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_0_7010s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_70_14010s_NGAWest_2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_140_20010s_NGAWest_2014_scatter.png) |
| ASK2014 | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_0_7010s_ASK2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_70_14010s_ASK2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_140_20010s_ASK2014_scatter.png) |
| BSSA2014 | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_0_7010s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_70_14010s_BSSA2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_140_20010s_BSSA2014_scatter.png) |
| CB2014 | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_0_7010s_CB2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_70_14010s_CB2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_140_20010s_CB2014_scatter.png) |
| CY2014 | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_0_7010s_CY2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_70_14010s_CY2014_scatter.png) | ![Scatter Plot](resources/SBSM_mag_8_8.5_dist_140_20010s_CY2014_scatter.png) |
#### SBSM, 8 < Mw < 8.5, Standard Normal Plots
*[(top)](#table-of-contents)*


| GMPE | 0 km < rJB < 70 km | 70 km < rJB < 140 km | 140 km < rJB < 200 km |
|-----|-----|-----|-----|
| NGAWest_2014 | ![Standard Normal Plot](resources/SBSM_mag_8_8.5_dist_0_70_NGAWest_2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_8_8.5_dist_70_140_NGAWest_2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_8_8.5_dist_140_200_NGAWest_2014_std_norm.png) |
| ASK2014 | ![Standard Normal Plot](resources/SBSM_mag_8_8.5_dist_0_70_ASK2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_8_8.5_dist_70_140_ASK2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_8_8.5_dist_140_200_ASK2014_std_norm.png) |
| BSSA2014 | ![Standard Normal Plot](resources/SBSM_mag_8_8.5_dist_0_70_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_8_8.5_dist_70_140_BSSA2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_8_8.5_dist_140_200_BSSA2014_std_norm.png) |
| CB2014 | ![Standard Normal Plot](resources/SBSM_mag_8_8.5_dist_0_70_CB2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_8_8.5_dist_70_140_CB2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_8_8.5_dist_140_200_CB2014_std_norm.png) |
| CY2014 | ![Standard Normal Plot](resources/SBSM_mag_8_8.5_dist_0_70_CY2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_8_8.5_dist_70_140_CY2014_std_norm.png) | ![Standard Normal Plot](resources/SBSM_mag_8_8.5_dist_140_200_CY2014_std_norm.png) |
