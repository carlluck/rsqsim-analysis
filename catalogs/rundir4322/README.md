# Bruce 4322
## Metadata
| **Catalog** | Bruce 4322 |
|-----|-----|
| **Author** | Bruce Shaw, 2019/07/28 |
| **Description** | variable slip speed. fracArea=0.8 ; variableSpeed s2ddf=.7 ddfmin=.01; b=.010 a=.003 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | Fully Variable |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 868,630 events in 45,340 years |
| **Frictional Params** | a=0.003, b=0.01, (b-a)=0.007, ddotEQ=1 |

* [Metadata](#metadata)
* [BBP Calculations, LA Basin 500 (m/s) Velocity Model](#bbp-calculations-la-basin-500-ms-velocity-model)
  * [Single Event Comparisons, LA Basin 500 (m/s)](#single-event-comparisons-la-basin-500-ms)
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
*[(top)](#bruce-4322)*


### Single Event Comparisons, LA Basin 500 (m/s)
*[(top)](#bruce-4322)*

* [Event 40636, M7.28](bbp_LA_BASIN_500/event_40636/)
* [Event 92236, M7.19](bbp_LA_BASIN_500/event_92236/)

### Full Catalog GMPE Comparisons, LA Basin 500 (m/s)
*[(top)](#bruce-4322)*

* [ASK2014](bbp_LA_BASIN_500/gmpe_bbp_comparisons_ASK2014/)

### Rotated Rupture Variability Comparisons, LA Basin 500 (m/s)
*[(top)](#bruce-4322)*

* [M6.6, Reverse, Dip=45, Ztor=3, Closest Mag](bbp_LA_BASIN_500/rotated_ruptures_m6p6_reverse_filter_closest_mag/)
* [M6.6, Vertical Strike-Slip with Surface Rupture, Closest Mag](bbp_LA_BASIN_500/rotated_ruptures_m6p6_vert_ss_surface_filter_closest_mag/)
* [M7.2, Vertical Strike-Slip with Surface Rupture, Closest Mag](bbp_LA_BASIN_500/rotated_ruptures_m7p2_vert_ss_surface_filter_closest_mag/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-4322)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-4322)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
#### Mechanism-Dependent Magnitude-Area Plots
*[(top)](#bruce-4322)*

Here we disaggregate the magnitude-area scaling plots by focal mechanism. Multi-fault ruptures which incorporate multiple faulting styles are included in plot for the dominent fault style so long as no more than 10% of the participating elements are of a different style, otherwise they are listed as 'Unknown'.

| Fault Style | Scatter | 2-D Hist |
|-----|-----|-----|
| **Strike-Slip** | ![MA Scatter](resources/mag_area_STRIKE_SLIP.png) | ![MA Hist](resources/mag_area_STRIKE_SLIP_hist2D.png) |
| **Normal** | ![MA Scatter](resources/mag_area_NORMAL.png) | ![MA Hist](resources/mag_area_NORMAL_hist2D.png) |
| **Reverse** | ![MA Scatter](resources/mag_area_REVERSE.png) | ![MA Hist](resources/mag_area_REVERSE_hist2D.png) |
| **Unknown** | ![MA Scatter](resources/mag_area_UNKNOWN.png) | ![MA Hist](resources/mag_area_UNKNOWN_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-4322)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-4322)*

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
*[(top)](#bruce-4322)*

Here we disaggregate the slip-length scaling plots by focal mechanism. Multi-fault ruptures which incorporate multiple faulting styles are included in plot for the dominent fault style so long as no more than 10% of the participating elements are of a different style, otherwise they are listed as 'Unknown'.

| Fault Style | Scatter | 2-D Hist |
|-----|-----|-----|
| **Strike-Slip** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_STRIKE_SLIP.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_STRIKE_SLIP_hist2D.png) |
| **Normal** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_NORMAL.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_NORMAL_hist2D.png) |
| **Reverse** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_REVERSE.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_REVERSE_hist2D.png) |
| **Unknown** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_UNKNOWN.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_UNKNOWN_hist2D.png) |
### Slip Along Rupture (Dsr) Plots
*[(top)](#bruce-4322)*

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
*[(top)](#bruce-4322)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-4322)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-4322)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-4322)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-4322)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-4322)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-4322)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-4322)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-4322)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-4322)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0025550993 | 0.0012516638 | 0.0021085772 | 0.0016137939 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 1.9845432E-4 | 1.7968535E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0015876346 | 0.0013424846 | 0.0011659191 | 0.0011205359 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 6.449765E-4 | 6.2019314E-4 | 5.953629E-4 | 5.7786494E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0014636006 | 0.0012953839 | 0.0011659191 | 0.0011373692 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 4.961358E-4 | 4.545906E-4 | 4.71329E-4 | 4.6155718E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.006325731 | 0.0059732217 | 0.0063009243 | 0.0061454433 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.001289953 | 0.0012398502 | 0.0011907258 | 0.0011767587 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0013891802 | 0.0012818265 | 0.0010914988 | 0.0010611868 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 9.6746476E-4 | 4.9084885E-4 | 3.2248825E-4 | 2.645945E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0025054857 | 0.0022207135 | 0.002257418 | 0.0021733716 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.003770632 | 0.0025180245 | 0.002604713 | 0.002361329 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.003547371 | 0.003490134 | 0.003547371 | 0.00351133 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.007888559 | 0.0055448078 | 0.006127277 | 0.0054182666 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.003547371 | 0.0035122284 | 0.003547371 | 0.0035118219 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.0037210183 | 0.0036401937 | 0.0036217913 | 0.0035812652 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.004564449 | 0.0042679566 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 2.232611E-4 | 1.9625074E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0021581906 | 0.0020065184 | 0.0018108956 | 0.0017741104 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.004117927 | 0.0027695762 | 0.0037458253 | 0.0031019452 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0018605092 | 0.0018364287 | 0.0018605092 | 0.0018418703 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0014884074 | 0.0012381596 | 8.6823764E-4 | 7.893652E-4 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.0062016975 | 0.0059060995 | 0.0058295955 | 0.005703923 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.005779982 | 0.0037063141 | 0.0037954387 | 0.0030872258 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.006945901 | 0.0052670212 | 0.003671405 | 0.0036051262 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.006945901 | 0.0052670212 | 0.004365995 | 0.004124337 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.004688483 | 0.0046206582 | 0.0046636765 | 0.0046159844 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.006970708 | 0.0041341735 | 0.004911744 | 0.004533401 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0038202456 | 0.0023559725 | 0.001761282 | 0.001536886 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0037210183 | 0.002825554 | 0.0026295197 | 0.0024270331 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.0046636765 | 0.004554235 | 0.0046636765 | 0.004616988 |

### Paleo Open Interval Plots
*[(top)](#bruce-4322)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-4322)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 540.82 | 0.0018490336 | 75 | 544.65 | 0.0018360431 | 74.45 |
| **FRA** | 119.00 | 0.008403362 | 159.25 | 0.006279532 | 253 | 163.29 | 0.0061240387 | 246.76 |
| **COA** | 181.00 | 0.005524862 | 262.66 | 0.0038072732 | 154 | 270.47 | 0.0036972854 | 149.58 |
| **SCZ** | 106.00 | 0.009433962 | 163.16 | 0.0061289 | 247 | 184.05 | 0.0054333233 | 218.82 |
| **TYS** | 329.00 | 0.0030395137 | 421.78 | 0.002370893 | 96 | 453.18 | 0.0022066087 | 89.33 |
| **TOTAL** | 31.61 | 0.0316373 | 48.83 | 0.020477926 | 825 | 51.75 | 0.019323321 | 778.49 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9864516 | 0.81482714 | 0.98799807 | 0.82428974 | 0.72878754 |
| **20.00** | 0.9444158 | 0.6639433 | 0.9509968 | 0.67945355 | 0.53113127 |
| **30.00** | 0.8869555 | 0.54099905 | 0.896889 | 0.5600666 | 0.3870819 |
| **40.00** | 0.8030426 | 0.44082072 | 0.8186329 | 0.4616571 | 0.28210047 |
| **50.00** | 0.7364922 | 0.3591927 | 0.7549006 | 0.3805392 | 0.2055913 |
| **60.00** | 0.65449053 | 0.29267997 | 0.67928445 | 0.31367457 | 0.14983238 |
| **70.00** | 0.5673504 | 0.23848358 | 0.59741896 | 0.25855872 | 0.10919597 |
| **80.00** | 0.4929357 | 0.1943229 | 0.5241471 | 0.21312729 | 0.079580665 |
| **90.00** | 0.42299265 | 0.15833957 | 0.4569752 | 0.17567863 | 0.057997398 |
| **100.00** | 0.3425251 | 0.1290194 | 0.37870947 | 0.1448101 | 0.04226778 |
| **110.00** | 0.26563695 | 0.105128504 | 0.3003816 | 0.11936547 | 0.030804234 |
| **120.00** | 0.18703741 | 0.08566156 | 0.2220649 | 0.09839173 | 0.022449743 |
| **130.00** | 0.11777622 | 0.06979936 | 0.1572629 | 0.08110329 | 0.016361093 |
| **140.00** | 0.09945782 | 0.056874417 | 0.13072798 | 0.06685261 | 0.011923761 |
| **150.00** | 0.051717237 | 0.04634282 | 0.078055725 | 0.055105917 | 0.008689889 |
| **160.00** | 0.02364064 | 0.03776139 | 0.04148418 | 0.04542324 | 0.0063330824 |
| **170.00** | 0.007945497 | 0.030769005 | 0.020632438 | 0.03744191 | 0.0046154717 |
| **180.00** | 0.0 | 0.025071422 | 0.010166671 | 0.030862981 | 0.0033636983 |
| **190.00** | 0.0 | 0.020428875 | 0.0042620157 | 0.025440037 | 0.0024514215 |
| **200.00** | 0.0 | 0.016646003 | 0.0033431894 | 0.020969963 | 0.0017865654 |
| **210.00** | 0.0 | 0.013563615 | 0.0014125666 | 0.017285325 | 0.0013020267 |
| **220.00** | 0.0 | 0.011052002 | 7.239757E-4 | 0.014248115 | 9.489008E-4 |
| **230.00** | 0.0 | 0.009005471 | 5.230255E-4 | 0.011744575 | 6.915471E-4 |
| **240.00** | 0.0 | 0.0073379027 | 4.2641917E-4 | 0.009680932 | 5.039909E-4 |
| **250.00** | 0.0 | 0.0059791226 | 3.2110952E-4 | 0.007979892 | 3.673023E-4 |
| **260.00** | 0.0 | 0.0048719514 | 1.9066637E-4 | 0.0065777437 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.0039697983 | 1.169295E-4 | 0.0054219663 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.0032346994 | 0.0 | 0.0044692713 | 1.4217607E-4 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-4322)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 265.45 | 0.0037671335 | 152 | 289.26 | 0.0034571406 | 139.43 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 229.64 | 0.004354724 | 176 | 243.61 | 0.0041049984 | 165.94 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 2788.22 | 3.58652E-4 | 15 | 3632.92 | 2.752604E-4 | 10.85 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 283.52 | 0.0035270748 | 143 | 286.41 | 0.0034915311 | 141.55 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 277.66 | 0.0036015906 | 146 | 280.75 | 0.0035618695 | 144.39 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 461.55 | 0.0021666232 | 85 | 603.36 | 0.0016573867 | 64.99 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 864.09 | 0.0011572817 | 47 | 885.41 | 0.0011294177 | 45.84 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 2126.54 | 4.702482E-4 | 19 | 2167.35 | 4.613933E-4 | 18.63 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 173.69 | 0.0057573635 | 232 | 176.75 | 0.0056577073 | 227.99 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 540.82 | 0.0018490336 | 75 | 546.73 | 0.0018290569 | 74.18 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 5325.84 | 1.8776397E-4 | 6 | 6279.14 | 1.5925738E-4 | 5.09 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 549.95 | 0.0018183541 | 73 | 561.08 | 0.0017822676 | 71.55 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 2231.72 | 4.4808557E-4 | 18 | 2265.24 | 4.414545E-4 | 17.67 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 214.67 | 0.004658387 | 188 | 216.79 | 0.0046127997 | 186.17 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 189.35 | 0.005281166 | 213 | 208.72 | 0.004791174 | 193.32 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 567.52 | 0.0017620536 | 71 | 648.77 | 0.0015413822 | 62.14 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 159.25 | 0.006279532 | 253 | 163.10 | 0.006131191 | 247.04 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 163.16 | 0.0061289 | 247 | 184.30 | 0.005425871 | 218.56 |
| **RodgersCreek** | 325.31 | 0.003074 | 265.86 | 0.003761408 | 151 | 320.97 | 0.0031156004 | 125.01 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 2654.05 | 3.7678276E-4 | 14 | 3287.15 | 3.0421477E-4 | 11.26 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 446.95 | 0.0022373756 | 91 | 463.05 | 0.0021595964 | 87.86 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 421.78 | 0.002370893 | 96 | 454.89 | 0.002198341 | 89.02 |
| **Compton** | 2658.16 | 3.762E-4 | 8782.94 | 1.1385708E-4 | 3 | 9049.95 | 1.1049781E-4 | 2.92 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 262.66 | 0.0038072732 | 154 | 270.34 | 0.0036990873 | 149.63 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 718.95 | 0.0013909121 | 56 | 787.56 | 0.0012697405 | 51.19 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 820.92 | 0.0012181499 | 50 | 837.66 | 0.0011938043 | 49 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 283.52 | 0.0035270748 | 143 | 286.02 | 0.0034962797 | 141.74 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 214.67 | 0.004658387 | 188 | 216.90 | 0.0046104775 | 186.05 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 950.65 | 0.0010519162 | 43 | 966.31 | 0.00103486 | 42.29 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1671.04 | 5.9842964E-4 | 24 | 1717.23 | 5.823317E-4 | 23.35 |
| **TOTAL** | 9.08 | 0.1101451 | 20.01 | 0.04997774 | 2015 | 21.42 | 0.046690226 | 1882.52 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.91693217 | 0.6066657 | 0.9267168 | 0.6269414 | 0.33238843 |
| **20.00** | 0.74325556 | 0.36804327 | 0.7670864 | 0.39305547 | 0.110482074 |
| **30.00** | 0.55902976 | 0.22327922 | 0.5891598 | 0.24642274 | 0.036722966 |
| **40.00** | 0.39168784 | 0.13545585 | 0.42587993 | 0.1544926 | 0.012206289 |
| **50.00** | 0.2908865 | 0.08217642 | 0.3223864 | 0.09685781 | 0.004057229 |
| **60.00** | 0.18690237 | 0.04985361 | 0.21238779 | 0.060724165 | 0.001348576 |
| **70.00** | 0.1174871 | 0.030244477 | 0.13693477 | 0.038070492 | 4.4825108E-4 |
| **80.00** | 0.07206685 | 0.018348286 | 0.08911533 | 0.023867967 | 1.4899348E-4 |
| **90.00** | 0.044673488 | 0.011131276 | 0.05836586 | 0.014963815 | 4.952371E-5 |
| **100.00** | 0.016085425 | 0.006752963 | 0.025809664 | 0.009381435 | 1.6461108E-5 |
| **110.00** | 0.010420075 | 0.004096791 | 0.016452856 | 0.0058816094 | 5.4714824E-6 |
| **120.00** | 0.005029201 | 0.0024853826 | 0.009359049 | 0.0036874244 | 1.8186574E-6 |
| **130.00** | 0.0 | 0.0015077965 | 0.0037863697 | 0.0023117987 | 6.045007E-7 |
| **140.00** | 0.0 | 9.147284E-4 | 0.002415011 | 0.0014493623 | 2.0092905E-7 |
| **150.00** | 0.0 | 5.549343E-4 | 0.0015662407 | 9.086652E-4 | 6.678649E-8 |
| **160.00** | 0.0 | 3.366596E-4 | 1.9510505E-4 | 5.696798E-4 | 2.2199057E-8 |
| **170.00** | 0.0 | 2.0423984E-4 | 1.0459459E-4 | 3.5715583E-4 | 7.37871E-9 |
| **180.00** | 0.0 | 1.2390531E-4 | 5.362173E-5 | 2.2391576E-4 | 2.452598E-9 |
| **190.00** | 0.0 | 7.51691E-5 | 0.0 | 1.4038205E-4 | 8.152152E-10 |

### Moment Release Variability Plots
*[(top)](#bruce-4322)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-4322)*

Example rupture plots:

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
|  |  |  |
| ![example](resources/elastic_rebound_triggering_m6_example_new_hypo.png) |  |  |

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_1yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_1yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_1yr.png) |
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_10yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_10yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_10yr.png) |
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_100yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_100yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_100yr.png) |

## Input File
*[(top)](#bruce-4322)*

```
  A_1 = 0.003
  fA = .1
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
  receiverElementAreaFrac = 0.8
  receiverElementIntTol = 1.0e-4
  receiverElementSubdivisionMax = 4
  tgfDist1 = 3
  tgfDist1 = 10
  variableSlipSpeed = 2
  state2ddotFactor = .8
  state2dotMinFactor = .1
```
