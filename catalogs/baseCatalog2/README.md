# JG Base Catalog 2
## Metadata
| **Catalog** | JG Base Catalog 2 |
|-----|-----|
| **Author** | Jacqui Gilchrist, 2017/11/16 |
| **Description** | Untuned version of tuneBase1m. Same fault model and frictional parameters, without any stress adjustments |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 0.90 km^2 |
| **Length** | 30,278,027 events in 199,867 years |
| **Frictional Params** | a=0.01, b=0.015, (b-a)=0.005, ddotEQ=1 |

* [Metadata](#metadata)
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

## Plots
### Magnitude-Frequency Plot
*[(top)](#jg-base-catalog-2)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#jg-base-catalog-2)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#jg-base-catalog-2)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#jg-base-catalog-2)*

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
*[(top)](#jg-base-catalog-2)*

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
*[(top)](#jg-base-catalog-2)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#jg-base-catalog-2)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#jg-base-catalog-2)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#jg-base-catalog-2)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#jg-base-catalog-2)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#jg-base-catalog-2)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#jg-base-catalog-2)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#jg-base-catalog-2)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#jg-base-catalog-2)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#jg-base-catalog-2)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0057989373 | 0.0040475023 | 0.0 | 0.0 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 6.004209E-4 | 5.087618E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0014984865 | 0.0011952285 | 0.0013034779 | 0.0012647194 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 9.0832915E-4 | 7.522136E-4 | 0.0 | 0.0 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0017140222 | 0.0013248635 | 0.0013599278 | 0.0013068712 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 7.697705E-4 | 6.1795366E-4 | 0.0 | 0.0 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.013080966 | 0.011405584 | 0.010817841 | 0.010405294 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.002186148 | 0.0019061066 | 0.0020014031 | 0.0019530862 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0023041796 | 0.002006726 | 0.0 | 0.0 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 3.540944E-4 | 2.5926766E-4 | 0.0 | 0.0 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0025864288 | 0.0021536462 | 0.0 | 0.0 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0030842135 | 0.002438544 | 0.0023657612 | 0.0022455798 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.008303258 | 0.0076257763 | 0.0077746813 | 0.007531022 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0055166883 | 0.0044837766 | 0.0046288865 | 0.004519362 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.008257071 | 0.007635265 | 0.0077490225 | 0.0075159664 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.008621429 | 0.0076822042 | 0.007841395 | 0.007578418 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.008180094 | 0.007320418 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 5.029167E-4 | 3.5950405E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0027506463 | 0.0022363362 | 0.002263125 | 0.0021766752 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0025966924 | 0.002064557 | 0.0 | 0.0 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0045365137 | 0.0037421733 | 0.0035666032 | 0.0034918357 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.002083512 | 0.0014005027 | 0.0 | 0.0 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.011880124 | 0.010599899 | 0.010438087 | 0.010164337 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0044390094 | 0.0030384487 | 0.0 | 0.0 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.0069381977 | 0.0053549903 | 0.0 | 0.0 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.0069381977 | 0.0053549903 | 0.0 | 0.0 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.011582479 | 0.010342814 | 0.010299529 | 0.009992355 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.010397033 | 0.0065330304 | 0.007471905 | 0.006846571 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.009493835 | 0.0055884197 | 0.0 | 0.0 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0044903276 | 0.0032064074 | 0.0 | 0.0 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.011890387 | 0.010249978 | 0.010371374 | 0.010030896 |

### Paleo Open Interval Plots
*[(top)](#jg-base-catalog-2)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#jg-base-catalog-2)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 280.34 | 0.00356715 | 695 | 286.33 | 0.003492474 | 680.45 |
| **FRA** | 119.00 | 0.008403362 | 93.47 | 0.010698876 | 2085 | 96.80 | 0.010330347 | 2013.16 |
| **COA** | 181.00 | 0.005524862 | 162.25 | 0.0061631575 | 1201 | 168.80 | 0.0059240316 | 1154.32 |
| **SCZ** | 106.00 | 0.009433962 | 215.03 | 0.00465043 | 907 | 220.48 | 0.0045355777 | 884.59 |
| **TYS** | 329.00 | 0.0030395137 | 422.38 | 0.0023675582 | 461 | 445.18 | 0.0022462704 | 437.39 |
| **TOTAL** | 31.61 | 0.0316373 | 36.43 | 0.027450882 | 5349 | 37.69 | 0.026529994 | 5169.58 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.975664 | 0.75994533 | 0.97710437 | 0.7669759 | 0.72878754 |
| **20.00** | 0.91021484 | 0.57751685 | 0.91542673 | 0.58825195 | 0.53113127 |
| **30.00** | 0.808099 | 0.43888122 | 0.81872565 | 0.45117506 | 0.3870819 |
| **40.00** | 0.69475436 | 0.33352572 | 0.7099323 | 0.3460404 | 0.28210047 |
| **50.00** | 0.58272606 | 0.2534613 | 0.6007538 | 0.2654046 | 0.2055913 |
| **60.00** | 0.46658814 | 0.19261673 | 0.4886358 | 0.20355894 | 0.14983238 |
| **70.00** | 0.3532562 | 0.14637817 | 0.37678796 | 0.1561248 | 0.10919597 |
| **80.00** | 0.24004678 | 0.11123941 | 0.26436934 | 0.11974395 | 0.079580665 |
| **90.00** | 0.13972525 | 0.08453587 | 0.16215453 | 0.09184072 | 0.057997398 |
| **100.00** | 0.051185206 | 0.06424264 | 0.066984706 | 0.070439614 | 0.04226778 |
| **110.00** | 0.012575822 | 0.04882089 | 0.024721153 | 0.054025482 | 0.030804234 |
| **120.00** | 0.0018796896 | 0.037101205 | 0.009427697 | 0.041436244 | 0.022449743 |
| **130.00** | 0.0 | 0.028194888 | 0.0052222074 | 0.031780597 | 0.016361093 |
| **140.00** | 0.0 | 0.021426572 | 0.0033353758 | 0.02437495 | 0.011923761 |
| **150.00** | 0.0 | 0.016283022 | 0.0020157858 | 0.018694999 | 0.008689889 |
| **160.00** | 0.0 | 0.012374206 | 0.0011323693 | 0.0143386135 | 0.0063330824 |
| **170.00** | 0.0 | 0.0094037205 | 4.3739905E-4 | 0.01099737 | 0.0046154717 |
| **180.00** | 0.0 | 0.007146313 | 1.2428843E-4 | 0.008434718 | 0.0033636983 |
| **190.00** | 0.0 | 0.005430807 | 5.8320264E-5 | 0.006469225 | 0.0024514215 |
| **200.00** | 0.0 | 0.0041271164 | 0.0 | 0.0049617393 | 0.0017865654 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#jg-base-catalog-2)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 275.76 | 0.0036263189 | 707 | 299.78 | 0.0033357881 | 650.25 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 158.04 | 0.0063275085 | 1233 | 166.46 | 0.0060075675 | 1170.5 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 327.17 | 0.0030565045 | 595 | 348.17 | 0.0028721483 | 559.05 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 129.01 | 0.00775126 | 1510 | 133.07 | 0.0075150738 | 1463.97 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 127.49 | 0.007843721 | 1528 | 131.88 | 0.007582427 | 1477.02 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 615.65 | 0.0016242914 | 317 | 660.86 | 0.0015131723 | 295.24 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 776.43 | 0.0012879537 | 251 | 796.38 | 0.0012556898 | 244.69 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 1663.12 | 6.012796E-4 | 117 | 1702.46 | 5.8738585E-4 | 114.3 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 95.81 | 0.010437052 | 2034 | 98.40 | 0.010163026 | 1980.57 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 280.34 | 0.00356715 | 695 | 286.44 | 0.0034911525 | 680.14 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 440.15 | 0.002271977 | 443 | 458.64 | 0.0021803416 | 425.09 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 548.26 | 0.0018239542 | 356 | 667.46 | 0.0014982078 | 292.54 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 96.41 | 0.010372731 | 2021 | 99.66 | 0.010034534 | 1955.12 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 133.84 | 0.007471836 | 1456 | 146.01 | 0.0068488433 | 1334.35 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 247.24 | 0.004044682 | 789 | 284.94 | 0.0035094514 | 684.68 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 93.47 | 0.010698876 | 2085 | 96.78 | 0.010333067 | 2013.69 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 215.03 | 0.00465043 | 907 | 220.47 | 0.004535863 | 884.68 |
| **RodgersCreek** | 325.31 | 0.003074 | 437.18 | 0.0022873923 | 446 | 447.85 | 0.0022329106 | 435.38 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 4955.71 | 2.0178751E-4 | 40 | 5194.64 | 1.9250611E-4 | 38.19 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 437.68 | 0.0022847916 | 445 | 453.23 | 0.0022064075 | 429.75 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 422.38 | 0.0023675582 | 461 | 444.63 | 0.0022490858 | 437.92 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 162.25 | 0.0061631575 | 1201 | 168.73 | 0.005926654 | 1154.86 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 767.22 | 0.0013034091 | 254 | 790.47 | 0.0012650646 | 246.54 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 498.95 | 0.0020042204 | 391 | 511.75 | 0.0019540978 | 381.19 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 128.59 | 0.0077769435 | 1515 | 132.68 | 0.007537101 | 1468.24 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 97.08 | 0.01030084 | 2007 | 100.05 | 0.00999505 | 1947.41 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 568.99 | 0.0017574879 | 343 | 593.05 | 0.001686196 | 329.03 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1442.20 | 6.9338706E-4 | 135 | 1474.09 | 6.783859E-4 | 132.07 |
| **TOTAL** | 9.13 | 0.1094837 | 15.62 | 0.06400868 | 12472 | 16.10 | 0.062119585 | 12103.9 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.8795476 | 0.52724665 | 0.8845283 | 0.53730154 | 0.33459413 |
| **20.00** | 0.64855397 | 0.27798903 | 0.6602372 | 0.28869292 | 0.111953236 |
| **30.00** | 0.42689443 | 0.14656879 | 0.43962857 | 0.15511514 | 0.037458897 |
| **40.00** | 0.25215673 | 0.0772779 | 0.2644782 | 0.0833436 | 0.012533528 |
| **50.00** | 0.14225397 | 0.040744517 | 0.1523115 | 0.044780646 | 0.004193645 |
| **60.00** | 0.06798027 | 0.02148241 | 0.074000336 | 0.02406071 | 0.001403169 |
| **70.00** | 0.034671754 | 0.011326528 | 0.03784292 | 0.012927855 | 4.6949214E-4 |
| **80.00** | 0.013888498 | 0.005971874 | 0.015145565 | 0.0069461567 | 1.5708932E-4 |
| **90.00** | 0.005270888 | 0.0031486508 | 0.005694426 | 0.0037321805 | 5.2561165E-5 |
| **100.00** | 0.0013760763 | 0.0016601156 | 0.0011837835 | 0.0020053063 | 1.7586659E-5 |
| **110.00** | 0.0 | 8.7529037E-4 | 6.5579734E-5 | 0.0010774541 | 5.884393E-6 |
| **120.00** | 0.0 | 4.614939E-4 | 0.0 | 5.7891774E-4 | 1.9688835E-6 |

### Moment Release Variability Plots
*[(top)](#jg-base-catalog-2)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#jg-base-catalog-2)*

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
*[(top)](#jg-base-catalog-2)*

```
  A_1 = 0.01
  fA = 0.1
  B_1 = 0.015
  Dc_1 = 1.0000000000000000818e-05
  mu0_1 = 0.6
  ddotStar_1 = 9.9999999999999995475e-07
  ddotAB_1 = 9.9999999999999995475e-07
  alpha_1 = 0.25
  theta0_1 = 200000000
  tau0_1 = 60
  sigma0_1 = 100
  sigmaFracPin = 0.1
  maxThetaPin = 10000000000
  ddotEQ_1 = 1
  ddotEQFname = 
  stressOvershootFactor = 0.10000000000000000555
  lameLambda = 30000
  lameMu = 30000
  slowSlip_1 = 0
  nEq = 3e20
  tStart = 6307000279896.11328125 
  maxT = 1.261e13
  faultFname = UCERF3.D3.1.1km.tri.2.flt
  outFnameInfix = baseCatalog2
  writeTau = 0
  writeSigma = 0
  writeSlip = 0
  writeSlipSpeed = 0
  writeState = 0
  writeTheta = 0
  writePED = 1
  writeTransitions = 1
  minDtWrite = 3.15e10
  minDtWriteCoseismic = 0
  minDtWriteInterseismic = 0
  minMagWrite = 7.5
  writeStiffness = 0
  stressRateSpecification = 1
  dMu3 = 0.0010000000000000000208
  initTauFname = initTau.txt
  initSigmaFname = initSigma.txt
  initThetaFname = initTheta.txt
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
  pinnedFname = baseCatalog2.pin 
  neighborFname = neighbors.12
  stressRateFname = 
  slowSlipFname = 
  writePatchFname = 
  DEBUG = 1
  ZBrentUpperBracket = 0
  ZBrentTol = 9.9999999999999995475e-07
  lowSigmaAction = 0
  KZeroFrac = 0.0
  KZeroFname = UCERF3.D3.1.1km.tri.2.KZero0.8
  slipInState1 = 1
  resetStressingRates = 1
```
