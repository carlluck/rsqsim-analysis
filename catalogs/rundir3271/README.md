# Bruce 3271
## Metadata
| **Catalog** | Bruce 3271 |
|-----|-----|
| **Author** | Bruce Shaw, 2019/05/29 |
| **Description** | a=.006 b=.018  more b=1 like |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.34 km^2 |
| **Length** | 7,995,953 events in 149,733 years |
| **Frictional Params** | a=0.006, b=0.018, (b-a)=0.012, ddotEQ=1 |

* [Metadata](#metadata)
* [Hazard Comparisons](#hazard-comparisons)
* [Multi-Fault Rupture Comparisons](multi_fault/)
* [Parent Section MFDs](parent_sect_mfds/)
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

## Hazard Comparisons
*[(top)](#bruce-3271)*

* [PGA](hazard_pga/)
* [0.2s SA](hazard_sa_0.2s/)
* [1.0s SA](hazard_sa_1.0s/)
* [10.0s SA](hazard_sa_10.0s/)
* [2.0s SA](hazard_sa_2.0s/)
* [5.0s SA](hazard_sa_5.0s/)

## Multi-Fault Rupture Comparisons
*[(top)](#bruce-3271)*

[Multi-Fault Rupture Comparisons here](multi_fault/)

## Parent Section MFDs
*[(top)](#bruce-3271)*

[Parent Section MFDs here](parent_sect_mfds/)

## BBP Calculations, LA Basin 500 (m/s) Velocity Model
*[(top)](#bruce-3271)*


### Full Catalog GMPE Comparisons, LA Basin 500 (m/s)
*[(top)](#bruce-3271)*

* [ASK2014](bbp_LA_BASIN_500/gmpe_bbp_comparisons_ASK2014/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-3271)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-3271)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
#### Mechanism-Dependent Magnitude-Area Plots
*[(top)](#bruce-3271)*

Here we disaggregate the magnitude-area scaling plots by focal mechanism. Multi-fault ruptures which incorporate multiple faulting styles are included in plot for the dominent fault style so long as no more than 10% of the participating elements are of a different style, otherwise they are listed as 'Unknown'.

| Fault Style | Scatter | 2-D Hist |
|-----|-----|-----|
| **Strike-Slip** | ![MA Scatter](resources/mag_area_STRIKE_SLIP.png) | ![MA Hist](resources/mag_area_STRIKE_SLIP_hist2D.png) |
| **Normal** | ![MA Scatter](resources/mag_area_NORMAL.png) | ![MA Hist](resources/mag_area_NORMAL_hist2D.png) |
| **Reverse** | ![MA Scatter](resources/mag_area_REVERSE.png) | ![MA Hist](resources/mag_area_REVERSE_hist2D.png) |
| **Unknown** | ![MA Scatter](resources/mag_area_UNKNOWN.png) | ![MA Hist](resources/mag_area_UNKNOWN_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-3271)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-3271)*

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
*[(top)](#bruce-3271)*

Here we disaggregate the slip-length scaling plots by focal mechanism. Multi-fault ruptures which incorporate multiple faulting styles are included in plot for the dominent fault style so long as no more than 10% of the participating elements are of a different style, otherwise they are listed as 'Unknown'.

| Fault Style | Scatter | 2-D Hist |
|-----|-----|-----|
| **Strike-Slip** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_STRIKE_SLIP.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_STRIKE_SLIP_hist2D.png) |
| **Normal** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_NORMAL.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_NORMAL_hist2D.png) |
| **Reverse** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_REVERSE.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_REVERSE_hist2D.png) |
| **Unknown** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_UNKNOWN.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_UNKNOWN_hist2D.png) |
### Slip Along Rupture (Dsr) Plots
*[(top)](#bruce-3271)*

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
*[(top)](#bruce-3271)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-3271)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-3271)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-3271)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-3271)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-3271)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-3271)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-3271)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-3271)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-3271)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.005660513 | 0.0034152705 | 0.002536518 | 0.0020949328 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 3.6630916E-4 | 3.0674462E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0029028272 | 0.0016724925 | 0.0017900768 | 0.0014313954 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 4.423356E-4 | 4.038257E-4 | 3.9395512E-4 | 3.8924973E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0011265734 | 6.7128503E-4 | 5.6674244E-4 | 4.9300643E-4 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 8.7775965E-4 | 5.0710153E-4 | 4.0086661E-4 | 3.4102448E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.010201365 | 0.0076147905 | 0.008535694 | 0.00758157 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0019075722 | 0.0015008901 | 8.155562E-4 | 7.888621E-4 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0010712815 | 9.5554953E-4 | 9.054056E-4 | 8.8271615E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 5.529195E-5 | 3.0969404E-5 | 0.0 | 0.0 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.003545596 | 0.002260399 | 0.0023291733 | 0.0020658108 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0028959156 | 0.0019557863 | 0.001624201 | 0.0015453727 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0031239951 | 0.0030942138 | 0.0031170836 | 0.0030858496 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.005155974 | 0.0040094717 | 0.0044924705 | 0.0041327453 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0031239951 | 0.0030922268 | 0.0031239951 | 0.0030926403 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.0031239951 | 0.0030728816 | 0.0031239951 | 0.0030925875 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0031239951 | 0.0030894736 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 5.6674244E-4 | 3.8125305E-4 | 6.911493E-5 | 6.47825E-5 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0071672187 | 0.004020348 | 0.0042090993 | 0.003393062 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0053978763 | 0.0029145337 | 0.0031723755 | 0.0025317455 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.002280793 | 0.0021827691 | 0.0022185894 | 0.002187419 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.004914072 | 0.0027089901 | 0.0023913768 | 0.0020290911 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.005308027 | 0.0051610586 | 0.005238912 | 0.0051461514 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0012648033 | 5.92618E-4 | 2.4881377E-4 | 2.0734298E-4 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.008611721 | 0.0051913923 | 0.0050661247 | 0.0043631913 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.008611721 | 0.0051913923 | 0.0032276674 | 0.0029181722 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.004789665 | 0.004723246 | 0.004789665 | 0.0047396757 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.005038479 | 0.0040440313 | 0.0045408513 | 0.0042805825 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.004478648 | 0.0033460578 | 0.003614711 | 0.0032190422 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0023429962 | 0.0015495208 | 0.0017347848 | 0.0014143273 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.004789665 | 0.0046910215 | 0.004762019 | 0.004710463 |

### Paleo Open Interval Plots
*[(top)](#bruce-3271)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-3271)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 451.78 | 0.0022134501 | 320 | 456.51 | 0.0021905552 | 316.67 |
| **FRA** | 119.00 | 0.008403362 | 117.08 | 0.008540973 | 1235 | 131.79 | 0.0075880936 | 1097.23 |
| **COA** | 181.00 | 0.005524862 | 227.25 | 0.0044004624 | 470 | 239.48 | 0.0041757813 | 445.98 |
| **SCZ** | 106.00 | 0.009433962 | 300.74 | 0.0033250828 | 32 | 315.50 | 0.0031696127 | 30.38 |
| **TYS** | 329.00 | 0.0030395137 | 505.64 | 0.001977687 | 235 | 532.26 | 0.0018787943 | 223.29 |
| **TOTAL** | 31.61 | 0.0316373 | 63.18 | 0.015828801 | 2290 | 68.60 | 0.014577591 | 2108.94 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9918838 | 0.8536039 | 0.9932101 | 0.8643514 | 0.72878754 |
| **20.00** | 0.9695163 | 0.7286396 | 0.97415996 | 0.7471033 | 0.53113127 |
| **30.00** | 0.9345409 | 0.6219696 | 0.94407105 | 0.64575976 | 0.3870819 |
| **40.00** | 0.88405454 | 0.5309157 | 0.9010771 | 0.55816334 | 0.28210047 |
| **50.00** | 0.8280807 | 0.4531917 | 0.8511847 | 0.48244923 | 0.2055913 |
| **60.00** | 0.7615558 | 0.38684618 | 0.7921946 | 0.41700566 | 0.14983238 |
| **70.00** | 0.68646276 | 0.33021343 | 0.7257593 | 0.36043942 | 0.10919597 |
| **80.00** | 0.60647184 | 0.28187147 | 0.6535468 | 0.3115463 | 0.079580665 |
| **90.00** | 0.5243118 | 0.24060658 | 0.57954794 | 0.26928547 | 0.057997398 |
| **100.00** | 0.4455717 | 0.2053827 | 0.5058377 | 0.23275727 | 0.04226778 |
| **110.00** | 0.37794015 | 0.17531548 | 0.4405842 | 0.20118406 | 0.030804234 |
| **120.00** | 0.31197906 | 0.14964998 | 0.37462455 | 0.17389372 | 0.022449743 |
| **130.00** | 0.23454894 | 0.1277418 | 0.2957254 | 0.15030529 | 0.016361093 |
| **140.00** | 0.17859906 | 0.1090409 | 0.24063393 | 0.12991658 | 0.011923761 |
| **150.00** | 0.12616822 | 0.093077734 | 0.18397252 | 0.11229357 | 0.008689889 |
| **160.00** | 0.08742869 | 0.079451516 | 0.137999 | 0.097061105 | 0.0063330824 |
| **170.00** | 0.041936934 | 0.067820124 | 0.08529318 | 0.08389489 | 0.0046154717 |
| **180.00** | 0.030060872 | 0.05789152 | 0.06670364 | 0.07251467 | 0.0033636983 |
| **190.00** | 0.022359032 | 0.04941643 | 0.052320834 | 0.06267815 | 0.0024514215 |
| **200.00** | 0.010425422 | 0.042182058 | 0.034363978 | 0.054175947 | 0.0017865654 |
| **210.00** | 0.0061479555 | 0.036006767 | 0.025228014 | 0.046827056 | 0.0013020267 |
| **220.00** | 0.0047102054 | 0.030735517 | 0.017429767 | 0.04047503 | 9.489008E-4 |
| **230.00** | 0.0 | 0.026235957 | 0.009285378 | 0.03498465 | 6.915471E-4 |
| **240.00** | 0.0 | 0.022395115 | 0.006829715 | 0.030239027 | 5.039909E-4 |
| **250.00** | 0.0 | 0.019116558 | 0.0046026646 | 0.026137145 | 3.673023E-4 |
| **260.00** | 0.0 | 0.016317967 | 0.0037441025 | 0.022591677 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.013929081 | 0.003209277 | 0.019527147 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.011889918 | 0.0025596905 | 0.016878316 | 1.4217607E-4 |
| **290.00** | 0.0 | 0.01014928 | 0.0015905864 | 0.014588796 | 1.0361615E-4 |
| **300.00** | 0.0 | 0.008663465 | 0.0011420568 | 0.012609846 | 7.551416E-5 |
| **310.00** | 0.0 | 0.0073951674 | 7.494968E-4 | 0.010899338 | 5.503378E-5 |
| **320.00** | 0.0 | 0.0063125435 | 2.7806667E-4 | 0.009420858 | 4.0107934E-5 |
| **330.00** | 0.0 | 0.0053884117 | 1.756106E-4 | 0.008142931 | 2.9230163E-5 |
| **340.00** | 0.0 | 0.0045995694 | 1.487654E-4 | 0.0070383535 | 2.1302578E-5 |
| **350.00** | 0.0 | 0.00392621 | 1.00163954E-4 | 0.0060836105 | 1.5525055E-5 |
| **360.00** | 0.0 | 0.0033514283 | 8.360102E-5 | 0.005258377 | 1.1314466E-5 |
| **370.00** | 0.0 | 0.0028607924 | 7.867675E-5 | 0.0045450856 | 8.245842E-6 |
| **380.00** | 0.0 | 0.0024419834 | 7.3752475E-5 | 0.003928551 | 6.009467E-6 |
| **390.00** | 0.0 | 0.0020844867 | 6.8828194E-5 | 0.0033956484 | 4.379625E-6 |
| **400.00** | 0.0 | 0.0017793259 | 6.390392E-5 | 0.0029350333 | 3.1918162E-6 |
| **410.00** | 0.0 | 0.0015188395 | 6.0581053E-5 | 0.0025369 | 2.3261557E-6 |
| **420.00** | 0.0 | 0.0012964873 | 5.7813217E-5 | 0.0021927732 | 1.6952735E-6 |
| **430.00** | 0.0 | 0.0011066867 | 5.5045377E-5 | 0.0018953264 | 1.2354942E-6 |
| **440.00** | 0.0 | 9.44672E-4 | 5.227754E-5 | 0.001638228 | 9.004128E-7 |
| **450.00** | 0.0 | 8.063757E-4 | 4.9509705E-5 | 0.0014160046 | 6.5620964E-7 |
| **460.00** | 0.0 | 6.8832544E-4 | 4.674187E-5 | 0.0012239255 | 4.782374E-7 |
| **470.00** | 0.0 | 5.8755727E-4 | 4.3974032E-5 | 0.0010579018 | 3.4853346E-7 |
| **480.00** | 0.0 | 5.015412E-4 | 4.1206193E-5 | 9.143988E-4 | 2.5400686E-7 |
| **490.00** | 0.0 | 4.281175E-4 | 3.8438357E-5 | 7.9036184E-4 | 1.8511703E-7 |
| **500.00** | 0.0 | 3.6544277E-4 | 3.567052E-5 | 6.8315037E-4 | 1.3491099E-7 |
| **510.00** | 0.0 | 3.1194338E-4 | 0.0 | 5.9048197E-4 | 9.832145E-8 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-3271)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 689.06 | 0.0014512446 | 36 | 827.66 | 0.001208229 | 30 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 216.77 | 0.0046131564 | 467 | 240.05 | 0.004165745 | 421.69 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 476.01 | 0.00210081 | 208 | 549.20 | 0.0018208448 | 180.18 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 320.24 | 0.003122661 | 452 | 323.44 | 0.0030917805 | 447.54 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 320.24 | 0.003122661 | 452 | 323.78 | 0.003088525 | 447.01 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 377.05 | 0.0026521701 | 384 | 444.60 | 0.0022492376 | 325.64 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 1092.57 | 9.152769E-4 | 77 | 1143.24 | 8.74705E-4 | 70.41 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 1429.85 | 6.993747E-4 | 58 | 1648.06 | 6.0677395E-4 | 49.34 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 190.78 | 0.00524167 | 758 | 194.23 | 0.0051484313 | 744.51 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 451.78 | 0.0022134501 | 320 | 457.11 | 0.0021876777 | 316.27 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 12596.56 | 7.938677E-5 | 10 | 13031.73 | 7.673576E-5 | 9.68 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 237.26 | 0.0042147804 | 609 | 293.37 | 0.003408617 | 492.47 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 357.74 | 0.002795354 | 405 | 427.62 | 0.0023385328 | 338.79 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 210.00 | 0.004761904 | 689 | 212.31 | 0.004710125 | 681.5 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 220.24 | 0.00454042 | 657 | 233.73 | 0.004278485 | 619.09 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 258.20 | 0.0038729976 | 559 | 299.98 | 0.0033335902 | 481.17 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 117.08 | 0.008540973 | 1235 | 131.78 | 0.0075886273 | 1097.33 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 300.74 | 0.0033250828 | 32 | 315.70 | 0.0031675738 | 30.34 |
| **RodgersCreek** | 325.31 | 0.003074 | 313.69 | 0.0031878299 | 459 | 392.59 | 0.0025471903 | 366.51 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 144686.53 | 0.0 | 0 | ∞ | 0.0 | 0 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 571.93 | 0.0017484787 | 156 | 591.28 | 0.0016912483 | 150.91 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 505.64 | 0.001977687 | 235 | 530.92 | 0.0018835398 | 223.8 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 227.25 | 0.0044004624 | 470 | 239.56 | 0.004174312 | 445.8 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 573.12 | 0.0017448268 | 240 | 642.32 | 0.0015568624 | 213.99 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 642.78 | 0.0015557504 | 223 | 708.91 | 0.0014106089 | 201.61 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 320.95 | 0.003115737 | 451 | 324.49 | 0.0030817953 | 446.07 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 208.79 | 0.0047895894 | 693 | 210.97 | 0.0047400193 | 685.83 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1097.43 | 9.112199E-4 | 131 | 1124.86 | 8.890002E-4 | 127.83 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 2538.11 | 3.9399439E-4 | 57 | 2569.32 | 3.8920797E-4 | 56.28 |
| **TOTAL** | 9.11 | 0.1097689 | 21.67 | 0.04614732 | 6677 | 23.80 | 0.042016268 | 6079.3 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9219876 | 0.63035434 | 0.9341405 | 0.6569399 | 0.33364123 |
| **20.00** | 0.7670976 | 0.39734656 | 0.7985317 | 0.43157008 | 0.11131647 |
| **30.00** | 0.5961155 | 0.25046912 | 0.6409675 | 0.28351563 | 0.037139766 |
| **40.00** | 0.44180754 | 0.15788428 | 0.49403363 | 0.18625274 | 0.012391358 |
| **50.00** | 0.30656797 | 0.099523045 | 0.35720512 | 0.12235687 | 0.004134268 |
| **60.00** | 0.20712283 | 0.06273478 | 0.25030687 | 0.08038111 | 0.0013793623 |
| **70.00** | 0.13907647 | 0.03954514 | 0.17609963 | 0.052805565 | 4.6021215E-4 |
| **80.00** | 0.085249044 | 0.02492745 | 0.113101006 | 0.034690086 | 1.5354574E-4 |
| **90.00** | 0.050814923 | 0.015713125 | 0.07151914 | 0.022789301 | 5.1229195E-5 |
| **100.00** | 0.033460483 | 0.009904836 | 0.046546947 | 0.014971203 | 1.7092172E-5 |
| **110.00** | 0.01785907 | 0.0062435563 | 0.026879786 | 0.009835181 | 5.702653E-6 |
| **120.00** | 0.008416076 | 0.003935653 | 0.013519285 | 0.0064611235 | 1.9026403E-6 |
| **130.00** | 0.004725842 | 0.0024808557 | 0.0076602176 | 0.00424457 | 6.347993E-7 |
| **140.00** | 0.0016517179 | 0.0015638181 | 0.0027672164 | 0.0027884275 | 2.1179521E-7 |
| **150.00** | 0.0 | 9.857595E-4 | 9.068959E-4 | 0.0018318294 | 7.066362E-8 |
| **160.00** | 0.0 | 6.213777E-4 | 2.7460358E-4 | 0.001203402 | 2.3576296E-8 |
| **170.00** | 0.0 | 3.9168814E-4 | 7.549528E-5 | 7.9056283E-4 | 7.866025E-9 |
| **180.00** | 0.0 | 2.4690232E-4 | 4.8666574E-5 | 5.1935227E-4 | 2.6244302E-9 |
| **190.00** | 0.0 | 1.5563593E-4 | 2.8633736E-5 | 3.4118327E-4 | 8.756182E-10 |
| **200.00** | 0.0 | 9.810578E-5 | 0.0 | 2.2413691E-4 | 2.9214234E-10 |

### Moment Release Variability Plots
*[(top)](#bruce-3271)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-3271)*

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
*[(top)](#bruce-3271)*

```
  A_1 = 0.006
  fA = .005
  B_1 = 0.018
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
  receiverElementAreaFrac = 0.99
  receiverElementIntTol = 1.0e-4
  receiverElementSubdivisionMax = 4
  tgfDist1 = 3
  tgfDist1 = 10
  nDunQuadOrders = 5
  tCausalOption = 1.0e25
  tCausalFactor = 3.0
  shearVelocity = 3000.0
  fnucleation = 0.5
```
