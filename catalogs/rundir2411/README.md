# Bruce 2411
## Metadata
| **Catalog** | Bruce 2411 |
|-----|-----|
| **Author** | Bruce Shaw, 2017/12/22 |
| **Description** | factorNormal=2.0;  50ky reference time; 85ky spinup |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 277,999 events in 37,504 years |
| **Frictional Params** | a=0.001, b=0.008, (b-a)=0.007, ddotEQ=1 |

* [Metadata](#metadata)
* [BBP Calculations, LA Basin 863 (m/s) Velocity Model](#bbp-calculations-la-basin-863-ms-velocity-model)
  * [Full Catalog GMPE Comparisons, LA Basin 863 (m/s)](#full-catalog-gmpe-comparisons-la-basin-863-ms)
  * [Full Catalog RotD100/RotD50 Ratios, LA Basin 863 (m/s)](bbp_LA_BASIN_863/catalog_rotd_ratio_comparisons/)
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
*[(top)](#bruce-2411)*


### Full Catalog GMPE Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-2411)*

* [BSSA2014](bbp_LA_BASIN_863/gmpe_bbp_comparisons_BSSA2014/)
* [NGAWest_2014_NoIdr](bbp_LA_BASIN_863/gmpe_bbp_comparisons_NGAWest_2014_NoIdr/)

### Full Catalog RotD100/RotD50 Ratios, LA Basin 863 (m/s)
*[(top)](#bruce-2411)*

[Full Catalog RotD100/RotD50 Ratios Plotted Here](bbp_LA_BASIN_863/catalog_rotd_ratio_comparisons/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2411)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2411)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2411)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2411)*

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
*[(top)](#bruce-2411)*

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
*[(top)](#bruce-2411)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2411)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2411)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2411)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2411)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2411)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2411)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2411)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2411)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2411)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0012123703 | 7.133565E-4 | 7.460741E-4 | 6.565901E-4 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 6.217284E-5 | 4.8631588E-5 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0010569383 | 8.850724E-4 | 8.704197E-4 | 8.576518E-4 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 6.8390125E-4 | 6.282045E-4 | 5.5955554E-4 | 5.5051415E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 9.325926E-4 | 8.507035E-4 | 8.704197E-4 | 8.494424E-4 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 4.662963E-4 | 3.677976E-4 | 3.4195062E-4 | 3.3683042E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.005129259 | 0.004771108 | 0.004942741 | 0.0048063565 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0010258518 | 0.0010001521 | 0.0010258518 | 0.0010146452 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 8.082469E-4 | 7.538102E-4 | 7.7716046E-4 | 7.679547E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 2.7977777E-4 | 1.4626609E-4 | 6.217284E-5 | 5.9694914E-5 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.001927358 | 0.0016540781 | 0.0016475802 | 0.0016230164 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0018651852 | 0.001282116 | 0.0014921481 | 0.0013881525 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0031086418 | 0.0030708876 | 0.0031086418 | 0.0030775196 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0036060247 | 0.0029363958 | 0.0029221235 | 0.0028230662 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0031086418 | 0.003074153 | 0.0031086418 | 0.0030775506 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.0031086418 | 0.003046357 | 0.0031086418 | 0.0030752239 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0035127653 | 0.0033345371 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 1.8651852E-4 | 1.3339573E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.00208279 | 0.0018116692 | 0.0015543209 | 0.0015174065 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0013988889 | 0.0011871548 | 0.0012434567 | 0.0011796389 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0022382222 | 0.0021071152 | 0.0021760494 | 0.0021515195 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0013678025 | 9.324454E-4 | 4.662963E-4 | 4.400538E-4 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.0045697037 | 0.004449939 | 0.0045697037 | 0.0045214826 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0031086418 | 0.0019026031 | 0.0018340987 | 0.0014459614 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.005782074 | 0.0043789865 | 0.0035127653 | 0.0034217807 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.005782074 | 0.0043789865 | 0.0034505925 | 0.0033748057 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.004538617 | 0.004467329 | 0.004538617 | 0.004492293 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.0045697037 | 0.0029664447 | 0.004010148 | 0.0038098104 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 8.3933334E-4 | 4.9795245E-4 | 5.90642E-4 | 5.038474E-4 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0026112592 | 0.0017033345 | 0.0013678025 | 0.0012503364 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.004538617 | 0.0044309255 | 0.004538617 | 0.00449204 |

### Paleo Open Interval Plots
*[(top)](#bruce-2411)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2411)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 458.86 | 0.0021793295 | 70 | 464.10 | 0.0021546937 | 69.22 |
| **FRA** | 119.00 | 0.008403362 | 207.34 | 0.0048230668 | 155 | 211.19 | 0.004735129 | 152.17 |
| **COA** | 181.00 | 0.005524862 | 289.25 | 0.0034571846 | 112 | 295.64 | 0.0033824523 | 109.56 |
| **SCZ** | 106.00 | 0.009433962 | 342.04 | 0.0029236744 | 94 | 354.14 | 0.0028237444 | 90.8 |
| **TYS** | 329.00 | 0.0030395137 | 660.54 | 0.0015139083 | 49 | 723.19 | 0.0013827565 | 44.8 |
| **TOTAL** | 31.61 | 0.0316373 | 67.18 | 0.014885429 | 479 | 69.05 | 0.0144828 | 466.06 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.993216 | 0.86169463 | 0.99353814 | 0.8651711 | 0.72878754 |
| **20.00** | 0.96806777 | 0.7425177 | 0.97006035 | 0.74852103 | 0.53113127 |
| **30.00** | 0.9355465 | 0.6398235 | 0.9387235 | 0.64759874 | 0.3870819 |
| **40.00** | 0.8915722 | 0.55133253 | 0.89608985 | 0.5602837 | 0.28210047 |
| **50.00** | 0.85024196 | 0.47508028 | 0.85689384 | 0.48474127 | 0.2055913 |
| **60.00** | 0.7780494 | 0.40937415 | 0.7869976 | 0.41938415 | 0.14983238 |
| **70.00** | 0.7276492 | 0.35275552 | 0.7383115 | 0.36283904 | 0.10919597 |
| **80.00** | 0.6381206 | 0.30396754 | 0.6524732 | 0.31391785 | 0.079580665 |
| **90.00** | 0.5757323 | 0.26192722 | 0.5891355 | 0.27159265 | 0.057997398 |
| **100.00** | 0.5165839 | 0.22570127 | 0.5305416 | 0.2349741 | 0.04226778 |
| **110.00** | 0.46722424 | 0.19448557 | 0.48349655 | 0.2032928 | 0.030804234 |
| **120.00** | 0.39928117 | 0.16758719 | 0.41591242 | 0.17588305 | 0.022449743 |
| **130.00** | 0.35436365 | 0.14440899 | 0.3727242 | 0.15216893 | 0.016361093 |
| **140.00** | 0.29239097 | 0.12443645 | 0.30826312 | 0.13165216 | 0.011923761 |
| **150.00** | 0.24623878 | 0.10722622 | 0.26276916 | 0.113901645 | 0.008689889 |
| **160.00** | 0.18551566 | 0.09239627 | 0.20036425 | 0.09854441 | 0.0063330824 |
| **170.00** | 0.16075109 | 0.079617366 | 0.17761846 | 0.085257776 | 0.0046154717 |
| **180.00** | 0.112142116 | 0.06860586 | 0.12770036 | 0.073762566 | 0.0033636983 |
| **190.00** | 0.07891694 | 0.059117302 | 0.09008026 | 0.06381724 | 0.0024514215 |
| **200.00** | 0.060885243 | 0.050941065 | 0.07057189 | 0.05521283 | 0.0017865654 |
| **210.00** | 0.04034354 | 0.043895643 | 0.048763238 | 0.047768544 | 0.0013020267 |
| **220.00** | 0.012579533 | 0.037824642 | 0.014061797 | 0.041327965 | 9.489008E-4 |
| **230.00** | 0.0 | 0.03259329 | 0.0043494604 | 0.035755757 | 6.915471E-4 |
| **240.00** | 0.0 | 0.028085465 | 0.0027825395 | 0.030934848 | 5.039909E-4 |
| **250.00** | 0.0 | 0.024201095 | 0.0022195126 | 0.026763937 | 3.673023E-4 |
| **260.00** | 0.0 | 0.020853955 | 0.0010677156 | 0.023155384 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.01796974 | 5.872663E-4 | 0.020033369 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.01548443 | 4.634698E-4 | 0.017332291 | 1.4217607E-4 |
| **290.00** | 0.0 | 0.013342851 | 2.7156158E-4 | 0.014995398 | 1.0361615E-4 |
| **300.00** | 0.0 | 0.011497463 | 2.3475685E-4 | 0.012973585 | 7.551416E-5 |
| **310.00** | 0.0 | 0.009907302 | 1.979521E-4 | 0.01122437 | 5.503378E-5 |
| **320.00** | 0.0 | 0.00853707 | 0.0 | 0.009711001 | 4.0107934E-5 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2411)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 467.26 | 0.0021401339 | 69 | 541.41 | 0.0018470273 | 59.47 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 291.88 | 0.003426039 | 111 | 298.76 | 0.003347159 | 108.44 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 1463.52 | 6.8328524E-4 | 22 | 1921.71 | 5.203711E-4 | 16.58 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 321.22 | 0.0031131702 | 100 | 324.43 | 0.003082353 | 99.02 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 321.22 | 0.0031131702 | 100 | 324.78 | 0.0030789715 | 98.87 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 1266.65 | 7.894816E-4 | 24 | 1434.19 | 6.9725537E-4 | 21.21 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 1159.51 | 8.6243387E-4 | 28 | 1176.21 | 8.501885E-4 | 27.59 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 3084.74 | 3.2417598E-4 | 11 | 3128.46 | 3.196463E-4 | 10.82 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 218.39 | 0.004578987 | 147 | 220.67 | 0.0045317 | 145.46 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 458.86 | 0.0021793295 | 70 | 463.35 | 0.002158176 | 69.32 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 32168.39 | 0.0 | 0 | ∞ | 0.0 | 0 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 652.42 | 0.0015327549 | 50 | 665.99 | 0.0015015347 | 48.97 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 3815.25 | 2.6210607E-4 | 8 | 3848.99 | 2.5980856E-4 | 7.9 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 220.21 | 0.004541199 | 146 | 222.29 | 0.004498671 | 144.62 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 235.18 | 0.0042520626 | 137 | 250.72 | 0.003988434 | 128.52 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 1705.75 | 5.862513E-4 | 19 | 1947.64 | 5.1344273E-4 | 16.25 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 207.34 | 0.0048230668 | 155 | 211.04 | 0.0047385064 | 152.3 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 342.04 | 0.0029236744 | 94 | 353.23 | 0.0028310427 | 91.01 |
| **RodgersCreek** | 325.31 | 0.003074 | 797.42 | 0.0012540432 | 40 | 839.07 | 0.0011917918 | 38 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 24728.17 | 4.0439703E-5 | 2 | 25758.51 | 3.8822112E-5 | 1.92 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 609.73 | 0.0016400673 | 53 | 618.75 | 0.0016161511 | 52.23 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 660.54 | 0.0015139083 | 49 | 722.96 | 0.0013832063 | 44.79 |
| **Compton** | 2658.16 | 3.762E-4 | 32168.39 | 0.0 | 0 | ∞ | 0.0 | 0 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 289.25 | 0.0034571846 | 112 | 295.64 | 0.003382462 | 109.52 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 1159.51 | 8.6243387E-4 | 28 | 1178.25 | 8.48713E-4 | 27.55 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 999.75 | 0.0010002458 | 33 | 1009.22 | 9.908673E-4 | 32.68 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 321.22 | 0.0031131702 | 100 | 324.29 | 0.0030836922 | 99.03 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 220.21 | 0.004541199 | 146 | 222.78 | 0.004488653 | 144.29 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1290.49 | 7.748984E-4 | 25 | 1303.53 | 7.671452E-4 | 24.75 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1764.30 | 5.66798E-4 | 18 | 1787.28 | 5.5951084E-4 | 17.77 |
| **TOTAL** | 9.08 | 0.1101451 | 30.15 | 0.033165235 | 1066 | 31.09 | 0.03216846 | 1033.99 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9636793 | 0.7177368 | 0.9655051 | 0.7249268 | 0.33238843 |
| **20.00** | 0.8551885 | 0.51514614 | 0.8617813 | 0.5255189 | 0.110482074 |
| **30.00** | 0.7342161 | 0.36973932 | 0.7444079 | 0.38096273 | 0.036722966 |
| **40.00** | 0.6016182 | 0.26537552 | 0.6149759 | 0.27617007 | 0.012206289 |
| **50.00** | 0.48434663 | 0.19046977 | 0.50114447 | 0.20020309 | 0.004057229 |
| **60.00** | 0.38739341 | 0.13670717 | 0.40539232 | 0.14513259 | 0.001348576 |
| **70.00** | 0.2971937 | 0.098119766 | 0.31579244 | 0.105210505 | 4.4825108E-4 |
| **80.00** | 0.20539664 | 0.07042416 | 0.22370867 | 0.07626992 | 1.4899348E-4 |
| **90.00** | 0.14699632 | 0.050546013 | 0.16195449 | 0.055290107 | 4.952371E-5 |
| **100.00** | 0.09934154 | 0.036278736 | 0.11083441 | 0.04008128 | 1.6461108E-5 |
| **110.00** | 0.06365486 | 0.026038583 | 0.073108636 | 0.029055994 | 5.4714824E-6 |
| **120.00** | 0.03988604 | 0.018688848 | 0.04877521 | 0.02106347 | 1.8186574E-6 |
| **130.00** | 0.028393993 | 0.013413674 | 0.033554535 | 0.015269473 | 6.045007E-7 |
| **140.00** | 0.02114139 | 0.0096274875 | 0.023954976 | 0.01106925 | 2.0092905E-7 |
| **150.00** | 0.01771075 | 0.0069100023 | 0.019540913 | 0.008024396 | 6.678649E-8 |
| **160.00** | 0.009479909 | 0.004959563 | 0.008950366 | 0.0058171 | 2.2199057E-8 |
| **170.00** | 0.0 | 0.0035596609 | 0.0034248577 | 0.004216972 | 7.37871E-9 |
| **180.00** | 0.0 | 0.0025548995 | 2.5697582E-4 | 0.0030569958 | 2.452598E-9 |
| **190.00** | 0.0 | 0.0018337454 | 6.561791E-5 | 0.0022160981 | 8.152152E-10 |
| **200.00** | 0.0 | 0.0013161466 | 0.0 | 0.001606509 | 2.709681E-10 |

### Moment Release Variability Plots
*[(top)](#bruce-2411)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2411)*

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
*[(top)](#bruce-2411)*

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
  nEq = 2000000
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
  initTauFname = tauMod.in
  initSigmaFname = sigmaMod.in
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
