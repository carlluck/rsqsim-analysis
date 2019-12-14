# Bruce 3067
## Metadata
| **Catalog** | Bruce 3067 |
|-----|-----|
| **Author** | Bruce Shaw, 2019/02/10 |
| **Description** | Variable normal stress dsigdsA =0.666.  Rest same as r3062 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.34 km^2 |
| **Length** | 999,999 events in 49,542 years |
| **Frictional Params** | a=0.001, b=0.011, (b-a)=0.01, ddotEQ=1 |

* [Metadata](#metadata)
* [BBP Calculations, LA Basin 863 (m/s) Velocity Model](#bbp-calculations-la-basin-863-ms-velocity-model)
  * [Full Catalog GMPE Comparisons, LA Basin 863 (m/s)](#full-catalog-gmpe-comparisons-la-basin-863-ms)
  * [Rotated Rupture Variability Comparisons, LA Basin 863 (m/s)](#rotated-rupture-variability-comparisons-la-basin-863-ms)
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
*[(top)](#bruce-3067)*


### Full Catalog GMPE Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-3067)*

* [ASK2014](bbp_LA_BASIN_863/gmpe_bbp_comparisons_ASK2014/)
* [NGAWest_2014_NoIdr](bbp_LA_BASIN_863/gmpe_bbp_comparisons_NGAWest_2014_NoIdr/)

### Rotated Rupture Variability Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-3067)*

* [M6.6, Reverse, Dip=45, Ztor=3, Closest Mag](bbp_LA_BASIN_863/rotated_ruptures_m6p6_reverse_filter_closest_mag/)
* [M6.6, Vertical Strike-Slip with Surface Rupture, Closest Mag](bbp_LA_BASIN_863/rotated_ruptures_m6p6_vert_ss_surface_filter_closest_mag/)
* [M7.2, Vertical Strike-Slip with Surface Rupture, Closest Mag](bbp_LA_BASIN_863/rotated_ruptures_m7p2_vert_ss_surface_filter_closest_mag/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-3067)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-3067)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-3067)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-3067)*

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
### Slip Along Rupture (Dsr) Plots
*[(top)](#bruce-3067)*

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
*[(top)](#bruce-3067)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-3067)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-3067)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-3067)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-3067)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-3067)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-3067)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-3067)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-3067)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-3067)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.007107846 | 0.00454339 | 0.0023392912 | 0.0020890732 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 3.5989092E-4 | 2.8182834E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0014170705 | 0.0011662376 | 0.0011696456 | 0.0011309929 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 3.3739774E-4 | 3.2790282E-4 | 3.5989092E-4 | 3.49893E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0014620569 | 9.575576E-4 | 0.0011246592 | 7.083115E-4 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 3.5989092E-4 | 3.4107716E-4 | 3.5989092E-4 | 3.524703E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.01052681 | 0.007785231 | 0.0070853527 | 0.0060821855 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 9.897001E-4 | 9.783444E-4 | 9.897001E-4 | 9.79803E-4 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0010346865 | 8.0845953E-4 | 7.647682E-4 | 7.4952777E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 3.3739774E-4 | 2.737046E-4 | 0.0 | 0.0 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0016869887 | 0.0015472709 | 0.0016869887 | 0.0016004279 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0014170705 | 0.0013516604 | 0.001349591 | 0.0013295984 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0033739775 | 0.0033398492 | 0.0033739775 | 0.0033373104 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.003171539 | 0.0027962024 | 0.0028791274 | 0.0027959214 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0033514842 | 0.0033178737 | 0.0033514842 | 0.0033148369 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.0035089366 | 0.0034225332 | 0.0034864433 | 0.0034227641 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0033514842 | 0.0033108317 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 1.5745228E-4 | 1.5237764E-4 | 4.4986366E-5 | 4.4536504E-5 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0027891546 | 0.0024391985 | 0.0021818387 | 0.002071713 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.002451757 | 0.002116611 | 0.002226825 | 0.002090309 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0020243865 | 0.0019830558 | 0.0020243865 | 0.0020041426 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0047460617 | 0.0026365316 | 0.0045886096 | 0.003237792 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.0057357615 | 0.0055637676 | 0.0056457887 | 0.0055448557 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0031490456 | 0.0021149057 | 0.0012821114 | 0.0011483548 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.005533323 | 0.004305893 | 0.0048585273 | 0.0043832334 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.005533323 | 0.004305893 | 0.004813541 | 0.004030473 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.003441457 | 0.0034011998 | 0.003441457 | 0.0034059493 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.0042512114 | 0.0037561886 | 0.0040037865 | 0.0038072146 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.002204332 | 0.002020673 | 0.0021593457 | 0.0021216923 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0017769615 | 0.0015672231 | 0.001844441 | 0.001428571 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.0034189639 | 0.0033672368 | 0.0034189639 | 0.003384774 |

### Paleo Open Interval Plots
*[(top)](#bruce-3067)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-3067)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 496.75 | 0.0020130868 | 90 | 501.21 | 0.0019951835 | 89.2 |
| **FRA** | 119.00 | 0.008403362 | 140.59 | 0.007112712 | 315 | 163.31 | 0.006123272 | 271 |
| **COA** | 181.00 | 0.005524862 | 211.01 | 0.0047391313 | 210 | 228.43 | 0.0043777525 | 193.94 |
| **SCZ** | 106.00 | 0.009433962 | 348.28 | 0.0028712286 | 128 | 358.62 | 0.0027884282 | 124.31 |
| **TYS** | 329.00 | 0.0030395137 | 736.71 | 0.001357395 | 60 | 748.66 | 0.0013357166 | 59.01 |
| **TOTAL** | 31.61 | 0.0316373 | 55.21 | 0.018112702 | 803 | 60.13 | 0.016630335 | 737.08 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9907489 | 0.83432937 | 0.9918864 | 0.8467893 | 0.72878754 |
| **20.00** | 0.954057 | 0.6961055 | 0.9601417 | 0.71705216 | 0.53113127 |
| **30.00** | 0.91218525 | 0.5807813 | 0.9235694 | 0.6071921 | 0.3870819 |
| **40.00** | 0.85498697 | 0.48456284 | 0.8750724 | 0.5141638 | 0.28210047 |
| **50.00** | 0.78451926 | 0.404285 | 0.8138117 | 0.43538842 | 0.2055913 |
| **60.00** | 0.7214704 | 0.33730686 | 0.7604092 | 0.36868227 | 0.14983238 |
| **70.00** | 0.6418738 | 0.28142503 | 0.68713975 | 0.3121962 | 0.10919597 |
| **80.00** | 0.5771786 | 0.23480116 | 0.62849385 | 0.26436442 | 0.079580665 |
| **90.00** | 0.4994331 | 0.1959015 | 0.55695367 | 0.22386096 | 0.057997398 |
| **100.00** | 0.42925256 | 0.16344638 | 0.48851255 | 0.18956307 | 0.04226778 |
| **110.00** | 0.33852422 | 0.13636811 | 0.40338984 | 0.16051999 | 0.030804234 |
| **120.00** | 0.24680147 | 0.113775924 | 0.3163552 | 0.1359266 | 0.022449743 |
| **130.00** | 0.1768212 | 0.094926596 | 0.24632387 | 0.1151012 | 0.016361093 |
| **140.00** | 0.13323572 | 0.079200044 | 0.19410416 | 0.09746647 | 0.011923761 |
| **150.00** | 0.10583888 | 0.06607892 | 0.16030383 | 0.08253357 | 0.008689889 |
| **160.00** | 0.07992702 | 0.055131584 | 0.12857807 | 0.06988854 | 0.0063330824 |
| **170.00** | 0.05289113 | 0.0459979 | 0.09473902 | 0.05918087 | 0.0046154717 |
| **180.00** | 0.038885385 | 0.0383774 | 0.07397349 | 0.05011373 | 0.0033636983 |
| **190.00** | 0.026650133 | 0.03201939 | 0.053253245 | 0.042435773 | 0.0024514215 |
| **200.00** | 0.01164399 | 0.026714718 | 0.031580634 | 0.035934158 | 0.0017865654 |
| **210.00** | 0.0 | 0.022288874 | 0.018026318 | 0.030428661 | 0.0013020267 |
| **220.00** | 0.0 | 0.018596262 | 0.014608767 | 0.025766665 | 9.489008E-4 |
| **230.00** | 0.0 | 0.015515408 | 0.008658524 | 0.021818938 | 6.915471E-4 |
| **240.00** | 0.0 | 0.01294496 | 0.0066485624 | 0.018476043 | 5.039909E-4 |
| **250.00** | 0.0 | 0.010800361 | 0.004437271 | 0.015645316 | 3.673023E-4 |
| **260.00** | 0.0 | 0.009011058 | 0.0033791726 | 0.013248286 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.0075181904 | 0.0010321494 | 0.011218508 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.006272647 | 8.973717E-4 | 0.009499713 | 1.4217607E-4 |
| **290.00** | 0.0 | 0.0052334536 | 7.047388E-4 | 0.008044255 | 1.0361615E-4 |
| **300.00** | 0.0 | 0.004366424 | 5.2075763E-4 | 0.0068117892 | 7.551416E-5 |
| **310.00** | 0.0 | 0.0036430357 | 3.6107592E-4 | 0.0057681506 | 5.503378E-5 |
| **320.00** | 0.0 | 0.0030394916 | 3.078742E-4 | 0.0048844083 | 4.0107934E-5 |
| **330.00** | 0.0 | 0.0025359371 | 1.3838748E-4 | 0.0041360646 | 2.9230163E-5 |
| **340.00** | 0.0 | 0.0021158068 | 1.1881986E-4 | 0.0035023754 | 2.1302578E-5 |
| **350.00** | 0.0 | 0.0017652798 | 9.925225E-5 | 0.0029657742 | 1.5525055E-5 |
| **360.00** | 0.0 | 0.0014728248 | 0.0 | 0.0025113858 | 1.1314466E-5 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-3067)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 774.51 | 0.0012911395 | 57 | 860.32 | 0.001162355 | 51.38 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 207.05 | 0.004829833 | 214 | 247.72 | 0.004036791 | 178.82 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 499.12 | 0.0020035196 | 89 | 632.55 | 0.0015808997 | 70.01 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 299.93 | 0.0033341544 | 149 | 303.06 | 0.0032997134 | 147.46 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 288.24 | 0.0034693228 | 155 | 292.81 | 0.0034151257 | 152.58 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 500.90 | 0.001996388 | 88 | 536.60 | 0.0018635689 | 82.09 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 1548.10 | 6.459519E-4 | 28 | 1625.73 | 6.151097E-4 | 26.69 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 2889.66 | 3.4606137E-4 | 16 | 2951.99 | 3.3875502E-4 | 15.63 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 176.14 | 0.0056773904 | 251 | 179.38 | 0.0055746054 | 246.46 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 496.75 | 0.0020130868 | 90 | 501.88 | 0.0019925034 | 89.09 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 19404.85 | 5.1533505E-5 | 2 | 19404.85 | 5.1533505E-5 | 2 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 456.24 | 0.002191819 | 97 | 480.23 | 0.0020823295 | 92.19 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 214.57 | 0.004660575 | 206 | 344.22 | 0.002905116 | 127.89 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 290.97 | 0.0034367852 | 152 | 294.25 | 0.0033985274 | 150.3 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 248.23 | 0.0040285494 | 178 | 261.39 | 0.003825772 | 169.02 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 460.19 | 0.002173015 | 96 | 468.37 | 0.0021350519 | 94.33 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 140.59 | 0.007112712 | 315 | 163.70 | 0.006108653 | 270.36 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 348.28 | 0.0028712286 | 128 | 359.42 | 0.0027822605 | 124.02 |
| **RodgersCreek** | 325.31 | 0.003074 | 448.33 | 0.0022304817 | 99 | 475.63 | 0.0021024966 | 93.35 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 44457.91 | 0.0 | 0 | ∞ | 0.0 | 0 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 595.42 | 0.0016794887 | 74 | 620.17 | 0.001612461 | 71.04 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 736.71 | 0.001357395 | 60 | 747.77 | 0.0013373089 | 59.06 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 211.01 | 0.0047391313 | 210 | 228.07 | 0.004384573 | 194.21 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 861.66 | 0.0011605549 | 52 | 903.36 | 0.0011069735 | 49.4 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 997.36 | 0.0010026437 | 44 | 1005.68 | 9.943505E-4 | 43.62 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 297.91 | 0.0033566826 | 150 | 301.44 | 0.0033174425 | 148.25 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 289.06 | 0.0034595453 | 153 | 291.92 | 0.0034255602 | 151.49 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1307.41 | 7.648726E-4 | 34 | 1329.98 | 7.51893E-4 | 33.44 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 2876.08 | 3.476956E-4 | 15 | 2895.53 | 3.453595E-4 | 14.87 |
| **TOTAL** | 9.11 | 0.1097689 | 22.82 | 0.0438171 | 1946 | 24.93 | 0.04011213 | 1781.54 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.93383974 | 0.64521545 | 0.9440491 | 0.66956884 | 0.33364123 |
| **20.00** | 0.78418833 | 0.41630298 | 0.8113593 | 0.44832242 | 0.11131647 |
| **30.00** | 0.62485963 | 0.2686051 | 0.66801906 | 0.30018273 | 0.037139766 |
| **40.00** | 0.48285028 | 0.17330818 | 0.52733475 | 0.20099299 | 0.012391358 |
| **50.00** | 0.35338825 | 0.111821115 | 0.40311095 | 0.13457865 | 0.004134268 |
| **60.00** | 0.23960628 | 0.07214871 | 0.28530595 | 0.09010966 | 0.0013793623 |
| **70.00** | 0.1641852 | 0.046551462 | 0.20457532 | 0.060334623 | 4.6021215E-4 |
| **80.00** | 0.099466115 | 0.030035723 | 0.1390337 | 0.04039818 | 1.5354574E-4 |
| **90.00** | 0.063344866 | 0.019379513 | 0.09191381 | 0.027049363 | 5.1229195E-5 |
| **100.00** | 0.03167538 | 0.012503961 | 0.054694902 | 0.018111411 | 1.7092172E-5 |
| **110.00** | 0.012555139 | 0.008067749 | 0.026207875 | 0.012126836 | 5.702653E-6 |
| **120.00** | 0.0047096466 | 0.0052054366 | 0.013844641 | 0.008119752 | 1.9026403E-6 |
| **130.00** | 0.0 | 0.0033586281 | 0.0051388387 | 0.0054367324 | 6.347993E-7 |
| **140.00** | 0.0 | 0.0021670389 | 0.0010320235 | 0.0036402666 | 2.1179521E-7 |
| **150.00** | 0.0 | 0.0013982069 | 6.709551E-4 | 0.002437409 | 7.066362E-8 |
| **160.00** | 0.0 | 9.021447E-4 | 4.0890946E-4 | 0.0016320131 | 2.3576296E-8 |
| **170.00** | 0.0 | 5.820777E-4 | 3.233832E-4 | 0.0010927451 | 7.866025E-9 |
| **180.00** | 0.0 | 3.7556552E-4 | 7.038276E-5 | 7.316681E-4 | 2.6244302E-9 |
| **190.00** | 0.0 | 2.4232069E-4 | 0.0 | 4.8990216E-4 | 8.756182E-10 |

### Moment Release Variability Plots
*[(top)](#bruce-3067)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-3067)*

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
*[(top)](#bruce-3067)*

```
  A_1 = 0.001
  fA = .1
  B_1 = 0.011
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
  nEq = 1000000
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
  initTauFname = tau_hetero_dsigds.in 
  initSigmaFname = sigma_hetero_dsigds.in 
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
```
