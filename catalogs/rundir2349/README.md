# Bruce 2349
## Metadata
| **Catalog** | Bruce 2349 |
|-----|-----|
| **Author** | Bruce Shaw, 2017/10/23 |
| **Description** | smaller sigmaN=80   relative to reference_1 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 3,385,499 events in 425,330 years |
| **Frictional Params** | a=0.001, b=0.008, (b-a)=0.007, ddotEQ=1.0 |

* [Metadata](#metadata)
* [Hazard Comparisons](#hazard-comparisons)
* [Multi-Fault Rupture Comparisons](multi_fault/)
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

## Hazard Comparisons
*[(top)](#bruce-2349)*

* [PGA](hazard_pga/)
* [0.2s SA](hazard_sa_0.2s/)
* [1.0s SA](hazard_sa_1.0s/)
* [10.0s SA](hazard_sa_10.0s/)
* [5.0s SA](hazard_sa_5.0s/)

## Multi-Fault Rupture Comparisons
*[(top)](#bruce-2349)*

[Multi-Fault Rupture Comparisons here](multi_fault/)

## BBP Calculations, LA Basin 863 (m/s) Velocity Model
*[(top)](#bruce-2349)*


### Full Catalog GMPE Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-2349)*

* [BSSA2014](bbp_LA_BASIN_863/gmpe_bbp_comparisons_BSSA2014/)
* [NGAWest_2014_NoIdr](bbp_LA_BASIN_863/gmpe_bbp_comparisons_NGAWest_2014_NoIdr/)

### Full Catalog RotD100/RotD50 Ratios, LA Basin 863 (m/s)
*[(top)](#bruce-2349)*

[Full Catalog RotD100/RotD50 Ratios Plotted Here](bbp_LA_BASIN_863/catalog_rotd_ratio_comparisons/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2349)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2349)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2349)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2349)*

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
*[(top)](#bruce-2349)*

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
*[(top)](#bruce-2349)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2349)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2349)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2349)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2349)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2349)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2349)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2349)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2349)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2349)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0011469184 | 7.087579E-4 | 8.5661956E-4 | 6.7021884E-4 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 1.3087243E-4 | 1.1333039E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0017989011 | 0.0013612519 | 0.001144539 | 0.0011032284 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 8.423426E-4 | 7.482583E-4 | 6.948137E-4 | 6.7110924E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0013872478 | 0.0011621774 | 0.001154057 | 0.0010894069 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 8.018911E-4 | 6.010397E-4 | 4.901768E-4 | 4.6968696E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.0060177525 | 0.005796865 | 0.0059558856 | 0.005793029 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0014205608 | 0.0013458178 | 0.0013967658 | 0.0013727591 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 9.6369704E-4 | 9.0056186E-4 | 9.3752256E-4 | 9.2419755E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 0.0 | 0.0 | 0.0 | 0.0 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0023699808 | 0.0020040849 | 0.0020892 | 0.002027024 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0026317257 | 0.0017400694 | 0.0015847463 | 0.001470599 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0045210477 | 0.0044598957 | 0.0045091505 | 0.004452255 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.005670346 | 0.0043091034 | 0.0038666856 | 0.0036402652 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0045091505 | 0.004443825 | 0.004502012 | 0.0044485303 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.004485355 | 0.004366163 | 0.004480596 | 0.0043789116 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.004730444 | 0.0045491518 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 2.022574E-4 | 1.4847275E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.002013056 | 0.0018314287 | 0.001932153 | 0.0018843323 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0021820005 | 0.0015833287 | 0.0017084802 | 0.0015490127 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0026150693 | 0.0025091893 | 0.0025841359 | 0.0025539347 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0023533243 | 0.0014128784 | 9.851125E-4 | 8.556482E-4 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.0056846226 | 0.0054314076 | 0.0056465506 | 0.005559959 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.00294344 | 0.0018132528 | 0.0019345325 | 0.0015102488 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.0072051226 | 0.0050554187 | 0.003902378 | 0.003805357 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.0072051226 | 0.0050554187 | 0.0038976192 | 0.0037785936 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.0057012793 | 0.005605764 | 0.00569652 | 0.005632336 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.0057393513 | 0.0036683474 | 0.005294385 | 0.004986751 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 6.115312E-4 | 3.5705397E-4 | 4.8065878E-4 | 3.6863983E-4 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.003095728 | 0.0020431692 | 0.0018845631 | 0.00151672 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.00569652 | 0.0055716895 | 0.0056893816 | 0.0056199227 |

### Paleo Open Interval Plots
*[(top)](#bruce-2349)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2349)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 386.63 | 0.00258645 | 1087 | 391.38 | 0.0025550898 | 1073.77 |
| **FRA** | 119.00 | 0.008403362 | 168.03 | 0.005951214 | 2501 | 172.27 | 0.0058047445 | 2439.46 |
| **COA** | 181.00 | 0.005524862 | 255.91 | 0.003907555 | 1642 | 262.95 | 0.0038030196 | 1598.04 |
| **SCZ** | 106.00 | 0.009433962 | 258.60 | 0.0038669715 | 1625 | 274.70 | 0.0036403998 | 1529.68 |
| **TYS** | 329.00 | 0.0030395137 | 636.79 | 0.0015703883 | 660 | 682.69 | 0.0014648043 | 615.63 |
| **TOTAL** | 31.61 | 0.0316373 | 55.95 | 0.017873162 | 7510 | 57.93 | 0.017261628 | 7253.07 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.989219 | 0.8363303 | 0.989954 | 0.84146047 | 0.72878754 |
| **20.00** | 0.95807034 | 0.6994484 | 0.9608207 | 0.7080557 | 0.53113127 |
| **30.00** | 0.9109259 | 0.58496994 | 0.91644746 | 0.5958008 | 0.3870819 |
| **40.00** | 0.85121953 | 0.48922807 | 0.8601641 | 0.50134283 | 0.28210047 |
| **50.00** | 0.77826613 | 0.40915626 | 0.790794 | 0.42186016 | 0.2055913 |
| **60.00** | 0.70259637 | 0.3421898 | 0.7183268 | 0.35497865 | 0.14983238 |
| **70.00** | 0.6282822 | 0.2861837 | 0.64655787 | 0.29870048 | 0.10919597 |
| **80.00** | 0.5528135 | 0.2393441 | 0.573042 | 0.25134465 | 0.079580665 |
| **90.00** | 0.47507966 | 0.20017074 | 0.49754962 | 0.21149658 | 0.057997398 |
| **100.00** | 0.41093922 | 0.16740885 | 0.43376058 | 0.177966 | 0.04226778 |
| **110.00** | 0.3388514 | 0.1400091 | 0.36280486 | 0.14975135 | 0.030804234 |
| **120.00** | 0.26952496 | 0.11709386 | 0.29309252 | 0.12600984 | 0.022449743 |
| **130.00** | 0.20557636 | 0.09792914 | 0.22797653 | 0.10603229 | 0.016361093 |
| **140.00** | 0.15838325 | 0.08190111 | 0.17803031 | 0.08922198 | 0.011923761 |
| **150.00** | 0.10264677 | 0.068496384 | 0.120274305 | 0.07507677 | 0.008689889 |
| **160.00** | 0.06428701 | 0.057285603 | 0.07917491 | 0.06317413 | 0.0063330824 |
| **170.00** | 0.038693305 | 0.04790969 | 0.05040316 | 0.05315853 | 0.0046154717 |
| **180.00** | 0.018319573 | 0.040068325 | 0.02592403 | 0.0447308 | 0.0033636983 |
| **190.00** | 0.00392542 | 0.033510353 | 0.0077154324 | 0.0376392 | 0.0024514215 |
| **200.00** | 0.0012746952 | 0.028025726 | 0.0034912974 | 0.031671897 | 0.0017865654 |
| **210.00** | 8.5309346E-4 | 0.023438765 | 0.0023553034 | 0.026650649 | 0.0013020267 |
| **220.00** | 0.0 | 0.01960255 | 0.001506584 | 0.022425467 | 9.489008E-4 |
| **230.00** | 0.0 | 0.016394207 | 0.0010471973 | 0.018870143 | 6.915471E-4 |
| **240.00** | 0.0 | 0.013710972 | 7.4547983E-4 | 0.015878478 | 5.039909E-4 |
| **250.00** | 0.0 | 0.011466902 | 5.8389985E-4 | 0.013361112 | 3.673023E-4 |
| **260.00** | 0.0 | 0.009590117 | 2.5982744E-4 | 0.011242847 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.008020506 | 1.4709127E-4 | 0.009460411 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.0067077926 | 7.703613E-5 | 0.007960562 | 1.4217607E-4 |
| **290.00** | 0.0 | 0.00560993 | 5.8035585E-5 | 0.0066984976 | 1.0361615E-4 |
| **300.00** | 0.0 | 0.004691755 | 3.100669E-5 | 0.0056365207 | 7.551416E-5 |
| **310.00** | 0.0 | 0.0039238567 | 1.5485142E-5 | 0.004742909 | 5.503378E-5 |
| **320.00** | 0.0 | 0.0032816404 | 1.3981263E-5 | 0.0039909706 | 4.0107934E-5 |
| **330.00** | 0.0 | 0.0027445354 | 1.2477384E-5 | 0.003358244 | 2.9230163E-5 |
| **340.00** | 0.0 | 0.002295338 | 1.0973505E-5 | 0.0028258294 | 2.1302578E-5 |
| **350.00** | 0.0 | 0.001919661 | 9.469626E-6 | 0.0023778237 | 1.5525055E-5 |
| **360.00** | 0.0 | 0.0016054707 | 0.0 | 0.0020008446 | 1.1314466E-5 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2349)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 495.40 | 0.0020185886 | 849 | 557.85 | 0.0017926026 | 753.93 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 256.54 | 0.0038980297 | 1638 | 264.48 | 0.0037809925 | 1588.79 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 1765.06 | 5.6655455E-4 | 238 | 2364.16 | 4.2298393E-4 | 177.46 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 222.11 | 0.004502368 | 1892 | 224.86 | 0.0044472353 | 1868.8 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 223.17 | 0.00448094 | 1883 | 228.30 | 0.004380175 | 1840.65 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 1162.70 | 8.6006505E-4 | 360 | 1492.60 | 6.699734E-4 | 280.5 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 871.01 | 0.0011480926 | 483 | 911.26 | 0.0010973836 | 461.67 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 2037.48 | 4.908029E-4 | 206 | 2126.83 | 4.701835E-4 | 197.3 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 176.82 | 0.0056556114 | 2377 | 179.67 | 0.005565613 | 2339.17 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 386.63 | 0.00258645 | 1087 | 391.32 | 0.002555422 | 1073.94 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 420256.56 | 0.0 | 0 | ∞ | 0.0 | 0 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 517.55 | 0.0019321832 | 812 | 529.99 | 0.0018868303 | 792.93 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 1665.45 | 6.0043664E-4 | 252 | 1758.54 | 5.686535E-4 | 238.64 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 175.77 | 0.0056893607 | 2391 | 177.94 | 0.0056197555 | 2361.74 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 182.33 | 0.005484639 | 2305 | 194.47 | 0.0051421155 | 2161.04 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 2075.02 | 4.8192329E-4 | 202 | 2715.14 | 3.6830487E-4 | 154.3 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 168.03 | 0.005951214 | 2501 | 172.23 | 0.0058061015 | 2440.03 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 258.60 | 0.0038669715 | 1625 | 274.61 | 0.0036414897 | 1530.09 |
| **RodgersCreek** | 325.31 | 0.003074 | 585.45 | 0.0017081004 | 718 | 645.48 | 0.0015492379 | 651.15 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 420256.56 | 0.0 | 0 | ∞ | 0.0 | 0 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 478.37 | 0.002090445 | 878 | 493.36 | 0.002026929 | 851.32 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 636.79 | 0.0015703883 | 660 | 683.48 | 0.0014630946 | 614.9 |
| **Compton** | 2658.16 | 3.762E-4 | 420256.56 | 0.0 | 0 | ∞ | 0.0 | 0 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 255.91 | 0.003907555 | 1642 | 263.01 | 0.0038022057 | 1597.72 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 872.82 | 0.0011457106 | 482 | 906.12 | 0.0011036088 | 464.27 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 717.45 | 0.0013938195 | 586 | 730.50 | 0.0013689211 | 575.52 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 221.87 | 0.00450713 | 1894 | 224.66 | 0.004451173 | 1870.46 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 175.55 | 0.005696502 | 2394 | 177.50 | 0.0056339423 | 2367.7 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1067.18 | 9.3704555E-4 | 394 | 1080.93 | 9.2513347E-4 | 388.97 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1441.18 | 6.938763E-4 | 292 | 1492.66 | 6.699438E-4 | 281.91 |
| **TOTAL** | 9.08 | 0.1101451 | 24.90 | 0.0401599 | 16875 | 25.79 | 0.038768936 | 16290.51 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.94492257 | 0.66924906 | 0.948316 | 0.67862314 | 0.33238843 |
| **20.00** | 0.81472844 | 0.4478943 | 0.82492304 | 0.46052936 | 0.110482074 |
| **30.00** | 0.663926 | 0.29975283 | 0.67937446 | 0.31252587 | 0.036722966 |
| **40.00** | 0.51574606 | 0.20060931 | 0.5343088 | 0.21208729 | 0.012206289 |
| **50.00** | 0.3848079 | 0.13425758 | 0.40360472 | 0.14392734 | 0.004057229 |
| **60.00** | 0.27354065 | 0.08985177 | 0.29083213 | 0.09767242 | 0.001348576 |
| **70.00** | 0.19531696 | 0.06013321 | 0.20970164 | 0.066282764 | 4.4825108E-4 |
| **80.00** | 0.1359952 | 0.040244095 | 0.14777009 | 0.044981018 | 1.4899348E-4 |
| **90.00** | 0.09329668 | 0.026933322 | 0.102396116 | 0.030525157 | 4.952371E-5 |
| **100.00** | 0.05889998 | 0.0180251 | 0.06592132 | 0.020715078 | 1.6461108E-5 |
| **110.00** | 0.034329254 | 0.012063282 | 0.03908291 | 0.014057731 | 5.4714824E-6 |
| **120.00** | 0.017313996 | 0.00807334 | 0.021152673 | 0.009539901 | 1.8186574E-6 |
| **130.00** | 0.010615214 | 0.005403075 | 0.012709894 | 0.0064739976 | 6.045007E-7 |
| **140.00** | 0.006298543 | 0.0036160029 | 0.0069755544 | 0.004393405 | 2.0092905E-7 |
| **150.00** | 0.0025926363 | 0.0024200066 | 0.003132016 | 0.002981466 | 6.678649E-8 |
| **160.00** | 8.239209E-4 | 0.0016195871 | 0.0011145131 | 0.0020232918 | 2.2199057E-8 |
| **170.00** | 0.0 | 0.0010839072 | 1.1125562E-4 | 0.0013730526 | 7.37871E-9 |
| **180.00** | 0.0 | 7.2540384E-4 | 4.2128042E-5 | 9.3178527E-4 | 2.452598E-9 |
| **190.00** | 0.0 | 4.8547584E-4 | 1.9154226E-5 | 6.32331E-4 | 8.152152E-10 |
| **200.00** | 0.0 | 3.2490425E-4 | 0.0 | 4.2911447E-4 | 2.709681E-10 |

### Moment Release Variability Plots
*[(top)](#bruce-2349)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2349)*

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
*[(top)](#bruce-2349)*

```
  A_1 = 0.001
  fA = .1
  B_1 = 0.008
  muSlipAmp_1 = 0
  muSlipInvDist_1 = 00
  cohesion = 0.0
  Dc_1 = 1.0000000000000000818e-05
  mu0_1 = 0.6
  ddotStar_1 = 9.9999999999999995475e-07
  ddotAB_1 = 9.9999999999999995475e-07
  alpha_1 = 0.0
  theta0_1 = 200000000
  tau0_1 = 45
  sigma0_1 = 80
  sigmaFracPin = .5
  lowSigmaAction = 1
  maxThetaPin = 1.0e13
  ddotEQ_1 = 1.0
  ddotEQFname = 
  stressOvershootFactor = 0.10000000000000000555
  lameLambda = 30000
  lameMu = 30000
  slowSlip_1 = 0
  nEq = 100000000
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
