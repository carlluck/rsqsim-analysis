# JG 2194 K2
## Metadata
| **Catalog** | JG 2194 K2 |
|-----|-----|
| **Author** | Jacqui Gilchrist, 2017/10/16 |
| **Description** | Keith's fault geometry, normal backslip with U3 geologic long-term slip rates, and the same parameter values as Bruce's 2194 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 0.90 km^2 |
| **Length** | 19,334,999 events in 228,889 years |
| **Frictional Params** | a=0.001, b=0.005, (b-a)=0.004, ddotEQ=1 |

* [Metadata](#metadata)
* [BBP Calculations, LA Basin 863 (m/s) Velocity Model](#bbp-calculations-la-basin-863-ms-velocity-model)
  * [Single Event Comparisons, LA Basin 863 (m/s)](#single-event-comparisons-la-basin-863-ms)
  * [Full Catalog GMPE Comparisons, LA Basin 863 (m/s)](#full-catalog-gmpe-comparisons-la-basin-863-ms)
  * [Full Catalog RotD100/RotD50 Ratios, LA Basin 863 (m/s)](bbp_LA_BASIN_863/catalog_rotd_ratio_comparisons/)
* [Plots](#plots)
  * [Magnitude-Frequency Plot](#magnitude-frequency-plot)
  * [Magnitude-Area Plots](#magnitude-area-plots)
  * [Slip-Area Plots](#slip-area-plots)
  * [Slip-Length Plots](#slip-length-plots)
  * [Slip Along Rupture (Dsr) Plots](#slip-along-rupture-dsr-plots)
    * [Two- and Three-Fault Slip Along Rupture](#two--and-three-fault-slip-along-rupture)
  * [Slip Rate Plots](#slip-rate-plots)
    * [Slip Rate Fault Plots](#slip-rate-fault-plots)
  * [Rupture Velocity Plots](#rupture-velocity-plots)
  * [Global Interevent-Time Distributions](#global-interevent-time-distributions)
  * [Normalized Fault Interevent-Time Distributions](#normalized-fault-interevent-time-distributions)
  * [Normalized Rupture Interevent-Time Distributions](#normalized-rupture-interevent-time-distributions)
  * [Stationarity Plot](#stationarity-plot)
  * [Element/Subsection Interevent Time Comparisons](#elementsubsection-interevent-time-comparisons)
    * [Element Interevent Time Comparisons](#element-interevent-time-comparisons)
    * [Subsection Interevent Time Comparisons](#subsection-interevent-time-comparisons)
  * [Paleo Recurrence Plots](#paleo-recurrence-plots)
  * [Paleo Open Interval Plots](#paleo-open-interval-plots)
    * [Paleo Open Interval Plots, Biasi and Sharer 2019](#paleo-open-interval-plots-biasi-and-sharer-2019)
    * [Paleo Open Interval Plots, UCERF3](#paleo-open-interval-plots-ucerf3)
  * [Moment Release Variability Plots](#moment-release-variability-plots)
  * [Trigger Hypocenter Statistics Within Previous Rupture Area](#trigger-hypocenter-statistics-within-previous-rupture-area)
* [Input File](#input-file)

## BBP Calculations, LA Basin 863 (m/s) Velocity Model
*[(top)](#jg-2194-k2)*


### Single Event Comparisons, LA Basin 863 (m/s)
*[(top)](#jg-2194-k2)*

* [Event 18840012, M7.31](bbp_LA_BASIN_863/event_18840012/)

### Full Catalog GMPE Comparisons, LA Basin 863 (m/s)
*[(top)](#jg-2194-k2)*

* [BSSA2014](bbp_LA_BASIN_863/gmpe_bbp_comparisons_BSSA2014/)
* [NGAWest_2014_NoIdr](bbp_LA_BASIN_863/gmpe_bbp_comparisons_NGAWest_2014_NoIdr/)

### Full Catalog RotD100/RotD50 Ratios, LA Basin 863 (m/s)
*[(top)](#jg-2194-k2)*

[Full Catalog RotD100/RotD50 Ratios Plotted Here](bbp_LA_BASIN_863/catalog_rotd_ratio_comparisons/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#jg-2194-k2)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#jg-2194-k2)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#jg-2194-k2)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#jg-2194-k2)*

These plots compute average slip-length scaling at mid-seismogenic depth. We define mid-seismogenic depth to be no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. Average slip is computed across all elements in this mid-seismogenic region, including any which did not slip, along the full length of the rupture.

We define the rupture length, which also determines the region at mid-seismogenic depth across which we compute average slip, multiple ways in order to test sensitivity:

* **Full Mapped Subsection Length:** Average slip in the mid-seismogenic zone across the whole length of each mapped subsection
* **Full Slipped Length:** Average slip in the mid-seismogenic zone across the section of fault that slipped (regardless of if that slip was in the mid-seismgenic zone or not)
* **Mid-Seismogenic Slipped Length:** Average slip in the mid-seismogenic zone across the section of fault that slipped in that mid-seismogenic zone (including any holes with no slip)
* **Surface Slipped Length:** Average slip in the mid-seismogenic zone across the section of fault that had surface slip

The average value is plotted in a thick gray line, and UCERF3 Scaling Relationships in colored lines (assuming a down dip width of 12 km).

| Lengh Algorithm | Scatter | 2-D Hist |
|-----|-----|-----|
| **Full Mapped Subsection Length** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_FULL_SUBSECTION_LEN.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_FULL_SUBSECTION_LEN_hist2D.png) |
| **Full Slipped Length** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_hist2D.png) |
| **Mid-Seismogenic Slipped Length** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_MID_SLIPPED_LEN.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_MID_SLIPPED_LEN_hist2D.png) |
| **Surface Slipped Length** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SURF_SLIP_LEN.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SURF_SLIP_LEN_hist2D.png) |
### Slip Along Rupture (Dsr) Plots
*[(top)](#jg-2194-k2)*

These plots show the slip along rupture distiribution, noted D<sub>SR</sub> in UCERF3. First we compute average slip along each mapped subsection at mid-seismogenic depth (using the *Full Slipped Length* algorithm), then plot that slip along strike, normalized by the average slip across all subsections in that rupture. We do this for single-fault events, which can span multiple segments (e.g. SAF Mojave and San Bernardino), and also separately for each junction in multi-fault events. This is done using the UCERF3 'named faults' list to determine if multiple fault sections belong to the same master fault. We only consider ruptures where at least 2 subsections participated (2 on each side of the jump for multi-fault ruptures).

Ruptures are binned by their length in each row below. For multi-fault ruptures, the junction point is at x=0 with the shorter side of the rupture on the left (below zero), and longer half on the right

Average values are plotted with a solid black line, and 1.311*sqrt(sin(|x*&pi;|)) in a dashed gray line (normalized length plots only).

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
*[(top)](#jg-2194-k2)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#jg-2194-k2)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#jg-2194-k2)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#jg-2194-k2)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#jg-2194-k2)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#jg-2194-k2)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#jg-2194-k2)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#jg-2194-k2)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#jg-2194-k2)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#jg-2194-k2)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.009506281 | 0.0060773515 | 0.0 | 0.0 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 0.001090006 | 8.302854E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0025150548 | 0.0017366051 | 0.0019119777 | 0.0017902227 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 0.0016886159 | 0.0012429785 | 0.0 | 0.0 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0030153855 | 0.002022912 | 0.0019253794 | 0.0017921426 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 0.0014741884 | 0.00103435 | 0.0 | 0.0 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.019758591 | 0.015630502 | 0.014286226 | 0.013265854 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0035737902 | 0.002718082 | 0.0028054253 | 0.0026517333 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0035201833 | 0.0029089001 | 0.0 | 0.0 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 5.45003E-4 | 3.6730876E-4 | 0.0 | 0.0 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0039043657 | 0.0030229925 | 0.0 | 0.0 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0048782234 | 0.0035583405 | 0.0032834196 | 0.002985177 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.012923718 | 0.0104235355 | 0.010605223 | 0.010005087 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.008831729 | 0.00652046 | 0.00646856 | 0.0061257826 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.012526134 | 0.010420545 | 0.010685632 | 0.010062349 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.012499331 | 0.010368334 | 0.010703501 | 0.010030846 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0127539635 | 0.010195689 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 6.075443E-4 | 4.254363E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0040651863 | 0.003049409 | 0.003082394 | 0.002882351 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0042215395 | 0.0030072231 | 0.0 | 0.0 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0071922527 | 0.005230196 | 0.004717403 | 0.0045476435 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0031538699 | 0.0019752712 | 0.0 | 0.0 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.01891875 | 0.014758585 | 0.013919912 | 0.013207041 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.00805443 | 0.0048794984 | 0.0 | 0.0 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.011252971 | 0.0077569163 | 0.0 | 0.0 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.011252971 | 0.0077569163 | 0.0 | 0.0 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.017015709 | 0.013728729 | 0.01345532 | 0.012774619 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.014509588 | 0.009827895 | 0.010069153 | 0.008788161 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.007840002 | 0.0056302915 | 0.0 | 0.0 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0071163094 | 0.004638809 | 0.0 | 0.0 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.017078249 | 0.0134501485 | 0.013491058 | 0.012786548 |

### Paleo Open Interval Plots
*[(top)](#jg-2194-k2)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#jg-2194-k2)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 212.08 | 0.004715155 | 1056 | 219.93 | 0.0045468155 | 1018.28 |
| **FRA** | 119.00 | 0.008403362 | 70.75 | 0.014135265 | 3164 | 75.77 | 0.013197007 | 2954.03 |
| **COA** | 181.00 | 0.005524862 | 109.03 | 0.009171389 | 2053 | 118.50 | 0.00843876 | 1889 |
| **SCZ** | 106.00 | 0.009433962 | 152.56 | 0.006554982 | 1468 | 161.56 | 0.0061895372 | 1386.14 |
| **TYS** | 329.00 | 0.0030395137 | 304.45 | 0.003284564 | 735 | 335.20 | 0.0029833028 | 667.62 |
| **TOTAL** | 31.61 | 0.0316373 | 26.41 | 0.0378651 | 8476 | 28.28 | 0.03535763 | 7914.7 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9540936 | 0.6847846 | 0.9597051 | 0.7021724 | 0.72878754 |
| **20.00** | 0.8386486 | 0.46892992 | 0.85650545 | 0.49304608 | 0.53113127 |
| **30.00** | 0.68470603 | 0.32111597 | 0.71560574 | 0.34620336 | 0.3870819 |
| **40.00** | 0.5191449 | 0.21989526 | 0.5612146 | 0.24309444 | 0.28210047 |
| **50.00** | 0.35659596 | 0.15058088 | 0.40420252 | 0.1706942 | 0.2055913 |
| **60.00** | 0.22126566 | 0.10311546 | 0.26756728 | 0.11985676 | 0.14983238 |
| **70.00** | 0.11094053 | 0.07061188 | 0.14965995 | 0.08416011 | 0.10919597 |
| **80.00** | 0.025515161 | 0.04835392 | 0.05013435 | 0.05909491 | 0.079580665 |
| **90.00** | 0.0051741246 | 0.03311202 | 0.018940318 | 0.041494813 | 0.057997398 |
| **100.00** | 9.239219E-4 | 0.022674602 | 0.007727386 | 0.029136512 | 0.04226778 |
| **110.00** | 6.5606064E-4 | 0.015527217 | 0.0038884303 | 0.020458855 | 0.030804234 |
| **120.00** | 0.0 | 0.010632798 | 0.0014634093 | 0.014365643 | 0.022449743 |
| **130.00** | 0.0 | 0.0072811763 | 5.935041E-4 | 0.0100871585 | 0.016361093 |
| **140.00** | 0.0 | 0.004986037 | 2.460749E-4 | 0.0070829242 | 0.011923761 |
| **150.00** | 0.0 | 0.0034143613 | 7.4181444E-5 | 0.004973434 | 0.008689889 |
| **160.00** | 0.0 | 0.0023381019 | 1.312056E-5 | 0.0034922082 | 0.0063330824 |
| **170.00** | 0.0 | 0.0016010961 | 0.0 | 0.0024521323 | 0.0046154717 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#jg-2194-k2)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 172.22 | 0.005806577 | 1300 | 205.87 | 0.004857526 | 1087.47 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 106.19 | 0.009417211 | 2108 | 117.10 | 0.008539989 | 1911.64 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 225.17 | 0.0044411244 | 995 | 251.42 | 0.0039774193 | 891.11 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 93.58 | 0.010685693 | 2392 | 99.34 | 0.010066796 | 2253.37 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 93.43 | 0.010703569 | 2396 | 99.74 | 0.010025898 | 2244.19 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 394.76 | 0.0025331604 | 567 | 452.00 | 0.0022123926 | 495.25 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 530.63 | 0.0018845673 | 422 | 566.14 | 0.001766353 | 395.52 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 1093.41 | 9.145678E-4 | 204 | 1180.72 | 8.4694347E-4 | 188.91 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 71.84 | 0.013920756 | 3116 | 75.77 | 0.013198567 | 2954.36 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 212.08 | 0.004715155 | 1056 | 220.18 | 0.004541662 | 1017.11 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 324.29 | 0.0030836128 | 691 | 347.39 | 0.00287858 | 645.02 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 372.54 | 0.0026843 | 601 | 505.08 | 0.0019798982 | 443.03 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 74.12 | 0.01349155 | 3020 | 78.17 | 0.012792388 | 2863.49 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 99.29 | 0.010071794 | 2254 | 113.74 | 0.008791697 | 1967.44 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 202.82 | 0.00493045 | 1104 | 220.93 | 0.0045264056 | 1013.54 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 70.75 | 0.014135265 | 3164 | 75.84 | 0.013184845 | 2951.26 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 152.56 | 0.006554982 | 1468 | 161.62 | 0.0061874394 | 1385.68 |
| **RodgersCreek** | 325.31 | 0.003074 | 312.15 | 0.0032035648 | 717 | 327.15 | 0.003056695 | 684.12 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 3318.80 | 3.0131385E-4 | 67 | 3641.97 | 2.7457633E-4 | 60.95 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 310.81 | 0.0032174408 | 720 | 331.28 | 0.0030185666 | 675.49 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 304.45 | 0.003284564 | 735 | 334.92 | 0.0029858171 | 668.14 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 109.03 | 0.009171389 | 2053 | 118.40 | 0.008445949 | 1890.6 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 523.17 | 0.0019114257 | 428 | 558.56 | 0.0017903198 | 400.86 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 358.66 | 0.0027881516 | 624 | 378.64 | 0.0026410404 | 591.04 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 94.30 | 0.01060436 | 2374 | 99.95 | 0.010004733 | 2239.73 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 74.32 | 0.013455986 | 3012 | 78.27 | 0.012775502 | 2859.64 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 422.97 | 0.0023642597 | 528 | 457.73 | 0.002184709 | 487.94 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 970.19 | 0.0010307288 | 231 | 1037.55 | 9.6381E-4 | 215.96 |
| **TOTAL** | 9.13 | 0.1094837 | 10.92 | 0.09155896 | 20496 | 11.47 | 0.08716904 | 19513.32 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.78236735 | 0.40028057 | 0.7972029 | 0.41824394 | 0.33459413 |
| **20.00** | 0.45057395 | 0.16022451 | 0.4752497 | 0.174928 | 0.111953236 |
| **30.00** | 0.20544627 | 0.06413476 | 0.22791463 | 0.07316257 | 0.037458897 |
| **40.00** | 0.07857882 | 0.025671897 | 0.091528386 | 0.030599803 | 0.012533528 |
| **50.00** | 0.024903813 | 0.010275961 | 0.030938607 | 0.012798182 | 0.004193645 |
| **60.00** | 0.0075825094 | 0.004113267 | 0.009149167 | 0.005352762 | 0.001403169 |
| **70.00** | 0.0011854885 | 0.001646461 | 0.001302994 | 0.0022387602 | 4.6949214E-4 |
| **80.00** | 0.0 | 6.590463E-4 | 2.2951863E-5 | 9.363479E-4 | 1.5708932E-4 |
| **90.00** | 0.0 | 2.638034E-4 | 0.0 | 3.9162184E-4 | 5.2561165E-5 |

### Moment Release Variability Plots
*[(top)](#jg-2194-k2)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#jg-2194-k2)*

Example rupture plots:

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![example](resources/elastic_rebound_triggering_m6_example_re_rup.png) | ![example](resources/elastic_rebound_triggering_m6.5_example_re_rup.png) |  |
| ![example](resources/elastic_rebound_triggering_m6_example_new_hypo.png) | ![example](resources/elastic_rebound_triggering_m6.5_example_new_hypo.png) |  |

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_1yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_1yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_1yr.png) |
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_10yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_10yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_10yr.png) |
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_100yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_100yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_100yr.png) |

## Input File
*[(top)](#jg-2194-k2)*

```
  A_1 = 0.001
  fA = 0.1
  B_1 = 0.005
  muSlipAmp_1 = 0
  muSlipInvDist_1 = 00
  cohesion = 00
  Dc_1 = 1.0000000000000000818e-05
  mu0_1 = 0.6
  ddotStar_1 = 9.9999999999999995475e-07
  ddotAB_1 = 9.9999999999999995475e-07
  alpha_1 = 0.0
  theta0_1 = 200000000
  tau0_1 = 55
  sigma0_1 = 100
  sigmaFracPin = 0.5
  lowSigmaAction = 1
  maxThetaPin = 1.0e13
  ddotEQ_1 = 1
  ddotEQFname = 
  stressOvershootFactor = 0.10000000000000000555
  lameLambda = 30000
  lameMu = 30000
  slowSlip_1 = 0
  nEq = 1000000000000
  KZeroFrac = 0
  KOneFrac =  0
  muPin = 1.0
  tStart = 3153600624164.075683594
  maxT = 1.10376e+13
  maxTransitions = 1.0000000000000000159e+100
  faultFname = UCERF3.D3.1.1km.tri.2.flt
  outFnameInfix = rundir2194_K2
  writeTau = 2
  writeSigma = 2
  writeSlip = 0
  writeSlipSpeed = 0
  writeState = 0
  writeTheta = 2
  writePED = 1
  writeTransitions = 1
  minDtWrite = 0
  minDtWriteCoseismic = 0
  minDtWriteInterseismic = 0
  minMagWrite = 7.5
  writeStiffness = 0
  nbuffEQS = 300
  nbuffPED = 300
  nbuffTRANS = 300
  nbuffSnap = 10
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
  KZeroFname = UCERF3.D3.1.1km.tri.2.KZero0.8
  pinnedFname =  rundir2194_K2.pin
  neighborFname = neighbors.12
  stressRateFname =  
  slowSlipFname = 
  writePatchFname = 
  DEBUG = 0
  ZBrentUpperBracket = 0
```
