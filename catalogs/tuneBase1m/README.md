# JG Tune Base 1M
## Metadata
| **Catalog** | JG Tune Base 1M |
|-----|-----|
| **Author** | Jacqui Gilchrist, 2017/11/02 |
| **Description** | U3 fault geometry with 1km^2 triangles, normal backslip loading with U3 geologic slip rates,calibrated to U3 supraseismogenic recurrence intervals, and default a/b |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 0.90 km^2 |
| **Length** | 21,141,999 events in 69,601 years |
| **Frictional Params** | a=0.01, b=0.015, (b-a)=0.005, ddotEQ=1 |

* [Metadata](#metadata)
* [BBP Calculations, LA Basin 863 (m/s) Velocity Model](#bbp-calculations-la-basin-863-ms-velocity-model)
  * [Full Catalog GMPE Comparisons, LA Basin 863 (m/s)](#full-catalog-gmpe-comparisons-la-basin-863-ms)
  * [Full Catalog RotD100/RotD50 Ratios, LA Basin 863 (m/s)](bbp_LA_BASIN_863/catalog_rotd_ratio_comparisons/)
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
  * [Paleo Recurrence Plots](#paleo-recurrence-plots)
  * [Paleo Open Interval Plots](#paleo-open-interval-plots)
    * [Paleo Open Interval Plots, Biasi and Sharer 2019](#paleo-open-interval-plots-biasi-and-sharer-2019)
    * [Paleo Open Interval Plots, UCERF3](#paleo-open-interval-plots-ucerf3)
  * [Moment Release Variability Plots](#moment-release-variability-plots)
* [Input File](#input-file)

## BBP Calculations, LA Basin 863 (m/s) Velocity Model
*[(top)](#jg-tune-base-1m)*


### Full Catalog GMPE Comparisons, LA Basin 863 (m/s)
*[(top)](#jg-tune-base-1m)*

* [BSSA2014](bbp_LA_BASIN_863/gmpe_bbp_comparisons_BSSA2014/)
* [NGAWest_2014_NoIdr](bbp_LA_BASIN_863/gmpe_bbp_comparisons_NGAWest_2014_NoIdr/)

### Full Catalog RotD100/RotD50 Ratios, LA Basin 863 (m/s)
*[(top)](#jg-tune-base-1m)*

[Full Catalog RotD100/RotD50 Ratios Plotted Here](bbp_LA_BASIN_863/catalog_rotd_ratio_comparisons/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#jg-tune-base-1m)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#jg-tune-base-1m)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
#### Mechanism-Dependent Magnitude-Area Plots
*[(top)](#jg-tune-base-1m)*

Here we disaggregate the magnitude-area scaling plots by focal mechanism. Multi-fault ruptures which incorporate multiple faulting styles are included in plot for the dominent fault style so long as no more than 10% of the participating elements are of a different style, otherwise they are listed as 'Unknown'.

| Fault Style | Scatter | 2-D Hist |
|-----|-----|-----|
| **Strike-Slip** | ![MA Scatter](resources/mag_area_STRIKE_SLIP.png) | ![MA Hist](resources/mag_area_STRIKE_SLIP_hist2D.png) |
| **Normal** | ![MA Scatter](resources/mag_area_NORMAL.png) | ![MA Hist](resources/mag_area_NORMAL_hist2D.png) |
| **Reverse** | ![MA Scatter](resources/mag_area_REVERSE.png) | ![MA Hist](resources/mag_area_REVERSE_hist2D.png) |
| **Unknown** | ![MA Scatter](resources/mag_area_UNKNOWN.png) | ![MA Hist](resources/mag_area_UNKNOWN_hist2D.png) |
### Slip-Area Plots
*[(top)](#jg-tune-base-1m)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#jg-tune-base-1m)*

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
*[(top)](#jg-tune-base-1m)*

Here we disaggregate the slip-length scaling plots by focal mechanism. Multi-fault ruptures which incorporate multiple faulting styles are included in plot for the dominent fault style so long as no more than 10% of the participating elements are of a different style, otherwise they are listed as 'Unknown'.

| Fault Style | Scatter | 2-D Hist |
|-----|-----|-----|
| **Strike-Slip** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_FULL_LEN_STRIKE_SLIP.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_FULL_LEN_STRIKE_SLIP_hist2D.png) |
| **Normal** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_FULL_LEN_NORMAL.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_FULL_LEN_NORMAL_hist2D.png) |
| **Reverse** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_FULL_LEN_REVERSE.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_FULL_LEN_REVERSE_hist2D.png) |
| **Unknown** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_FULL_LEN_UNKNOWN.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_FULL_LEN_UNKNOWN_hist2D.png) |
### Slip Along Rupture (Dsr) Plots
*[(top)](#jg-tune-base-1m)*

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
*[(top)](#jg-tune-base-1m)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#jg-tune-base-1m)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#jg-tune-base-1m)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#jg-tune-base-1m)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#jg-tune-base-1m)*

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Stationarity Plot
*[(top)](#jg-tune-base-1m)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#jg-tune-base-1m)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#jg-tune-base-1m)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#jg-tune-base-1m)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0027864028 | 0.0014681654 | 0.0 | 0.0 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 6.966007E-4 | 5.6659465E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0059133656 | 0.002508061 | 0.0058669257 | 0.003296704 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 6.037206E-4 | 3.9101858E-4 | 0.0 | 0.0 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0015325214 | 9.851601E-4 | 8.978409E-4 | 8.7581325E-4 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 8.8236085E-4 | 6.069604E-4 | 0.0 | 0.0 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.008467568 | 0.005629277 | 0.0044118045 | 0.0043526883 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0011919611 | 8.145442E-4 | 5.8824057E-4 | 5.8235816E-4 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0011610012 | 8.703644E-4 | 0.0 | 0.0 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 0.0033436832 | 0.0010277091 | 0.0 | 0.0 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0035139634 | 0.0026335951 | 0.0 | 0.0 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0068576466 | 0.0044981837 | 0.006269406 | 0.0045658816 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0038235637 | 0.0027443806 | 0.002058842 | 0.002037627 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0067957267 | 0.0052427775 | 0.0056502055 | 0.0053764028 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.004318924 | 0.0031528217 | 0.0022291222 | 0.0022054836 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.0051858053 | 0.0042200005 | 0.004164124 | 0.00410337 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.006114606 | 0.0050340453 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 5.418005E-4 | 3.5878964E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0014860815 | 0.0010723405 | 7.4304076E-4 | 7.351763E-4 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.004055764 | 0.0027938099 | 0.0 | 0.0 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.004365364 | 0.0030713596 | 0.002894763 | 0.0027484198 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.003018603 | 0.0018581277 | 0.0 | 0.0 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.0064396863 | 0.005168758 | 0.004845245 | 0.0047935992 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0054799253 | 0.0032760047 | 0.0 | 0.0 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.005031005 | 0.0037553231 | 0.0 | 0.0 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.005031005 | 0.0037553231 | 0.0 | 0.0 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.0068421667 | 0.005469981 | 0.0047678445 | 0.00469972 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.0063622864 | 0.0037415838 | 0.004318924 | 0.004167547 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.007012447 | 0.003754718 | 0.0 | 0.0 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.004349884 | 0.0017663334 | 0.0 | 0.0 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.011687411 | 0.007959057 | 0.009148689 | 0.008639812 |

### Paleo Open Interval Plots
*[(top)](#jg-tune-base-1m)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#jg-tune-base-1m)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 345.79 | 0.0028919678 | 187 | 365.58 | 0.0027353617 | 176.87 |
| **FRA** | 119.00 | 0.008403362 | 231.36 | 0.0043223053 | 279 | 234.53 | 0.004263881 | 275.22 |
| **COA** | 181.00 | 0.005524862 | 238.91 | 0.004185639 | 270 | 243.31 | 0.0041099163 | 265.11 |
| **SCZ** | 106.00 | 0.009433962 | 175.33 | 0.0057035177 | 369 | 185.42 | 0.0053931484 | 348.95 |
| **TYS** | 329.00 | 0.0030395137 | 159.18 | 0.006282199 | 405 | 218.39 | 0.0045790295 | 295.06 |
| **TOTAL** | 31.61 | 0.0316373 | 42.77 | 0.023382463 | 1510 | 47.44 | 0.021080164 | 1361.42 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9825048 | 0.7915006 | 0.9848987 | 0.8099347 | 0.72878754 |
| **20.00** | 0.9389626 | 0.62647325 | 0.9466687 | 0.65599424 | 0.53113127 |
| **30.00** | 0.8663878 | 0.49585396 | 0.8829053 | 0.53131247 | 0.3870819 |
| **40.00** | 0.78457916 | 0.39246872 | 0.8107127 | 0.43032843 | 0.28210047 |
| **50.00** | 0.703468 | 0.31063923 | 0.7399248 | 0.34853792 | 0.2055913 |
| **60.00** | 0.60295194 | 0.24587114 | 0.65102905 | 0.28229296 | 0.14983238 |
| **70.00** | 0.5116589 | 0.19460715 | 0.56530046 | 0.22863886 | 0.10919597 |
| **80.00** | 0.42268658 | 0.15403168 | 0.47943038 | 0.18518256 | 0.079580665 |
| **90.00** | 0.32608816 | 0.121916175 | 0.3839887 | 0.14998578 | 0.057997398 |
| **100.00** | 0.2576073 | 0.09649672 | 0.31346735 | 0.121478684 | 0.04226778 |
| **110.00** | 0.19564782 | 0.07637722 | 0.24797082 | 0.0983898 | 0.030804234 |
| **120.00** | 0.13123868 | 0.060452618 | 0.17955615 | 0.07968932 | 0.022449743 |
| **130.00** | 0.09431525 | 0.047848284 | 0.13577889 | 0.06454314 | 0.016361093 |
| **140.00** | 0.064907044 | 0.037871946 | 0.09962106 | 0.05227573 | 0.011923761 |
| **150.00** | 0.043285124 | 0.029975668 | 0.0712209 | 0.04233993 | 0.008689889 |
| **160.00** | 0.02419221 | 0.02372576 | 0.04284557 | 0.034292575 | 0.0063330824 |
| **170.00** | 0.014924082 | 0.018778954 | 0.028611029 | 0.027774747 | 0.0046154717 |
| **180.00** | 0.012252463 | 0.014863553 | 0.0233653 | 0.022495732 | 0.0033636983 |
| **190.00** | 0.007546195 | 0.0117645115 | 0.015228141 | 0.018220074 | 0.0024514215 |
| **200.00** | 0.004746628 | 0.009311618 | 0.0068502463 | 0.014757071 | 0.0017865654 |
| **210.00** | 0.0 | 0.0073701516 | 0.0016730602 | 0.011952263 | 0.0013020267 |
| **220.00** | 0.0 | 0.0058334796 | 0.0011309391 | 0.009680552 | 9.489008E-4 |
| **230.00** | 0.0 | 0.0046172026 | 3.7835015E-4 | 0.007840616 | 6.915471E-4 |
| **240.00** | 0.0 | 0.0036545189 | 2.800144E-4 | 0.006350387 | 5.039909E-4 |
| **250.00** | 0.0 | 0.0028925538 | 2.3201322E-4 | 0.0051433984 | 3.673023E-4 |
| **260.00** | 0.0 | 0.0022894582 | 1.9397985E-4 | 0.004165817 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.0018121076 | 1.5748745E-4 | 0.0033740397 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.0014342843 | 1.3119548E-4 | 0.002732752 | 1.4217607E-4 |
| **290.00** | 0.0 | 0.0011352369 | 0.0 | 0.0022133505 | 1.0361615E-4 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#jg-tune-base-1m)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 282.60 | 0.0035385082 | 229 | 301.57 | 0.0033159342 | 214.46 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 239.80 | 0.004170079 | 269 | 244.20 | 0.0040950007 | 264.14 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 1157.31 | 8.640701E-4 | 55 | 1243.89 | 8.0393034E-4 | 50.37 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 446.20 | 0.0022411484 | 144 | 450.96 | 0.002217476 | 142.47 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 240.38 | 0.004160113 | 269 | 244.12 | 0.004096294 | 264.87 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 1152.73 | 8.6750434E-4 | 56 | 1166.09 | 8.575675E-4 | 55.37 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 1128.05 | 8.8648667E-4 | 57 | 1148.17 | 8.709525E-4 | 56 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 1585.01 | 6.3091266E-4 | 40 | 1649.06 | 6.064071E-4 | 38.42 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 206.58 | 0.004840729 | 313 | 208.84 | 0.0047884136 | 309.62 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 345.79 | 0.0028919678 | 187 | 364.89 | 0.0027405552 | 177.18 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 1432.69 | 6.9798843E-4 | 44 | 1448.16 | 6.9053145E-4 | 43.52 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 358.87 | 0.0027865344 | 180 | 555.03 | 0.0018017095 | 115.83 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 109.34 | 0.009146042 | 591 | 115.98 | 0.008622519 | 557.22 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 231.00 | 0.004328956 | 279 | 239.62 | 0.0041733375 | 268.98 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 361.68 | 0.0027649007 | 179 | 381.62 | 0.002620415 | 169.6 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 231.36 | 0.0043223053 | 279 | 234.83 | 0.0042584036 | 274.89 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 175.33 | 0.0057035177 | 369 | 185.58 | 0.005388391 | 348.62 |
| **RodgersCreek** | 325.31 | 0.003074 | 292.93 | 0.0034137692 | 220 | 326.27 | 0.0030649637 | 197.57 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 354.61 | 0.0028200059 | 181 | 1641.04 | 6.0936785E-4 | 38.26 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 307.54 | 0.0032515721 | 210 | 341.19 | 0.0029309606 | 189.29 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 159.18 | 0.006282199 | 405 | 218.21 | 0.0045827045 | 295.25 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 238.91 | 0.004185639 | 270 | 243.46 | 0.004107528 | 264.98 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 170.11 | 0.0058784955 | 379 | 303.92 | 0.003290296 | 211.57 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 1750.60 | 5.7123293E-4 | 37 | 1767.27 | 5.65843E-4 | 36.61 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 487.37 | 0.0020518322 | 133 | 492.06 | 0.002032252 | 131.72 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 210.13 | 0.0047590425 | 308 | 213.11 | 0.0046925186 | 303.7 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1240.61 | 8.0605276E-4 | 51 | 1271.80 | 7.8628614E-4 | 49.76 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 6125.74 | 1.6324564E-4 | 11 | 6168.92 | 1.6210292E-4 | 10.93 |
| **TOTAL** | 9.13 | 0.1094837 | 14.19 | 0.07048226 | 4550 | 16.33 | 0.061243746 | 3953.73 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.8677642 | 0.49419624 | 0.8906372 | 0.54202807 | 0.33459413 |
| **20.00** | 0.6189693 | 0.24422991 | 0.67949 | 0.29379445 | 0.111953236 |
| **30.00** | 0.40489239 | 0.1206975 | 0.4790263 | 0.15924485 | 0.037458897 |
| **40.00** | 0.2491784 | 0.05964825 | 0.32201374 | 0.08631518 | 0.012533528 |
| **50.00** | 0.1400637 | 0.029477939 | 0.20172688 | 0.04678525 | 0.004193645 |
| **60.00** | 0.06563919 | 0.0145678865 | 0.11061346 | 0.025358919 | 0.001403169 |
| **70.00** | 0.03621482 | 0.0071993945 | 0.065204784 | 0.013745246 | 4.6949214E-4 |
| **80.00** | 0.019846436 | 0.0035579135 | 0.0379878 | 0.00745031 | 1.5708932E-4 |
| **90.00** | 0.008795547 | 0.0017583075 | 0.020407952 | 0.004038277 | 5.2561165E-5 |
| **100.00** | 0.0016988618 | 8.6894893E-4 | 0.007344845 | 0.0021888597 | 1.7586659E-5 |
| **110.00** | 0.0 | 4.2943127E-4 | 0.003091404 | 0.0011864235 | 5.884393E-6 |
| **120.00** | 0.0 | 2.1222331E-4 | 7.381307E-4 | 6.430748E-4 | 1.9688835E-6 |
| **130.00** | 0.0 | 1.0487996E-4 | 3.126442E-4 | 3.4856462E-4 | 6.5877686E-7 |
| **140.00** | 0.0 | 5.183128E-5 | 2.3848834E-4 | 1.8893181E-4 | 2.2042288E-7 |
| **150.00** | 0.0 | 2.5614823E-5 | 1.9927949E-4 | 1.02406346E-4 | 7.3752204E-8 |
| **160.00** | 0.0 | 1.2658749E-5 | 0.0 | 5.5507116E-5 | 2.4677055E-8 |

### Moment Release Variability Plots
*[(top)](#jg-tune-base-1m)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

## Input File
*[(top)](#jg-tune-base-1m)*

```
  A_1 = 0.01
  fA = 0.1
  B_1 = 0.015
  Dc_1 = 1.0000000000000000818e-05
  mu0_1 = 0.6
  ddotStar_1 = 9.9999999999999995475e-07
  ddotAB_1 = 9.9999999999999995475e-07
  alpha_1 = 0.25
  theta0_1 = 200000000
  tau0_1 = 60
  sigma0_1 = 100
  sigmaFracPin = 0.1
  maxThetaPin = 10000000000
  ddotEQ_1 = 1
  ddotEQFname = 
  stressOvershootFactor = 0.10000000000000000555
  lameLambda = 30000
  lameMu = 30000
  slowSlip_1 = 0
  nEq = 3e20
  tStart = 55651082300705.9921875
  maxT = 6.0381475e+13
  faultFname = UCERF3.D3.1.1km.tri.2.flt
  outFnameInfix = tuneBase1m
  writeTau = 2
  writeSigma = 2
  writeSlip = 0
  writeSlipSpeed = 0
  writeState = 0
  writeTheta = 2
  writePED = 1
  writeTransitions = 1
  minDtWrite = 3.15e10
  minDtWriteCoseismic = 0
  minDtWriteInterseismic = 0
  minMagWrite = 7.5
  writeStiffness = 0
  stressRateSpecification = 1
  dMu3 = 0.0010000000000000000208
  initTauFname = initTau.txt
  initSigmaFname = initSigma.txt
  initThetaFname = initTheta.txt
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
  pinnedFname = tuneBase1m.pin 
  neighborFname = neighbors.12
  stressRateFname = 
  slowSlipFname = 
  writePatchFname = 
  DEBUG = 1
  ZBrentUpperBracket = 0
  ZBrentTol = 9.9999999999999995475e-07
  lowSigmaAction = 0
  KZeroFrac = 0.0
  KZeroFname = UCERF3.D3.1.1km.tri.2.KZero0.8
  slipInState1 = 1
  resetStressingRates = 1
```
