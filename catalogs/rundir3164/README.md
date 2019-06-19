# Bruce 3164
## Metadata
| **Catalog** | Bruce 3164 |
|-----|-----|
| **Author** | Bruce Shaw, 2019/03/09 |
| **Description** | AReduceDelay  tCausalFactor=3.0 areaFrac=0.99  V=1  b=.027 a=.015 fA=.005 ; Smooth Model |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.34 km^2 |
| **Length** | 9,999,999 events in 82,314 years |
| **Frictional Params** | a=0.015, b=0.027, (b-a)=0.012, ddotEQ=1 |

* [Metadata](#metadata)
* [BBP Calculations, LA Basin 863 (m/s) Velocity Model](#bbp-calculations-la-basin-863-ms-velocity-model)
  * [Full Catalog GMPE Comparisons, LA Basin 863 (m/s)](#full-catalog-gmpe-comparisons-la-basin-863-ms)
  * [Rotated Rupture Variability Comparisons, LA Basin 863 (m/s)](#rotated-rupture-variability-comparisons-la-basin-863-ms)
* [BBP Calculations, LA Basin 500 (m/s) Velocity Model](#bbp-calculations-la-basin-500-ms-velocity-model)
  * [Full Catalog GMPE Comparisons, LA Basin 500 (m/s)](#full-catalog-gmpe-comparisons-la-basin-500-ms)
  * [Rotated Rupture Variability Comparisons, LA Basin 500 (m/s)](#rotated-rupture-variability-comparisons-la-basin-500-ms)
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
*[(top)](#bruce-3164)*


### Full Catalog GMPE Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-3164)*

* [ASK2014](bbp_LA_BASIN_863/gmpe_bbp_comparisons_ASK2014/)

### Rotated Rupture Variability Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-3164)*

* [M6.6, Reverse, Dip=45, Ztor=3](bbp_LA_BASIN_863/rotated_ruptures_m6p6_reverse/)
* [M6.6, Vertical Strike-Slip with Surface Rupture](bbp_LA_BASIN_863/rotated_ruptures_m6p6_vert_ss_surface/)
* [M7.2, Reverse, Dip=45](bbp_LA_BASIN_863/rotated_ruptures_m7p2_reverse/)
* [M7.2, Vertical Strike-Slip with Surface Rupture](bbp_LA_BASIN_863/rotated_ruptures_m7p2_vert_ss_surface/)
* [M7.6, Reverse, Dip=45](bbp_LA_BASIN_863/rotated_ruptures_m7p6_reverse/)
* [M7.6, Vertical Strike-Slip with Surface Rupture](bbp_LA_BASIN_863/rotated_ruptures_m7p6_vert_ss_surface/)

## BBP Calculations, LA Basin 500 (m/s) Velocity Model
*[(top)](#bruce-3164)*


### Full Catalog GMPE Comparisons, LA Basin 500 (m/s)
*[(top)](#bruce-3164)*

* [ASK2014](bbp_LA_BASIN_500/gmpe_bbp_comparisons_ASK2014/)

### Rotated Rupture Variability Comparisons, LA Basin 500 (m/s)
*[(top)](#bruce-3164)*

* [M6.6, Reverse, Dip=45, Ztor=3](bbp_LA_BASIN_500/rotated_ruptures_m6p6_reverse/)
* [M6.6, Vertical Strike-Slip with Surface Rupture](bbp_LA_BASIN_500/rotated_ruptures_m6p6_vert_ss_surface/)
* [M7.2, Reverse, Dip=45](bbp_LA_BASIN_500/rotated_ruptures_m7p2_reverse/)
* [M7.2, Vertical Strike-Slip with Surface Rupture](bbp_LA_BASIN_500/rotated_ruptures_m7p2_vert_ss_surface/)
* [M7.6, Reverse, Dip=45](bbp_LA_BASIN_500/rotated_ruptures_m7p6_reverse/)
* [M7.6, Vertical Strike-Slip with Surface Rupture](bbp_LA_BASIN_500/rotated_ruptures_m7p6_vert_ss_surface/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-3164)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-3164)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-3164)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-3164)*

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
*[(top)](#bruce-3164)*

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
*[(top)](#bruce-3164)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-3164)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-3164)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-3164)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-3164)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-3164)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-3164)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-3164)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-3164)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-3164)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0019674806 | 0.0010163244 | 8.5430074E-4 | 6.9238007E-4 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 1.6827136E-4 | 1.6040565E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.001838041 | 9.0486225E-4 | 0.0012296754 | 0.0010708866 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 4.4009433E-4 | 4.162304E-4 | 4.1420644E-4 | 4.083754E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 9.060766E-4 | 4.956474E-4 | 3.106548E-4 | 2.7795564E-4 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 0.0012943951 | 7.249312E-4 | 7.89581E-4 | 7.2313374E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.0015532741 | 8.865418E-4 | 6.4719754E-4 | 5.399278E-4 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.001592106 | 0.0013106703 | 0.0014497224 | 0.0013586985 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0014885544 | 0.001157853 | 0.0011649556 | 0.0011043834 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 3.883185E-5 | 3.2235428E-5 | 0.0 | 0.0 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0032748196 | 0.0015853166 | 0.0017733213 | 0.0014693377 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0028606132 | 0.0019077959 | 0.0022393034 | 0.001942884 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.003430147 | 0.0033966976 | 0.003430147 | 0.0033947432 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.004167952 | 0.0021345082 | 0.002122808 | 0.0018856043 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0033913152 | 0.0033546304 | 0.0033913152 | 0.0033568994 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.0033913152 | 0.0033250218 | 0.0033913152 | 0.0033568703 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0036372503 | 0.0035713795 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 4.7892617E-4 | 3.5526007E-4 | 5.1775805E-5 | 5.0962324E-5 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0032489316 | 0.0021901384 | 0.002071032 | 0.00199725 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0019027608 | 0.0010348845 | 0.0013591149 | 0.001086954 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0051646363 | 0.0032311375 | 0.0013979467 | 0.001352821 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0028735572 | 0.001345321 | 5.17758E-4 | 4.479198E-4 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.0062001524 | 0.004064005 | 0.0023040234 | 0.0021460177 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 8.5430074E-4 | 5.000048E-4 | 1.6827136E-4 | 1.3460711E-4 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.002135752 | 0.0011502608 | 0.0014108906 | 0.0011446514 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.002135752 | 0.0011502608 | 0.001320283 | 9.900456E-4 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.004556271 | 0.004484224 | 0.004543327 | 0.0044929693 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.0052034683 | 0.0042840014 | 0.004491551 | 0.004275121 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.004763374 | 0.002569397 | 0.0033524833 | 0.0028928798 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0027958935 | 0.0016280629 | 0.00209692 | 0.0017829451 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.004478607 | 0.004406328 | 0.004478607 | 0.0044328705 |

### Paleo Open Interval Plots
*[(top)](#bruce-3164)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-3164)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 254.91 | 0.0039229263 | 299 | 316.49 | 0.00315969 | 239.95 |
| **FRA** | 119.00 | 0.008403362 | 182.65 | 0.0054749353 | 50 | 212.58 | 0.0047040656 | 41.74 |
| **COA** | 181.00 | 0.005524862 | 192.19 | 0.0052030836 | 98 | 215.45 | 0.0046413704 | 87.33 |
| **SCZ** | 106.00 | 0.009433962 | 206.63 | 0.004839683 | 136 | 226.41 | 0.0044167917 | 124.07 |
| **TYS** | 329.00 | 0.0030395137 | 447.09 | 0.0022366617 | 173 | 514.25 | 0.0019445764 | 150.28 |
| **TOTAL** | 31.61 | 0.0316373 | 102.01 | 0.0098028155 | 756 | 119.58 | 0.008362451 | 644.03 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.99708205 | 0.90662336 | 0.997825 | 0.91977656 | 0.72878754 |
| **20.00** | 0.9870244 | 0.82196593 | 0.9901678 | 0.8459889 | 0.53113127 |
| **30.00** | 0.9678461 | 0.74521357 | 0.97552675 | 0.77812076 | 0.3870819 |
| **40.00** | 0.94861656 | 0.675628 | 0.9611312 | 0.7156972 | 0.28210047 |
| **50.00** | 0.92466503 | 0.6125402 | 0.94275564 | 0.65828156 | 0.2055913 |
| **60.00** | 0.8924531 | 0.5553432 | 0.91770077 | 0.60547197 | 0.14983238 |
| **70.00** | 0.8653056 | 0.50348717 | 0.8963928 | 0.5568989 | 0.10919597 |
| **80.00** | 0.8226102 | 0.45647323 | 0.8612067 | 0.5122225 | 0.079580665 |
| **90.00** | 0.78449816 | 0.4138493 | 0.82911026 | 0.47113028 | 0.057997398 |
| **100.00** | 0.7447927 | 0.37520546 | 0.7993972 | 0.4333346 | 0.04226778 |
| **110.00** | 0.7014685 | 0.34017003 | 0.7669209 | 0.398571 | 0.030804234 |
| **120.00** | 0.6506318 | 0.3084061 | 0.7296596 | 0.36659628 | 0.022449743 |
| **130.00** | 0.60968995 | 0.2796082 | 0.6988506 | 0.33718666 | 0.016361093 |
| **140.00** | 0.56608045 | 0.25349933 | 0.6599012 | 0.31013638 | 0.011923761 |
| **150.00** | 0.53082746 | 0.2298284 | 0.62560254 | 0.28525618 | 0.008689889 |
| **160.00** | 0.4813689 | 0.20836781 | 0.58741546 | 0.26237193 | 0.0063330824 |
| **170.00** | 0.43144047 | 0.18891113 | 0.5399719 | 0.24132356 | 0.0046154717 |
| **180.00** | 0.39305758 | 0.17127125 | 0.5092889 | 0.22196375 | 0.0033636983 |
| **190.00** | 0.3459924 | 0.15527852 | 0.46935582 | 0.20415705 | 0.0024514215 |
| **200.00** | 0.31322354 | 0.14077914 | 0.43968558 | 0.18777888 | 0.0017865654 |
| **210.00** | 0.27789232 | 0.12763365 | 0.40325826 | 0.1727146 | 0.0013020267 |
| **220.00** | 0.25090352 | 0.11571565 | 0.37309358 | 0.15885885 | 9.489008E-4 |
| **230.00** | 0.2261745 | 0.104910515 | 0.3436395 | 0.14611465 | 6.915471E-4 |
| **240.00** | 0.20121421 | 0.09511433 | 0.31409603 | 0.13439283 | 5.039909E-4 |
| **250.00** | 0.18012649 | 0.08623287 | 0.29196274 | 0.12361137 | 3.673023E-4 |
| **260.00** | 0.17020668 | 0.07818074 | 0.27281702 | 0.11369484 | 2.6768536E-4 |
| **270.00** | 0.15523802 | 0.07088049 | 0.25176713 | 0.104573846 | 1.9508575E-4 |
| **280.00** | 0.12716867 | 0.064261906 | 0.22764124 | 0.096184574 | 1.4217607E-4 |
| **290.00** | 0.11350368 | 0.058261346 | 0.21038263 | 0.08846832 | 1.0361615E-4 |
| **300.00** | 0.10059339 | 0.052821096 | 0.18920565 | 0.081371084 | 7.551416E-5 |
| **310.00** | 0.083068125 | 0.04788884 | 0.16857366 | 0.07484321 | 5.503378E-5 |
| **320.00** | 0.07183349 | 0.043417145 | 0.14784281 | 0.068839036 | 4.0107934E-5 |
| **330.00** | 0.065846786 | 0.039362997 | 0.13228948 | 0.06331653 | 2.9230163E-5 |
| **340.00** | 0.06117942 | 0.035687413 | 0.122640185 | 0.05823706 | 2.1302578E-5 |
| **350.00** | 0.055205066 | 0.032355044 | 0.11251604 | 0.053565085 | 1.5525055E-5 |
| **360.00** | 0.049322635 | 0.02933384 | 0.103708595 | 0.049267907 | 1.1314466E-5 |
| **370.00** | 0.044978905 | 0.026594743 | 0.0954078 | 0.045315467 | 8.245842E-6 |
| **380.00** | 0.03792963 | 0.024111416 | 0.08814359 | 0.041680105 | 6.009467E-6 |
| **390.00** | 0.029219933 | 0.021859974 | 0.07560507 | 0.03833638 | 4.379625E-6 |
| **400.00** | 0.022041328 | 0.019818764 | 0.06353004 | 0.035260905 | 3.1918162E-6 |
| **410.00** | 0.01971938 | 0.017968154 | 0.059206147 | 0.032432154 | 2.3261557E-6 |
| **420.00** | 0.017396927 | 0.016290348 | 0.049300604 | 0.029830337 | 1.6952735E-6 |
| **430.00** | 0.015022173 | 0.014769211 | 0.046088077 | 0.027437244 | 1.2354942E-6 |
| **440.00** | 0.012647419 | 0.013390112 | 0.043026652 | 0.025236133 | 9.004128E-7 |
| **450.00** | 0.010828136 | 0.012139789 | 0.035954405 | 0.023211604 | 6.5620964E-7 |
| **460.00** | 0.009231581 | 0.0110062165 | 0.033182096 | 0.02134949 | 4.782374E-7 |
| **470.00** | 0.0076350262 | 0.009978493 | 0.03141157 | 0.01963676 | 3.4853346E-7 |
| **480.00** | 0.0 | 0.009046735 | 0.023559822 | 0.018061431 | 2.5400686E-7 |
| **490.00** | 0.0 | 0.008201981 | 0.02126519 | 0.016612481 | 1.8511703E-7 |
| **500.00** | 0.0 | 0.0074361083 | 0.01954099 | 0.015279771 | 1.3491099E-7 |
| **510.00** | 0.0 | 0.0067417496 | 0.01909308 | 0.014053975 | 9.832145E-8 |
| **520.00** | 0.0 | 0.0061122277 | 0.018168965 | 0.012926517 | 7.165545E-8 |
| **530.00** | 0.0 | 0.0055414885 | 0.017319247 | 0.011889507 | 5.2221598E-8 |
| **540.00** | 0.0 | 0.005024043 | 0.016807597 | 0.01093569 | 3.8058452E-8 |
| **550.00** | 0.0 | 0.004554915 | 0.016385674 | 0.010058391 | 2.7736526E-8 |
| **560.00** | 0.0 | 0.0041295923 | 0.015897239 | 0.009251473 | 2.0214035E-8 |
| **570.00** | 0.0 | 0.003743985 | 0.014842547 | 0.008509288 | 1.4731737E-8 |
| **580.00** | 0.0 | 0.0033943842 | 0.013961783 | 0.007826643 | 1.0736306E-8 |
| **590.00** | 0.0 | 0.003077428 | 0.013587935 | 0.007198763 | 7.824486E-9 |
| **600.00** | 0.0 | 0.0027900683 | 0.012442857 | 0.006621253 | 5.7023883E-9 |
| **610.00** | 0.0 | 0.002529541 | 0.012031973 | 0.0060900734 | 4.1558295E-9 |
| **620.00** | 0.0 | 0.002293341 | 0.011318328 | 0.005601507 | 3.0287168E-9 |
| **630.00** | 0.0 | 0.0020791967 | 0.010176802 | 0.0051521347 | 2.2072912E-9 |
| **640.00** | 0.0 | 0.0018850483 | 0.009719888 | 0.004738813 | 1.6086463E-9 |
| **650.00** | 0.0 | 0.0017090288 | 0.008476882 | 0.004358649 | 1.1723614E-9 |
| **660.00** | 0.0 | 0.0015494456 | 0.008223739 | 0.0040089833 | 8.544024E-10 |
| **670.00** | 0.0 | 0.0014047635 | 0.0079967715 | 0.0036873687 | 6.2267785E-10 |
| **680.00** | 0.0 | 0.0012735914 | 0.0077555995 | 0.0033915553 | 4.5379986E-10 |
| **690.00** | 0.0 | 0.0011546678 | 0.006873034 | 0.003119473 | 3.307237E-10 |
| **700.00** | 0.0 | 0.0010468488 | 0.0063736457 | 0.0028692181 | 2.410273E-10 |
| **710.00** | 0.0 | 9.490976E-4 | 0.0062062265 | 0.0026390397 | 1.756577E-10 |
| **720.00** | 0.0 | 8.604741E-4 | 0.006128866 | 0.0024273267 | 1.2801715E-10 |
| **730.00** | 0.0 | 7.801259E-4 | 0.0060824635 | 0.0022325984 | 9.32973E-11 |
| **740.00** | 0.0 | 7.072804E-4 | 0.005925189 | 0.0020534915 | 6.7993916E-11 |
| **750.00** | 0.0 | 6.4123695E-4 | 0.0058463695 | 0.0018887534 | 4.955312E-11 |
| **760.00** | 0.0 | 5.813604E-4 | 0.005792875 | 0.001737231 | 3.6113695E-11 |
| **770.00** | 0.0 | 5.2707497E-4 | 0.005437551 | 0.0015978644 | 2.631921E-11 |
| **780.00** | 0.0 | 4.7785847E-4 | 0.0050968505 | 0.0014696782 | 1.9181113E-11 |
| **790.00** | 0.0 | 4.3323764E-4 | 0.0048620123 | 0.0013517756 | 1.3978957E-11 |
| **800.00** | 0.0 | 3.9278337E-4 | 0.0046845474 | 0.0012433315 | 1.018769E-11 |
| **810.00** | 0.0 | 3.561066E-4 | 0.004507082 | 0.0011435872 | 7.424662E-12 |
| **820.00** | 0.0 | 3.2285458E-4 | 0.0042322166 | 0.0010518447 | 5.411001E-12 |
| **830.00** | 0.0 | 2.927075E-4 | 0.0038400532 | 9.674621E-4 | 3.94347E-12 |
| **840.00** | 0.0 | 2.6537545E-4 | 0.0035607708 | 8.898489E-4 | 2.873952E-12 |
| **850.00** | 0.0 | 2.405956E-4 | 0.0032771889 | 8.1846217E-4 | 2.0945004E-12 |
| **860.00** | 0.0 | 2.181296E-4 | 0.0032242811 | 7.5280236E-4 | 1.5264459E-12 |
| **870.00** | 0.0 | 1.9776139E-4 | 0.0031241947 | 6.924099E-4 | 1.1124547E-12 |
| **880.00** | 0.0 | 1.792951E-4 | 0.0023719189 | 6.368624E-4 | 8.1074313E-13 |
| **890.00** | 0.0 | 1.6255313E-4 | 0.0023023034 | 5.8577117E-4 | 5.908595E-13 |
| **900.00** | 0.0 | 1.4737446E-4 | 0.0022326882 | 5.3877855E-4 | 4.3061106E-13 |
| **910.00** | 0.0 | 1.3361314E-4 | 0.0021630728 | 4.9555587E-4 | 3.1382397E-13 |
| **920.00** | 0.0 | 1.2113679E-4 | 0.0020934576 | 4.558007E-4 | 2.28711E-13 |
| **930.00** | 0.0 | 1.0982545E-4 | 0.0020311822 | 4.192348E-4 | 1.6668173E-13 |
| **940.00** | 0.0 | 9.957032E-5 | 0.0019951463 | 3.8560232E-4 | 1.2147557E-13 |
| **950.00** | 0.0 | 9.027278E-5 | 0.0019591106 | 3.5466798E-4 | 8.8529885E-14 |
| **960.00** | 0.0 | 8.184341E-5 | 0.0019230746 | 3.262153E-4 | 6.451948E-14 |
| **970.00** | 0.0 | 7.4201154E-5 | 0.0019037225 | 3.0004518E-4 | 4.7020994E-14 |
| **980.00** | 0.0 | 6.72725E-5 | 0.0018868579 | 2.7597454E-4 | 3.4268314E-14 |
| **990.00** | 0.0 | 6.099082E-5 | 0.0018699932 | 2.538349E-4 | 2.4974321E-14 |
| **1000.00** | 0.0 | 5.5295703E-5 | 0.0018531285 | 2.334714E-4 | 1.8200975E-14 |
| **1010.00** | 0.0 | 5.0132378E-5 | 0.0018362639 | 2.1474152E-4 | 1.32646435E-14 |
| **1020.00** | 0.0 | 4.5451186E-5 | 0.0018193993 | 1.9751421E-4 | 9.667107E-15 |
| **1030.00** | 0.0 | 4.1207106E-5 | 0.0018025347 | 1.8166895E-4 | 7.0452673E-15 |
| **1040.00** | 0.0 | 3.735933E-5 | 0.0016528987 | 1.6709484E-4 | 5.1345032E-15 |
| **1050.00** | 0.0 | 3.3870838E-5 | 0.001353954 | 1.536899E-4 | 3.741962E-15 |
| **1060.00** | 0.0 | 3.0708095E-5 | 0.001241068 | 1.4136037E-4 | 2.7270954E-15 |
| **1070.00** | 0.0 | 2.7840677E-5 | 0.0012209475 | 1.3001997E-4 | 1.987473E-15 |
| **1080.00** | 0.0 | 2.5241008E-5 | 0.001200827 | 1.1958931E-4 | 1.4484457E-15 |
| **1090.00** | 0.0 | 2.2884089E-5 | 0.0011807065 | 1.09995446E-4 | 1.0556092E-15 |
| **1100.00** | 0.0 | 2.074725E-5 | 0.001160586 | 1.0117123E-4 | 7.693148E-16 |
| **1110.00** | 0.0 | 1.8809942E-5 | 0.0011404655 | 9.305493E-5 | 5.606671E-16 |
| **1120.00** | 0.0 | 1.7053533E-5 | 0.001120345 | 8.5589745E-5 | 4.0860718E-16 |
| **1130.00** | 0.0 | 1.5461132E-5 | 8.597274E-4 | 7.872344E-5 | 2.9778783E-16 |
| **1140.00** | 0.0 | 1.4017423E-5 | 6.7170506E-4 | 7.240797E-5 | 2.1702407E-16 |
| **1150.00** | 0.0 | 1.2708523E-5 | 6.571825E-4 | 6.6599154E-5 | 1.5816444E-16 |
| **1160.00** | 0.0 | 1.15218445E-5 | 6.426599E-4 | 6.1256345E-5 | 1.1526827E-16 |
| **1170.00** | 0.0 | 1.0445973E-5 | 6.281373E-4 | 5.634215E-5 | 8.400608E-17 |
| **1180.00** | 0.0 | 9.470564E-6 | 6.136147E-4 | 5.1822186E-5 | 6.122259E-17 |
| **1190.00** | 0.0 | 8.586235E-6 | 5.990921E-4 | 4.766483E-5 | 4.4618258E-17 |
| **1200.00** | 0.0 | 7.784481E-6 | 5.845695E-4 | 4.3840995E-5 | 3.251723E-17 |
| **1210.00** | 0.0 | 7.0575925E-6 | 5.7004695E-4 | 4.032392E-5 | 2.3698154E-17 |
| **1220.00** | 0.0 | 6.3985785E-6 | 5.5552437E-4 | 3.7088997E-5 | 1.7270919E-17 |
| **1230.00** | 0.0 | 5.8011005E-6 | 5.410018E-4 | 3.411359E-5 | 1.2586831E-17 |
| **1240.00** | 0.0 | 5.2594137E-6 | 5.224459E-4 | 3.137688E-5 | 9.173126E-18 |
| **1250.00** | 0.0 | 4.7683075E-6 | 4.9334037E-4 | 2.8859718E-5 | 6.68526E-18 |
| **1260.00** | 0.0 | 4.323059E-6 | 4.6423482E-4 | 2.6544492E-5 | 4.8721343E-18 |
| **1270.00** | 0.0 | 3.919386E-6 | 4.3512927E-4 | 2.4415001E-5 | 3.550751E-18 |
| **1280.00** | 0.0 | 3.5534072E-6 | 4.0602376E-4 | 2.2456346E-5 | 2.587743E-18 |
| **1290.00** | 0.0 | 3.2216021E-6 | 3.769182E-4 | 2.0654821E-5 | 1.885915E-18 |
| **1300.00** | 0.0 | 2.9207797E-6 | 3.6470057E-4 | 1.899782E-5 | 1.3744313E-18 |
| **1310.00** | 0.0 | 2.6480473E-6 | 3.5815942E-4 | 1.747375E-5 | 1.0016684E-18 |
| **1320.00** | 0.0 | 2.4007816E-6 | 3.5161828E-4 | 1.6071945E-5 | 7.300035E-19 |
| **1330.00** | 0.0 | 2.1766045E-6 | 3.450771E-4 | 1.4782599E-5 | 5.3201744E-19 |
| **1340.00** | 0.0 | 1.9733607E-6 | 3.3853596E-4 | 1.35966875E-5 | 3.877277E-19 |
| **1350.00** | 0.0 | 1.7890949E-6 | 3.3199482E-4 | 1.2505915E-5 | 2.8257113E-19 |
| **1360.00** | 0.0 | 1.6220353E-6 | 3.2545364E-4 | 1.1502647E-5 | 2.0593432E-19 |
| **1370.00** | 0.0 | 1.4705751E-6 | 3.189125E-4 | 1.0579865E-5 | 1.5008236E-19 |
| **1380.00** | 0.0 | 1.3332577E-6 | 3.1237135E-4 | 9.731112E-6 | 1.0937816E-19 |
| **1390.00** | 0.0 | 1.2087627E-6 | 3.0583018E-4 | 8.950448E-6 | 7.971344E-20 |
| **1400.00** | 0.0 | 1.0958925E-6 | 2.9928904E-4 | 8.232413E-6 | 5.809416E-20 |
| **1410.00** | 0.0 | 9.935617E-7 | 2.927479E-4 | 7.5719804E-6 | 4.2338303E-20 |
| **1420.00** | 0.0 | 9.007863E-7 | 2.8620672E-4 | 6.9645303E-6 | 3.0855627E-20 |
| **1430.00** | 0.0 | 8.166739E-7 | 2.7966558E-4 | 6.4058113E-6 | 2.2487197E-20 |
| **1440.00** | 0.0 | 7.4041566E-7 | 2.7312443E-4 | 5.8919154E-6 | 1.638839E-20 |
| **1450.00** | 0.0 | 6.7127814E-7 | 2.6658326E-4 | 5.4192456E-6 | 1.1943654E-20 |
| **1460.00** | 0.0 | 6.0859645E-7 | 2.600421E-4 | 4.984495E-6 | 8.704387E-21 |
| **1470.00** | 0.0 | 5.517678E-7 | 2.5350097E-4 | 4.584622E-6 | 6.3436485E-21 |
| **1480.00** | 0.0 | 5.0024556E-7 | 2.469598E-4 | 4.2168276E-6 | 4.6231722E-21 |
| **1490.00** | 0.0 | 4.5353434E-7 | 2.4041865E-4 | 3.8785392E-6 | 3.3693104E-21 |
| **1500.00** | 0.0 | 4.1118483E-7 | 2.338775E-4 | 3.5673893E-6 | 2.4555115E-21 |
| **1510.00** | 0.0 | 3.7278977E-7 | 2.2733634E-4 | 3.281201E-6 | 1.789546E-21 |
| **1520.00** | 0.0 | 3.3797994E-7 | 2.2079519E-4 | 3.017972E-6 | 1.304199E-21 |
| **1530.00** | 0.0 | 3.064205E-7 | 2.1425403E-4 | 2.7758597E-6 | 9.504839E-22 |
| **1540.00** | 0.0 | 2.77808E-7 | 2.0771287E-4 | 2.5531708E-6 | 6.927009E-22 |
| **1550.00** | 0.0 | 2.5186722E-7 | 0.0 | 2.3483467E-6 | 5.048318E-22 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-3164)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 879.55 | 0.0011369431 | 13 | 1100.48 | 9.0869307E-4 | 10.31 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 204.51 | 0.0048896917 | 102 | 266.00 | 0.0037594258 | 77.27 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 498.62 | 0.002005547 | 155 | 568.97 | 0.0017575556 | 135.84 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 295.67 | 0.0033821224 | 262 | 298.75 | 0.0033472958 | 259.3 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 295.67 | 0.0033821224 | 262 | 298.72 | 0.003347627 | 259.32 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 463.30 | 0.002158423 | 26 | 507.75 | 0.001969478 | 23.76 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 1225.94 | 8.157015E-4 | 27 | 1341.93 | 7.451932E-4 | 23.44 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 1221.23 | 8.1884686E-4 | 61 | 1334.45 | 7.493705E-4 | 55.8 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 133.80 | 0.0074739303 | 178 | 143.55 | 0.0069661792 | 165.85 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 254.91 | 0.0039229263 | 299 | 316.01 | 0.0031644497 | 240.21 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 14856.04 | 6.731268E-5 | 5 | 15386.27 | 6.4993015E-5 | 4.71 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 445.96 | 0.002242363 | 160 | 463.26 | 0.002158611 | 153.92 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 447.93 | 0.002232482 | 34 | 499.99 | 0.0020000478 | 30.32 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 223.68 | 0.004470695 | 346 | 225.91 | 0.0044264644 | 342.55 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 223.03 | 0.004483653 | 347 | 234.35 | 0.0042670495 | 330.25 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 288.58 | 0.003465275 | 267 | 350.55 | 0.0028526941 | 217.14 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 182.65 | 0.0054749353 | 50 | 212.37 | 0.004708698 | 41.91 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 206.63 | 0.004839683 | 136 | 225.34 | 0.0044377986 | 124.63 |
| **RodgersCreek** | 325.31 | 0.003074 | 707.47 | 0.0014134882 | 105 | 799.23 | 0.0012512081 | 84.09 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 77256.16 | 0.0 | 0 | ∞ | 0.0 | 0 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 438.98 | 0.0022780118 | 140 | 497.58 | 0.0020097194 | 123.25 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 447.09 | 0.0022366617 | 173 | 515.64 | 0.0019393198 | 149.83 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 192.19 | 0.0052030836 | 98 | 215.83 | 0.004633338 | 87.22 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 457.67 | 0.0021850038 | 93 | 506.03 | 0.0019761745 | 83.53 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 762.06 | 0.0013122316 | 102 | 787.93 | 0.0012691434 | 98.66 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 292.31 | 0.0034209974 | 265 | 295.51 | 0.0033839366 | 262.14 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 220.48 | 0.0045354874 | 351 | 222.99 | 0.0044845417 | 347.05 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 853.56 | 0.0011715612 | 90 | 898.62 | 0.0011128117 | 85.5 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 2424.97 | 4.1237668E-4 | 32 | 2448.82 | 4.0835986E-4 | 31.67 |
| **TOTAL** | 9.11 | 0.1097689 | 29.04 | 0.034433957 | 2659 | 32.03 | 0.03121692 | 2410.61 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9556399 | 0.7086882 | 0.9625572 | 0.7318577 | 0.33364123 |
| **20.00** | 0.85060406 | 0.502239 | 0.87205905 | 0.5356157 | 0.11131647 |
| **30.00** | 0.7205795 | 0.35593086 | 0.75627923 | 0.39199448 | 0.037139766 |
| **40.00** | 0.589675 | 0.25224403 | 0.6370752 | 0.28688416 | 0.012391358 |
| **50.00** | 0.48793995 | 0.17876236 | 0.5423774 | 0.20995839 | 0.004134268 |
| **60.00** | 0.37721917 | 0.12668678 | 0.43993008 | 0.15365966 | 0.0013793623 |
| **70.00** | 0.27598342 | 0.08978143 | 0.3389654 | 0.11245701 | 4.6021215E-4 |
| **80.00** | 0.19351062 | 0.06362704 | 0.25541386 | 0.082302526 | 1.5354574E-4 |
| **90.00** | 0.1314127 | 0.045091737 | 0.18738462 | 0.060233735 | 5.1229195E-5 |
| **100.00** | 0.091317266 | 0.031955983 | 0.1412244 | 0.044082522 | 1.7092172E-5 |
| **110.00** | 0.062321793 | 0.022646828 | 0.10415111 | 0.032262135 | 5.702653E-6 |
| **120.00** | 0.040436804 | 0.01604954 | 0.07281578 | 0.02361129 | 1.9026403E-6 |
| **130.00** | 0.028754191 | 0.011374121 | 0.0554214 | 0.017280106 | 6.347993E-7 |
| **140.00** | 0.0184002 | 0.008060705 | 0.03608287 | 0.012646578 | 2.1179521E-7 |
| **150.00** | 0.012536858 | 0.005712527 | 0.027823148 | 0.009255495 | 7.066362E-8 |
| **160.00** | 0.0030655966 | 0.0040484006 | 0.011501271 | 0.0067737056 | 2.3576296E-8 |
| **170.00** | 0.0 | 0.0028690537 | 0.0064890543 | 0.0049573886 | 7.866025E-9 |
| **180.00** | 0.0 | 0.0020332646 | 0.0038845243 | 0.0036281028 | 2.6244302E-9 |
| **190.00** | 0.0 | 0.0014409507 | 0.0030029404 | 0.0026552551 | 8.756182E-10 |
| **200.00** | 0.0 | 0.0010211847 | 9.826634E-4 | 0.0019432688 | 2.9214234E-10 |
| **210.00** | 0.0 | 7.237016E-4 | 4.929803E-4 | 0.0014221963 | 9.7470726E-11 |
| **220.00** | 0.0 | 5.128788E-4 | 4.51187E-4 | 0.0010408453 | 3.2520254E-11 |
| **230.00** | 0.0 | 3.634712E-4 | 4.3711948E-4 | 7.617506E-4 | 1.0850098E-11 |
| **240.00** | 0.0 | 2.5758776E-4 | 2.8760318E-4 | 5.5749307E-4 | 3.6200402E-12 |
| **250.00** | 0.0 | 1.825494E-4 | 0.0 | 4.0800558E-4 | 1.2077947E-12 |

### Moment Release Variability Plots
*[(top)](#bruce-3164)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-3164)*

Example rupture plots:

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
|  |  |  |
| ![example](resources/trigger_within_prev_m6_example_new_hypo.png) | ![example](resources/trigger_within_prev_m6.5_example_new_hypo.png) |  |

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![hypocenter plot](resources/trigger_within_prev_m6_1yr.png) | ![hypocenter plot](resources/trigger_within_prev_m6.5_1yr.png) | ![hypocenter plot](resources/trigger_within_prev_m7_1yr.png) |
| ![hypocenter plot](resources/trigger_within_prev_m6_10yr.png) | ![hypocenter plot](resources/trigger_within_prev_m6.5_10yr.png) | ![hypocenter plot](resources/trigger_within_prev_m7_10yr.png) |
| ![hypocenter plot](resources/trigger_within_prev_m6_100yr.png) | ![hypocenter plot](resources/trigger_within_prev_m6.5_100yr.png) | ![hypocenter plot](resources/trigger_within_prev_m7_100yr.png) |

## Input File
*[(top)](#bruce-3164)*

```
  A_1 = 0.015
  fA = .005
  B_1 = 0.027
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
