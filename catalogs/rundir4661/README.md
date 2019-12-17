# Bruce 4661
## Metadata
| **Catalog** | Bruce 4661 |
|-----|-----|
| **Author** | Bruce Shaw, 2019/12/11 |
| **Description** | variable slip speed. fracArea=0 ; variableSpeed s2ddf=.8 ddfmin=.1; b=.006 a=.001 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | Fully Variable |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 2,553,610 events in 122,488 years |
| **Frictional Params** | a=0.001, b=0.006, (b-a)=0.005, ddotEQ=1 |

* [Metadata](#metadata)
* [BBP Calculations, LA Basin 500 (m/s) Velocity Model](#bbp-calculations-la-basin-500-ms-velocity-model)
  * [Full Catalog GMPE Comparisons, LA Basin 500 (m/s)](#full-catalog-gmpe-comparisons-la-basin-500-ms)
  * [Rotated Rupture Variability Comparisons, LA Basin 500 (m/s)](#rotated-rupture-variability-comparisons-la-basin-500-ms)
  * [Scenario Spatial Distribution Plots, LA Basin 500 (m/s)](#scenario-spatial-distribution-plots-la-basin-500-ms)
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
*[(top)](#bruce-4661)*


### Full Catalog GMPE Comparisons, LA Basin 500 (m/s)
*[(top)](#bruce-4661)*

* [ASK2014](bbp_LA_BASIN_500/gmpe_bbp_comparisons_ASK2014/)

### Rotated Rupture Variability Comparisons, LA Basin 500 (m/s)
*[(top)](#bruce-4661)*

* [M7.2, Vertical Strike-Slip with Surface Rupture, Closest Mag](bbp_LA_BASIN_500/rotated_ruptures_m7p2_vert_ss_surface_filter_closest_mag/)

### Scenario Spatial Distribution Plots, LA Basin 500 (m/s)
*[(top)](#bruce-4661)*


## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-4661)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-4661)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
#### Mechanism-Dependent Magnitude-Area Plots
*[(top)](#bruce-4661)*

Here we disaggregate the magnitude-area scaling plots by focal mechanism. Multi-fault ruptures which incorporate multiple faulting styles are included in plot for the dominent fault style so long as no more than 10% of the participating elements are of a different style, otherwise they are listed as 'Unknown'.

| Fault Style | Scatter | 2-D Hist |
|-----|-----|-----|
| **Strike-Slip** | ![MA Scatter](resources/mag_area_STRIKE_SLIP.png) | ![MA Hist](resources/mag_area_STRIKE_SLIP_hist2D.png) |
| **Normal** | ![MA Scatter](resources/mag_area_NORMAL.png) | ![MA Hist](resources/mag_area_NORMAL_hist2D.png) |
| **Reverse** | ![MA Scatter](resources/mag_area_REVERSE.png) | ![MA Hist](resources/mag_area_REVERSE_hist2D.png) |
| **Unknown** | ![MA Scatter](resources/mag_area_UNKNOWN.png) | ![MA Hist](resources/mag_area_UNKNOWN_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-4661)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-4661)*

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
*[(top)](#bruce-4661)*

Here we disaggregate the slip-length scaling plots by focal mechanism. Multi-fault ruptures which incorporate multiple faulting styles are included in plot for the dominent fault style so long as no more than 10% of the participating elements are of a different style, otherwise they are listed as 'Unknown'.

| Fault Style | Scatter | 2-D Hist |
|-----|-----|-----|
| **Strike-Slip** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_STRIKE_SLIP.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_STRIKE_SLIP_hist2D.png) |
| **Normal** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_NORMAL.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_NORMAL_hist2D.png) |
| **Reverse** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_REVERSE.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_REVERSE_hist2D.png) |
| **Unknown** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_UNKNOWN.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_UNKNOWN_hist2D.png) |
### Slip Along Rupture (Dsr) Plots
*[(top)](#bruce-4661)*

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
*[(top)](#bruce-4661)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-4661)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-4661)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-4661)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-4661)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-4661)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-4661)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-4661)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-4661)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-4661)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.002035017 | 0.0011089989 | 0.0020435317 | 0.0016170662 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 1.9583845E-4 | 1.854656E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0019924433 | 0.0016506738 | 0.0015667076 | 0.0014869503 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 9.451334E-4 | 8.7384635E-4 | 7.237508E-4 | 7.0608454E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0016859137 | 0.0014000814 | 0.0012686925 | 0.0012181235 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 9.28104E-4 | 7.6199457E-4 | 5.960301E-4 | 5.7211274E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.00897451 | 0.007928796 | 0.008037891 | 0.007649975 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0017114579 | 0.0016089667 | 0.0015581929 | 0.0015260958 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0013368103 | 0.0012032671 | 0.0011750307 | 0.0011451237 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 0.0010047364 | 5.450049E-4 | 2.895003E-4 | 2.5439006E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0036272688 | 0.0030576214 | 0.002869459 | 0.0027120525 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.004129637 | 0.002735635 | 0.0022393703 | 0.0020940064 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.004938535 | 0.004803486 | 0.0048108143 | 0.0047406787 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0060965363 | 0.005001988 | 0.0048874468 | 0.0046123546 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.004955564 | 0.004864818 | 0.0048278435 | 0.0047634835 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.005245065 | 0.004952147 | 0.0049470495 | 0.0048338952 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.005415359 | 0.0051361653 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 2.809856E-4 | 2.3831555E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.002665106 | 0.0024385047 | 0.0023585763 | 0.002294485 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.00404449 | 0.002710531 | 0.0027757972 | 0.0025436848 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.003678357 | 0.0034229108 | 0.0033377684 | 0.0032533188 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0025203559 | 0.0018138594 | 0.0011494866 | 0.0010105262 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.0077739353 | 0.007244939 | 0.0069480077 | 0.006792657 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.008318877 | 0.0042789327 | 0.004095578 | 0.0032279475 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.0077654202 | 0.0062046675 | 0.0051599178 | 0.0049230885 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.0077654202 | 0.0062046675 | 0.0056963447 | 0.0053872867 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.006258316 | 0.006112463 | 0.006130595 | 0.00605074 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.0065052425 | 0.0039771544 | 0.005211006 | 0.0050028684 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0021627378 | 0.0010579373 | 0.00104731 | 8.7835337E-4 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.004461711 | 0.003220112 | 0.0029120327 | 0.0026824793 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.0061816834 | 0.0059526456 | 0.006130595 | 0.0060475096 |

### Paleo Open Interval Plots
*[(top)](#bruce-4661)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-4661)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 301.47 | 0.0033170902 | 389 | 308.67 | 0.0032396535 | 379.93 |
| **FRA** | 119.00 | 0.008403362 | 123.29 | 0.008110951 | 953 | 128.84 | 0.007761419 | 911.94 |
| **COA** | 181.00 | 0.005524862 | 185.71 | 0.0053847106 | 632 | 195.70 | 0.005109872 | 599.76 |
| **SCZ** | 106.00 | 0.009433962 | 204.57 | 0.0048883935 | 574 | 216.45 | 0.0046201064 | 542.49 |
| **TYS** | 329.00 | 0.0030395137 | 441.88 | 0.002263074 | 265 | 473.44 | 0.0021122105 | 247.24 |
| **TOTAL** | 31.61 | 0.0316373 | 41.74 | 0.023955243 | 2813 | 43.79 | 0.022837901 | 2681.79 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.98028624 | 0.78698003 | 0.9820516 | 0.79582256 | 0.72878754 |
| **20.00** | 0.92739207 | 0.61933756 | 0.93362355 | 0.63333356 | 0.53113127 |
| **30.00** | 0.84673494 | 0.48740628 | 0.85894245 | 0.50402117 | 0.3870819 |
| **40.00** | 0.75459546 | 0.383579 | 0.7728117 | 0.40111142 | 0.28210047 |
| **50.00** | 0.6490166 | 0.301869 | 0.6729646 | 0.3192135 | 0.2055913 |
| **60.00** | 0.54947954 | 0.23756488 | 0.57864857 | 0.25403732 | 0.14983238 |
| **70.00** | 0.4554446 | 0.1869588 | 0.4862456 | 0.20216864 | 0.10919597 |
| **80.00** | 0.36423692 | 0.14713284 | 0.39583626 | 0.16089037 | 0.079580665 |
| **90.00** | 0.27180642 | 0.115790606 | 0.30385128 | 0.12804018 | 0.057997398 |
| **100.00** | 0.20081797 | 0.09112489 | 0.22995894 | 0.10189727 | 0.04226778 |
| **110.00** | 0.13645002 | 0.07171347 | 0.16001967 | 0.08109215 | 0.030804234 |
| **120.00** | 0.08510619 | 0.056437068 | 0.105789945 | 0.06453496 | 0.022449743 |
| **130.00** | 0.053797547 | 0.044414844 | 0.07085591 | 0.05135838 | 0.016361093 |
| **140.00** | 0.024714613 | 0.034953594 | 0.03673246 | 0.040872157 | 0.011923761 |
| **150.00** | 0.011138221 | 0.02750778 | 0.018620139 | 0.032526985 | 0.008689889 |
| **160.00** | 0.006868009 | 0.021648074 | 0.0096075805 | 0.02588571 | 0.0063330824 |
| **170.00** | 0.0023654334 | 0.017036602 | 0.0037637164 | 0.020600433 | 0.0046154717 |
| **180.00** | 0.0 | 0.013407465 | 0.0017470462 | 0.01639429 | 0.0033636983 |
| **190.00** | 0.0 | 0.010551407 | 0.0013077763 | 0.013046945 | 0.0024514215 |
| **200.00** | 0.0 | 0.008303747 | 0.0010684633 | 0.010383054 | 0.0017865654 |
| **210.00** | 0.0 | 0.0065348824 | 4.6706162E-4 | 0.008263068 | 0.0013020267 |
| **220.00** | 0.0 | 0.005142822 | 1.1271494E-4 | 0.0065759365 | 9.489008E-4 |
| **230.00** | 0.0 | 0.004047298 | 9.706272E-5 | 0.0052332785 | 6.915471E-4 |
| **240.00** | 0.0 | 0.0031851428 | 6.882614E-5 | 0.0041647614 | 5.039909E-4 |
| **250.00** | 0.0 | 0.0025066435 | 0.0 | 0.003314411 | 3.673023E-4 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-4661)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 239.07 | 0.004182947 | 492 | 263.61 | 0.0037935409 | 446.23 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 175.42 | 0.0057004546 | 669 | 185.79 | 0.005382399 | 631.69 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 2479.61 | 4.0328983E-4 | 45 | 3665.06 | 2.7284696E-4 | 30.38 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 206.41 | 0.004844678 | 569 | 209.40 | 0.0047755903 | 560.9 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 202.14 | 0.004947031 | 581 | 206.68 | 0.0048383744 | 568.23 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 490.25 | 0.0020397769 | 240 | 619.04 | 0.0016154085 | 189.69 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 802.85 | 0.0012455574 | 146 | 830.34 | 0.0012043194 | 141.18 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 1694.33 | 5.9020217E-4 | 70 | 1763.25 | 5.6713546E-4 | 67.26 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 145.07 | 0.006893166 | 809 | 148.12 | 0.0067512086 | 792.35 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 301.47 | 0.0033170902 | 389 | 308.76 | 0.0032387143 | 379.81 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 5619.51 | 1.7795144E-4 | 21 | 6052.02 | 1.6523396E-4 | 19.54 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 423.56 | 0.0023609241 | 277 | 435.69 | 0.0022952296 | 269.31 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 1580.50 | 6.3271174E-4 | 73 | 1642.05 | 6.0899433E-4 | 70.19 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 163.01 | 0.0061345897 | 721 | 165.31 | 0.0060491282 | 710.95 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 187.19 | 0.005342205 | 628 | 195.53 | 0.005114197 | 601.18 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 803.72 | 0.0012442174 | 123 | 926.09 | 0.0010798109 | 103.65 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 123.29 | 0.008110951 | 953 | 128.87 | 0.0077595594 | 911.74 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 204.57 | 0.0048883935 | 574 | 216.89 | 0.004610605 | 541.38 |
| **RodgersCreek** | 325.31 | 0.003074 | 360.01 | 0.002777675 | 326 | 393.38 | 0.002542065 | 298.34 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 3373.61 | 2.9641797E-4 | 34 | 3808.31 | 2.6258364E-4 | 30.08 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 348.29 | 0.0028711823 | 337 | 368.73 | 0.0027119857 | 318.31 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 441.88 | 0.002263074 | 265 | 473.11 | 0.0021136946 | 247.41 |
| **Compton** | 2658.16 | 3.762E-4 | 6872.56 | 1.4550611E-4 | 16 | 7189.40 | 1.3909364E-4 | 15.09 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 185.71 | 0.0053847106 | 632 | 195.82 | 0.0051068477 | 599.43 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 615.31 | 0.0016251955 | 191 | 655.60 | 0.0015253092 | 179.27 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 641.56 | 0.001558707 | 184 | 654.82 | 0.001527146 | 180.27 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 207.88 | 0.004810561 | 565 | 210.87 | 0.004742321 | 556.98 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 162.78 | 0.00614311 | 722 | 164.98 | 0.0060613984 | 712.4 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 852.13 | 0.0011735326 | 138 | 872.87 | 0.0011456428 | 134.71 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1383.98 | 7.225536E-4 | 85 | 1414.70 | 7.068631E-4 | 83.15 |
| **TOTAL** | 9.08 | 0.1101451 | 18.01 | 0.05551983 | 6520 | 18.83 | 0.053092796 | 6235.01 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9026962 | 0.57395846 | 0.9096884 | 0.588059 | 0.33238843 |
| **20.00** | 0.70297086 | 0.3294283 | 0.7210435 | 0.3458134 | 0.110482074 |
| **30.00** | 0.50100154 | 0.18907815 | 0.52540225 | 0.20335868 | 0.036722966 |
| **40.00** | 0.33488712 | 0.108523 | 0.35979202 | 0.11958691 | 0.012206289 |
| **50.00** | 0.2096331 | 0.062287692 | 0.2305594 | 0.07032416 | 0.004057229 |
| **60.00** | 0.13001414 | 0.035750546 | 0.1457978 | 0.041354757 | 0.001348576 |
| **70.00** | 0.0748984 | 0.020519327 | 0.08548845 | 0.024319036 | 4.4825108E-4 |
| **80.00** | 0.03492809 | 0.011777242 | 0.041652266 | 0.014301029 | 1.4899348E-4 |
| **90.00** | 0.014087365 | 0.0067596473 | 0.016768364 | 0.008409848 | 4.952371E-5 |
| **100.00** | 0.0056936494 | 0.0038797564 | 0.007308725 | 0.0049454872 | 1.6461108E-5 |
| **110.00** | 0.002982268 | 0.002226819 | 0.0037848696 | 0.0029082384 | 5.4714824E-6 |
| **120.00** | 0.0 | 0.0012781016 | 7.675027E-4 | 0.0017102158 | 1.8186574E-6 |
| **130.00** | 0.0 | 7.335772E-4 | 3.9946145E-4 | 0.0010057078 | 6.045007E-7 |
| **140.00** | 0.0 | 4.2104282E-4 | 1.3918013E-4 | 5.9141556E-4 | 2.0092905E-7 |
| **150.00** | 0.0 | 2.4166108E-4 | 0.0 | 3.4778722E-4 | 6.678649E-8 |

### Moment Release Variability Plots
*[(top)](#bruce-4661)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-4661)*

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
*[(top)](#bruce-4661)*

```
  A_1 = 0.001
  fA = .1
  B_1 = 0.006
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
