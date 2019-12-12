# Bruce 4660
## Metadata
| **Catalog** | Bruce 4660 |
|-----|-----|
| **Author** | Bruce Shaw, 2019/12/11 |
| **Description** | variable slip speed. fracArea=0 ; variableSpeed s2ddf=.8 ddfmin=.1; b=.007 a=.001 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | Fully Variable |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 2,498,940 events in 148,367 years |
| **Frictional Params** | a=0.001, b=0.007, (b-a)=0.006, ddotEQ=1 |

* [Metadata](#metadata)
* [BBP Calculations, LA Basin 500 (m/s) Velocity Model](#bbp-calculations-la-basin-500-ms-velocity-model)
  * [Full Catalog GMPE Comparisons, LA Basin 500 (m/s)](#full-catalog-gmpe-comparisons-la-basin-500-ms)
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

## BBP Calculations, LA Basin 500 (m/s) Velocity Model
*[(top)](#bruce-4660)*


### Full Catalog GMPE Comparisons, LA Basin 500 (m/s)
*[(top)](#bruce-4660)*

* [ASK2014](bbp_LA_BASIN_500/gmpe_bbp_comparisons_ASK2014/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-4660)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-4660)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
#### Mechanism-Dependent Magnitude-Area Plots
*[(top)](#bruce-4660)*

Here we disaggregate the magnitude-area scaling plots by focal mechanism. Multi-fault ruptures which incorporate multiple faulting styles are included in plot for the dominent fault style so long as no more than 10% of the participating elements are of a different style, otherwise they are listed as 'Unknown'.

| Fault Style | Scatter | 2-D Hist |
|-----|-----|-----|
| **Strike-Slip** | ![MA Scatter](resources/mag_area_STRIKE_SLIP.png) | ![MA Hist](resources/mag_area_STRIKE_SLIP_hist2D.png) |
| **Normal** | ![MA Scatter](resources/mag_area_NORMAL.png) | ![MA Hist](resources/mag_area_NORMAL_hist2D.png) |
| **Reverse** | ![MA Scatter](resources/mag_area_REVERSE.png) | ![MA Hist](resources/mag_area_REVERSE_hist2D.png) |
| **Unknown** | ![MA Scatter](resources/mag_area_UNKNOWN.png) | ![MA Hist](resources/mag_area_UNKNOWN_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-4660)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-4660)*

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
| **Full Mapped Subsection Length** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_FULL_SUBSECTION_LEN.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_FULL_SUBSECTION_LEN_hist2D.png) |
| **Full Slipped Length** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_hist2D.png) |
| **Mid-Seismogenic Slipped Length** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_MID_SLIPPED_LEN.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_MID_SLIPPED_LEN_hist2D.png) |
| **Surface Slipped Length** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SURF_SLIP_LEN.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SURF_SLIP_LEN_hist2D.png) |
#### Mechanism-Dependent Slip-Length Plots
*[(top)](#bruce-4660)*

Here we disaggregate the slip-length scaling plots by focal mechanism. Multi-fault ruptures which incorporate multiple faulting styles are included in plot for the dominent fault style so long as no more than 10% of the participating elements are of a different style, otherwise they are listed as 'Unknown'.

| Fault Style | Scatter | 2-D Hist |
|-----|-----|-----|
| **Strike-Slip** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_STRIKE_SLIP.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_STRIKE_SLIP_hist2D.png) |
| **Normal** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_NORMAL.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_NORMAL_hist2D.png) |
| **Reverse** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_REVERSE.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_REVERSE_hist2D.png) |
| **Unknown** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_UNKNOWN.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_UNKNOWN_hist2D.png) |
### Slip Along Rupture (Dsr) Plots
*[(top)](#bruce-4660)*

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
*[(top)](#bruce-4660)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-4660)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-4660)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-4660)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-4660)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-4660)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-4660)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-4660)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-4660)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-4660)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.002525933 | 0.0013242303 | 0.002184025 | 0.0018471899 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 1.9537604E-4 | 1.8294294E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0016537186 | 0.0013732689 | 0.0012838998 | 0.0012404433 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 6.8381615E-4 | 6.5162615E-4 | 5.582173E-4 | 5.5004837E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0013885654 | 0.0011758211 | 0.0010885237 | 0.0010619499 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 7.11727E-4 | 5.835601E-4 | 4.884401E-4 | 4.7449852E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.0066846516 | 0.0061465083 | 0.0061613233 | 0.0059829736 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0013466992 | 0.0012886932 | 0.001228078 | 0.0012079611 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0011024791 | 9.86757E-4 | 9.559471E-4 | 9.408774E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 8.5825904E-4 | 4.890203E-4 | 2.3724233E-4 | 2.1590429E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0025329108 | 0.002215895 | 0.002037493 | 0.0019865318 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.003460947 | 0.0023538787 | 0.0019956266 | 0.0018765203 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.004109875 | 0.003982555 | 0.003956365 | 0.0039107725 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0051914207 | 0.004327497 | 0.0043889834 | 0.0041724066 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.004151741 | 0.0040453584 | 0.0040121865 | 0.0039632684 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.0045285374 | 0.004268822 | 0.004249429 | 0.0041697514 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0048425347 | 0.0044806795 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 2.5119778E-4 | 2.1547891E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0023724234 | 0.0021631129 | 0.0020026045 | 0.0019526888 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0035516573 | 0.0023906059 | 0.0023096239 | 0.0021910134 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0020026045 | 0.00197893 | 0.0020026045 | 0.001982554 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.002330557 | 0.0016092026 | 9.4199163E-4 | 8.645663E-4 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.0065450976 | 0.0060757603 | 0.005875237 | 0.0057594273 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0062659886 | 0.0037480404 | 0.0033702368 | 0.0028643634 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.0064613647 | 0.0052622836 | 0.0043052505 | 0.0041760695 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.0064613647 | 0.0052622836 | 0.0046820473 | 0.0045122197 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.0051844427 | 0.0050793304 | 0.005121643 | 0.005059711 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.00565195 | 0.0034635155 | 0.0044657383 | 0.0043117204 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0016327855 | 8.9259E-4 | 0.0010466573 | 8.634837E-4 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0036912116 | 0.0026824912 | 0.002525933 | 0.0023583383 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.005128621 | 0.004928665 | 0.0050727995 | 0.005014907 |

### Paleo Open Interval Plots
*[(top)](#bruce-4660)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-4660)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 497.92 | 0.0020083373 | 287 | 503.06 | 0.0019878366 | 284.04 |
| **FRA** | 119.00 | 0.008403362 | 159.46 | 0.0062709753 | 899 | 163.98 | 0.0060982914 | 874.22 |
| **COA** | 181.00 | 0.005524862 | 224.59 | 0.004452506 | 639 | 232.49 | 0.0043012914 | 617.27 |
| **SCZ** | 106.00 | 0.009433962 | 227.53 | 0.0043949657 | 629 | 239.19 | 0.004180707 | 598.3 |
| **TYS** | 329.00 | 0.0030395137 | 498.36 | 0.002006575 | 287 | 530.55 | 0.001884831 | 269.6 |
| **TOTAL** | 31.61 | 0.0316373 | 52.30 | 0.019122047 | 2741 | 54.23 | 0.01844 | 2643.24 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9869737 | 0.82595044 | 0.9878875 | 0.8316031 | 0.72878754 |
| **20.00** | 0.95078915 | 0.6821942 | 0.9542245 | 0.6915637 | 0.53113127 |
| **30.00** | 0.9004415 | 0.5634586 | 0.90668863 | 0.5751065 | 0.3870819 |
| **40.00** | 0.8368692 | 0.4653889 | 0.84644365 | 0.47826034 | 0.28210047 |
| **50.00** | 0.76042116 | 0.38438818 | 0.77287346 | 0.39772278 | 0.2055913 |
| **60.00** | 0.6738226 | 0.3174856 | 0.6894732 | 0.3307475 | 0.14983238 |
| **70.00** | 0.59372807 | 0.2622274 | 0.6125346 | 0.27505064 | 0.10919597 |
| **80.00** | 0.50915414 | 0.21658683 | 0.5302178 | 0.22873296 | 0.079580665 |
| **90.00** | 0.42599925 | 0.17888999 | 0.4491294 | 0.19021504 | 0.057997398 |
| **100.00** | 0.3581884 | 0.14775427 | 0.38029644 | 0.15818341 | 0.04226778 |
| **110.00** | 0.2938301 | 0.12203771 | 0.315308 | 0.13154581 | 0.030804234 |
| **120.00** | 0.23308057 | 0.1007971 | 0.25320816 | 0.10939391 | 0.022449743 |
| **130.00** | 0.18525307 | 0.08325341 | 0.2036017 | 0.09097231 | 0.016361093 |
| **140.00** | 0.14138032 | 0.0687632 | 0.1563797 | 0.07565285 | 0.011923761 |
| **150.00** | 0.09888894 | 0.056794994 | 0.11138025 | 0.06291315 | 0.008689889 |
| **160.00** | 0.072360374 | 0.046909854 | 0.082575746 | 0.05231877 | 0.0063330824 |
| **170.00** | 0.05039531 | 0.038745213 | 0.058664028 | 0.04350845 | 0.0046154717 |
| **180.00** | 0.030326989 | 0.03200163 | 0.03484199 | 0.036181763 | 0.0033636983 |
| **190.00** | 0.016490981 | 0.02643176 | 0.018752914 | 0.030088864 | 0.0024514215 |
| **200.00** | 0.0074226866 | 0.021831324 | 0.009924642 | 0.025021993 | 0.0017865654 |
| **210.00** | 0.0033812155 | 0.018031593 | 0.005048295 | 0.020808367 | 0.0013020267 |
| **220.00** | 0.0018975335 | 0.014893202 | 0.0027526105 | 0.017304301 | 9.489008E-4 |
| **230.00** | 0.0 | 0.012301047 | 5.468009E-4 | 0.014390311 | 6.915471E-4 |
| **240.00** | 0.0 | 0.010160056 | 3.5831184E-4 | 0.011967027 | 5.039909E-4 |
| **250.00** | 0.0 | 0.0083917035 | 2.7427988E-4 | 0.009951817 | 3.673023E-4 |
| **260.00** | 0.0 | 0.0069311312 | 1.653333E-4 | 0.0082759615 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.005724771 | 0.0 | 0.006882315 | 1.9508575E-4 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-4660)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 295.83 | 0.003380346 | 485 | 312.27 | 0.003202385 | 459.41 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 213.87 | 0.004675829 | 671 | 221.99 | 0.004504645 | 646.46 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 3230.99 | 3.095031E-4 | 44 | 4630.86 | 2.1594281E-4 | 30.34 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 249.23 | 0.0040123616 | 575 | 252.26 | 0.0039641825 | 568.06 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 235.29 | 0.0042500277 | 609 | 239.81 | 0.004169964 | 597.5 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 458.45 | 0.0021812727 | 313 | 543.37 | 0.0018403736 | 263.5 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 920.74 | 0.0010860884 | 156 | 942.54 | 0.0010609645 | 152.39 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 2041.37 | 4.8986665E-4 | 70 | 2099.55 | 4.7629155E-4 | 68.07 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 171.91 | 0.0058170627 | 834 | 175.08 | 0.00571161 | 818.82 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 497.92 | 0.0020083373 | 287 | 502.86 | 0.0019886072 | 284.18 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 7304.51 | 1.369018E-4 | 20 | 7712.22 | 1.2966433E-4 | 18.98 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 498.42 | 0.0020063461 | 287 | 510.64 | 0.001958343 | 280.12 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 1902.31 | 5.256763E-4 | 75 | 1943.16 | 5.1462516E-4 | 73.4 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 196.76 | 0.0050823665 | 728 | 199.08 | 0.005023014 | 719.51 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 219.39 | 0.0045580505 | 653 | 226.69 | 0.004411318 | 631.98 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 953.68 | 0.0010485699 | 150 | 1147.22 | 8.7167375E-4 | 124.01 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 159.46 | 0.0062709753 | 899 | 164.09 | 0.006094396 | 873.7 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 227.53 | 0.0043949657 | 629 | 239.74 | 0.0041711875 | 596.91 |
| **RodgersCreek** | 325.31 | 0.003074 | 433.06 | 0.0023091726 | 331 | 456.97 | 0.00218834 | 313.71 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 4156.23 | 2.4060275E-4 | 34 | 4425.89 | 2.2594332E-4 | 31.83 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 490.95 | 0.0020368502 | 292 | 502.61 | 0.0019896023 | 285.18 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 498.36 | 0.002006575 | 287 | 531.01 | 0.001883192 | 269.38 |
| **Compton** | 2658.16 | 3.762E-4 | 8847.89 | 1.13021335E-4 | 16 | 9133.84 | 1.0948293E-4 | 15.49 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 224.59 | 0.004452506 | 639 | 232.36 | 0.0043037497 | 617.63 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 763.18 | 0.001310313 | 188 | 792.86 | 0.0012612523 | 180.96 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 814.56 | 0.0012276531 | 175 | 827.30 | 0.0012087581 | 172.31 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 252.75 | 0.00395644 | 567 | 255.70 | 0.0039108405 | 560.45 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 195.68 | 0.00511033 | 732 | 197.89 | 0.0050534396 | 723.85 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1029.73 | 9.711282E-4 | 139 | 1047.65 | 9.5451716E-4 | 136.55 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1792.23 | 5.5796455E-4 | 80 | 1819.16 | 5.4970325E-4 | 78.8 |
| **TOTAL** | 9.08 | 0.1101451 | 21.70 | 0.04609002 | 6606 | 22.43 | 0.044581506 | 6389.82 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9296579 | 0.6307156 | 0.9334966 | 0.6403022 | 0.33238843 |
| **20.00** | 0.77985555 | 0.3978022 | 0.79018664 | 0.40998688 | 0.110482074 |
| **30.00** | 0.60033697 | 0.25090006 | 0.6165142 | 0.2625155 | 0.036722966 |
| **40.00** | 0.439263 | 0.15824658 | 0.4568664 | 0.16808924 | 0.012206289 |
| **50.00** | 0.3119501 | 0.09980859 | 0.32830244 | 0.10762791 | 0.004057229 |
| **60.00** | 0.20373462 | 0.062950835 | 0.2195791 | 0.06891438 | 0.001348576 |
| **70.00** | 0.13610323 | 0.039704077 | 0.14907101 | 0.044126034 | 4.4825108E-4 |
| **80.00** | 0.08664924 | 0.02504198 | 0.09598654 | 0.028253995 | 1.4899348E-4 |
| **90.00** | 0.050141785 | 0.015794368 | 0.057634722 | 0.018091094 | 4.952371E-5 |
| **100.00** | 0.029127842 | 0.009961755 | 0.033448424 | 0.011583768 | 1.6461108E-5 |
| **110.00** | 0.01766699 | 0.0062830346 | 0.020372355 | 0.0074171117 | 5.4714824E-6 |
| **120.00** | 0.006429502 | 0.003962808 | 0.008813898 | 0.004749193 | 1.8186574E-6 |
| **130.00** | 0.0039060384 | 0.0024994048 | 0.004920163 | 0.0030409184 | 6.045007E-7 |
| **140.00** | 0.0016877953 | 0.0015764137 | 0.0019030311 | 0.0019471067 | 2.0092905E-7 |
| **150.00** | 0.001115575 | 9.942688E-4 | 0.0015303036 | 0.0012467367 | 6.678649E-8 |
| **160.00** | 0.0 | 6.271008E-4 | 3.417107E-4 | 7.982882E-4 | 2.2199057E-8 |
| **170.00** | 0.0 | 3.9552228E-4 | 1.1031739E-4 | 5.111457E-4 | 7.37871E-9 |
| **180.00** | 0.0 | 2.494621E-4 | 5.318088E-5 | 3.272877E-4 | 2.452598E-9 |
| **190.00** | 0.0 | 1.5733963E-4 | 0.0 | 2.0956303E-4 | 8.152152E-10 |

### Moment Release Variability Plots
*[(top)](#bruce-4660)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-4660)*

Example rupture plots:

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
|  |  |  |
| ![example](resources/elastic_rebound_triggering_m6_example_new_hypo.png) | ![example](resources/elastic_rebound_triggering_m6.5_example_new_hypo.png) |  |

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_1yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_1yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_1yr.png) |
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_10yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_10yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_10yr.png) |
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_100yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_100yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_100yr.png) |

## Input File
*[(top)](#bruce-4660)*

```
  A_1 = 0.001
  fA = .1
  B_1 = 0.007
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
  ddotEQ_1 = 1
  ddotEQFname = 
  stressOvershootFactor = 0.10000000000000000555
  lameLambda = 30000
  lameMu = 30000
  slowSlip_1 = 0
  nEq = 10000000
  KZeroFrac = 0
  KOneFrac =  0
  muPin = 1.0
  tStart = 0
  maxT = 1.0000000000000000159e+100
  maxTransitions = 1.0000000000000000159e+8
  maxWallTime = 85000
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
  variableSlipSpeed = 2
  state2ddotFactor = .8
  state2ddotMinFactor = .1
```
