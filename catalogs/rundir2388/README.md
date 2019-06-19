# Bruce 2388
## Metadata
| **Catalog** | Bruce 2388 |
|-----|-----|
| **Author** | Bruce Shaw, 2017/12/22 |
| **Description** | fracCreep=0.25 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 3,413,499 events in 526,404 years |
| **Frictional Params** | a=0.001, b=0.008, (b-a)=0.007, ddotEQ=1 |

* [Metadata](#metadata)
* [Hazard Comparisons](#hazard-comparisons)
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
*[(top)](#bruce-2388)*

* [PGA](hazard_pga/)
* [0.2s SA](hazard_sa_0.2s/)
* [1.0s SA](hazard_sa_1.0s/)
* [10.0s SA](hazard_sa_10.0s/)
* [5.0s SA](hazard_sa_5.0s/)
* [T Dependence](hazard_t_dependence/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2388)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2388)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2388)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2388)*

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
*[(top)](#bruce-2388)*

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
*[(top)](#bruce-2388)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2388)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2388)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2388)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2388)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2388)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2388)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2388)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2388)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2388)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0013735468 | 8.775428E-4 | 0.0010263234 | 8.6085266E-4 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 1.246935E-4 | 1.1416655E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0014809751 | 0.00114058 | 9.0162986E-4 | 8.817801E-4 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 6.3881435E-4 | 5.772372E-4 | 5.390596E-4 | 5.2894565E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.001114568 | 9.439316E-4 | 8.9395646E-4 | 8.6561905E-4 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 6.1003893E-4 | 4.8540457E-4 | 3.740805E-4 | 3.6427382E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.0048745563 | 0.004633984 | 0.004795904 | 0.0046933973 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0011452618 | 0.0010918151 | 0.0011203231 | 0.001104354 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 7.6350785E-4 | 7.189547E-4 | 7.424059E-4 | 7.34221E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 3.0310111E-4 | 1.75981E-4 | 5.563248E-5 | 4.835194E-5 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0019452185 | 0.0016538413 | 0.0016401991 | 0.0016109276 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0023001153 | 0.0015681116 | 0.0012315881 | 0.0011845139 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0036468052 | 0.0035924744 | 0.0036276216 | 0.0035879936 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0046136593 | 0.003551004 | 0.0030137459 | 0.002910889 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0036180296 | 0.0035698279 | 0.0036161114 | 0.0035778694 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.003608438 | 0.003514607 | 0.003598846 | 0.003547734 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0038674166 | 0.003708166 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 1.7840762E-4 | 1.4062757E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0018550556 | 0.0016647859 | 0.0016497909 | 0.0016177731 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0016459541 | 0.0013256223 | 0.001433016 | 0.0013530006 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0020775856 | 0.0020221588 | 0.0020603202 | 0.0020386437 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0013946488 | 0.0010153326 | 5.1987596E-4 | 4.7914966E-4 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.0046002306 | 0.004456275 | 0.0045618634 | 0.0045075202 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0029753787 | 0.0017763468 | 0.0016190971 | 0.0013776678 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.005726309 | 0.0042500095 | 0.0031825616 | 0.0031295607 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.005726309 | 0.0042500095 | 0.003205582 | 0.0031406325 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.004475537 | 0.004401729 | 0.0044717006 | 0.004425476 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.0045733736 | 0.0029598793 | 0.0041206405 | 0.003940381 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 7.251406E-4 | 4.2238008E-4 | 5.275494E-4 | 4.557899E-4 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.002589788 | 0.0017045108 | 0.0015749747 | 0.001407596 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.004464027 | 0.004366837 | 0.004464027 | 0.0044185407 |

### Paleo Open Interval Plots
*[(top)](#bruce-2388)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2388)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 484.83 | 0.002062598 | 1075 | 490.07 | 0.0020405324 | 1063.5 |
| **FRA** | 119.00 | 0.008403362 | 208.87 | 0.0047876723 | 2495 | 212.89 | 0.004697335 | 2447.92 |
| **COA** | 181.00 | 0.005524862 | 311.83 | 0.0032068721 | 1671 | 317.65 | 0.00314813 | 1640.36 |
| **SCZ** | 106.00 | 0.009433962 | 331.77 | 0.0030141773 | 1571 | 343.27 | 0.0029131593 | 1518.35 |
| **TYS** | 329.00 | 0.0030395137 | 800.50 | 0.0012492138 | 651 | 832.34 | 0.0012014292 | 626.07 |
| **TOTAL** | 31.61 | 0.0316373 | 69.88 | 0.014310532 | 7457 | 71.49 | 0.013988162 | 7289.04 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.993691 | 0.8666628 | 0.9940122 | 0.8694612 | 0.72878754 |
| **20.00** | 0.9734309 | 0.75110435 | 0.97465765 | 0.75596267 | 0.53113127 |
| **30.00** | 0.94134474 | 0.6509542 | 0.94386744 | 0.6572802 | 0.3870819 |
| **40.00** | 0.8995181 | 0.5641578 | 0.903722 | 0.5714796 | 0.28210047 |
| **50.00** | 0.8491559 | 0.48893455 | 0.8549797 | 0.4968793 | 0.2055913 |
| **60.00** | 0.79303366 | 0.4237414 | 0.80046105 | 0.43201727 | 0.14983238 |
| **70.00** | 0.73088986 | 0.36724088 | 0.74046683 | 0.3756222 | 0.10919597 |
| **80.00** | 0.6709599 | 0.31827402 | 0.6820637 | 0.32658893 | 0.079580665 |
| **90.00** | 0.60804474 | 0.27583623 | 0.62043786 | 0.28395638 | 0.057997398 |
| **100.00** | 0.54764944 | 0.239057 | 0.5606587 | 0.24688905 | 0.04226778 |
| **110.00** | 0.4832527 | 0.20718181 | 0.4976214 | 0.21466044 | 0.030804234 |
| **120.00** | 0.42869595 | 0.17955676 | 0.44378662 | 0.1866389 | 0.022449743 |
| **130.00** | 0.37219784 | 0.15561517 | 0.38722676 | 0.16227528 | 0.016361093 |
| **140.00** | 0.31793454 | 0.13486587 | 0.33284482 | 0.14109206 | 0.011923761 |
| **150.00** | 0.26499712 | 0.11688323 | 0.2800003 | 0.12267406 | 0.008689889 |
| **160.00** | 0.22286469 | 0.10129835 | 0.23699412 | 0.10666033 | 0.0063330824 |
| **170.00** | 0.18201192 | 0.08779151 | 0.19496138 | 0.09273701 | 0.0046154717 |
| **180.00** | 0.1409771 | 0.076085635 | 0.1532049 | 0.080631234 | 0.0033636983 |
| **190.00** | 0.10902373 | 0.06594059 | 0.12016514 | 0.070105724 | 0.0024514215 |
| **200.00** | 0.08528267 | 0.05714825 | 0.09439558 | 0.060954202 | 0.0017865654 |
| **210.00** | 0.061436035 | 0.049528264 | 0.06887377 | 0.05299731 | 0.0013020267 |
| **220.00** | 0.038937658 | 0.042924304 | 0.04484623 | 0.046079103 | 9.489008E-4 |
| **230.00** | 0.014878399 | 0.037200894 | 0.019264631 | 0.040063992 | 6.915471E-4 |
| **240.00** | 0.0041367067 | 0.032240633 | 0.0062344195 | 0.034834083 | 5.039909E-4 |
| **250.00** | 0.0010496815 | 0.027941756 | 0.0025354307 | 0.030286882 | 3.673023E-4 |
| **260.00** | 0.0 | 0.02421608 | 0.001129602 | 0.026333267 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.020987175 | 8.9296413E-4 | 0.022895753 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.018188803 | 6.54334E-4 | 0.019906968 | 1.4217607E-4 |
| **290.00** | 0.0 | 0.015763558 | 4.6743074E-4 | 0.017308336 | 1.0361615E-4 |
| **300.00** | 0.0 | 0.01366169 | 3.0596755E-4 | 0.015048925 | 7.551416E-5 |
| **310.00** | 0.0 | 0.011840078 | 2.0490175E-4 | 0.013084456 | 5.503378E-5 |
| **320.00** | 0.0 | 0.010261355 | 1.3568076E-4 | 0.011376426 | 4.0107934E-5 |
| **330.00** | 0.0 | 0.008893134 | 6.771666E-5 | 0.009891361 | 2.9230163E-5 |
| **340.00** | 0.0 | 0.0077073486 | 4.239111E-5 | 0.008600154 | 2.1302578E-5 |
| **350.00** | 0.0 | 0.0066796723 | 1.9383566E-5 | 0.0074774995 | 1.5525055E-5 |
| **360.00** | 0.0 | 0.0057890234 | 8.044797E-6 | 0.0065013953 | 1.1314466E-5 |
| **370.00** | 0.0 | 0.005017131 | 0.0 | 0.005652711 | 8.245842E-6 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2388)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 584.61 | 0.0017105303 | 891 | 629.30 | 0.0015890782 | 827.72 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 311.83 | 0.0032068721 | 1671 | 318.33 | 0.003141352 | 1636.88 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 1796.11 | 5.567594E-4 | 290 | 2301.77 | 4.344485E-4 | 225.87 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 276.54 | 0.0036161474 | 1885 | 279.39 | 0.003579201 | 1865.73 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 277.86 | 0.0035988728 | 1876 | 281.88 | 0.0035476228 | 1849.25 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 973.20 | 0.0010275354 | 535 | 1157.84 | 8.6367736E-4 | 449.67 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 1116.40 | 8.957386E-4 | 467 | 1145.15 | 8.7324885E-4 | 455.23 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 2669.34 | 3.7462445E-4 | 195 | 2742.71 | 3.6460272E-4 | 189.8 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 218.78 | 0.004570864 | 2382 | 221.46 | 0.0045154034 | 2353.11 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 484.83 | 0.002062598 | 1075 | 490.05 | 0.0020405906 | 1063.52 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 18267.74 | 5.474132E-5 | 27 | 19457.61 | 5.1393763E-5 | 25.4 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 606.30 | 0.0016493608 | 860 | 618.19 | 0.0016176292 | 843.42 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 3157.15 | 3.1674176E-4 | 165 | 3221.77 | 3.1038834E-4 | 161.65 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 223.96 | 0.004465167 | 2327 | 226.28 | 0.004419379 | 2303.13 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 231.42 | 0.004321191 | 2252 | 243.35 | 0.0041093337 | 2141.38 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 1891.97 | 5.285486E-4 | 275 | 2198.82 | 4.5478976E-4 | 236.6 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 208.87 | 0.0047876723 | 2495 | 212.80 | 0.004699195 | 2448.91 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 331.77 | 0.0030141773 | 1571 | 343.33 | 0.002912662 | 1518.08 |
| **RodgersCreek** | 325.31 | 0.003074 | 697.40 | 0.0014338973 | 747 | 738.87 | 0.001353421 | 704.89 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 16884.43 | 5.922615E-5 | 31 | 18730.33 | 5.338934E-5 | 27.89 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 609.74 | 0.0016400408 | 855 | 621.05 | 0.0016101747 | 839.42 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 800.50 | 0.0012492138 | 651 | 832.35 | 0.0012014185 | 626.03 |
| **Compton** | 2658.16 | 3.762E-4 | 24631.49 | 4.0598432E-5 | 21 | 26395.32 | 3.78855E-5 | 19.36 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 311.83 | 0.0032068721 | 1671 | 317.74 | 0.0031471788 | 1639.86 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 1095.24 | 9.1303827E-4 | 476 | 1123.48 | 8.9009246E-4 | 464.03 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 890.86 | 0.0011225147 | 585 | 904.43 | 0.0011056717 | 576.21 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 275.81 | 0.0036257443 | 1890 | 278.78 | 0.0035870306 | 1869.81 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 223.48 | 0.004474765 | 2332 | 225.86 | 0.004427468 | 2307.32 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1347.57 | 7.4207445E-4 | 387 | 1362.15 | 7.3413254E-4 | 382.86 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1849.76 | 5.406113E-4 | 281 | 1885.92 | 5.3024455E-4 | 275.59 |
| **TOTAL** | 9.08 | 0.1101451 | 31.11 | 0.03214093 | 16747 | 31.94 | 0.031307463 | 16312.75 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9650584 | 0.7251264 | 0.96664244 | 0.73119533 | 0.33238843 |
| **20.00** | 0.87439334 | 0.52580833 | 0.87967414 | 0.53464663 | 0.110482074 |
| **30.00** | 0.7593311 | 0.3812775 | 0.7683394 | 0.3909311 | 0.036722966 |
| **40.00** | 0.63443637 | 0.2764744 | 0.64675605 | 0.285847 | 0.012206289 |
| **50.00** | 0.5181018 | 0.20047887 | 0.53173983 | 0.20900999 | 0.004057229 |
| **60.00** | 0.40940213 | 0.14537252 | 0.42381963 | 0.15282713 | 0.001348576 |
| **70.00** | 0.3148223 | 0.10541345 | 0.3295791 | 0.11174649 | 4.4825108E-4 |
| **80.00** | 0.24065654 | 0.07643808 | 0.2536127 | 0.08170851 | 1.4899348E-4 |
| **90.00** | 0.17259529 | 0.05542727 | 0.18437916 | 0.059744883 | 4.952371E-5 |
| **100.00** | 0.12858033 | 0.040191777 | 0.13853987 | 0.04368518 | 1.6461108E-5 |
| **110.00** | 0.08975672 | 0.02914412 | 0.098480515 | 0.031942397 | 5.4714824E-6 |
| **120.00** | 0.06429269 | 0.02113317 | 0.07145386 | 0.023356132 | 1.8186574E-6 |
| **130.00** | 0.04217386 | 0.01532422 | 0.047825888 | 0.017077895 | 6.045007E-7 |
| **140.00** | 0.028897777 | 0.011111996 | 0.032959953 | 0.012487277 | 2.0092905E-7 |
| **150.00** | 0.018900024 | 0.008057602 | 0.021863256 | 0.009130639 | 6.678649E-8 |
| **160.00** | 0.009672359 | 0.0058427798 | 0.011949575 | 0.006676281 | 2.2199057E-8 |
| **170.00** | 0.005827479 | 0.004236754 | 0.0075472114 | 0.004881665 | 7.37871E-9 |
| **180.00** | 0.0033297162 | 0.0030721822 | 0.004865358 | 0.003569451 | 2.452598E-9 |
| **190.00** | 0.00150385 | 0.0022277206 | 0.0020817916 | 0.0026099659 | 8.152152E-10 |
| **200.00** | 0.0012099717 | 0.0016153789 | 0.001791523 | 0.0019083949 | 2.709681E-10 |
| **210.00** | 6.2616495E-4 | 0.001171354 | 9.0075703E-4 | 0.0013954093 | 9.006666E-11 |
| **220.00** | 0.0 | 8.4937963E-4 | 1.8868709E-4 | 0.0010203168 | 2.993712E-11 |
| **230.00** | 0.0 | 6.159076E-4 | 3.1834148E-5 | 7.460509E-4 | 9.950752E-12 |
| **240.00** | 0.0 | 4.4661088E-4 | 0.0 | 5.455089E-4 | 3.3075149E-12 |

### Moment Release Variability Plots
*[(top)](#bruce-2388)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2388)*

Example rupture plots:

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![example](resources/elastic_rebound_triggering_m6_example_re_rup.png) | ![example](resources/elastic_rebound_triggering_m6.5_example_re_rup.png) |  |
| ![example](resources/elastic_rebound_triggering_m6_example_new_hypo.png) | ![example](resources/elastic_rebound_triggering_m6.5_example_new_hypo.png) |  |

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_1yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_1yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_1yr.png) |
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_10yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_10yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_10yr.png) |
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_100yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_100yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_100yr.png) |

## Input File
*[(top)](#bruce-2388)*

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
