# Bruce 2310
## Metadata
| **Catalog** | Bruce 2310 |
|-----|-----|
| **Author** | Bruce Shaw, 2017/10/16 |
| **Description** | Backslip loading, more refined geometry, projection fix (but all faults surface breaking) |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 0.42 km^2 |
| **Length** | 5,138,499 events in 44,742 years |
| **Frictional Params** | a=0.001, b=0.01, (b-a)=0.009, ddotEQ=1 |

* [Metadata](#metadata)
* [BBP Calculations, LA Basin 863 (m/s) Velocity Model](#bbp-calculations-la-basin-863-ms-velocity-model)
  * [Single Event Comparisons, LA Basin 863 (m/s)](#single-event-comparisons-la-basin-863-ms)
  * [Full Catalog GMPE Comparisons, LA Basin 863 (m/s)](#full-catalog-gmpe-comparisons-la-basin-863-ms)
  * [BBP Part B Analysis, LA Basin 863 (m/s)](bbp_LA_BASIN_863/bbp_part_b)
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
*[(top)](#bruce-2310)*


### Single Event Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-2310)*

* [Event 3802809, M7.48](bbp_LA_BASIN_863/event_3802809/)

### Full Catalog GMPE Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-2310)*

* [BSSA2014](bbp_LA_BASIN_863/gmpe_bbp_comparisons_BSSA2014/)
* [NGAWest_2014_NoIdr](bbp_LA_BASIN_863/gmpe_bbp_comparisons_NGAWest_2014_NoIdr/)

### BBP Part B Analysis, LA Basin 863 (m/s)
*[(top)](#bruce-2310)*

[BBP Part B Analysis Here](bbp_LA_BASIN_863/bbp_part_b)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2310)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2310)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2310)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2310)*

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
*[(top)](#bruce-2310)*

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
*[(top)](#bruce-2310)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2310)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2310)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2310)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2310)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2310)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2310)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2310)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2310)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2310)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0031779627 | 0.0022170367 | 0.0029005215 | 0.0022989549 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 1.7655348E-4 | 1.6656768E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0011602086 | 9.8381E-4 | 0.0010340989 | 9.762783E-4 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 6.5577007E-4 | 6.120325E-4 | 6.5577007E-4 | 6.293141E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 8.8276743E-4 | 8.002101E-4 | 8.5754547E-4 | 8.4120466E-4 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 4.792166E-4 | 4.4477952E-4 | 4.5399467E-4 | 4.418608E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.0049434975 | 0.004874878 | 0.0049687196 | 0.0049110106 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0011854306 | 0.0011349426 | 0.0011854306 | 0.0011667813 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0010088771 | 9.776062E-4 | 0.0010088771 | 9.767904E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 0.0012358744 | 9.534771E-4 | 0.0011854306 | 0.0011333645 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0022699733 | 0.0019572594 | 0.0021943075 | 0.0020856492 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0020681978 | 0.0018915461 | 0.002042976 | 0.0019983635 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0038589546 | 0.0037978992 | 0.0038589546 | 0.0038187767 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0050443853 | 0.0042872303 | 0.004893054 | 0.0045972285 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0039093983 | 0.0038485024 | 0.0039346204 | 0.0038888182 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.00418684 | 0.0040410855 | 0.00418684 | 0.004126896 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0041616177 | 0.0038952369 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 1.2610963E-4 | 1.1939882E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0011854306 | 0.0011272522 | 0.0011349866 | 0.001110049 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0025221927 | 0.0020748186 | 0.002396083 | 0.0022997246 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.002396083 | 0.0023009756 | 0.002345639 | 0.0023083286 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0016142032 | 0.0013240661 | 0.0017403129 | 0.0015433339 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.0049434975 | 0.004852911 | 0.0049434975 | 0.0048940624 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.003707623 | 0.002649468 | 0.00406073 | 0.0037489631 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.0045399466 | 0.003883488 | 0.0042625056 | 0.004149164 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.0045399466 | 0.003883488 | 0.0046660565 | 0.0044843606 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.0050191632 | 0.0049279165 | 0.0050191632 | 0.004961957 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.0055740457 | 0.004286905 | 0.0052461606 | 0.0049840007 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0035058476 | 0.0029823754 | 0.0029005215 | 0.0028295906 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.003051853 | 0.0024384642 | 0.002723968 | 0.0026117694 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.005069607 | 0.004922867 | 0.0050443853 | 0.0049865227 |

### Paleo Open Interval Plots
*[(top)](#bruce-2310)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2310)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 430.75 | 0.0023215385 | 93 | 437.36 | 0.002286463 | 91.61 |
| **FRA** | 119.00 | 0.008403362 | 201.44 | 0.004964319 | 197 | 203.93 | 0.004903556 | 194.59 |
| **COA** | 181.00 | 0.005524862 | 231.25 | 0.0043242457 | 171 | 237.67 | 0.0042075836 | 166.4 |
| **SCZ** | 106.00 | 0.009433962 | 203.95 | 0.0049031433 | 194 | 216.76 | 0.004613388 | 182.53 |
| **TYS** | 329.00 | 0.0030395137 | 496.66 | 0.0020134668 | 80 | 504.42 | 0.0019824593 | 78.76 |
| **TOTAL** | 31.61 | 0.0316373 | 54.66 | 0.018294733 | 726 | 56.30 | 0.017761188 | 704.83 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9894573 | 0.832812 | 0.9901313 | 0.83726734 | 0.72878754 |
| **20.00** | 0.95864445 | 0.69357586 | 0.9610659 | 0.70101655 | 0.53113127 |
| **30.00** | 0.91679233 | 0.5776183 | 0.92043215 | 0.58693826 | 0.3870819 |
| **40.00** | 0.85060227 | 0.48104748 | 0.85753196 | 0.49142423 | 0.28210047 |
| **50.00** | 0.7761218 | 0.40062213 | 0.78693736 | 0.41145346 | 0.2055913 |
| **60.00** | 0.69476944 | 0.3336429 | 0.70987153 | 0.34449655 | 0.14983238 |
| **70.00** | 0.5861978 | 0.27786183 | 0.6030312 | 0.2884357 | 0.10919597 |
| **80.00** | 0.493046 | 0.23140667 | 0.5123413 | 0.24149778 | 0.079580665 |
| **90.00** | 0.4265927 | 0.19271825 | 0.44793132 | 0.2021982 | 0.057997398 |
| **100.00** | 0.36660987 | 0.16049808 | 0.38870868 | 0.16929395 | 0.04226778 |
| **110.00** | 0.29410976 | 0.13366473 | 0.31473374 | 0.14174429 | 0.030804234 |
| **120.00** | 0.22846489 | 0.11131759 | 0.25131118 | 0.11867786 | 0.022449743 |
| **130.00** | 0.17627087 | 0.09270663 | 0.1957335 | 0.0993651 | 0.016361093 |
| **140.00** | 0.13046804 | 0.07720719 | 0.14864427 | 0.08319515 | 0.011923761 |
| **150.00** | 0.08732312 | 0.06429908 | 0.10300658 | 0.06965658 | 0.008689889 |
| **160.00** | 0.07499278 | 0.053549048 | 0.086879216 | 0.058321178 | 0.0063330824 |
| **170.00** | 0.0443102 | 0.04459629 | 0.052499767 | 0.048830416 | 0.0046154717 |
| **180.00** | 0.023287956 | 0.037140325 | 0.02722363 | 0.04088411 | 0.0033636983 |
| **190.00** | 0.018402012 | 0.03093091 | 0.020256553 | 0.034230933 | 0.0024514215 |
| **200.00** | 0.009563354 | 0.025759634 | 0.0075386683 | 0.02866044 | 0.0017865654 |
| **210.00** | 0.007214468 | 0.021452932 | 0.006788238 | 0.02399645 | 0.0013020267 |
| **220.00** | 0.0 | 0.01786626 | 8.548948E-4 | 0.020091444 | 9.489008E-4 |
| **230.00** | 0.0 | 0.014879236 | 4.8126347E-4 | 0.01682191 | 6.915471E-4 |
| **240.00** | 0.0 | 0.012391606 | 3.4695095E-4 | 0.014084435 | 5.039909E-4 |
| **250.00** | 0.0 | 0.010319879 | 1.9915974E-4 | 0.011792437 | 3.673023E-4 |
| **260.00** | 0.0 | 0.008594519 | 1.6163773E-4 | 0.009873423 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.0071576186 | 1.2754496E-4 | 0.008266694 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.005960951 | 9.817103E-5 | 0.006921433 | 1.4217607E-4 |
| **290.00** | 0.0 | 0.0049643517 | 0.0 | 0.0057950895 | 1.0361615E-4 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2310)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 245.11 | 0.004079757 | 161 | 265.80 | 0.003762163 | 148.5 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 213.66 | 0.0046803597 | 185 | 222.71 | 0.0044900468 | 177.47 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 356.76 | 0.002803005 | 110 | 372.10 | 0.0026874223 | 105.48 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 254.72 | 0.0039258483 | 156 | 257.51 | 0.0038833919 | 154.3 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 239.28 | 0.004179129 | 166 | 242.50 | 0.0041237907 | 163.79 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 340.69 | 0.0029352189 | 115 | 428.76 | 0.0023322867 | 91.19 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 1142.10 | 8.7558E-4 | 34 | 1165.73 | 8.578305E-4 | 33.32 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 2098.38 | 4.7655843E-4 | 18 | 2181.50 | 4.5840113E-4 | 17.34 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 202.47 | 0.004938991 | 196 | 204.71 | 0.0048850267 | 193.85 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 430.75 | 0.0023215385 | 93 | 437.23 | 0.0022871085 | 91.61 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 7279.80 | 1.3736646E-4 | 4 | 7621.59 | 1.3120616E-4 | 3.82 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 872.56 | 0.0011460554 | 45 | 886.98 | 0.0011274265 | 44.25 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 1676.74 | 5.963946E-4 | 24 | 1726.62 | 5.7916564E-4 | 23.24 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 198.40 | 0.005040304 | 200 | 200.70 | 0.004982606 | 197.69 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 190.73 | 0.005242929 | 208 | 200.82 | 0.004979526 | 197.14 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 342.27 | 0.0029216856 | 116 | 351.74 | 0.0028430307 | 112.9 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 201.44 | 0.004964319 | 197 | 204.02 | 0.004901525 | 194.5 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 203.95 | 0.0049031433 | 194 | 217.15 | 0.004605149 | 182.22 |
| **RodgersCreek** | 325.31 | 0.003074 | 367.43 | 0.0027216114 | 108 | 400.24 | 0.0024984933 | 99.17 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 850.74 | 0.0011754443 | 47 | 899.46 | 0.0011117745 | 44.42 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 458.02 | 0.0021832893 | 87 | 480.96 | 0.0020791537 | 82.85 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 496.66 | 0.0020134668 | 80 | 505.23 | 0.0019793145 | 78.66 |
| **Compton** | 2658.16 | 3.762E-4 | 6184.57 | 1.6169269E-4 | 6 | 6438.01 | 1.5532749E-4 | 5.73 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 231.25 | 0.0043242457 | 171 | 237.30 | 0.0042140293 | 166.64 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 961.11 | 0.0010404603 | 41 | 1007.27 | 9.927781E-4 | 39.11 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 839.06 | 0.0011918149 | 47 | 854.70 | 0.0011700027 | 46.14 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 259.75 | 0.0038498642 | 153 | 262.68 | 0.003806878 | 151.28 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 199.40 | 0.0050149756 | 199 | 201.45 | 0.0049640657 | 196.99 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 989.66 | 0.0010104518 | 40 | 1025.58 | 9.750571E-4 | 38.58 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1471.90 | 6.7939446E-4 | 26 | 1511.68 | 6.6151493E-4 | 25.32 |
| **TOTAL** | 9.08 | 0.1101451 | 25.68 | 0.03893624 | 1544 | 26.74 | 0.03739064 | 1482.74 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.95132947 | 0.6774887 | 0.9546655 | 0.6880413 | 0.33238843 |
| **20.00** | 0.82264435 | 0.45899096 | 0.8343001 | 0.47340086 | 0.110482074 |
| **30.00** | 0.671619 | 0.3109612 | 0.68792754 | 0.32571936 | 0.036722966 |
| **40.00** | 0.5117207 | 0.21067269 | 0.5357078 | 0.22410837 | 0.012206289 |
| **50.00** | 0.37733278 | 0.14272837 | 0.4032621 | 0.15419582 | 0.004057229 |
| **60.00** | 0.2731093 | 0.09669686 | 0.29647845 | 0.106093094 | 0.001348576 |
| **70.00** | 0.17255625 | 0.06551103 | 0.1893957 | 0.07299643 | 4.4825108E-4 |
| **80.00** | 0.098672144 | 0.044382986 | 0.11440406 | 0.05022456 | 1.4899348E-4 |
| **90.00** | 0.057240173 | 0.030068971 | 0.068677165 | 0.03455657 | 4.952371E-5 |
| **100.00** | 0.03027051 | 0.020371389 | 0.04118128 | 0.023776349 | 1.6461108E-5 |
| **110.00** | 0.014618789 | 0.013801386 | 0.024674542 | 0.016359111 | 5.4714824E-6 |
| **120.00** | 0.009416939 | 0.009350283 | 0.01787112 | 0.011255744 | 1.8186574E-6 |
| **130.00** | 0.008259542 | 0.0063347113 | 0.01400732 | 0.007744417 | 6.045007E-7 |
| **140.00** | 0.007124081 | 0.0042916955 | 0.00778523 | 0.0053284788 | 2.0092905E-7 |
| **150.00** | 0.00601581 | 0.002907575 | 0.0058620363 | 0.0036662135 | 6.678649E-8 |
| **160.00** | 0.0049075396 | 0.0019698495 | 0.0049793385 | 0.0025225065 | 2.2199057E-8 |
| **170.00** | 0.0 | 0.0013345507 | 0.0035312742 | 0.0017355887 | 7.37871E-9 |
| **180.00** | 0.0 | 9.0414303E-4 | 0.0016070297 | 0.0011941567 | 2.452598E-9 |
| **190.00** | 0.0 | 6.125467E-4 | 0.0 | 8.2162913E-4 | 8.152152E-10 |

### Moment Release Variability Plots
*[(top)](#bruce-2310)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2310)*

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
*[(top)](#bruce-2310)*

```
  A_1 = 0.001
  fA = .1
  B_1 = 0.01
  muSlipAmp_1 = .0
  muSlipInvDist_1 = 1.0
  cohesion = 0.0
  Dc_1 = 1.0000000000000000818e-05
  mu0_1 = 0.6
  ddotStar_1 = 9.9999999999999995475e-07
  ddotAB_1 = 9.9999999999999995475e-07
  alpha_1 = 0.0
  theta0_1 = 200000000
  tau0_1 = 55
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
  neighborFname = 
  stressRateFname =  
  slowSlipFname = 
  writePatchFname = 
  DEBUG = 0
  ZBrentUpperBracket = 0
```
