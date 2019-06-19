# Bruce 2273
## Metadata
| **Catalog** | Bruce 2273 |
|-----|-----|
| **Author** | Bruce Shaw, 2017/10/13 |
| **Description** | Stress loading, more refined geometry, does not contain projection fix (some location discrepancies are present relative to UCERF3 faults). |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 0.42 km^2 |
| **Length** | 816,499 events in 43,190 years |
| **Frictional Params** | a=0.001, b=0.008, (b-a)=0.007, ddotEQ=1 |

* [Metadata](#metadata)
* [BBP Calculations, LA Basin 863 (m/s) Velocity Model](#bbp-calculations-la-basin-863-ms-velocity-model)
  * [Single Event Comparisons, LA Basin 863 (m/s)](#single-event-comparisons-la-basin-863-ms)
  * [Full Catalog GMPE Comparisons, LA Basin 863 (m/s)](#full-catalog-gmpe-comparisons-la-basin-863-ms)
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
*[(top)](#bruce-2273)*


### Single Event Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-2273)*

* [Event 412778, M7.46](bbp_LA_BASIN_863/event_412778/)

### Full Catalog GMPE Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-2273)*

* [BSSA2014](bbp_LA_BASIN_863/gmpe_bbp_comparisons_BSSA2014/)
* [NGAWest_2014_NoIdr](bbp_LA_BASIN_863/gmpe_bbp_comparisons_NGAWest_2014_NoIdr/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2273)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2273)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2273)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2273)*

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
*[(top)](#bruce-2273)*

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
*[(top)](#bruce-2273)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2273)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2273)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2273)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2273)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2273)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2273)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2273)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2273)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2273)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0019147084 | 0.0014671619 | 0.0 | 0.0 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 2.622888E-4 | 2.4346136E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0010753842 | 9.2308497E-4 | 0.0010229264 | 0.0010065874 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 7.8686647E-4 | 7.25314E-4 | 7.3440874E-4 | 7.1801123E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0016524196 | 0.0012970282 | 0.0012327575 | 0.001149076 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 6.032643E-4 | 5.1351124E-4 | 4.721199E-4 | 4.490909E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.014294741 | 0.009829435 | 0.0061113294 | 0.005441355 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.001337673 | 0.0012897191 | 0.0012852153 | 0.0012635628 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0010491553 | 9.777809E-4 | 0.001127842 | 0.00106166 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 0.001337673 | 0.0010540001 | 0.0 | 0.0 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0018622506 | 0.001692291 | 0.0 | 0.0 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0018622506 | 0.0016683615 | 0.0 | 0.0 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0061637876 | 0.0055145845 | 0.0 | 0.0 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0035146703 | 0.0027887472 | 0.0 | 0.0 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.007396545 | 0.0064913197 | 0.0 | 0.0 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.007947352 | 0.0063968142 | 0.0 | 0.0 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0034622124 | 0.0031589754 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 3.6720437E-4 | 2.48708E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0035408991 | 0.0028688293 | 0.0 | 0.0 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0025442017 | 0.0019871744 | 0.0 | 0.0 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0032786103 | 0.0030408564 | 0.0031999236 | 0.00314434 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0017311062 | 0.0013278595 | 0.0013639019 | 0.0012239271 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.008052267 | 0.0072888616 | 0.007894893 | 0.007647625 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.002439286 | 0.0016844606 | 0.0023081417 | 0.0019478871 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.0049834875 | 0.004343579 | 0.00469497 | 0.004559451 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.0049834875 | 0.004343579 | 0.0047474275 | 0.004571869 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.005796583 | 0.0056418134 | 0.005796583 | 0.0057148268 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.0039867903 | 0.0031523984 | 0.00469497 | 0.004012616 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.004196621 | 0.0033564202 | 0.0030163215 | 0.0023922466 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0032523815 | 0.002110678 | 0.002019624 | 0.001790656 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.0059539564 | 0.0057015596 | 0.005770354 | 0.0056977994 |

### Paleo Open Interval Plots
*[(top)](#bruce-2273)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2273)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 313.14 | 0.0031934667 | 122 | 318.82 | 0.0031365207 | 119.8 |
| **FRA** | 119.00 | 0.008403362 | 140.03 | 0.007141335 | 272 | 161.01 | 0.0062108077 | 235.95 |
| **COA** | 181.00 | 0.005524862 | 213.04 | 0.0046939994 | 179 | 219.55 | 0.0045548077 | 173.67 |
| **SCZ** | 106.00 | 0.009433962 | 1668.85 | 5.992165E-4 | 23 | 1766.97 | 5.6594104E-4 | 21.67 |
| **TYS** | 329.00 | 0.0030395137 | 911.40 | 0.0010972181 | 41 | 931.66 | 0.0010733536 | 40.13 |
| **TOTAL** | 31.61 | 0.0316373 | 59.95 | 0.01667986 | 635 | 64.58 | 0.015484803 | 589.53 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9892214 | 0.84637004 | 0.9907092 | 0.8565453 | 0.72878754 |
| **20.00** | 0.9678032 | 0.7163423 | 0.971294 | 0.7336699 | 0.53113127 |
| **30.00** | 0.9290627 | 0.60629064 | 0.93702114 | 0.62842155 | 0.3870819 |
| **40.00** | 0.8764372 | 0.5131462 | 0.88993394 | 0.53827155 | 0.28210047 |
| **50.00** | 0.8165048 | 0.43431163 | 0.8363352 | 0.46105397 | 0.2055913 |
| **60.00** | 0.7320319 | 0.36758834 | 0.7590621 | 0.3949136 | 0.14983238 |
| **70.00** | 0.67846614 | 0.31111577 | 0.7107117 | 0.33826143 | 0.10919597 |
| **80.00** | 0.59448814 | 0.26331908 | 0.631551 | 0.28973624 | 0.079580665 |
| **90.00** | 0.5247663 | 0.22286537 | 0.5652153 | 0.24817222 | 0.057997398 |
| **100.00** | 0.4541198 | 0.18862657 | 0.49490666 | 0.21257076 | 0.04226778 |
| **110.00** | 0.37945488 | 0.15964788 | 0.4237414 | 0.18207648 | 0.030804234 |
| **120.00** | 0.3194971 | 0.1351212 | 0.36760685 | 0.15595676 | 0.022449743 |
| **130.00** | 0.28313547 | 0.11436253 | 0.32716793 | 0.13358404 | 0.016361093 |
| **140.00** | 0.21822706 | 0.09679302 | 0.25961652 | 0.11442079 | 0.011923761 |
| **150.00** | 0.1829581 | 0.08192271 | 0.21996194 | 0.09800659 | 0.008689889 |
| **160.00** | 0.14713366 | 0.06933693 | 0.17670041 | 0.083947085 | 0.0063330824 |
| **170.00** | 0.108256415 | 0.058684703 | 0.13281362 | 0.07190449 | 0.0046154717 |
| **180.00** | 0.071745485 | 0.049668975 | 0.09183899 | 0.06158945 | 0.0033636983 |
| **190.00** | 0.04698887 | 0.042038333 | 0.06299146 | 0.052754156 | 0.0024514215 |
| **200.00** | 0.03295231 | 0.035579987 | 0.042119436 | 0.045186326 | 0.0017865654 |
| **210.00** | 0.012858424 | 0.030113835 | 0.02606157 | 0.038704135 | 0.0013020267 |
| **220.00** | 0.010797485 | 0.025487447 | 0.018733406 | 0.033151846 | 9.489008E-4 |
| **230.00** | 0.009419791 | 0.021571813 | 0.014631349 | 0.02839606 | 6.915471E-4 |
| **240.00** | 0.008042098 | 0.018257735 | 0.014096976 | 0.024322512 | 5.039909E-4 |
| **250.00** | 0.006664405 | 0.015452801 | 0.011358819 | 0.020833334 | 3.673023E-4 |
| **260.00** | 0.0 | 0.013078788 | 0.0018140055 | 0.017844696 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.011069494 | 0.0016783718 | 0.015284791 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.009368889 | 0.0010607542 | 0.0130921155 | 1.4217607E-4 |
| **290.00** | 0.0 | 0.007929547 | 7.429941E-4 | 0.011213991 | 1.0361615E-4 |
| **300.00** | 0.0 | 0.006711331 | 1.7019447E-4 | 0.009605291 | 7.551416E-5 |
| **310.00** | 0.0 | 0.0056802696 | 9.6314696E-5 | 0.008227368 | 5.503378E-5 |
| **320.00** | 0.0 | 0.00480761 | 0.0 | 0.007047113 | 4.0107934E-5 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2273)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 433.09 | 0.002308965 | 88 | 509.66 | 0.001962097 | 74.69 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 210.67 | 0.0047467407 | 181 | 218.46 | 0.0045774165 | 174.49 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 483.19 | 0.0020695773 | 77 | 544.21 | 0.00183753 | 68.46 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 38125.91 | 0.0 | 0 | ∞ | 0.0 | 0 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 823.19 | 0.0012147888 | 47 | 884.45 | 0.0011306403 | 43.77 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 6493.00 | 1.540121E-4 | 5 | 10627.82 | 9.409265E-5 | 2.66 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 126.62 | 0.0078975465 | 301 | 130.60 | 0.007657046 | 291.81 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 313.14 | 0.0031934667 | 122 | 319.12 | 0.0031335885 | 119.68 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 190.34 | 0.0052536638 | 200 | 221.45 | 0.0045156144 | 171.98 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 1144.40 | 8.738239E-4 | 33 | 1232.51 | 8.113525E-4 | 30.67 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 172.59 | 0.0057939356 | 220 | 174.73 | 0.005723155 | 217.29 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 419.53 | 0.0023836037 | 90 | 460.89 | 0.0021697346 | 81.94 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 327.50 | 0.003053473 | 115 | 413.00 | 0.002421315 | 91.34 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 140.03 | 0.007141335 | 272 | 160.73 | 0.0062216646 | 236.29 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 1668.85 | 5.992165E-4 | 23 | 1757.63 | 5.689487E-4 | 21.84 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 5992.86 | 1.6686512E-4 | 7 | 6181.29 | 1.6177857E-4 | 6.6 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 38125.91 | 0.0 | 0 | ∞ | 0.0 | 0 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 911.40 | 0.0010972181 | 41 | 931.18 | 0.0010739022 | 40.15 |
| **Compton** | 2658.16 | 3.762E-4 | 2179.96 | 4.5872302E-4 | 18 | 2467.48 | 4.0527122E-4 | 15.98 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 213.04 | 0.0046939994 | 179 | 219.31 | 0.004559675 | 173.88 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 991.42 | 0.001008652 | 39 | 1009.28 | 9.90805E-4 | 38.24 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 778.80 | 0.0012840325 | 49 | 791.74 | 0.0012630476 | 48.2 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 171.81 | 0.0058203917 | 221 | 174.18 | 0.0057412875 | 218.01 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 932.62 | 0.0010722517 | 40 | 963.46 | 0.0010379296 | 38.73 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1319.01 | 7.5814704E-4 | 29 | 1361.16 | 7.346686E-4 | 28.1 |
| **TOTAL** | 10.14 | 0.0985812 | 21.52 | 0.046477668 | 1770 | 23.00 | 0.043482784 | 1655.8 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.93058825 | 0.6282754 | 0.93731505 | 0.6473761 | 0.3731361 |
| **20.00** | 0.77674776 | 0.39472997 | 0.7966756 | 0.41909584 | 0.13923056 |
| **30.00** | 0.6047551 | 0.24799912 | 0.63535565 | 0.27131262 | 0.051951952 |
| **40.00** | 0.44535643 | 0.15581174 | 0.48203003 | 0.17564133 | 0.01938515 |
| **50.00** | 0.3172065 | 0.09789269 | 0.3541816 | 0.113706 | 0.0072332993 |
| **60.00** | 0.21183613 | 0.061503567 | 0.24296485 | 0.073610544 | 0.0026990052 |
| **70.00** | 0.15087189 | 0.038641177 | 0.17387237 | 0.047653712 | 0.0010070964 |
| **80.00** | 0.09013925 | 0.0242773 | 0.11168736 | 0.030849874 | 3.7578403E-4 |
| **90.00** | 0.049219973 | 0.01525283 | 0.06141317 | 0.019971471 | 1.4021859E-4 |
| **100.00** | 0.021387648 | 0.009582978 | 0.029800203 | 0.012929054 | 5.232062E-5 |
| **110.00** | 0.008770962 | 0.006020749 | 0.0127991 | 0.008369961 | 1.9522713E-5 |
| **120.00** | 0.0 | 0.0037826884 | 0.003499993 | 0.0054185125 | 7.284629E-6 |
| **130.00** | 0.0 | 0.0023765701 | 0.0028614476 | 0.0035078158 | 2.7181584E-6 |
| **140.00** | 0.0 | 0.0014931405 | 9.823954E-4 | 0.0022708762 | 1.014243E-6 |
| **150.00** | 0.0 | 9.381034E-4 | 5.336409E-4 | 0.001470111 | 3.7845072E-7 |
| **160.00** | 0.0 | 5.893873E-4 | 4.868186E-4 | 9.5171476E-4 | 1.4121363E-7 |
| **170.00** | 0.0 | 3.7029752E-4 | 0.0 | 6.161174E-4 | 5.2691906E-8 |

### Moment Release Variability Plots
*[(top)](#bruce-2273)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2273)*

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
*[(top)](#bruce-2273)*

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
  stressRateSpecification = 2
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
  tauDotFname =  tauDotMod.in
  sigmaDotFname =  sigmaDotMod.in
  KZeroFname = zfault_Deepen_KZero.in
  pinnedFname =  
  neighborFname = 
  stressRateFname =  
  slowSlipFname = 
  writePatchFname = 
  DEBUG = 0
  ZBrentUpperBracket = 0
```
