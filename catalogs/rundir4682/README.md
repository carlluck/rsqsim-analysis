# Bruce 4682
## Metadata
| **Catalog** | Bruce 4682 |
|-----|-----|
| **Author** | Bruce Shaw, 2019/12/12 |
| **Description** | higher resolution delta=1.25; variable slip speed. fracArea=0 ; variableSpeed s2ddf=.8 ddfmin=.1; b=.008 a=.001 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | Fully Variable |
| **Average Element Area** | 0.67 km^2 |
| **Length** | 602,499 events in 30,503 years |
| **Frictional Params** | a=0.001, b=0.008, (b-a)=0.007, ddotEQ=1 |

* [Metadata](#metadata)
* [BBP Calculations, LA Basin 500 (m/s) Velocity Model](#bbp-calculations-la-basin-500-ms-velocity-model)
  * [Full Catalog GMPE Comparisons, LA Basin 500 (m/s)](#full-catalog-gmpe-comparisons-la-basin-500-ms)
  * [Rotated Rupture Variability Comparisons, LA Basin 500 (m/s)](#rotated-rupture-variability-comparisons-la-basin-500-ms)
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
*[(top)](#bruce-4682)*


### Full Catalog GMPE Comparisons, LA Basin 500 (m/s)
*[(top)](#bruce-4682)*

* [ASK2014](bbp_LA_BASIN_500/gmpe_bbp_comparisons_ASK2014/)

### Rotated Rupture Variability Comparisons, LA Basin 500 (m/s)
*[(top)](#bruce-4682)*

* [M7.2, Vertical Strike-Slip with Surface Rupture, Closest Mag](bbp_LA_BASIN_500/rotated_ruptures_m7p2_vert_ss_surface_filter_closest_mag/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-4682)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-4682)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
#### Mechanism-Dependent Magnitude-Area Plots
*[(top)](#bruce-4682)*

Here we disaggregate the magnitude-area scaling plots by focal mechanism. Multi-fault ruptures which incorporate multiple faulting styles are included in plot for the dominent fault style so long as no more than 10% of the participating elements are of a different style, otherwise they are listed as 'Unknown'.

| Fault Style | Scatter | 2-D Hist |
|-----|-----|-----|
| **Strike-Slip** | ![MA Scatter](resources/mag_area_STRIKE_SLIP.png) | ![MA Hist](resources/mag_area_STRIKE_SLIP_hist2D.png) |
| **Normal** | ![MA Scatter](resources/mag_area_NORMAL.png) | ![MA Hist](resources/mag_area_NORMAL_hist2D.png) |
| **Reverse** | ![MA Scatter](resources/mag_area_REVERSE.png) | ![MA Hist](resources/mag_area_REVERSE_hist2D.png) |
| **Unknown** | ![MA Scatter](resources/mag_area_UNKNOWN.png) | ![MA Hist](resources/mag_area_UNKNOWN_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-4682)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-4682)*

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
*[(top)](#bruce-4682)*

Here we disaggregate the slip-length scaling plots by focal mechanism. Multi-fault ruptures which incorporate multiple faulting styles are included in plot for the dominent fault style so long as no more than 10% of the participating elements are of a different style, otherwise they are listed as 'Unknown'.

| Fault Style | Scatter | 2-D Hist |
|-----|-----|-----|
| **Strike-Slip** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_STRIKE_SLIP.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_STRIKE_SLIP_hist2D.png) |
| **Normal** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_NORMAL.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_NORMAL_hist2D.png) |
| **Reverse** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_REVERSE.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_REVERSE_hist2D.png) |
| **Unknown** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_UNKNOWN.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_UNKNOWN_hist2D.png) |
### Slip Along Rupture (Dsr) Plots
*[(top)](#bruce-4682)*

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
*[(top)](#bruce-4682)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-4682)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-4682)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-4682)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-4682)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-4682)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-4682)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-4682)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-4682)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-4682)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0046815 | 0.0033071886 | 0.0029898658 | 0.0025365946 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 2.7538236E-4 | 2.4217808E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0016916345 | 0.0014317748 | 0.0012195505 | 0.0011914751 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 7.4746646E-4 | 7.0060743E-4 | 6.294454E-4 | 6.185525E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0011802102 | 0.0010845889 | 0.0011015295 | 0.0010716956 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 8.6548744E-4 | 7.6579064E-4 | 5.901051E-4 | 5.731707E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.0068058786 | 0.0062233675 | 0.0065698368 | 0.006299505 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0012195505 | 0.0012004497 | 0.0012195505 | 0.001205107 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0012588908 | 0.0011553493 | 0.0011015295 | 0.001056345 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 4.7208407E-4 | 3.5972276E-4 | 1.9670169E-4 | 1.8497343E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.00232108 | 0.002042177 | 0.0019670168 | 0.001920224 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0038160128 | 0.0029463742 | 0.0023997605 | 0.0022614899 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.004406118 | 0.00425541 | 0.004209416 | 0.004142902 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0073173027 | 0.005661923 | 0.0042487564 | 0.0040223426 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0046028197 | 0.0044833524 | 0.0043667774 | 0.004301913 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.0055076475 | 0.005077998 | 0.0049568824 | 0.0048290533 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0045241388 | 0.0042481115 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 2.7538236E-4 | 2.566479E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.002203059 | 0.0021183654 | 0.0021243782 | 0.0020776163 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0040127146 | 0.0027307963 | 0.0023604203 | 0.0022535536 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0022817396 | 0.002232814 | 0.0022423994 | 0.0022162916 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0019670168 | 0.001604164 | 0.0013769119 | 0.0012167905 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.0070025804 | 0.0066555277 | 0.0066091768 | 0.006471597 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0051929248 | 0.0037273557 | 0.0032259077 | 0.002707898 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.007356643 | 0.005984596 | 0.0044454583 | 0.004317654 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.007356643 | 0.005984596 | 0.004996223 | 0.004771878 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.0048388615 | 0.0047671194 | 0.0047208406 | 0.0046635806 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.005114244 | 0.0032760366 | 0.004288097 | 0.0041654496 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.004996223 | 0.0034949493 | 0.0027538238 | 0.0025159477 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.003029206 | 0.0025796108 | 0.0025964624 | 0.0024975038 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.004760181 | 0.0046604117 | 0.00464216 | 0.004592563 |

### Paleo Open Interval Plots
*[(top)](#bruce-4682)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-4682)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 445.83 | 0.0022429845 | 57 | 450.48 | 0.0022198348 | 56.41 |
| **FRA** | 119.00 | 0.008403362 | 152.51 | 0.0065570516 | 167 | 159.22 | 0.0062804725 | 159.99 |
| **COA** | 181.00 | 0.005524862 | 221.84 | 0.0045077163 | 115 | 228.95 | 0.0043678368 | 111.45 |
| **SCZ** | 106.00 | 0.009433962 | 235.72 | 0.0042423108 | 108 | 249.00 | 0.0040160557 | 102.26 |
| **TYS** | 329.00 | 0.0030395137 | 419.80 | 0.0023821143 | 61 | 443.85 | 0.0022529946 | 57.66 |
| **TOTAL** | 31.61 | 0.0316373 | 50.05 | 0.019981451 | 507 | 52.09 | 0.01919751 | 487.14 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.98538053 | 0.81888264 | 0.98658943 | 0.8253274 | 0.72878754 |
| **20.00** | 0.94185865 | 0.67056876 | 0.9463163 | 0.68116534 | 0.53113127 |
| **30.00** | 0.8823548 | 0.5491171 | 0.8902497 | 0.56218445 | 0.3870819 |
| **40.00** | 0.83075446 | 0.44966245 | 0.8404745 | 0.46398622 | 0.28210047 |
| **50.00** | 0.77740043 | 0.36822078 | 0.7893572 | 0.38294056 | 0.2055913 |
| **60.00** | 0.69153917 | 0.3015296 | 0.7086976 | 0.31605133 | 0.14983238 |
| **70.00** | 0.60758567 | 0.24691734 | 0.625974 | 0.26084584 | 0.10919597 |
| **80.00** | 0.5297132 | 0.20219631 | 0.54860777 | 0.21528322 | 0.079580665 |
| **90.00** | 0.40527767 | 0.16557506 | 0.4306332 | 0.17767914 | 0.057997398 |
| **100.00** | 0.30930084 | 0.13558653 | 0.33612242 | 0.14664346 | 0.04226778 |
| **110.00** | 0.24134551 | 0.11102945 | 0.2685737 | 0.12102887 | 0.030804234 |
| **120.00** | 0.19487508 | 0.09092009 | 0.21860659 | 0.099888444 | 0.022449743 |
| **130.00** | 0.14290781 | 0.074452884 | 0.1627816 | 0.08244067 | 0.016361093 |
| **140.00** | 0.108992815 | 0.06096817 | 0.12863207 | 0.06804054 | 0.011923761 |
| **150.00** | 0.08164677 | 0.049925778 | 0.09726143 | 0.056155726 | 0.008689889 |
| **160.00** | 0.05206942 | 0.04088335 | 0.064911485 | 0.046346862 | 0.0063330824 |
| **170.00** | 0.033979826 | 0.033478666 | 0.036254533 | 0.038251337 | 0.0046154717 |
| **180.00** | 0.029742125 | 0.027415099 | 0.035679597 | 0.031569876 | 0.0033636983 |
| **190.00** | 0.0 | 0.022449747 | 0.0037652114 | 0.026055483 | 0.0024514215 |
| **200.00** | 0.0 | 0.018383708 | 0.0029441644 | 0.021504305 | 0.0017865654 |
| **210.00** | 0.0 | 0.015054099 | 0.0027535467 | 0.017748093 | 0.0013020267 |
| **220.00** | 0.0 | 0.01232754 | 0.0016988129 | 0.014647987 | 9.489008E-4 |
| **230.00** | 0.0 | 0.010094808 | 0.0010480039 | 0.012089386 | 6.915471E-4 |
| **240.00** | 0.0 | 0.008266463 | 5.5142364E-4 | 0.009977701 | 5.039909E-4 |
| **250.00** | 0.0 | 0.006769263 | 3.196277E-4 | 0.008234871 | 3.673023E-4 |
| **260.00** | 0.0 | 0.005543232 | 2.7563336E-4 | 0.0067964643 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.0045392564 | 2.3658601E-4 | 0.0056093084 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.0037171182 | 2.2128483E-4 | 0.004629516 | 1.4217607E-4 |
| **290.00** | 0.0 | 0.0030438835 | 2.0598364E-4 | 0.0038208663 | 1.0361615E-4 |
| **300.00** | 0.0 | 0.0024925834 | 1.9068246E-4 | 0.0031534657 | 7.551416E-5 |
| **310.00** | 0.0 | 0.0020411331 | 1.7538127E-4 | 0.0026026417 | 5.503378E-5 |
| **320.00** | 0.0 | 0.0016714485 | 1.6008009E-4 | 0.0021480315 | 4.0107934E-5 |
| **330.00** | 0.0 | 0.0013687201 | 1.447789E-4 | 0.0017728293 | 2.9230163E-5 |
| **340.00** | 0.0 | 0.0011208211 | 0.0 | 0.0014631646 | 2.1302578E-5 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-4682)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 307.05 | 0.0032567543 | 83 | 325.72 | 0.00307008 | 78.23 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 200.71 | 0.0049822126 | 127 | 210.04 | 0.0047609806 | 121.35 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 1106.49 | 9.03761E-4 | 23 | 1261.09 | 7.9296547E-4 | 20.23 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 226.91 | 0.004407052 | 112 | 230.10 | 0.004346021 | 110.26 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 202.98 | 0.004926577 | 126 | 207.77 | 0.004813007 | 123.09 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 337.09 | 0.0029665697 | 75 | 425.01 | 0.0023528668 | 59.27 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 914.21 | 0.0010938403 | 28 | 931.22 | 0.0010738559 | 27.48 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 1590.88 | 6.285831E-4 | 16 | 1665.80 | 6.0031295E-4 | 15.29 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 153.05 | 0.006533694 | 167 | 156.30 | 0.0063979793 | 163.53 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 445.83 | 0.0022429845 | 57 | 450.23 | 0.002221102 | 56.38 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 4431.87 | 2.2563814E-4 | 6 | 4550.18 | 2.1977154E-4 | 5.87 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 471.02 | 0.0021230683 | 54 | 480.74 | 0.0020801208 | 52.92 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 1101.04 | 9.082332E-4 | 22 | 1152.60 | 8.676056E-4 | 21.05 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 216.38 | 0.0046215365 | 118 | 218.94 | 0.004567494 | 116.6 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 234.41 | 0.0042660334 | 109 | 240.64 | 0.004155578 | 106.17 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 362.79 | 0.0027564478 | 69 | 398.81 | 0.0025074873 | 62.46 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 152.51 | 0.0065570516 | 167 | 159.57 | 0.006266822 | 159.64 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 235.72 | 0.0042423108 | 108 | 249.23 | 0.0040123737 | 102.17 |
| **RodgersCreek** | 325.31 | 0.003074 | 424.13 | 0.0023577558 | 60 | 447.04 | 0.002236959 | 56.85 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 3535.62 | 2.8283577E-4 | 7 | 3906.28 | 2.559979E-4 | 6.14 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 497.24 | 0.0020111033 | 51 | 513.68 | 0.0019467225 | 49.37 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 419.80 | 0.0023821143 | 61 | 444.26 | 0.00225092 | 57.63 |
| **Compton** | 2658.16 | 3.762E-4 | 3217.27 | 3.1082216E-4 | 8 | 3580.34 | 2.7930335E-4 | 7.21 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 221.84 | 0.0045077163 | 115 | 229.43 | 0.0043586525 | 111.18 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 815.38 | 0.0012264285 | 31 | 837.89 | 0.0011934686 | 30.16 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 841.06 | 0.0011889747 | 31 | 853.03 | 0.0011722976 | 30.56 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 235.47 | 0.0042468593 | 108 | 239.60 | 0.0041735615 | 106.12 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 212.74 | 0.004700537 | 120 | 215.51 | 0.004640176 | 118.44 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 940.75 | 0.0010629832 | 27 | 974.09 | 0.0010265964 | 26.11 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1571.26 | 6.3643383E-4 | 16 | 1593.38 | 6.275956E-4 | 15.74 |
| **TOTAL** | 9.08 | 0.1101451 | 20.35 | 0.049138047 | 1250 | 21.21 | 0.04715538 | 1199.6 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9211464 | 0.61178124 | 0.92652667 | 0.6240319 | 0.33238843 |
| **20.00** | 0.7557985 | 0.3742763 | 0.76925194 | 0.3894158 | 0.110482074 |
| **30.00** | 0.5590004 | 0.22897524 | 0.5793502 | 0.2430079 | 0.036722966 |
| **40.00** | 0.38526887 | 0.14008276 | 0.40706566 | 0.15164468 | 0.012206289 |
| **50.00** | 0.25951853 | 0.085700005 | 0.28226027 | 0.09463111 | 0.004057229 |
| **60.00** | 0.14953715 | 0.05242966 | 0.16893259 | 0.059052836 | 0.001348576 |
| **70.00** | 0.098495774 | 0.032075483 | 0.114022784 | 0.036850855 | 4.4825108E-4 |
| **80.00** | 0.05691323 | 0.019623179 | 0.06730416 | 0.022996107 | 1.4899348E-4 |
| **90.00** | 0.029837722 | 0.0120050935 | 0.03595973 | 0.014350305 | 4.952371E-5 |
| **100.00** | 0.012926613 | 0.0073444913 | 0.014213023 | 0.008955048 | 1.6461108E-5 |
| **110.00** | 0.008569357 | 0.004493222 | 0.009020862 | 0.005588236 | 5.4714824E-6 |
| **120.00** | 0.007158715 | 0.0027488691 | 0.008607986 | 0.0034872373 | 1.8186574E-6 |
| **130.00** | 0.005748073 | 0.0016817066 | 0.006906315 | 0.0021761474 | 6.045007E-7 |
| **140.00** | 0.0 | 0.0010288366 | 0.0015764424 | 0.0013579853 | 2.0092905E-7 |
| **150.00** | 0.0 | 6.2942295E-4 | 5.0936086E-4 | 8.474262E-4 | 6.678649E-8 |
| **160.00** | 0.0 | 3.850692E-4 | 0.0 | 5.2882096E-4 | 2.2199057E-8 |

### Moment Release Variability Plots
*[(top)](#bruce-4682)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-4682)*

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
*[(top)](#bruce-4682)*

```
  A_1 = 0.001
  fA = .1
  B_1 = 0.008
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
  nEq = 20000000
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
