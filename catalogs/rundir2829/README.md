# Bruce 2829
## Metadata
| **Catalog** | Bruce 2829 |
|-----|-----|
| **Author** | Bruce Shaw, 2018/10/18 |
| **Description** | fracArea=0.95 ; NEW variableSpeed  s2ddf=.9 ddfmin=.1;  b=.01 a=.001 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | Fully Variable |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 526,067 events in 25,074 years |
| **Frictional Params** | a=0.001, b=0.01, (b-a)=0.009, ddotEQ=1.0 |

* [Metadata](#metadata)
* [BBP Calculations, LA Basin 863 (m/s) Velocity Model](#bbp-calculations-la-basin-863-ms-velocity-model)
  * [Single Event Comparisons, LA Basin 863 (m/s)](#single-event-comparisons-la-basin-863-ms)
  * [Full Catalog GMPE Comparisons, LA Basin 863 (m/s)](#full-catalog-gmpe-comparisons-la-basin-863-ms)
  * [BBP Part B Analysis, LA Basin 863 (m/s)](bbp_LA_BASIN_863/bbp_part_b)
* [Plots](#plots)
  * [Magnitude-Frequency Plot](#magnitude-frequency-plot)
  * [Magnitude-Area Plots](#magnitude-area-plots)
    * [Mechanism-Dependent Magnitude-Area Plots](#mechanism-dependent-magnitude-area-plots)
  * [Slip-Area Plots](#slip-area-plots)
  * [Slip-Length Plots](#slip-length-plots)
    * [Mechanism-Dependent Slip-Length Plots](#mechanism-dependent-slip-length-plots)
  * [Slip Along Rupture (Dsr) Plots](#slip-along-rupture-dsr-plots)
    * [Two- and Three-Fault Slip Along Rupture](#two--and-three-fault-slip-along-rupture)
  * [Slip Rate Plots](#slip-rate-plots)
    * [Slip Rate Fault Plots](#slip-rate-fault-plots)
  * [Rupture Velocity Plots](#rupture-velocity-plots)
  * [Global Interevent-Time Distributions](#global-interevent-time-distributions)
  * [Normalized Fault Interevent-Time Distributions](#normalized-fault-interevent-time-distributions)
  * [Stationarity Plot](#stationarity-plot)
  * [Element/Subsection Interevent Time Comparisons](#elementsubsection-interevent-time-comparisons)
    * [Element Interevent Time Comparisons](#element-interevent-time-comparisons)
    * [Subsection Interevent Time Comparisons](#subsection-interevent-time-comparisons)
  * [Paleo Open Interval Plots](#paleo-open-interval-plots)
    * [Paleo Open Interval Plots, Biasi and Sharer 2019](#paleo-open-interval-plots-biasi-and-sharer-2019)
    * [Paleo Open Interval Plots, UCERF3](#paleo-open-interval-plots-ucerf3)
  * [Moment Release Variability Plots](#moment-release-variability-plots)
* [Input File](#input-file)

## BBP Calculations, LA Basin 863 (m/s) Velocity Model
*[(top)](#bruce-2829)*


### Single Event Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-2829)*

* [Event 31324, M7.30](bbp_LA_BASIN_863/event_31324/)
* [Event 5304, M7.61](bbp_LA_BASIN_863/event_5304/)

### Full Catalog GMPE Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-2829)*

* [ASK2014](bbp_LA_BASIN_863/gmpe_bbp_comparisons_ASK2014/)
* [NGAWest_2014_NoIdr](bbp_LA_BASIN_863/gmpe_bbp_comparisons_NGAWest_2014_NoIdr/)

### BBP Part B Analysis, LA Basin 863 (m/s)
*[(top)](#bruce-2829)*

[BBP Part B Analysis Here](bbp_LA_BASIN_863/bbp_part_b)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2829)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2829)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
#### Mechanism-Dependent Magnitude-Area Plots
*[(top)](#bruce-2829)*

Here we disaggregate the magnitude-area scaling plots by focal mechanism. Multi-fault ruptures which incorporate multiple faulting styles are included in plot for the dominent fault style so long as no more than 10% of the participating elements are of a different style, otherwise they are listed as 'Unknown'.

| Fault Style | Scatter | 2-D Hist |
|-----|-----|-----|
| **Strike-Slip** | ![MA Scatter](resources/mag_area_STRIKE_SLIP.png) | ![MA Hist](resources/mag_area_STRIKE_SLIP_hist2D.png) |
| **Normal** | ![MA Scatter](resources/mag_area_NORMAL.png) | ![MA Hist](resources/mag_area_NORMAL_hist2D.png) |
| **Reverse** | ![MA Scatter](resources/mag_area_REVERSE.png) | ![MA Hist](resources/mag_area_REVERSE_hist2D.png) |
| **Unknown** | ![MA Scatter](resources/mag_area_UNKNOWN.png) | ![MA Hist](resources/mag_area_UNKNOWN_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2829)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2829)*

These plots compute average slip-length scaling at mid-seismogenic depth. We define mid-seismogenic depth to be no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. Average slip is computed across all elements in this mid-seismogenic region, including any which did not slip, along the full length of the rupture.

We define the rupture length, which also determines the region at mid-seismogenic depth across which we compute average slip, multiple ways in order to test sensitivity:

* **Full Mapped Subsection Length:** Average slip in the mid-seismogenic zone across the whole length of each mapped subsection
* **Full Slipped Length:** Average slip in the mid-seismogenic zone across the section of fault that slipped (regardless of if that slip was in the mid-seismgenic zone or not)
* **Mid-Seismogenic Slipped Length:** Average slip in the mid-seismogenic zone across the section of fault that slipped in that mid-seismogenic zone (including any holes with no slip)
* **Surface Slipped Length:** Average slip in the mid-seismogenic zone across the section of fault that had surface slip

These length algorithms are illustrated in the following example plot, which also has the mid-seismogenic depth range outlined in a cyan dashed line:

![Example plot](resources/slip_len_example_rupture.png)

The average value is plotted in a thick gray line, and UCERF3 Scaling Relationships in colored lines (assuming a down dip width of 12 km).

| Lengh Algorithm | Scatter | 2-D Hist |
|-----|-----|-----|
| **Full Mapped Subsection Length** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_FULL_LEN.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_FULL_LEN_hist2D.png) |
| **Full Slipped Length** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_hist2D.png) |
| **Mid-Seismogenic Slipped Length** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_MID_SLIPPED_LEN.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_MID_SLIPPED_LEN_hist2D.png) |
| **Surface Slipped Length** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SURF_SLIP_LEN.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SURF_SLIP_LEN_hist2D.png) |
#### Mechanism-Dependent Slip-Length Plots
*[(top)](#bruce-2829)*

Here we disaggregate the slip-length scaling plots by focal mechanism. Multi-fault ruptures which incorporate multiple faulting styles are included in plot for the dominent fault style so long as no more than 10% of the participating elements are of a different style, otherwise they are listed as 'Unknown'.

| Fault Style | Scatter | 2-D Hist |
|-----|-----|-----|
| **Strike-Slip** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_FULL_LEN_STRIKE_SLIP.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_FULL_LEN_STRIKE_SLIP_hist2D.png) |
| **Normal** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_FULL_LEN_NORMAL.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_FULL_LEN_NORMAL_hist2D.png) |
| **Reverse** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_FULL_LEN_REVERSE.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_FULL_LEN_REVERSE_hist2D.png) |
| **Unknown** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_FULL_LEN_UNKNOWN.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_FULL_LEN_UNKNOWN_hist2D.png) |
### Slip Along Rupture (Dsr) Plots
*[(top)](#bruce-2829)*

These plots show the slip along rupture distiribution, noted D<sub>SR</sub> in UCERF3. First we compute average slip along each mapped subsection at mid-seismogenic depth (using the *Full Mapped Subsection Length* algorithm), then plot that slip along strike, normalized by the maximum slip across all subsections in that rupture. We do this for single-fault events, which can span multiple segments (e.g. SAF Mojave and San Bernardino), and also separately for each junction in multi-fault events. This is done using the UCERF3 'named faults' list to determine if multiple fault sections belong to the same master fault. We only consider ruptures where at least 2 subsections participated (2 on each side of the jump for multi-fault ruptures).

Ruptures are binned by their length in each row below. For multi-fault ruptures, the junction point is at x=0 with the shorter side of the rupture on the left (below zero), and longer half on the right

Average values are plotted with a solid black line, and sqrt(sin(|x*&pi;|)) in a dashed gray line (normalized length plots only).

| Rupture Length | Single-fault, absolute distance from either rupture endpoint | Single-fault, normalized distance along strike | Multi-fault, normalized distance on either side of jump |
|-----|-----|-----|-----|
| **All Lengths** | ![Slip Along Rupture](resources/slip_along_rupture_single_abs.png) | ![Slip Along Rupture](resources/slip_along_rupture_single_norm.png) | ![Slip Along Rupture](resources/slip_along_rupture_multi_norm.png) |
| **Len=[0 25]** | ![Slip Along Rupture](resources/slip_along_rupture_single_abs_len_0_25.png) | ![Slip Along Rupture](resources/slip_along_rupture_single_norm_len_0_25.png) | ![Slip Along Rupture](resources/slip_along_rupture_multi_norm_len_0_25.png) |
| **Len=[25 50]** | ![Slip Along Rupture](resources/slip_along_rupture_single_abs_len_25_50.png) | ![Slip Along Rupture](resources/slip_along_rupture_single_norm_len_25_50.png) | ![Slip Along Rupture](resources/slip_along_rupture_multi_norm_len_25_50.png) |
| **Len=[50 100]** | ![Slip Along Rupture](resources/slip_along_rupture_single_abs_len_50_100.png) | ![Slip Along Rupture](resources/slip_along_rupture_single_norm_len_50_100.png) | ![Slip Along Rupture](resources/slip_along_rupture_multi_norm_len_50_100.png) |
| **Len≥100** | ![Slip Along Rupture](resources/slip_along_rupture_single_abs_len_100+.png) | ![Slip Along Rupture](resources/slip_along_rupture_single_norm_len_100+.png) | ![Slip Along Rupture](resources/slip_along_rupture_multi_norm_len_100+.png) |

#### Two- and Three-Fault Slip Along Rupture

These plots show D<sub>SR</sub> for two- and three-fault ruptures. Lengths are normalized, with the first fault in x=[0 1], second in x=[1 2], etc. Rupture are organized such that the leftmost side is always shorter than the rightmost side.

| Rupture Length | Two-fault Ruptures | Three-Fault Ruptures |
|-----|-----|-----|
| **All Lengths** | ![Slip Along Rupture](resources/slip_along_rupture_two_norm.png) | ![Slip Along Rupture](resources/slip_along_rupture_three_norm.png) |
| **Len=[0 25]** | ![Slip Along Rupture](resources/slip_along_rupture_two_norm_len_0_25.png) | ![Slip Along Rupture](resources/slip_along_rupture_three_norm_len_0_25.png) |
| **Len=[25 50]** | ![Slip Along Rupture](resources/slip_along_rupture_two_norm_len_25_50.png) | ![Slip Along Rupture](resources/slip_along_rupture_three_norm_len_25_50.png) |
| **Len=[50 100]** | ![Slip Along Rupture](resources/slip_along_rupture_two_norm_len_50_100.png) | ![Slip Along Rupture](resources/slip_along_rupture_three_norm_len_50_100.png) |
| **Len≥100** | ![Slip Along Rupture](resources/slip_along_rupture_two_norm_len_100+.png) | ![Slip Along Rupture](resources/slip_along_rupture_three_norm_len_100+.png) |
### Slip Rate Plots
*[(top)](#bruce-2829)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2829)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2829)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2829)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2829)*

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2829)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2829)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2829)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Open Interval Plots
*[(top)](#bruce-2829)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2829)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 561.52 | 0.0017808672 | 36 | 566.55 | 0.0017650775 | 35.67 |
| **FRA** | 119.00 | 0.008403362 | 153.22 | 0.0065264697 | 130 | 157.60 | 0.0063453745 | 126.4 |
| **COA** | 181.00 | 0.005524862 | 217.11 | 0.004605872 | 92 | 235.65 | 0.0042435657 | 84.83 |
| **SCZ** | 106.00 | 0.009433962 | 95.45 | 0.010476805 | 210 | 127.91 | 0.0078177685 | 156.64 |
| **TYS** | 329.00 | 0.0030395137 | 411.16 | 0.0024321682 | 49 | 436.73 | 0.0022897464 | 46.13 |
| **TOTAL** | 31.61 | 0.0316373 | 38.69 | 0.02584827 | 517 | 44.22 | 0.022612764 | 452.21 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9787111 | 0.7722224 | 0.9836137 | 0.7976163 | 0.72878754 |
| **20.00** | 0.9165011 | 0.5963274 | 0.93310994 | 0.6361917 | 0.53113127 |
| **30.00** | 0.83114266 | 0.4604974 | 0.86899155 | 0.5074369 | 0.3870819 |
| **40.00** | 0.7275026 | 0.3556064 | 0.779931 | 0.40473992 | 0.28210047 |
| **50.00** | 0.6108537 | 0.27460724 | 0.6818893 | 0.32282716 | 0.2055913 |
| **60.00** | 0.48675787 | 0.21205786 | 0.5717856 | 0.25749218 | 0.14983238 |
| **70.00** | 0.37456697 | 0.16375583 | 0.47108787 | 0.20537996 | 0.10919597 |
| **80.00** | 0.26490176 | 0.12645592 | 0.36827224 | 0.16381441 | 0.079580665 |
| **90.00** | 0.15787816 | 0.09765209 | 0.27070528 | 0.13066104 | 0.057997398 |
| **100.00** | 0.10247009 | 0.07540914 | 0.20316821 | 0.10421737 | 0.04226778 |
| **110.00** | 0.04483423 | 0.058232624 | 0.13297296 | 0.08312547 | 0.030804234 |
| **120.00** | 0.0 | 0.044968538 | 0.08287391 | 0.06630223 | 0.022449743 |
| **130.00** | 0.0 | 0.03472571 | 0.054995198 | 0.05288374 | 0.016361093 |
| **140.00** | 0.0 | 0.026815971 | 0.0394975 | 0.042180933 | 0.011923761 |
| **150.00** | 0.0 | 0.020707894 | 0.025232142 | 0.0336442 | 0.008689889 |
| **160.00** | 0.0 | 0.0159911 | 0.019525204 | 0.02683516 | 0.0063330824 |
| **170.00** | 0.0 | 0.012348685 | 0.01228269 | 0.02140416 | 0.0046154717 |
| **180.00** | 0.0 | 0.009535932 | 0.008691687 | 0.017072307 | 0.0033636983 |
| **190.00** | 0.0 | 0.00736386 | 0.0023051768 | 0.0136171505 | 0.0024514215 |
| **200.00** | 0.0 | 0.005686538 | 2.4452683E-4 | 0.010861261 | 0.0017865654 |
| **210.00** | 0.0 | 0.0043912716 | 1.8194303E-4 | 0.008663119 | 0.0013020267 |
| **220.00** | 0.0 | 0.0033910384 | 1.375696E-4 | 0.0069098445 | 9.489008E-4 |
| **230.00** | 0.0 | 0.0026186358 | 0.0 | 0.0055114045 | 6.915471E-4 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2829)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 255.68 | 0.003911114 | 78 | 280.36 | 0.0035669026 | 71.13 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 193.70 | 0.005162626 | 103 | 208.22 | 0.0048026023 | 95.88 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 2781.05 | 3.5957634E-4 | 8 | 3686.39 | 2.7126775E-4 | 5.52 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 294.00 | 0.0034013903 | 68 | 297.14 | 0.0033654126 | 67.28 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 294.00 | 0.0034013903 | 68 | 297.89 | 0.0033569422 | 67.07 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 332.18 | 0.003010405 | 60 | 552.69 | 0.0018093258 | 35.77 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 920.16 | 0.0010867667 | 21 | 936.47 | 0.0010678347 | 20.58 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 1858.82 | 5.3797703E-4 | 11 | 1958.70 | 5.105437E-4 | 10.48 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 178.43 | 0.0056044087 | 112 | 181.48 | 0.0055103153 | 110.11 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 561.52 | 0.0017808672 | 36 | 566.37 | 0.0017656152 | 35.69 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 5714.21 | 1.750023E-4 | 3 | 5752.14 | 1.738483E-4 | 2.89 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 556.15 | 0.00179806 | 36 | 565.38 | 0.0017687199 | 35.4 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 1797.01 | 5.564784E-4 | 10 | 1837.49 | 5.4422196E-4 | 9.73 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 236.79 | 0.0042231847 | 85 | 239.12 | 0.00418195 | 84.16 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 197.00 | 0.0050761714 | 102 | 205.30 | 0.0048708064 | 97.91 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 606.42 | 0.001649027 | 33 | 669.37 | 0.0014939444 | 29.93 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 153.22 | 0.0065264697 | 130 | 156.83 | 0.0063763275 | 127.01 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 95.45 | 0.010476805 | 210 | 128.45 | 0.007785346 | 155.91 |
| **RodgersCreek** | 325.31 | 0.003074 | 215.01 | 0.0046508852 | 93 | 292.21 | 0.003422203 | 68.3 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 3081.28 | 3.2454042E-4 | 5 | 3488.03 | 2.8669497E-4 | 4.18 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 462.79 | 0.0021607932 | 43 | 470.03 | 0.0021275154 | 42.34 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 411.16 | 0.0024321682 | 49 | 435.59 | 0.0022957465 | 46.24 |
| **Compton** | 2658.16 | 3.762E-4 | 11428.42 | 8.750115E-5 | 2 | 11781.88 | 8.487611E-5 | 1.94 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 217.11 | 0.004605872 | 92 | 236.08 | 0.004235879 | 84.68 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 929.41 | 0.0010759565 | 21 | 991.89 | 0.0010081785 | 19.7 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 956.15 | 0.0010458576 | 21 | 965.36 | 0.0010358791 | 20.77 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 294.00 | 0.0034013903 | 68 | 296.79 | 0.0033694208 | 67.36 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 236.79 | 0.0042231847 | 85 | 239.27 | 0.0041793236 | 84.12 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 932.87 | 0.0010719631 | 22 | 971.48 | 0.001029358 | 21.08 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1442.47 | 6.932545E-4 | 14 | 1484.71 | 6.7353045E-4 | 13.59 |
| **TOTAL** | 9.08 | 0.1101451 | 17.38 | 0.05754168 | 1153 | 19.55 | 0.051151354 | 1023.9 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.89242125 | 0.5624704 | 0.912347 | 0.5995874 | 0.33238843 |
| **20.00** | 0.68565536 | 0.31637293 | 0.7319954 | 0.35950506 | 0.110482074 |
| **30.00** | 0.48777074 | 0.17795041 | 0.55213857 | 0.2155547 | 0.036722966 |
| **40.00** | 0.29269305 | 0.10009184 | 0.35879314 | 0.12924388 | 0.012206289 |
| **50.00** | 0.16578962 | 0.056298696 | 0.22471307 | 0.077493005 | 0.004057229 |
| **60.00** | 0.08646228 | 0.03166635 | 0.13332362 | 0.04646383 | 0.001348576 |
| **70.00** | 0.048734114 | 0.017811384 | 0.07878908 | 0.027859125 | 4.4825108E-4 |
| **80.00** | 0.02644884 | 0.010018376 | 0.047261346 | 0.01670398 | 1.4899348E-4 |
| **90.00** | 0.008672224 | 0.0056350394 | 0.020224074 | 0.010015496 | 4.952371E-5 |
| **100.00** | 0.0050804554 | 0.0031695429 | 0.009792106 | 0.006005165 | 1.6461108E-5 |
| **110.00** | 0.0 | 0.001782774 | 0.0014625227 | 0.0036006214 | 5.4714824E-6 |
| **120.00** | 0.0 | 0.0010027576 | 5.045953E-4 | 0.0021588872 | 1.8186574E-6 |
| **130.00** | 0.0 | 5.6402147E-4 | 0.0 | 0.0012944416 | 6.045007E-7 |

### Moment Release Variability Plots
*[(top)](#bruce-2829)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

## Input File
*[(top)](#bruce-2829)*

```
  A_1 = 0.001
  fA = 0.1
  B_1 = 0.010
  muSlipAmp_1 = .0
  muSlipInvDist_1 = 1.0
  cohesion = 0.0
  Dc_1 = 1.0000000000000000818e-05
  mu0_1 = 0.6
  ddotStar_1 = 9.9999999999999995475e-07
  ddotAB_1 = 9.9999999999999995475e-07
  alpha_1 = 0.0
  theta0_1 = 200000000
  tau0_1 = 55.1
  sigma0_1 = 100
  sigmaFracPin = .5
  lowSigmaAction = 1
  maxThetaPin = 1.0e13
  ddotEQ_1 = 1.0
  ddotEQFname = 
  stressOvershootFactor = 0.10000000000000000555
  lameLambda = 30000
  lameMu = 30000
  slowSlip_1 = 0
  nEq = 10000000
  maxWallTime = 85000
  KZeroFrac = 0
  KOneFrac =  0
  muPin = 1.0
  tStart = 0
  maxT = 1.0000000000000000159e+100
  maxTransitions = 1.0000000000000000159e+8
  faultFname = zfault_Deepen.in
  outFnameInfix = 
  writeTau = 0
  writeSigma = 0
  writeSlip = 0
  writeSlipSpeed = 0
  writeState = 0
  writeTheta = 0
  writePED = 1
  writeTransitions = 1
  minDtWrite = 0
  minDtWriteCoseismic = 0
  minDtWriteInterseismic = 0
  minMagWrite = 0
  writeStiffness = 0
  stressRateSpecification = 1
  dMu3 = 0.01000000000000000
  initTauFname = 
  initSigmaFname = 
  initThetaFname = 
  initSlipSpeedFname = 
  AFname = 
  BFname =  
  DcFname = 
  mu0Fname = 
  ddotStarFname = 
  ddotABFname = 
  alphaFname = 
  KTauFname = 
  KSigmaFname = 
  tFailFname = 
  tauFailFname = 
  tauDotFname = 
  sigmaDotFname =
  KZeroFname = zfault_Deepen_KZero.in
  pinnedFname =  
  neighborFname = zfault_Deepen_neighbors.in
  stressRateFname =  
  slowSlipFname = 
  writePatchFname = 
  DEBUG = 0
  ZBrentUpperBracket = 0
  receiverElementAreaFrac = 0.95
  receiverElementIntTol = 1.0e-4
  receiverElementSubdivisionMax = 4
  tgfDist1 = 3
  tgfDist1 = 10
  variableSlipSpeed = 2
  state2ddotFactor = .9
  state2dotMinFactor = .1
```
