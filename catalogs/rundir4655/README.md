# Bruce 4655
## Metadata
| **Catalog** | Bruce 4655 |
|-----|-----|
| **Author** | Bruce Shaw, 2019/12/09 |
| **Description** | variable slip speed. fracArea=0 ; variableSpeed s2ddf=.8 ddfmin=.1; b=.008 a=.001 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | Fully Variable |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 2,612,754 events in 175,644 years |
| **Frictional Params** | a=0.001, b=0.008, (b-a)=0.007, ddotEQ=1 |

* [Metadata](#metadata)
* [BBP Calculations, LA Basin 500 (m/s) Velocity Model](#bbp-calculations-la-basin-500-ms-velocity-model)
  * [Single Event Comparisons, LA Basin 500 (m/s)](#single-event-comparisons-la-basin-500-ms)
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
*[(top)](#bruce-4655)*


### Single Event Comparisons, LA Basin 500 (m/s)
*[(top)](#bruce-4655)*

* [Event 1029675, M7.41](bbp_LA_BASIN_500/event_1029675/)
* [Event 1318657, M7.13](bbp_LA_BASIN_500/event_1318657/)
* [Event 2106470, M7.49](bbp_LA_BASIN_500/event_2106470/)
* [Event 467544, M7.13](bbp_LA_BASIN_500/event_467544/)
* [Event 923866, M7.22](bbp_LA_BASIN_500/event_923866/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-4655)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-4655)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
#### Mechanism-Dependent Magnitude-Area Plots
*[(top)](#bruce-4655)*

Here we disaggregate the magnitude-area scaling plots by focal mechanism. Multi-fault ruptures which incorporate multiple faulting styles are included in plot for the dominent fault style so long as no more than 10% of the participating elements are of a different style, otherwise they are listed as 'Unknown'.

| Fault Style | Scatter | 2-D Hist |
|-----|-----|-----|
| **Strike-Slip** | ![MA Scatter](resources/mag_area_STRIKE_SLIP.png) | ![MA Hist](resources/mag_area_STRIKE_SLIP_hist2D.png) |
| **Normal** | ![MA Scatter](resources/mag_area_NORMAL.png) | ![MA Hist](resources/mag_area_NORMAL_hist2D.png) |
| **Reverse** | ![MA Scatter](resources/mag_area_REVERSE.png) | ![MA Hist](resources/mag_area_REVERSE_hist2D.png) |
| **Unknown** | ![MA Scatter](resources/mag_area_UNKNOWN.png) | ![MA Hist](resources/mag_area_UNKNOWN_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-4655)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-4655)*

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
*[(top)](#bruce-4655)*

Here we disaggregate the slip-length scaling plots by focal mechanism. Multi-fault ruptures which incorporate multiple faulting styles are included in plot for the dominent fault style so long as no more than 10% of the participating elements are of a different style, otherwise they are listed as 'Unknown'.

| Fault Style | Scatter | 2-D Hist |
|-----|-----|-----|
| **Strike-Slip** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_STRIKE_SLIP.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_STRIKE_SLIP_hist2D.png) |
| **Normal** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_NORMAL.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_NORMAL_hist2D.png) |
| **Reverse** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_REVERSE.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_REVERSE_hist2D.png) |
| **Unknown** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_UNKNOWN.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_UNKNOWN_hist2D.png) |
### Slip Along Rupture (Dsr) Plots
*[(top)](#bruce-4655)*

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
*[(top)](#bruce-4655)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-4655)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-4655)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-4655)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-4655)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-4655)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-4655)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-4655)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-4655)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-4655)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0020165863 | 0.001041285 | 0.0016589939 | 0.001404383 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 1.524164E-4 | 1.4649286E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0014479557 | 0.0012135638 | 0.0011138121 | 0.0010887388 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 5.7449256E-4 | 5.550391E-4 | 5.100087E-4 | 5.0087844E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0011138121 | 9.98493E-4 | 9.555336E-4 | 9.368316E-4 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 7.444955E-4 | 5.930958E-4 | 4.4552487E-4 | 4.3300228E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.0054987147 | 0.005136989 | 0.0052231927 | 0.0051238243 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0011841581 | 0.0011335037 | 0.0010903635 | 0.0010754948 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 9.379471E-4 | 8.7809144E-4 | 8.207037E-4 | 8.0709025E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 8.2656584E-4 | 4.7632612E-4 | 2.1103809E-4 | 1.9791316E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0022569352 | 0.0020217977 | 0.0018641698 | 0.0018197602 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0029076359 | 0.0019642597 | 0.0017527886 | 0.0016559013 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0035114393 | 0.0034317393 | 0.0034235069 | 0.0033835175 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0047366326 | 0.0037774218 | 0.003493853 | 0.003355071 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0036286828 | 0.0035388318 | 0.003529026 | 0.0034824351 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.0040097237 | 0.0037255986 | 0.0037283397 | 0.0036644903 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0040331725 | 0.0037758967 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 2.2276244E-4 | 1.9649106E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0019814132 | 0.00183765 | 0.0017058912 | 0.0016705389 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0039979992 | 0.002452629 | 0.0021514161 | 0.00204769 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0017234777 | 0.0017015366 | 0.0017234777 | 0.0017060497 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0016296831 | 0.0012652655 | 7.913928E-4 | 7.380599E-4 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.0056276824 | 0.005218348 | 0.004976982 | 0.0049033794 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0066770106 | 0.0035855705 | 0.0029193603 | 0.0025844823 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.0056745796 | 0.004718094 | 0.00381041 | 0.003729706 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.0056745796 | 0.004718094 | 0.004226624 | 0.0041079945 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.004425938 | 0.004344975 | 0.0043790406 | 0.004329512 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.0050062924 | 0.00319074 | 0.0040683453 | 0.00396264 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0014479557 | 7.5044687E-4 | 8.3242805E-4 | 7.2363217E-4 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0038573074 | 0.0025426245 | 0.0021338295 | 0.0020326304 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.004402489 | 0.0042660264 | 0.004367316 | 0.004320986 |

### Paleo Open Interval Plots
*[(top)](#bruce-4655)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-4655)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 579.32 | 0.0017261559 | 294 | 585.25 | 0.0017086584 | 291.02 |
| **FRA** | 119.00 | 0.008403362 | 190.19 | 0.0052577695 | 897 | 193.91 | 0.005157015 | 879.83 |
| **COA** | 181.00 | 0.005524862 | 244.57 | 0.004088808 | 698 | 252.50 | 0.003960328 | 676.03 |
| **SCZ** | 106.00 | 0.009433962 | 286.41 | 0.0034915416 | 596 | 297.87 | 0.0033571552 | 573.07 |
| **TYS** | 329.00 | 0.0030395137 | 593.18 | 0.0016858364 | 287 | 624.63 | 0.001600937 | 272.59 |
| **TOTAL** | 31.61 | 0.0316373 | 61.53 | 0.01625286 | 2772 | 63.34 | 0.015787482 | 2692.65 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9919638 | 0.8499918 | 0.9924276 | 0.8539567 | 0.72878754 |
| **20.00** | 0.9650681 | 0.722486 | 0.96706295 | 0.72924197 | 0.53113127 |
| **30.00** | 0.92378044 | 0.6141072 | 0.92793304 | 0.62274104 | 0.3870819 |
| **40.00** | 0.8770971 | 0.521986 | 0.883368 | 0.5317939 | 0.28210047 |
| **50.00** | 0.8138761 | 0.44368383 | 0.8223523 | 0.45412892 | 0.2055913 |
| **60.00** | 0.7486851 | 0.37712762 | 0.75975794 | 0.38780645 | 0.14983238 |
| **70.00** | 0.67462474 | 0.32055536 | 0.6871558 | 0.3311699 | 0.10919597 |
| **80.00** | 0.61087036 | 0.27246943 | 0.62483746 | 0.28280473 | 0.079580665 |
| **90.00** | 0.53922784 | 0.23159677 | 0.5551377 | 0.24150299 | 0.057997398 |
| **100.00** | 0.46073434 | 0.19685535 | 0.47784433 | 0.20623308 | 0.04226778 |
| **110.00** | 0.40166295 | 0.16732542 | 0.41932893 | 0.17611413 | 0.030804234 |
| **120.00** | 0.33305 | 0.14222524 | 0.35102898 | 0.15039383 | 0.022449743 |
| **130.00** | 0.28124878 | 0.120890275 | 0.29802433 | 0.12842982 | 0.016361093 |
| **140.00** | 0.23325364 | 0.10275574 | 0.24904448 | 0.10967349 | 0.011923761 |
| **150.00** | 0.17461586 | 0.08734153 | 0.19117911 | 0.09365641 | 0.008689889 |
| **160.00** | 0.131365 | 0.07423959 | 0.14708878 | 0.07997852 | 0.0063330824 |
| **170.00** | 0.10156496 | 0.063103035 | 0.11411687 | 0.06829819 | 0.0046154717 |
| **180.00** | 0.069381155 | 0.05363706 | 0.07970809 | 0.058323696 | 0.0033636983 |
| **190.00** | 0.048690595 | 0.04559106 | 0.056280054 | 0.04980591 | 0.0024514215 |
| **200.00** | 0.033196088 | 0.038752027 | 0.0396881 | 0.042532086 | 0.0017865654 |
| **210.00** | 0.021812582 | 0.032938905 | 0.026364679 | 0.03632056 | 0.0013020267 |
| **220.00** | 0.013634358 | 0.027997797 | 0.016635412 | 0.031016184 | 9.489008E-4 |
| **230.00** | 0.0028065017 | 0.023797898 | 0.003944125 | 0.026486477 | 6.915471E-4 |
| **240.00** | 0.0021762203 | 0.020228017 | 0.0029752837 | 0.022618303 | 5.039909E-4 |
| **250.00** | 0.001545939 | 0.017193649 | 0.0025211049 | 0.01931505 | 3.673023E-4 |
| **260.00** | 0.0 | 0.014614459 | 5.551873E-4 | 0.016494216 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.0124221705 | 4.6747367E-4 | 0.014085347 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.010558742 | 3.8001998E-4 | 0.012028276 | 1.4217607E-4 |
| **290.00** | 0.0 | 0.008974845 | 3.2337243E-4 | 0.0102716265 | 1.0361615E-4 |
| **300.00** | 0.0 | 0.007628544 | 2.2164342E-4 | 0.008771524 | 7.551416E-5 |
| **310.00** | 0.0 | 0.0064841993 | 1.3601773E-4 | 0.0074905013 | 5.503378E-5 |
| **320.00** | 0.0 | 0.0055115162 | 5.495898E-5 | 0.0063965633 | 4.0107934E-5 |
| **330.00** | 0.0 | 0.0046847435 | 4.0250197E-5 | 0.005462388 | 2.9230163E-5 |
| **340.00** | 0.0 | 0.003981993 | 0.0 | 0.0046646427 | 2.1302578E-5 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-4655)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 336.22 | 0.0029742294 | 508 | 351.77 | 0.0028427835 | 485.54 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 236.76 | 0.0042237327 | 721 | 243.49 | 0.0041070036 | 701.08 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 3129.93 | 3.1949632E-4 | 50 | 3933.46 | 2.5422926E-4 | 39.75 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 284.19 | 0.0035188275 | 600 | 287.54 | 0.0034777645 | 593.01 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 268.42 | 0.0037254877 | 636 | 273.17 | 0.0036607014 | 624.92 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 599.77 | 0.0016673187 | 283 | 707.98 | 0.0014124762 | 239.31 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 1058.29 | 9.449214E-4 | 162 | 1077.48 | 9.2808815E-4 | 159.08 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 2264.67 | 4.4156492E-4 | 76 | 2333.44 | 4.2855123E-4 | 73.78 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 202.25 | 0.0049444274 | 843 | 205.08 | 0.004876157 | 831.35 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 579.32 | 0.0017261559 | 294 | 584.59 | 0.0017106051 | 291.34 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 8274.92 | 1.2084711E-4 | 21 | 8504.60 | 1.1758341E-4 | 20.39 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 585.78 | 0.0017071327 | 291 | 598.32 | 0.0016713557 | 284.91 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 2329.77 | 4.292265E-4 | 73 | 2368.21 | 4.222606E-4 | 71.79 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 228.74 | 0.0043716943 | 746 | 231.33 | 0.0043227677 | 737.65 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 223.93 | 0.0044655832 | 762 | 235.01 | 0.004255134 | 726.07 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 1201.06 | 8.3259516E-4 | 142 | 1360.67 | 7.349321E-4 | 123.46 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 190.19 | 0.0052577695 | 897 | 193.89 | 0.0051575685 | 879.9 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 286.41 | 0.0034915416 | 596 | 297.98 | 0.0033559415 | 572.87 |
| **RodgersCreek** | 325.31 | 0.003074 | 465.42 | 0.0021485868 | 367 | 488.92 | 0.0020453404 | 349.39 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 4541.76 | 2.2017912E-4 | 37 | 4784.85 | 2.0899303E-4 | 35.11 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 536.34 | 0.0018644875 | 318 | 549.13 | 0.0018210611 | 310.53 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 593.18 | 0.0016858364 | 287 | 625.13 | 0.0015996591 | 272.31 |
| **Compton** | 2658.16 | 3.762E-4 | 10004.36 | 9.995645E-5 | 17 | 10318.53 | 9.691299E-5 | 16.45 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 244.57 | 0.004088808 | 698 | 252.71 | 0.003957032 | 675.44 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 880.70 | 0.0011354623 | 194 | 905.10 | 0.0011048543 | 188.78 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 916.59 | 0.0010910059 | 187 | 931.00 | 0.001074112 | 184.11 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 292.49 | 0.0034189608 | 583 | 295.80 | 0.0033806413 | 576.45 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 228.44 | 0.0043775626 | 747 | 230.92 | 0.0043304567 | 738.95 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1223.14 | 8.1756635E-4 | 140 | 1244.72 | 8.033913E-4 | 137.59 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1977.10 | 5.057909E-4 | 87 | 2011.46 | 4.971514E-4 | 85.52 |
| **TOTAL** | 9.08 | 0.1101451 | 25.09 | 0.039852478 | 6797 | 25.81 | 0.0387437 | 6607.92 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.94542456 | 0.67130965 | 0.948009 | 0.6787944 | 0.33238843 |
| **20.00** | 0.82157093 | 0.45065665 | 0.82934284 | 0.46076182 | 0.110482074 |
| **30.00** | 0.6780251 | 0.30253017 | 0.6901504 | 0.31276256 | 0.036722966 |
| **40.00** | 0.54312825 | 0.20309141 | 0.55741614 | 0.21230146 | 0.012206289 |
| **50.00** | 0.3987463 | 0.13633724 | 0.41435114 | 0.14410904 | 0.004057229 |
| **60.00** | 0.28259444 | 0.0915245 | 0.29683357 | 0.09782041 | 0.001348576 |
| **70.00** | 0.19435784 | 0.06144128 | 0.20770267 | 0.06639995 | 4.4825108E-4 |
| **80.00** | 0.12725782 | 0.041246124 | 0.13875283 | 0.04507191 | 1.4899348E-4 |
| **90.00** | 0.08169955 | 0.027688922 | 0.08956205 | 0.030594561 | 4.952371E-5 |
| **100.00** | 0.05556306 | 0.01858784 | 0.060941707 | 0.020767417 | 1.6461108E-5 |
| **110.00** | 0.038346592 | 0.012478197 | 0.041275512 | 0.014096806 | 5.4714824E-6 |
| **120.00** | 0.024276126 | 0.008376734 | 0.026239887 | 0.009568833 | 1.8186574E-6 |
| **130.00** | 0.012958939 | 0.0056233825 | 0.014228789 | 0.00649527 | 6.045007E-7 |
| **140.00** | 0.006331271 | 0.0037750308 | 0.0065645003 | 0.004408953 | 2.0092905E-7 |
| **150.00** | 0.004265014 | 0.0025342146 | 0.004413498 | 0.0029927725 | 6.678649E-8 |
| **160.00** | 0.0027116106 | 0.0017012428 | 0.0029464865 | 0.0020314772 | 2.2199057E-8 |
| **170.00** | 0.0015554313 | 0.0011420607 | 0.0011397555 | 0.0013789553 | 7.37871E-9 |
| **180.00** | 0.0 | 7.666764E-4 | 5.071114E-5 | 9.3602715E-4 | 2.452598E-9 |
| **190.00** | 0.0 | 5.1467726E-4 | 0.0 | 6.3537E-4 | 8.152152E-10 |

### Moment Release Variability Plots
*[(top)](#bruce-4655)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-4655)*

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
*[(top)](#bruce-4655)*

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
