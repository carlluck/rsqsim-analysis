# Bruce 2737
## Metadata
| **Catalog** | Bruce 2737 |
|-----|-----|
| **Author** | Bruce Shaw, 2018/06/05 |
| **Description** | Finite receiver patch fracArea=0.9, all else same as r2585 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 999,999 events in 44,638 years |
| **Frictional Params** | a=0.001, b=0.008, (b-a)=0.007, ddotEQ=1 |

* [Metadata](#metadata)
* [BBP Calculations, LA Basin 863 (m/s) Velocity Model](#bbp-calculations-la-basin-863-ms-velocity-model)
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
*[(top)](#bruce-2737)*


### Full Catalog GMPE Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-2737)*

* [ASK2014](bbp_LA_BASIN_863/gmpe_bbp_comparisons_ASK2014/)
* [NGAWest_2014_NoIdr](bbp_LA_BASIN_863/gmpe_bbp_comparisons_NGAWest_2014_NoIdr/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2737)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2737)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2737)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2737)*

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
*[(top)](#bruce-2737)*

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
*[(top)](#bruce-2737)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2737)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2737)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2737)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2737)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2737)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2737)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2737)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2737)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2737)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0035867803 | 0.001926787 | 0.0024248655 | 0.0016317351 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 2.7784918E-4 | 2.5006194E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0025511608 | 0.002015078 | 0.0016923541 | 0.0015925005 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 9.5984264E-4 | 8.989403E-4 | 9.345836E-4 | 9.105039E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0018186492 | 0.0015769112 | 0.001641836 | 0.0015488463 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 0.0010861377 | 8.965319E-4 | 8.082885E-4 | 7.3598884E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.0092448 | 0.008690561 | 0.0090932455 | 0.008564541 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0017176131 | 0.001670485 | 0.0017176131 | 0.0016866197 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.001515541 | 0.0014113807 | 0.0013639869 | 0.0013229109 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 0.0013134689 | 5.76749E-4 | 3.5362624E-4 | 2.4881627E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0034099673 | 0.002896829 | 0.003182636 | 0.0030701784 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0051780986 | 0.0031606455 | 0.003283672 | 0.002884485 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0054559475 | 0.0053725797 | 0.0054054293 | 0.005334144 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.012200105 | 0.008161314 | 0.0107350815 | 0.008295374 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0054054293 | 0.005345305 | 0.0054054293 | 0.0053378474 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.0055064657 | 0.0053587975 | 0.0054559475 | 0.005357654 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.006137941 | 0.0058312477 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 4.2940327E-4 | 3.5454633E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0029300458 | 0.0026970159 | 0.0026521967 | 0.0025755048 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0066936393 | 0.0037269532 | 0.005077062 | 0.0035739946 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0030816 | 0.0030059067 | 0.003056341 | 0.003020457 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0023238296 | 0.0018321102 | 0.0013892459 | 0.0011867848 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.008360734 | 0.0081642885 | 0.0083102165 | 0.008130936 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.007906072 | 0.0043413346 | 0.0053549116 | 0.0038520016 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.010053089 | 0.007317373 | 0.0057085375 | 0.005426853 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.010053089 | 0.007317373 | 0.006314754 | 0.0058848835 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.007299856 | 0.0071785045 | 0.007299856 | 0.007206884 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.008436511 | 0.0049055596 | 0.0075777047 | 0.0067213397 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.005885351 | 0.0038831674 | 0.0027027146 | 0.002174303 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.005001285 | 0.00376541 | 0.003233154 | 0.0029731526 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.007299856 | 0.007082323 | 0.007299856 | 0.0072051813 |

### Paleo Open Interval Plots
*[(top)](#bruce-2737)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2737)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 326.29 | 0.003064739 | 121 | 330.47 | 0.0030260375 | 119.44 |
| **FRA** | 119.00 | 0.008403362 | 109.96 | 0.009094246 | 360 | 115.44 | 0.00866255 | 342.84 |
| **COA** | 181.00 | 0.005524862 | 164.75 | 0.006069973 | 240 | 176.62 | 0.0056619095 | 223.79 |
| **SCZ** | 106.00 | 0.009433962 | 93.19 | 0.010730632 | 425 | 120.60 | 0.008291933 | 328.26 |
| **TYS** | 329.00 | 0.0030395137 | 310.20 | 0.0032237163 | 127 | 348.61 | 0.0028685236 | 112.89 |
| **TOTAL** | 31.61 | 0.0316373 | 31.06 | 0.032191895 | 1273 | 35.06 | 0.028523434 | 1127.87 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9644348 | 0.7247569 | 0.9712782 | 0.751838 | 0.72878754 |
| **20.00** | 0.87705296 | 0.5252726 | 0.8991253 | 0.56526047 | 0.53113127 |
| **30.00** | 0.75309896 | 0.38069496 | 0.7936774 | 0.4249843 | 0.3870819 |
| **40.00** | 0.6157189 | 0.2759113 | 0.6742829 | 0.31951937 | 0.28210047 |
| **50.00** | 0.48989362 | 0.19996862 | 0.5597692 | 0.24022682 | 0.2055913 |
| **60.00** | 0.3673186 | 0.14492865 | 0.4529667 | 0.18061167 | 0.14983238 |
| **70.00** | 0.230601 | 0.10503804 | 0.32060963 | 0.13579072 | 0.10919597 |
| **80.00** | 0.12608539 | 0.076127045 | 0.21429786 | 0.10209263 | 0.079580665 |
| **90.00** | 0.068265386 | 0.055173602 | 0.13620198 | 0.076757126 | 0.057997398 |
| **100.00** | 0.01950137 | 0.039987452 | 0.07631322 | 0.057708926 | 0.04226778 |
| **110.00** | 0.0 | 0.028981183 | 0.038248572 | 0.043387767 | 0.030804234 |
| **120.00** | 0.0 | 0.021004312 | 0.020974409 | 0.032620575 | 0.022449743 |
| **130.00** | 0.0 | 0.015223021 | 0.006623891 | 0.02452539 | 0.016361093 |
| **140.00** | 0.0 | 0.011032989 | 0.0024081601 | 0.01843912 | 0.011923761 |
| **150.00** | 0.0 | 0.007996236 | 0.0015852944 | 0.013863232 | 0.008689889 |
| **160.00** | 0.0 | 0.005795327 | 9.681745E-4 | 0.010422905 | 0.0063330824 |
| **170.00** | 0.0 | 0.0042002033 | 3.260114E-4 | 0.007836337 | 0.0046154717 |
| **180.00** | 0.0 | 0.0030441266 | 2.413312E-4 | 0.005891656 | 0.0033636983 |
| **190.00** | 0.0 | 0.0022062517 | 1.0452965E-4 | 0.0044295713 | 0.0024514215 |
| **200.00** | 0.0 | 0.0015989962 | 0.0 | 0.0033303201 | 0.0017865654 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2737)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 192.82 | 0.005186226 | 205 | 222.73 | 0.0044896645 | 177.3 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 158.13 | 0.0063239466 | 250 | 169.27 | 0.005907807 | 233.52 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 1702.10 | 5.8750866E-4 | 22 | 2476.81 | 4.037459E-4 | 14.83 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 185.21 | 0.0053991457 | 214 | 187.47 | 0.0053343084 | 211.42 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 183.49 | 0.005449842 | 216 | 186.66 | 0.0053572273 | 212.3 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 411.11 | 0.0024324367 | 96 | 602.64 | 0.0016593535 | 65.44 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 622.43 | 0.001606608 | 64 | 649.46 | 0.0015397376 | 61.3 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 1253.95 | 7.9748046E-4 | 32 | 1386.03 | 7.2148413E-4 | 28.89 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 120.35 | 0.008308948 | 329 | 122.85 | 0.008139906 | 322.28 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 326.29 | 0.003064739 | 121 | 329.99 | 0.003030368 | 119.62 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 4933.16 | 2.0270985E-4 | 8 | 5212.84 | 1.9183397E-4 | 7.43 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 375.33 | 0.0026643255 | 105 | 385.97 | 0.0025908952 | 102.1 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 1116.25 | 8.958605E-4 | 35 | 1215.37 | 8.227928E-4 | 32.16 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 137.15 | 0.0072913375 | 289 | 138.90 | 0.007199477 | 285.36 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 124.60 | 0.008025534 | 318 | 141.98 | 0.007043125 | 279.07 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 371.08 | 0.0026948038 | 107 | 460.28 | 0.0021725863 | 86.25 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 109.96 | 0.009094246 | 360 | 115.47 | 0.008660269 | 342.77 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 93.19 | 0.010730632 | 425 | 120.22 | 0.008317758 | 329.27 |
| **RodgersCreek** | 325.31 | 0.003074 | 197.23 | 0.0050702174 | 201 | 279.37 | 0.0035794713 | 141.64 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 3194.09 | 3.1307788E-4 | 13 | 4639.74 | 2.1552939E-4 | 8.95 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 313.75 | 0.003187247 | 126 | 324.14 | 0.0030850896 | 121.88 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 310.20 | 0.0032237163 | 127 | 347.62 | 0.0028767022 | 113.2 |
| **Compton** | 2658.16 | 3.762E-4 | 5755.35 | 1.737513E-4 | 7 | 6432.66 | 1.5545676E-4 | 6.18 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 164.75 | 0.006069973 | 240 | 176.75 | 0.005657745 | 223.7 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 562.37 | 0.001778177 | 70 | 607.51 | 0.0016460622 | 64.81 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 580.68 | 0.0017221168 | 68 | 592.93 | 0.0016865339 | 66.58 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 185.21 | 0.0053991457 | 214 | 187.90 | 0.0053219893 | 210.91 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 137.15 | 0.0072913375 | 289 | 139.09 | 0.0071893977 | 284.95 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 718.80 | 0.0013911999 | 55 | 744.16 | 0.001343802 | 53.14 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1089.52 | 9.178388E-4 | 37 | 1117.45 | 8.9489284E-4 | 36.1 |
| **TOTAL** | 9.08 | 0.1101451 | 14.61 | 0.0684453 | 2708 | 16.28 | 0.061443545 | 2430.94 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.85886055 | 0.50436604 | 0.88149124 | 0.5409462 | 0.33238843 |
| **20.00** | 0.61100066 | 0.25438508 | 0.6576692 | 0.29262277 | 0.110482074 |
| **30.00** | 0.37004116 | 0.1283032 | 0.43229154 | 0.15829319 | 0.036722966 |
| **40.00** | 0.21848558 | 0.06471178 | 0.2683762 | 0.08562809 | 0.012206289 |
| **50.00** | 0.09975152 | 0.032638423 | 0.13657197 | 0.046320193 | 0.004057229 |
| **60.00** | 0.04254307 | 0.016461711 | 0.07311134 | 0.025056731 | 0.001348576 |
| **70.00** | 0.014341739 | 0.008302729 | 0.03095112 | 0.013554343 | 4.4825108E-4 |
| **80.00** | 0.004017788 | 0.004187614 | 0.011444165 | 0.0073321704 | 1.4899348E-4 |
| **90.00** | 0.0023068879 | 0.0021120904 | 0.006030061 | 0.0039663096 | 4.952371E-5 |
| **100.00** | 0.0 | 0.0010652667 | 2.6887277E-4 | 0.0021455602 | 1.6461108E-5 |
| **110.00** | 0.0 | 5.372843E-4 | 1.3651559E-4 | 0.0011606326 | 5.4714824E-6 |
| **120.00** | 0.0 | 2.7098795E-4 | 0.0 | 6.2783976E-4 | 1.8186574E-6 |

### Moment Release Variability Plots
*[(top)](#bruce-2737)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2737)*

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
*[(top)](#bruce-2737)*

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
  receiverElementAreaFrac = 0.9
  receiverElementIntTol = 1.0e-4
  receiverElementSubdivisionMax = 4
  tgfDist1 = 3
  tgfDist1 = 10
```
