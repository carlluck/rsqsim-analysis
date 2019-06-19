# Bruce 2629
## Metadata
| **Catalog** | Bruce 2629 |
|-----|-----|
| **Author** | Bruce Shaw, 2018/03/08 |
| **Description** | sensitivity test, diff r2585   N=90 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 2,543,499 events in 203,770 years |
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
*[(top)](#bruce-2629)*

* [PGA](hazard_pga/)
* [0.2s SA](hazard_sa_0.2s/)
* [1.0s SA](hazard_sa_1.0s/)
* [10.0s SA](hazard_sa_10.0s/)
* [2.0s SA](hazard_sa_2.0s/)
* [5.0s SA](hazard_sa_5.0s/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2629)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2629)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2629)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2629)*

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
*[(top)](#bruce-2629)*

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
*[(top)](#bruce-2629)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2629)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2629)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2629)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2629)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2629)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2629)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2629)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2629)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2629)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0036880334 | 0.0024265759 | 0.0030591055 | 0.0024541838 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 2.566026E-4 | 2.3850096E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0019622552 | 0.0015970551 | 0.0014440186 | 0.0013939018 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 7.194936E-4 | 6.891412E-4 | 6.993679E-4 | 6.875564E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0013534529 | 0.0012000703 | 0.0012075417 | 0.0011736073 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 9.0062484E-4 | 7.1069674E-4 | 6.0880225E-4 | 5.810085E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.008125749 | 0.007404269 | 0.0077886437 | 0.007483247 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0013635159 | 0.0013152597 | 0.0013383587 | 0.0013207407 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0010867876 | 0.001017533 | 0.001021379 | 0.0010040863 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 9.509391E-4 | 5.357175E-4 | 2.6666545E-4 | 2.4310217E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0027370944 | 0.0023931274 | 0.0024201148 | 0.0023443613 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0036075308 | 0.0026060052 | 0.0019572238 | 0.0018528386 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0047245068 | 0.0046011033 | 0.0046641296 | 0.0046037226 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0062188394 | 0.0050351815 | 0.005353435 | 0.0049003875 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.004764758 | 0.004655232 | 0.004704381 | 0.004647859 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.005217586 | 0.004893571 | 0.0049106693 | 0.0048240144 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0051723034 | 0.0047773877 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 3.0691683E-4 | 2.3672298E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0025207433 | 0.0022239005 | 0.0020981038 | 0.0020474873 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0036880334 | 0.002616861 | 0.0022792348 | 0.0021909063 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0027974716 | 0.00273465 | 0.0027723145 | 0.002742151 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0017358412 | 0.0014237318 | 0.0011018817 | 9.944683E-4 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.00879996 | 0.00774124 | 0.007521978 | 0.0073317587 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.006888019 | 0.0038792607 | 0.003939605 | 0.003158179 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.0073710354 | 0.005823105 | 0.00427671 | 0.0041623334 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.0073710354 | 0.005823105 | 0.0046289098 | 0.0044710743 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.0060628653 | 0.0059392573 | 0.00600752 | 0.0059447004 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.0064452537 | 0.003967992 | 0.005881734 | 0.00551864 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.004427653 | 0.0028063837 | 0.0019723182 | 0.0017237458 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0044377157 | 0.0031423746 | 0.0027723145 | 0.002565076 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.006012551 | 0.005880054 | 0.00600752 | 0.005944002 |

### Paleo Open Interval Plots
*[(top)](#bruce-2629)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2629)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 360.81 | 0.002771551 | 551 | 364.67 | 0.002742225 | 545.16 |
| **FRA** | 119.00 | 0.008403362 | 127.39 | 0.007850129 | 1560 | 132.24 | 0.0075622206 | 1502.81 |
| **COA** | 181.00 | 0.005524862 | 218.79 | 0.004570645 | 908 | 227.90 | 0.0043879114 | 871.69 |
| **SCZ** | 106.00 | 0.009433962 | 186.77 | 0.0053541325 | 1064 | 204.34 | 0.0048938757 | 972.58 |
| **TYS** | 329.00 | 0.0030395137 | 520.44 | 0.001921433 | 382 | 545.99 | 0.0018315406 | 364.13 |
| **TOTAL** | 31.61 | 0.0316373 | 44.49 | 0.022475583 | 4465 | 46.68 | 0.021424374 | 4256.21 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.98270863 | 0.7987112 | 0.9842586 | 0.8071516 | 0.72878754 |
| **20.00** | 0.93572634 | 0.6379396 | 0.94114006 | 0.6514937 | 0.53113127 |
| **30.00** | 0.86590874 | 0.50952953 | 0.87617 | 0.52585423 | 0.3870819 |
| **40.00** | 0.78292876 | 0.40696692 | 0.7988602 | 0.4244441 | 0.28210047 |
| **50.00** | 0.68568563 | 0.32504904 | 0.707854 | 0.34259075 | 0.2055913 |
| **60.00** | 0.58985245 | 0.2596203 | 0.61630934 | 0.2765227 | 0.14983238 |
| **70.00** | 0.49058706 | 0.20736165 | 0.52090853 | 0.22319575 | 0.10919597 |
| **80.00** | 0.4057038 | 0.16562209 | 0.43647248 | 0.1801528 | 0.079580665 |
| **90.00** | 0.33219287 | 0.13228421 | 0.36231786 | 0.14541063 | 0.057997398 |
| **100.00** | 0.25106403 | 0.105656885 | 0.28063166 | 0.11736843 | 0.04226778 |
| **110.00** | 0.18558523 | 0.08438934 | 0.21380499 | 0.09473412 | 0.030804234 |
| **120.00** | 0.13616577 | 0.06740271 | 0.16069011 | 0.0764648 | 0.022449743 |
| **130.00** | 0.09317139 | 0.0538353 | 0.11250988 | 0.061718687 | 0.016361093 |
| **140.00** | 0.05763271 | 0.042998858 | 0.072790466 | 0.04981634 | 0.011923761 |
| **150.00** | 0.030572219 | 0.03434367 | 0.03940716 | 0.040209338 | 0.008689889 |
| **160.00** | 0.008172214 | 0.027430674 | 0.01372383 | 0.032455035 | 0.0063330824 |
| **170.00** | 0.0018236795 | 0.021909187 | 0.0052796905 | 0.026196133 | 0.0046154717 |
| **180.00** | 0.0 | 0.017499113 | 0.0022057234 | 0.021144252 | 0.0033636983 |
| **190.00** | 0.0 | 0.013976738 | 0.0015872432 | 0.017066618 | 0.0024514215 |
| **200.00** | 0.0 | 0.011163377 | 9.956176E-4 | 0.013775349 | 0.0017865654 |
| **210.00** | 0.0 | 0.008916315 | 7.3419715E-4 | 0.011118795 | 0.0013020267 |
| **220.00** | 0.0 | 0.00712156 | 4.612421E-4 | 0.008974553 | 9.489008E-4 |
| **230.00** | 0.0 | 0.00568807 | 3.1982455E-4 | 0.0072438256 | 6.915471E-4 |
| **240.00** | 0.0 | 0.004543125 | 1.9124163E-4 | 0.0058468655 | 5.039909E-4 |
| **250.00** | 0.0 | 0.003628645 | 5.260894E-5 | 0.004719307 | 3.673023E-4 |
| **260.00** | 0.0 | 0.0028982395 | 3.684807E-5 | 0.0038091964 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.0023148563 | 2.1827156E-5 | 0.003074599 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.0018489017 | 0.0 | 0.0024816676 | 1.4217607E-4 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2629)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 251.68 | 0.0039733597 | 789 | 276.89 | 0.0036115218 | 717.16 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 215.93 | 0.0046311165 | 920 | 223.54 | 0.0044734473 | 888.67 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 2242.40 | 4.4595162E-4 | 88 | 3036.85 | 3.2928807E-4 | 64.78 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 212.79 | 0.0046995 | 934 | 215.40 | 0.0046425723 | 922.69 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 203.62 | 0.0049110525 | 976 | 207.35 | 0.004822781 | 958.45 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 326.30 | 0.003064666 | 608 | 407.62 | 0.0024532361 | 486.45 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 833.32 | 0.001200021 | 239 | 855.67 | 0.0011686778 | 232.76 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 1646.12 | 6.074892E-4 | 121 | 1723.41 | 5.8024394E-4 | 115.46 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 133.76 | 0.007476245 | 1486 | 137.00 | 0.0072992938 | 1450.8 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 360.81 | 0.002771551 | 551 | 364.81 | 0.0027411648 | 544.97 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 6448.53 | 1.550742E-4 | 31 | 6822.21 | 1.4658012E-4 | 29.22 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 476.55 | 0.0020984348 | 417 | 488.68 | 0.0020463269 | 406.67 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 1646.96 | 6.071796E-4 | 120 | 1696.03 | 5.896125E-4 | 116.47 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 166.46 | 0.0060073687 | 1194 | 168.27 | 0.005942915 | 1181.16 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 163.99 | 0.0060980082 | 1212 | 174.50 | 0.0057305656 | 1138.95 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 506.05 | 0.001976078 | 392 | 579.41 | 0.0017259077 | 342.36 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 127.39 | 0.007850129 | 1560 | 132.30 | 0.0075585647 | 1502.06 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 186.77 | 0.0053541325 | 1064 | 204.12 | 0.004899138 | 973.61 |
| **RodgersCreek** | 325.31 | 0.003074 | 438.04 | 0.002282921 | 453 | 456.11 | 0.002192465 | 435.08 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 3683.79 | 2.7145934E-4 | 54 | 4015.88 | 2.4901135E-4 | 49.46 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 412.72 | 0.0024229425 | 481 | 425.59 | 0.0023496686 | 466.4 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 520.44 | 0.001921433 | 382 | 545.88 | 0.0018319121 | 364.2 |
| **Compton** | 2658.16 | 3.762E-4 | 7165.03 | 1.3956678E-4 | 28 | 7554.16 | 1.3237746E-4 | 26.52 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 218.79 | 0.004570645 | 908 | 227.64 | 0.004392921 | 872.67 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 676.45 | 0.0014783001 | 294 | 701.23 | 0.0014260571 | 283.55 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 744.57 | 0.0013430492 | 266 | 754.59 | 0.0013252291 | 262.45 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 214.40 | 0.004664241 | 927 | 217.26 | 0.004602731 | 914.77 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 166.18 | 0.00601744 | 1196 | 168.04 | 0.0059509207 | 1182.78 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 974.90 | 0.0010257438 | 204 | 990.23 | 0.0010098708 | 200.82 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1434.44 | 6.971371E-4 | 139 | 1460.58 | 6.8466156E-4 | 136.52 |
| **TOTAL** | 9.08 | 0.1101451 | 18.80 | 0.053196836 | 10569 | 19.60 | 0.051021144 | 10136.78 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.90792567 | 0.5874475 | 0.9142861 | 0.6003686 | 0.33238843 |
| **20.00** | 0.72539467 | 0.3450946 | 0.74032193 | 0.3604425 | 0.110482074 |
| **30.00** | 0.52569675 | 0.20272496 | 0.5463615 | 0.21639837 | 0.036722966 |
| **40.00** | 0.35528386 | 0.119090274 | 0.37677205 | 0.1299188 | 0.012206289 |
| **50.00** | 0.22797793 | 0.06995928 | 0.24689583 | 0.07799917 | 0.004057229 |
| **60.00** | 0.13755155 | 0.04109741 | 0.15286717 | 0.046828255 | 0.001348576 |
| **70.00** | 0.085613094 | 0.02414257 | 0.09699012 | 0.028114215 | 4.4825108E-4 |
| **80.00** | 0.05121686 | 0.014182493 | 0.060261615 | 0.016878892 | 1.4899348E-4 |
| **90.00** | 0.025216734 | 0.00833147 | 0.030638356 | 0.010133558 | 4.952371E-5 |
| **100.00** | 0.014590287 | 0.0048943018 | 0.017790265 | 0.0060838703 | 1.6461108E-5 |
| **110.00** | 0.009484488 | 0.0028751453 | 0.011054708 | 0.0036525647 | 5.4714824E-6 |
| **120.00** | 0.0048117703 | 0.001688997 | 0.0057303538 | 0.0021928854 | 1.8186574E-6 |
| **130.00** | 0.0024540161 | 9.921971E-4 | 0.0022740013 | 0.0013165396 | 6.045007E-7 |
| **140.00** | 0.0 | 5.8286375E-4 | 2.1661486E-4 | 7.9040905E-4 | 2.0092905E-7 |
| **150.00** | 0.0 | 3.4240185E-4 | 0.0 | 4.745368E-4 | 6.678649E-8 |

### Moment Release Variability Plots
*[(top)](#bruce-2629)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2629)*

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
*[(top)](#bruce-2629)*

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
  sigma0_1 = 90
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
  neighborFname = zfault_Deepen_neighbors.in
  stressRateFname =  
  slowSlipFname = 
  writePatchFname = 
  DEBUG = 0
  ZBrentUpperBracket = 0
```
