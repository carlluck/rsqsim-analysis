# Bruce 2579
## Metadata
| **Catalog** | Bruce 2579 |
|-----|-----|
| **Author** | Bruce Shaw, 2018/02/07 |
| **Description** | straight loaded;  fracCreep=0.5;  H=18 (2,12,4);  stressMult=1.2;  neighbors |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 1,595,499 events in 151,874 years |
| **Frictional Params** | a=0.001, b=0.008, (b-a)=0.007, ddotEQ=1 |

* [Metadata](#metadata)
* [Hazard Comparisons](#hazard-comparisons)
* [Extreme Event Examples](extreme_events/)
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
*[(top)](#bruce-2579)*

* [PGA](hazard_pga/)
* [0.2s SA](hazard_sa_0.2s/)
* [1.0s SA](hazard_sa_1.0s/)
* [10.0s SA](hazard_sa_10.0s/)
* [5.0s SA](hazard_sa_5.0s/)

## Extreme Event Examples
*[(top)](#bruce-2579)*

[Extreme Event Examples Here](extreme_events/)

## BBP Calculations, LA Basin 863 (m/s) Velocity Model
*[(top)](#bruce-2579)*


### Full Catalog GMPE Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-2579)*

* [ASK2014](bbp_LA_BASIN_863/gmpe_bbp_comparisons_ASK2014/)
* [NGAWest_2014_NoIdr](bbp_LA_BASIN_863/gmpe_bbp_comparisons_NGAWest_2014_NoIdr/)

### Full Catalog RotD100/RotD50 Ratios, LA Basin 863 (m/s)
*[(top)](#bruce-2579)*

[Full Catalog RotD100/RotD50 Ratios Plotted Here](bbp_LA_BASIN_863/catalog_rotd_ratio_comparisons/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2579)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2579)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2579)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2579)*

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
*[(top)](#bruce-2579)*

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
*[(top)](#bruce-2579)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2579)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2579)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2579)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2579)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2579)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2579)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2579)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2579)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2579)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0037391789 | 0.0024178405 | 0.0028847049 | 0.0024389175 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 1.9140221E-4 | 1.8097214E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0018388284 | 0.0014687022 | 0.0011689207 | 0.0011345291 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 6.4256456E-4 | 6.181602E-4 | 6.083856E-4 | 5.9988623E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0013398154 | 0.0011029525 | 0.0010800554 | 0.0010516485 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 6.9041515E-4 | 5.572792E-4 | 4.4432658E-4 | 4.3407542E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.006910987 | 0.0062007555 | 0.00654869 | 0.0063162954 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0012030996 | 0.0011718017 | 0.001189428 | 0.001176026 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0010116975 | 9.3756896E-4 | 9.433395E-4 | 9.230097E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 9.0916053E-4 | 4.97335E-4 | 2.3241698E-4 | 2.1690234E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0022216327 | 0.0019565823 | 0.0019823802 | 0.0019444235 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.003041928 | 0.0022629856 | 0.0016816051 | 0.00162287 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0041561625 | 0.0040499712 | 0.0040809684 | 0.004031214 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.005325083 | 0.0043369336 | 0.004231356 | 0.004006183 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0041424907 | 0.0040482967 | 0.004101476 | 0.0040522018 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.004333893 | 0.0040797414 | 0.004101476 | 0.004046645 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.004559474 | 0.0041963966 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 2.5292436E-4 | 2.1079053E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0024267067 | 0.0021597582 | 0.002023395 | 0.0019801736 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0033700461 | 0.002451012 | 0.002050738 | 0.0019751221 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.002481393 | 0.0024345736 | 0.002447214 | 0.002421441 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.001585904 | 0.0013080665 | 0.0010527122 | 9.652036E-4 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.0073963283 | 0.006478858 | 0.006083856 | 0.005987832 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0062615867 | 0.003605818 | 0.003411061 | 0.0028739895 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.0064324816 | 0.005195609 | 0.003903238 | 0.0038092288 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.0064324816 | 0.005195609 | 0.0041424907 | 0.00402146 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.0051678596 | 0.0050561265 | 0.0051131733 | 0.0050583617 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.005461799 | 0.003449845 | 0.004935443 | 0.0046814526 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0037255073 | 0.0025441248 | 0.0016679335 | 0.0015143118 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0037391789 | 0.0027190035 | 0.0024335424 | 0.0022852146 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.005092666 | 0.0049743582 | 0.00508583 | 0.0050346227 |

### Paleo Open Interval Plots
*[(top)](#bruce-2579)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2579)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 408.49 | 0.002448065 | 358 | 412.98 | 0.0024214517 | 354.11 |
| **FRA** | 119.00 | 0.008403362 | 153.20 | 0.006527462 | 955 | 157.88 | 0.006333731 | 926.63 |
| **COA** | 181.00 | 0.005524862 | 248.62 | 0.00402219 | 589 | 255.61 | 0.003912238 | 572.75 |
| **SCZ** | 106.00 | 0.009433962 | 236.50 | 0.004228398 | 619 | 250.02 | 0.003999634 | 585.49 |
| **TYS** | 329.00 | 0.0030395137 | 603.14 | 0.0016579882 | 243 | 623.96 | 0.0016026717 | 234.9 |
| **TOTAL** | 31.61 | 0.0316373 | 52.92 | 0.018896721 | 2764 | 54.67 | 0.018292092 | 2675.59 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9877013 | 0.8278136 | 0.9885236 | 0.832834 | 0.72878754 |
| **20.00** | 0.9530518 | 0.68527544 | 0.95598876 | 0.6936125 | 0.53113127 |
| **30.00** | 0.8999613 | 0.56728035 | 0.90587765 | 0.5776641 | 0.3870819 |
| **40.00** | 0.8328054 | 0.4696024 | 0.8412523 | 0.4810983 | 0.28210047 |
| **50.00** | 0.7601734 | 0.38874328 | 0.77165157 | 0.40067503 | 0.2055913 |
| **60.00** | 0.6881737 | 0.321807 | 0.7017195 | 0.3336958 | 0.14983238 |
| **70.00** | 0.6078945 | 0.26639622 | 0.62346613 | 0.2779132 | 0.10919597 |
| **80.00** | 0.5188562 | 0.22052643 | 0.537646 | 0.23145558 | 0.079580665 |
| **90.00** | 0.43199724 | 0.18255478 | 0.452172 | 0.19276409 | 0.057997398 |
| **100.00** | 0.3491032 | 0.15112133 | 0.3693245 | 0.16054049 | 0.04226778 |
| **110.00** | 0.28752506 | 0.1251003 | 0.30652025 | 0.13370357 | 0.030804234 |
| **120.00** | 0.23914805 | 0.10355974 | 0.25587928 | 0.11135289 | 0.022449743 |
| **130.00** | 0.1804469 | 0.08572817 | 0.19639659 | 0.09273847 | 0.016361093 |
| **140.00** | 0.14439583 | 0.070966944 | 0.15836789 | 0.07723576 | 0.011923761 |
| **150.00** | 0.109054476 | 0.058747407 | 0.12134795 | 0.064324565 | 0.008689889 |
| **160.00** | 0.084677964 | 0.048631903 | 0.0939644 | 0.053571686 | 0.0063330824 |
| **170.00** | 0.056052934 | 0.040258154 | 0.06342193 | 0.044616323 | 0.0046154717 |
| **180.00** | 0.03344549 | 0.03332625 | 0.03847845 | 0.03715799 | 0.0033636983 |
| **190.00** | 0.016023586 | 0.027587924 | 0.019432107 | 0.03094644 | 0.0024514215 |
| **200.00** | 0.0027428025 | 0.02283766 | 0.0040715346 | 0.025773248 | 0.0017865654 |
| **210.00** | 0.0019260717 | 0.018905327 | 0.0033202628 | 0.021464838 | 0.0013020267 |
| **220.00** | 0.0 | 0.015650086 | 0.0011065167 | 0.017876647 | 9.489008E-4 |
| **230.00** | 0.0 | 0.012955355 | 8.275026E-4 | 0.014888279 | 6.915471E-4 |
| **240.00** | 0.0 | 0.01072462 | 6.727996E-4 | 0.012399466 | 5.039909E-4 |
| **250.00** | 0.0 | 0.008877987 | 5.703899E-4 | 0.010326697 | 3.673023E-4 |
| **260.00** | 0.0 | 0.0073493184 | 3.4482157E-4 | 0.008600424 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.006083866 | 2.0304772E-4 | 0.007162726 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.0050363075 | 1.0009637E-4 | 0.005965362 | 1.4217607E-4 |
| **290.00** | 0.0 | 0.004169124 | 5.7250803E-5 | 0.004968156 | 1.0361615E-4 |
| **300.00** | 0.0 | 0.0034512577 | 5.0327024E-5 | 0.0041376497 | 7.551416E-5 |
| **310.00** | 0.0 | 0.0028569982 | 4.3403248E-5 | 0.0034459752 | 5.503378E-5 |
| **320.00** | 0.0 | 0.002365062 | 0.0 | 0.0028699255 | 4.0107934E-5 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2579)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 287.11 | 0.0034829522 | 509 | 307.66 | 0.0032503535 | 474.96 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 241.63 | 0.0041384776 | 606 | 248.84 | 0.0040186034 | 588.35 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 2720.59 | 3.6756796E-4 | 53 | 3518.94 | 2.841762E-4 | 40.58 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 244.05 | 0.0040975385 | 599 | 246.91 | 0.004050105 | 592.02 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 243.64 | 0.0041043907 | 600 | 246.98 | 0.004048856 | 591.87 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 347.06 | 0.0028813712 | 422 | 409.00 | 0.0024449881 | 358.09 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 945.89 | 0.0010572049 | 155 | 963.82 | 0.001037538 | 152.11 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 2250.78 | 4.442902E-4 | 65 | 2310.04 | 4.3289256E-4 | 63.35 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 164.07 | 0.006094779 | 892 | 166.84 | 0.005993889 | 877.23 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 408.49 | 0.002448065 | 358 | 412.82 | 0.0024223393 | 354.22 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 7448.53 | 1.342547E-4 | 20 | 7691.19 | 1.3001886E-4 | 19.36 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 493.79 | 0.002025172 | 296 | 504.77 | 0.0019810887 | 289.56 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 1727.72 | 5.7879713E-4 | 85 | 1774.88 | 5.634177E-4 | 82.7 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 196.63 | 0.005085803 | 744 | 198.64 | 0.0050341072 | 736.43 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 194.51 | 0.0051412443 | 751 | 204.50 | 0.0048898626 | 714.32 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 598.31 | 0.0016713659 | 244 | 661.56 | 0.0015115855 | 220.72 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 153.20 | 0.006527462 | 955 | 157.70 | 0.00634132 | 927.76 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 236.50 | 0.004228398 | 619 | 249.46 | 0.0040086103 | 586.78 |
| **RodgersCreek** | 325.31 | 0.003074 | 487.78 | 0.0020500978 | 300 | 506.69 | 0.001973596 | 288.82 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 4331.89 | 2.3084598E-4 | 34 | 4533.92 | 2.2055958E-4 | 32.5 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 505.05 | 0.0019799941 | 290 | 514.89 | 0.0019421441 | 284.45 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 603.14 | 0.0016579882 | 243 | 623.63 | 0.0016035134 | 235.02 |
| **Compton** | 2658.16 | 3.762E-4 | 7862.34 | 1.2718866E-4 | 19 | 8206.41 | 1.2185602E-4 | 18.13 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 248.62 | 0.00402219 | 589 | 255.48 | 0.0039142384 | 573.06 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 832.38 | 0.0012013692 | 176 | 859.54 | 0.0011634062 | 170.37 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 839.65 | 0.0011909704 | 174 | 848.88 | 0.0011780171 | 172.1 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 244.87 | 0.0040838346 | 597 | 247.72 | 0.004036761 | 590.13 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 195.57 | 0.005113183 | 748 | 197.62 | 0.005060118 | 740.23 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1064.42 | 9.394791E-4 | 137 | 1086.55 | 9.203441E-4 | 134.23 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1655.31 | 6.0411706E-4 | 89 | 1676.03 | 5.966471E-4 | 87.88 |
| **TOTAL** | 9.08 | 0.1101451 | 22.35 | 0.04474837 | 6546 | 23.09 | 0.04330055 | 6334.13 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.93474305 | 0.63923466 | 0.93839186 | 0.64855695 | 0.33238843 |
| **20.00** | 0.7825512 | 0.40862092 | 0.79286885 | 0.42062607 | 0.110482074 |
| **30.00** | 0.60968214 | 0.26120466 | 0.6243691 | 0.27279997 | 0.036722966 |
| **40.00** | 0.4507978 | 0.16697106 | 0.4654527 | 0.1769263 | 0.012206289 |
| **50.00** | 0.32295018 | 0.10673369 | 0.3374062 | 0.11474678 | 0.004057229 |
| **60.00** | 0.2212121 | 0.068227865 | 0.23488706 | 0.07441982 | 0.001348576 |
| **70.00** | 0.14581083 | 0.043613616 | 0.1574403 | 0.048265487 | 4.4825108E-4 |
| **80.00** | 0.09599096 | 0.027879335 | 0.105373874 | 0.031302918 | 1.4899348E-4 |
| **90.00** | 0.06680154 | 0.017821437 | 0.072290815 | 0.020301724 | 4.952371E-5 |
| **100.00** | 0.03953812 | 0.011392079 | 0.043926395 | 0.0131668225 | 1.6461108E-5 |
| **110.00** | 0.02577113 | 0.0072822114 | 0.028916739 | 0.0085394345 | 5.4714824E-6 |
| **120.00** | 0.01324433 | 0.0046550417 | 0.014309142 | 0.005538309 | 1.8186574E-6 |
| **130.00** | 0.009938074 | 0.002975664 | 0.011205375 | 0.0035919088 | 6.045007E-7 |
| **140.00** | 0.0050676563 | 0.0019021475 | 0.005637884 | 0.0023295572 | 2.0092905E-7 |
| **150.00** | 0.003234524 | 0.0012159186 | 0.0028836497 | 0.0015108505 | 6.678649E-8 |
| **160.00** | 0.0028540648 | 7.7725726E-4 | 0.0024714689 | 9.798725E-4 | 2.2199057E-8 |
| **170.00** | 0.0024736056 | 4.9684977E-4 | 0.0024472452 | 6.3550315E-4 | 7.37871E-9 |
| **180.00** | 0.0014718807 | 3.1760358E-4 | 0.001253758 | 4.1215995E-4 | 2.452598E-9 |
| **190.00** | 0.0 | 2.0302321E-4 | 0.0 | 2.673092E-4 | 8.152152E-10 |

### Moment Release Variability Plots
*[(top)](#bruce-2579)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2579)*

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
*[(top)](#bruce-2579)*

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
```
