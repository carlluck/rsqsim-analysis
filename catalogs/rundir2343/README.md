# Bruce 2343
## Metadata
| **Catalog** | Bruce 2343 |
|-----|-----|
| **Author** | Bruce Shaw, 2017/10/23 |
| **Description** | smaller Veq=0.8        relative to reference_1 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 0.8 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 3,621,999 events in 566,960 years |
| **Frictional Params** | a=0.001, b=0.008, (b-a)=0.007, ddotEQ=0.8 |

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
*[(top)](#bruce-2343)*

* [PGA](hazard_pga/)
* [0.2s SA](hazard_sa_0.2s/)
* [1.0s SA](hazard_sa_1.0s/)
* [10.0s SA](hazard_sa_10.0s/)
* [5.0s SA](hazard_sa_5.0s/)

## Multi-Fault Rupture Comparisons
*[(top)](#bruce-2343)*

[Multi-Fault Rupture Comparisons here](multi_fault/)

## BBP Calculations, LA Basin 863 (m/s) Velocity Model
*[(top)](#bruce-2343)*


### Full Catalog GMPE Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-2343)*

* [BSSA2014](bbp_LA_BASIN_863/gmpe_bbp_comparisons_BSSA2014/)
* [NGAWest_2014_NoIdr](bbp_LA_BASIN_863/gmpe_bbp_comparisons_NGAWest_2014_NoIdr/)

### Full Catalog RotD100/RotD50 Ratios, LA Basin 863 (m/s)
*[(top)](#bruce-2343)*

[Full Catalog RotD100/RotD50 Ratios Plotted Here](bbp_LA_BASIN_863/catalog_rotd_ratio_comparisons/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2343)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2343)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2343)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2343)*

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
*[(top)](#bruce-2343)*

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
*[(top)](#bruce-2343)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2343)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2343)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2343)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2343)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2343)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2343)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2343)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2343)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2343)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0010233433 | 5.829207E-4 | 7.385869E-4 | 6.1806734E-4 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 9.610529E-5 | 8.64082E-5 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.001443359 | 0.0011206014 | 9.041016E-4 | 8.8539196E-4 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 6.851951E-4 | 6.1908964E-4 | 5.890898E-4 | 5.717633E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0011425851 | 9.5302705E-4 | 9.1477996E-4 | 8.841537E-4 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 6.3892215E-4 | 4.913573E-4 | 3.755225E-4 | 3.6606265E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.0049334047 | 0.004726693 | 0.004837299 | 0.004740094 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0011336864 | 0.00108555 | 0.0011123297 | 0.0010993672 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 7.581639E-4 | 7.176717E-4 | 7.457058E-4 | 7.3739846E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 0.0 | 0.0 | 0.0 | 0.0 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0019416827 | 0.0016612806 | 0.0016800627 | 0.0016471301 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0022050824 | 0.0014842834 | 0.0012725051 | 0.001213395 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0036288644 | 0.0035783595 | 0.0036128468 | 0.0035751215 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0046717846 | 0.0036040337 | 0.003128761 | 0.003000141 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0036128468 | 0.0035650076 | 0.0036075076 | 0.0035706067 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.0036057278 | 0.003512449 | 0.0036003888 | 0.0035524096 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0037712425 | 0.0036484005 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 1.5661602E-4 | 1.181993E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0016854019 | 0.0015383272 | 0.0015786183 | 0.0015525798 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0018082032 | 0.0013356657 | 0.0013864078 | 0.0013001584 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.002123215 | 0.0020646018 | 0.0021071974 | 0.0020846694 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0019594799 | 0.0012333433 | 7.9019903E-4 | 7.1676396E-4 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.0045952564 | 0.004427535 | 0.0045543225 | 0.0045020035 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0024809402 | 0.0015467684 | 0.0015305657 | 0.001294848 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.005864202 | 0.004321712 | 0.0031554569 | 0.0031043468 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.005864202 | 0.004321712 | 0.0031696947 | 0.0031058062 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.0046023754 | 0.0045249574 | 0.0045934767 | 0.004544738 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.0047750087 | 0.0030757326 | 0.0042161746 | 0.004049417 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 5.428169E-4 | 3.2258217E-4 | 4.217954E-4 | 3.473054E-4 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0025752657 | 0.0016996335 | 0.0014949711 | 0.0012935224 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.004582798 | 0.0044912472 | 0.004582798 | 0.0045349845 |

### Paleo Open Interval Plots
*[(top)](#bruce-2343)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2343)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 474.97 | 0.002105379 | 1183 | 479.96 | 0.0020834852 | 1170.69 |
| **FRA** | 119.00 | 0.008403362 | 207.17 | 0.0048269713 | 2712 | 210.90 | 0.004741527 | 2663.98 |
| **COA** | 181.00 | 0.005524862 | 315.41 | 0.0031705191 | 1781 | 321.16 | 0.003113753 | 1749.07 |
| **SCZ** | 106.00 | 0.009433962 | 319.74 | 0.0031275887 | 1758 | 333.14 | 0.0030017162 | 1687.04 |
| **TYS** | 329.00 | 0.0030395137 | 802.25 | 0.0012464987 | 701 | 837.46 | 0.0011940919 | 671.55 |
| **TOTAL** | 31.61 | 0.0316373 | 69.13 | 0.0144664375 | 8128 | 70.80 | 0.014123633 | 7934.91 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9934905 | 0.8653127 | 0.9937943 | 0.8682841 | 0.72878754 |
| **20.00** | 0.97272295 | 0.748766 | 0.97390085 | 0.7539173 | 0.53113127 |
| **30.00** | 0.93975824 | 0.64791673 | 0.942381 | 0.6546144 | 0.3870819 |
| **40.00** | 0.89754295 | 0.5606505 | 0.9018388 | 0.5683912 | 0.28210047 |
| **50.00** | 0.846488 | 0.48513803 | 0.8528299 | 0.49352506 | 0.2055913 |
| **60.00** | 0.7885053 | 0.41979608 | 0.7970614 | 0.42851996 | 0.14983238 |
| **70.00** | 0.72392136 | 0.36325485 | 0.7347067 | 0.37207708 | 0.10919597 |
| **80.00** | 0.66715205 | 0.31432903 | 0.679318 | 0.3230686 | 0.079580665 |
| **90.00** | 0.60403806 | 0.2719929 | 0.61752385 | 0.2805153 | 0.057997398 |
| **100.00** | 0.54118836 | 0.2353589 | 0.5561133 | 0.24356699 | 0.04226778 |
| **110.00** | 0.48146144 | 0.20365903 | 0.49728668 | 0.21148534 | 0.030804234 |
| **120.00** | 0.4219662 | 0.17622873 | 0.43844962 | 0.18362936 | 0.022449743 |
| **130.00** | 0.36553404 | 0.15249296 | 0.38152057 | 0.15944245 | 0.016361093 |
| **140.00** | 0.3115513 | 0.13195409 | 0.32811 | 0.13844134 | 0.011923761 |
| **150.00** | 0.2629383 | 0.11418155 | 0.2788502 | 0.120206416 | 0.008689889 |
| **160.00** | 0.21218716 | 0.09880274 | 0.22736752 | 0.10437331 | 0.0063330824 |
| **170.00** | 0.1728586 | 0.08549526 | 0.18681246 | 0.09062569 | 0.0046154717 |
| **180.00** | 0.1307636 | 0.07398013 | 0.14386152 | 0.078688845 | 0.0033636983 |
| **190.00** | 0.094271384 | 0.06401595 | 0.10586455 | 0.068324275 | 0.0024514215 |
| **200.00** | 0.06564373 | 0.055393808 | 0.07581205 | 0.05932488 | 0.0017865654 |
| **210.00** | 0.04082653 | 0.047932964 | 0.048900224 | 0.051510848 | 0.0013020267 |
| **220.00** | 0.023194293 | 0.041477002 | 0.028622841 | 0.044726048 | 9.489008E-4 |
| **230.00** | 0.008514163 | 0.035890575 | 0.011754272 | 0.03883492 | 6.915471E-4 |
| **240.00** | 7.2362093E-4 | 0.031056568 | 0.002483704 | 0.03371974 | 5.039909E-4 |
| **250.00** | 0.0 | 0.026873643 | 0.0014823606 | 0.029278314 | 3.673023E-4 |
| **260.00** | 0.0 | 0.023254102 | 0.0011235875 | 0.025421895 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.02012207 | 9.244183E-4 | 0.022073427 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.017411882 | 6.6965783E-4 | 0.019166006 | 1.4217607E-4 |
| **290.00** | 0.0 | 0.015066722 | 4.5007252E-4 | 0.016641537 | 1.0361615E-4 |
| **300.00** | 0.0 | 0.0130374255 | 3.1104218E-4 | 0.0144495815 | 7.551416E-5 |
| **310.00** | 0.0 | 0.011281449 | 2.1330027E-4 | 0.012546342 | 5.503378E-5 |
| **320.00** | 0.0 | 0.009761981 | 1.4253861E-4 | 0.010893789 | 4.0107934E-5 |
| **330.00** | 0.0 | 0.008447166 | 9.4485506E-5 | 0.009458904 | 2.9230163E-5 |
| **340.00** | 0.0 | 0.0073094396 | 5.915021E-5 | 0.008213015 | 2.1302578E-5 |
| **350.00** | 0.0 | 0.0063249506 | 3.669998E-5 | 0.007131231 | 1.5525055E-5 |
| **360.00** | 0.0 | 0.00547306 | 2.37086E-5 | 0.0061919345 | 1.1314466E-5 |
| **370.00** | 0.0 | 0.004735908 | 1.7671739E-5 | 0.005376358 | 8.245842E-6 |
| **380.00** | 0.0 | 0.0040980414 | 1.2710572E-5 | 0.004668206 | 6.009467E-6 |
| **390.00** | 0.0 | 0.003546087 | 9.482326E-6 | 0.004053329 | 4.379625E-6 |
| **400.00** | 0.0 | 0.003068474 | 0.0 | 0.0035194412 | 3.1918162E-6 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2343)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 623.67 | 0.0016034163 | 901 | 669.09 | 0.0014945589 | 839.61 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 315.41 | 0.0031705191 | 1781 | 321.96 | 0.0031059918 | 1744.75 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 2206.31 | 4.532448E-4 | 255 | 2749.00 | 3.6376814E-4 | 204.52 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 277.19 | 0.0036076 | 2027 | 280.13 | 0.00356983 | 2005.76 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 277.74 | 0.0036004772 | 2023 | 281.43 | 0.0035532184 | 1996.45 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 1354.14 | 7.3847425E-4 | 415 | 1616.79 | 6.185082E-4 | 347.58 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 1099.03 | 9.0988923E-4 | 511 | 1127.44 | 8.8696386E-4 | 498.13 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 2666.98 | 3.7495582E-4 | 211 | 2735.83 | 3.6552042E-4 | 205.7 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 219.51 | 0.0045556827 | 2560 | 222.00 | 0.0045045363 | 2531.25 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 474.97 | 0.002105379 | 1183 | 480.14 | 0.0020827232 | 1170.26 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 561883.77 | 0.0 | 0 | ∞ | 0.0 | 0 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 633.37 | 0.0015788645 | 887 | 644.49 | 0.0015516119 | 871.69 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 2004.28 | 4.989331E-4 | 280 | 2089.40 | 4.7860658E-4 | 268.6 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 218.20 | 0.004583041 | 2575 | 220.53 | 0.004534585 | 2547.74 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 227.79 | 0.0043899794 | 2467 | 238.71 | 0.004189249 | 2353.85 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 2366.78 | 4.2251585E-4 | 237 | 2876.05 | 3.4769965E-4 | 194.96 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 207.17 | 0.0048269713 | 2712 | 210.83 | 0.0047431947 | 2664.93 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 319.74 | 0.0031275887 | 1758 | 333.72 | 0.0029964978 | 1684.12 |
| **RodgersCreek** | 325.31 | 0.003074 | 721.43 | 0.00138613 | 779 | 769.39 | 0.0012997353 | 730.45 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 561883.77 | 0.0 | 0 | ∞ | 0.0 | 0 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 595.52 | 0.0016792117 | 944 | 607.34 | 0.0016465371 | 925.64 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 802.25 | 0.0012464987 | 701 | 836.41 | 0.0011955794 | 672.34 |
| **Compton** | 2658.16 | 3.762E-4 | 561883.77 | 0.0 | 0 | ∞ | 0.0 | 0 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 315.41 | 0.0031705191 | 1781 | 321.16 | 0.003113696 | 1749.05 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 1101.19 | 9.081051E-4 | 510 | 1127.03 | 8.872892E-4 | 498.31 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 896.17 | 0.0011158583 | 626 | 907.16 | 0.001102342 | 618.39 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 276.24 | 0.0036200646 | 2034 | 279.32 | 0.0035800883 | 2011.54 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 217.52 | 0.0045972853 | 2583 | 219.86 | 0.0045484104 | 2555.52 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1342.58 | 7.448321E-4 | 418 | 1357.38 | 7.3671126E-4 | 413.4 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1693.13 | 5.906237E-4 | 331 | 1744.02 | 5.7338685E-4 | 321.35 |
| **TOTAL** | 9.08 | 0.1101451 | 30.43 | 0.032858696 | 18461 | 31.21 | 0.032044854 | 18003.59 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.96348697 | 0.7199403 | 0.9651503 | 0.7258234 | 0.33238843 |
| **20.00** | 0.86896384 | 0.51831406 | 0.8742573 | 0.5268196 | 0.110482074 |
| **30.00** | 0.7509674 | 0.3731552 | 0.7599382 | 0.382378 | 0.036722966 |
| **40.00** | 0.6257431 | 0.2686495 | 0.63705814 | 0.2775389 | 0.012206289 |
| **50.00** | 0.50065005 | 0.19341159 | 0.513767 | 0.20144424 | 0.004057229 |
| **60.00** | 0.39125547 | 0.13924481 | 0.40500543 | 0.14621294 | 0.001348576 |
| **70.00** | 0.29832116 | 0.10024795 | 0.31139484 | 0.10612477 | 4.4825108E-4 |
| **80.00** | 0.22225147 | 0.07217254 | 0.23397616 | 0.07702784 | 1.4899348E-4 |
| **90.00** | 0.16117632 | 0.05195992 | 0.17154533 | 0.055908613 | 4.952371E-5 |
| **100.00** | 0.11903085 | 0.037408043 | 0.12754637 | 0.04057978 | 1.6461108E-5 |
| **110.00** | 0.085133314 | 0.02693156 | 0.091732316 | 0.029453754 | 5.4714824E-6 |
| **120.00** | 0.061775193 | 0.019389115 | 0.06681525 | 0.021378225 | 1.8186574E-6 |
| **130.00** | 0.040956713 | 0.013959006 | 0.04448941 | 0.015516816 | 6.045007E-7 |
| **140.00** | 0.02344121 | 0.010049651 | 0.025731731 | 0.011262468 | 2.0092905E-7 |
| **150.00** | 0.017927326 | 0.0072351494 | 0.019381462 | 0.008174563 | 6.678649E-8 |
| **160.00** | 0.012222757 | 0.0052088755 | 0.013171775 | 0.005933289 | 2.2199057E-8 |
| **170.00** | 0.0076153474 | 0.0037500795 | 0.008181542 | 0.00430652 | 7.37871E-9 |
| **180.00** | 0.0059128236 | 0.0026998336 | 0.00617695 | 0.003125773 | 2.452598E-9 |
| **190.00** | 0.0022202197 | 0.001943719 | 0.0024099573 | 0.0022687593 | 8.152152E-10 |
| **200.00** | 0.0 | 0.0013993618 | 2.1935158E-4 | 0.0016467185 | 2.709681E-10 |
| **210.00** | 0.0 | 0.0010074569 | 5.20747E-5 | 0.0011952268 | 9.006666E-11 |
| **220.00** | 0.0 | 7.2530884E-4 | 2.3953611E-5 | 8.675236E-4 | 2.993712E-11 |
| **230.00** | 0.0 | 5.221791E-4 | 1.1344586E-5 | 6.2966894E-4 | 9.950752E-12 |
| **240.00** | 0.0 | 3.759378E-4 | 0.0 | 4.5702845E-4 | 3.3075149E-12 |

### Moment Release Variability Plots
*[(top)](#bruce-2343)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2343)*

Example rupture plots:

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![example](resources/elastic_rebound_triggering_m6_example_re_rup.png) |  |  |
| ![example](resources/elastic_rebound_triggering_m6_example_new_hypo.png) | ![example](resources/elastic_rebound_triggering_m6.5_example_new_hypo.png) |  |

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_1yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_1yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_1yr.png) |
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_10yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_10yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_10yr.png) |
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_100yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_100yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_100yr.png) |

## Input File
*[(top)](#bruce-2343)*

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
  tau0_1 = 55
  sigma0_1 = 100
  sigmaFracPin = .5
  lowSigmaAction = 1
  maxThetaPin = 1.0e13
  ddotEQ_1 = 0.8
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
