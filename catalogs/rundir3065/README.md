# Bruce 3065
## Metadata
| **Catalog** | Bruce 3065 |
|-----|-----|
| **Author** | Bruce Shaw, 2019/02/08 |
| **Description** | Variable normal stress dsigdsA =0.6.  Rest same as r3062 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.34 km^2 |
| **Length** | 999,999 events in 59,703 years |
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
*[(top)](#bruce-3065)*


### Full Catalog GMPE Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-3065)*

* [ASK2014](bbp_LA_BASIN_863/gmpe_bbp_comparisons_ASK2014/)
* [NGAWest_2014_NoIdr](bbp_LA_BASIN_863/gmpe_bbp_comparisons_NGAWest_2014_NoIdr/)

### Rotated Rupture Variability Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-3065)*

* [M6.6, Reverse, Dip=45, Ztor=3](bbp_LA_BASIN_863/rotated_ruptures_m6p6_reverse/)
* [M6.6, Vertical Strike-Slip with Surface Rupture](bbp_LA_BASIN_863/rotated_ruptures_m6p6_vert_ss_surface/)
* [M7.2, Vertical Strike-Slip with Surface Rupture](bbp_LA_BASIN_863/rotated_ruptures_m7p2_vert_ss_surface/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-3065)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-3065)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-3065)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-3065)*

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
*[(top)](#bruce-3065)*

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
*[(top)](#bruce-3065)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-3065)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-3065)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-3065)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-3065)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-3065)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-3065)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-3065)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-3065)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-3065)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0057154605 | 0.0039762277 | 0.002198254 | 0.0019773904 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 3.4805687E-4 | 2.6964664E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0015754154 | 0.0012857678 | 0.001263996 | 0.0012123305 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 3.4805687E-4 | 3.3937686E-4 | 3.4805687E-4 | 3.445763E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0013372712 | 9.942418E-4 | 0.0010441706 | 6.433776E-4 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 3.6637567E-4 | 3.435708E-4 | 3.4805687E-4 | 3.4332613E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.011577471 | 0.007880941 | 0.0074374257 | 0.006276306 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.001007533 | 9.963218E-4 | 0.001007533 | 9.974417E-4 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0010808082 | 8.818303E-4 | 8.4266404E-4 | 8.17673E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 2.5646295E-4 | 2.0826534E-4 | 0.0 | 0.0 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0017219656 | 0.0015380201 | 0.0016670092 | 0.001581351 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0015754154 | 0.0014485518 | 0.00135559 | 0.0013262613 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0032973809 | 0.0032545028 | 0.0032973809 | 0.0032550867 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0032424247 | 0.0028340353 | 0.0026562235 | 0.0026207801 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0032790622 | 0.0032462995 | 0.0032790622 | 0.0032454503 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.0034805688 | 0.0034084914 | 0.0034805688 | 0.0034226081 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0032790622 | 0.0032407625 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 1.8318783E-4 | 1.7619842E-4 | 5.495635E-5 | 5.4252745E-5 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.002546311 | 0.0022663143 | 0.0021432976 | 0.002100023 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0025646295 | 0.002234012 | 0.002363123 | 0.0021971343 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.002033385 | 0.0019921 | 0.002033385 | 0.002013051 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0044148266 | 0.0024614679 | 0.0041583637 | 0.0030672557 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.0057704165 | 0.0055611706 | 0.0056055477 | 0.0054806736 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0035538438 | 0.0021662638 | 0.0011724021 | 0.0010620934 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.005495635 | 0.0042219004 | 0.0048544775 | 0.0044085863 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.005495635 | 0.0042219004 | 0.0047445646 | 0.0041005886 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.0034805688 | 0.0034400632 | 0.0034805688 | 0.0034455354 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.004286595 | 0.0037304738 | 0.003975176 | 0.003772428 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.002289848 | 0.00207252 | 0.0021616165 | 0.00213399 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0016486904 | 0.0014980381 | 0.0015754154 | 0.0012891655 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.0034988876 | 0.0034353617 | 0.0034805688 | 0.003445731 |

### Paleo Open Interval Plots
*[(top)](#bruce-3065)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-3065)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 494.39 | 0.002022686 | 111 | 499.13 | 0.0020034811 | 109.91 |
| **FRA** | 119.00 | 0.008403362 | 134.52 | 0.0074335975 | 406 | 159.61 | 0.0062651737 | 342.1 |
| **COA** | 181.00 | 0.005524862 | 209.56 | 0.004771978 | 260 | 226.09 | 0.004422938 | 240.96 |
| **SCZ** | 106.00 | 0.009433962 | 361.96 | 0.0027627118 | 151 | 370.98 | 0.002695571 | 147.33 |
| **TYS** | 329.00 | 0.0030395137 | 737.21 | 0.0013564606 | 74 | 752.11 | 0.0013295918 | 72.51 |
| **TOTAL** | 31.61 | 0.0316373 | 54.51 | 0.018345056 | 1001 | 59.80 | 0.016722454 | 912.25 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9887129 | 0.83239305 | 0.99076015 | 0.8460096 | 0.72878754 |
| **20.00** | 0.95520246 | 0.6928781 | 0.9626207 | 0.7157323 | 0.53113127 |
| **30.00** | 0.90573716 | 0.57674694 | 0.9192753 | 0.60551643 | 0.3870819 |
| **40.00** | 0.8490788 | 0.48008013 | 0.8705921 | 0.5122727 | 0.28210047 |
| **50.00** | 0.76815563 | 0.39961535 | 0.7996363 | 0.43338767 | 0.2055913 |
| **60.00** | 0.68632257 | 0.33263704 | 0.72766596 | 0.36665013 | 0.14983238 |
| **70.00** | 0.60477304 | 0.27688476 | 0.6504657 | 0.31018955 | 0.10919597 |
| **80.00** | 0.5137719 | 0.23047693 | 0.5665974 | 0.26242334 | 0.079580665 |
| **90.00** | 0.44457856 | 0.1918474 | 0.5002984 | 0.22201268 | 0.057997398 |
| **100.00** | 0.38354155 | 0.15969244 | 0.44261387 | 0.18782486 | 0.04226778 |
| **110.00** | 0.29133058 | 0.13292687 | 0.3581537 | 0.15890165 | 0.030804234 |
| **120.00** | 0.2385686 | 0.1106474 | 0.29945934 | 0.13443232 | 0.022449743 |
| **130.00** | 0.19240187 | 0.092102125 | 0.250144 | 0.11373104 | 0.016361093 |
| **140.00** | 0.14624006 | 0.07666516 | 0.1980556 | 0.09621756 | 0.011923761 |
| **150.00** | 0.11123188 | 0.06381555 | 0.15881135 | 0.081400976 | 0.008689889 |
| **160.00** | 0.08182123 | 0.05311962 | 0.12459645 | 0.068866014 | 0.0063330824 |
| **170.00** | 0.06012111 | 0.044216402 | 0.097318195 | 0.05826131 | 0.0046154717 |
| **180.00** | 0.040762864 | 0.036805425 | 0.069022395 | 0.04928963 | 0.0033636983 |
| **190.00** | 0.026878426 | 0.030636577 | 0.051228024 | 0.0416995 | 0.0024514215 |
| **200.00** | 0.019258734 | 0.025501674 | 0.034506027 | 0.03527818 | 0.0017865654 |
| **210.00** | 0.011792783 | 0.021227416 | 0.019740151 | 0.02984568 | 0.0013020267 |
| **220.00** | 0.0 | 0.017669553 | 0.0077637946 | 0.025249733 | 9.489008E-4 |
| **230.00** | 0.0 | 0.014708012 | 0.004209283 | 0.021361517 | 6.915471E-4 |
| **240.00** | 0.0 | 0.012242847 | 0.0026297132 | 0.018072048 | 5.039909E-4 |
| **250.00** | 0.0 | 0.01019086 | 0.0021582597 | 0.015289128 | 3.673023E-4 |
| **260.00** | 0.0 | 0.008482801 | 0.0013964635 | 0.012934749 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.0070610247 | 0.0012477725 | 0.010942922 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.0058775474 | 8.2141947E-4 | 0.009257818 | 1.4217607E-4 |
| **290.00** | 0.0 | 0.00489243 | 7.5728947E-4 | 0.007832203 | 1.0361615E-4 |
| **300.00** | 0.0 | 0.0040724245 | 2.7326183E-4 | 0.0066261194 | 7.551416E-5 |
| **310.00** | 0.0 | 0.0033898577 | 0.0 | 0.0056057605 | 5.503378E-5 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-3065)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 856.41 | 0.0011676694 | 64 | 947.97 | 0.001054886 | 57.84 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 210.37 | 0.0047535533 | 259 | 243.03 | 0.0041146544 | 224.19 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 542.27 | 0.0018440908 | 99 | 675.82 | 0.0014796818 | 79.62 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 304.66 | 0.0032823242 | 179 | 307.57 | 0.003251345 | 177.32 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 286.93 | 0.0034851644 | 190 | 291.49 | 0.0034306815 | 187.02 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 508.19 | 0.001967787 | 108 | 555.99 | 0.0017985911 | 98.66 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 1689.33 | 5.919498E-4 | 32 | 1776.85 | 5.627942E-4 | 30.46 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 2813.10 | 3.5547916E-4 | 19 | 2841.31 | 3.519503E-4 | 18.79 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 178.12 | 0.005614325 | 306 | 182.21 | 0.0054881144 | 299.13 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 494.39 | 0.002022686 | 111 | 499.41 | 0.0020023754 | 109.86 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 14349.61 | 6.968831E-5 | 3 | 14483.31 | 6.904501E-5 | 2.94 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 467.46 | 0.0021392328 | 117 | 476.57 | 0.0020983114 | 114.75 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 238.74 | 0.0041886442 | 229 | 362.79 | 0.002756417 | 150.71 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 287.59 | 0.003477147 | 190 | 290.67 | 0.0034403575 | 187.98 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 251.64 | 0.003973882 | 217 | 265.09 | 0.0037723077 | 206.01 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 457.22 | 0.0021871186 | 120 | 465.44 | 0.0021485197 | 117.87 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 134.52 | 0.0074335975 | 406 | 159.59 | 0.006266236 | 342.06 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 361.96 | 0.0027627118 | 151 | 370.83 | 0.00269664 | 147.33 |
| **RodgersCreek** | 325.31 | 0.003074 | 422.60 | 0.0023662995 | 129 | 454.69 | 0.002199298 | 119.93 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 54588.78 | 0.0 | 0 | ∞ | 0.0 | 0 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 608.42 | 0.0016435963 | 90 | 637.14 | 0.0015695236 | 85.88 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 737.21 | 0.0013564606 | 74 | 751.19 | 0.001331224 | 72.62 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 209.56 | 0.004771978 | 260 | 225.62 | 0.004432295 | 241.48 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 781.07 | 0.0012802978 | 69 | 827.70 | 0.0012081655 | 65.13 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 989.88 | 0.0010102204 | 55 | 998.95 | 0.0010010535 | 54.5 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 302.96 | 0.0033007641 | 180 | 307.11 | 0.0032561275 | 177.57 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 287.59 | 0.003477147 | 190 | 290.43 | 0.0034431617 | 188.11 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1187.86 | 8.4185036E-4 | 46 | 1223.77 | 8.171479E-4 | 44.64 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 2925.86 | 3.4178002E-4 | 19 | 2967.07 | 3.370331E-4 | 18.75 |
| **TOTAL** | 9.11 | 0.1097689 | 23.08 | 0.043329395 | 2365 | 25.12 | 0.03980252 | 2172.25 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9380371 | 0.64836985 | 0.94652206 | 0.6716451 | 0.33364123 |
| **20.00** | 0.7902362 | 0.42038348 | 0.81697065 | 0.45110714 | 0.11131647 |
| **30.00** | 0.62315595 | 0.272564 | 0.66187423 | 0.3029839 | 0.037139766 |
| **40.00** | 0.4789661 | 0.17672227 | 0.52371186 | 0.20349765 | 0.012391358 |
| **50.00** | 0.33284026 | 0.1145814 | 0.38185745 | 0.1366782 | 0.004134268 |
| **60.00** | 0.21709214 | 0.07429113 | 0.25855675 | 0.091799244 | 0.0013793623 |
| **70.00** | 0.15952742 | 0.04816813 | 0.19052292 | 0.06165651 | 4.6021215E-4 |
| **80.00** | 0.109404914 | 0.031230764 | 0.13433757 | 0.04141129 | 1.5354574E-4 |
| **90.00** | 0.06373944 | 0.020249087 | 0.08163003 | 0.027813692 | 5.1229195E-5 |
| **100.00** | 0.033994004 | 0.013128898 | 0.05194569 | 0.01868093 | 1.7092172E-5 |
| **110.00** | 0.017591959 | 0.008512381 | 0.026690573 | 0.012546955 | 5.702653E-6 |
| **120.00** | 0.008282765 | 0.0055191717 | 0.0116885165 | 0.0084271 | 1.9026403E-6 |
| **130.00** | 0.005244807 | 0.0035784647 | 0.007708651 | 0.0056600207 | 6.347993E-7 |
| **140.00** | 0.0033290654 | 0.0023201688 | 0.0038099024 | 0.0038015253 | 2.1179521E-7 |
| **150.00** | 0.0 | 0.0015043275 | 8.088598E-4 | 0.0025532758 | 7.066362E-8 |
| **160.00** | 0.0 | 9.753606E-4 | 0.0 | 0.0017148951 | 2.3576296E-8 |

### Moment Release Variability Plots
*[(top)](#bruce-3065)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-3065)*

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
*[(top)](#bruce-3065)*

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
