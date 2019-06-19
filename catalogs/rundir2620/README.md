# Bruce 2620
## Metadata
| **Catalog** | Bruce 2620 |
|-----|-----|
| **Author** | Bruce Shaw, 2018/03/08 |
| **Description** | sensitivity test, diff r2585   b=.006 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 2,439,499 events in 164,905 years |
| **Frictional Params** | a=0.001, b=0.006, (b-a)=0.005, ddotEQ=1 |

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
*[(top)](#bruce-2620)*

* [PGA](hazard_pga/)
* [0.2s SA](hazard_sa_0.2s/)
* [1.0s SA](hazard_sa_1.0s/)
* [10.0s SA](hazard_sa_10.0s/)
* [2.0s SA](hazard_sa_2.0s/)
* [5.0s SA](hazard_sa_5.0s/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2620)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2620)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2620)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2620)*

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
*[(top)](#bruce-2620)*

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
*[(top)](#bruce-2620)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2620)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2620)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2620)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2620)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2620)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2620)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2620)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2620)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2620)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0044866507 | 0.0029255988 | 0.0035542783 | 0.002696258 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 2.6907388E-4 | 2.4832558E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.002528043 | 0.001949734 | 0.0016770186 | 0.0015820677 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 9.135997E-4 | 8.55265E-4 | 8.6979696E-4 | 8.45341E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0017083063 | 0.0014549353 | 0.0015330954 | 0.0014535054 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 0.0010762955 | 8.206155E-4 | 6.82071E-4 | 6.424366E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.009135997 | 0.008244431 | 0.008729258 | 0.008250265 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0016770186 | 0.0016149532 | 0.0016645036 | 0.0016363198 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0014016872 | 0.0012739651 | 0.0012890516 | 0.0012582022 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 0.0011013256 | 6.0374866E-4 | 3.128766E-4 | 2.742088E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0032601743 | 0.0027943524 | 0.0028409197 | 0.0027161718 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.004255122 | 0.0031034523 | 0.0024341801 | 0.0022588354 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0054628258 | 0.0053379782 | 0.0054065078 | 0.0053273807 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.007264995 | 0.0057568536 | 0.0059196255 | 0.0053670355 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.005444053 | 0.0053312858 | 0.005387735 | 0.0053158733 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.00537522 | 0.0052554524 | 0.005362705 | 0.005271185 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.006169927 | 0.0057480787 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 3.2539168E-4 | 2.6513985E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0031850839 | 0.0028407804 | 0.0027658292 | 0.00267161 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.003610596 | 0.002828181 | 0.0027908594 | 0.0026269113 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0034291276 | 0.0033147812 | 0.003385325 | 0.0033344014 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0022401966 | 0.0017727785 | 0.0014392324 | 0.0012235963 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.008360063 | 0.0078322515 | 0.0078094 | 0.007645789 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.00788449 | 0.0044062557 | 0.0047181793 | 0.0035613077 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.008954529 | 0.006979266 | 0.00537522 | 0.0051457016 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.008954529 | 0.006979266 | 0.005775702 | 0.005469121 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.007177389 | 0.0070211105 | 0.0071273292 | 0.0070386464 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.007264995 | 0.004356931 | 0.0066893017 | 0.006102711 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0050060255 | 0.0032249135 | 0.002340317 | 0.0019663384 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0048183 | 0.0035248748 | 0.0030661908 | 0.0027909218 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.007133587 | 0.006925909 | 0.007102299 | 0.0070175095 |

### Paleo Open Interval Plots
*[(top)](#bruce-2620)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2620)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 296.66 | 0.0033708552 | 539 | 300.89 | 0.003323486 | 531.43 |
| **FRA** | 119.00 | 0.008403362 | 115.10 | 0.008688132 | 1389 | 120.63 | 0.0082895765 | 1325.27 |
| **COA** | 181.00 | 0.005524862 | 177.10 | 0.005646453 | 902 | 187.29 | 0.0053392504 | 852.98 |
| **SCZ** | 106.00 | 0.009433962 | 168.91 | 0.0059204726 | 946 | 186.42 | 0.0053643216 | 857.03 |
| **TYS** | 329.00 | 0.0030395137 | 423.76 | 0.0023598252 | 377 | 452.98 | 0.0022076098 | 352.73 |
| **TOTAL** | 31.61 | 0.0316373 | 38.48 | 0.025986455 | 4153 | 40.77 | 0.02452841 | 3920.04 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9769762 | 0.771156 | 0.97955877 | 0.7824822 | 0.72878754 |
| **20.00** | 0.91747415 | 0.5946816 | 0.9255121 | 0.6122784 | 0.53113127 |
| **30.00** | 0.8294611 | 0.45859233 | 0.8456565 | 0.47909695 | 0.3870819 |
| **40.00** | 0.7240905 | 0.35364622 | 0.74841124 | 0.37488484 | 0.28210047 |
| **50.00** | 0.61210805 | 0.2727164 | 0.6434926 | 0.2933407 | 0.2055913 |
| **60.00** | 0.4874597 | 0.21030691 | 0.5243175 | 0.22953388 | 0.14983238 |
| **70.00** | 0.3863234 | 0.16217944 | 0.42466518 | 0.17960618 | 0.10919597 |
| **80.00** | 0.2914257 | 0.12506565 | 0.32912633 | 0.14053863 | 0.079580665 |
| **90.00** | 0.20237152 | 0.09644513 | 0.2380578 | 0.10996898 | 0.057997398 |
| **100.00** | 0.14431603 | 0.07437424 | 0.17462204 | 0.086048774 | 0.04226778 |
| **110.00** | 0.08840898 | 0.057354145 | 0.11382407 | 0.067331634 | 0.030804234 |
| **120.00** | 0.05204142 | 0.044228997 | 0.07375641 | 0.052685805 | 0.022449743 |
| **130.00** | 0.028389392 | 0.034107458 | 0.04172981 | 0.0412257 | 0.016361093 |
| **140.00** | 0.0121653 | 0.02630217 | 0.018521808 | 0.03225838 | 0.011923761 |
| **150.00** | 0.0035956874 | 0.020283077 | 0.005700802 | 0.025241608 | 0.008689889 |
| **160.00** | 0.0 | 0.015641417 | 0.0015954577 | 0.01975111 | 0.0063330824 |
| **170.00** | 0.0 | 0.012061973 | 9.827289E-4 | 0.015454891 | 0.0046154717 |
| **180.00** | 0.0 | 0.009301663 | 4.9470173E-4 | 0.012093177 | 0.0033636983 |
| **190.00** | 0.0 | 0.0071730334 | 2.8569796E-4 | 0.009462696 | 0.0024514215 |
| **200.00** | 0.0 | 0.005531528 | 1.5367316E-4 | 0.007404391 | 0.0017865654 |
| **210.00** | 0.0 | 0.004265671 | 6.19644E-5 | 0.0057938043 | 0.0013020267 |
| **220.00** | 0.0 | 0.0032894982 | 3.4404336E-5 | 0.004533549 | 9.489008E-4 |
| **230.00** | 0.0 | 0.0025367162 | 0.0 | 0.0035474212 | 6.915471E-4 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2620)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 209.94 | 0.004763336 | 761 | 238.92 | 0.004185517 | 668.68 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 173.07 | 0.005778057 | 923 | 182.61 | 0.005476157 | 874.78 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 2016.38 | 4.959384E-4 | 79 | 2883.94 | 3.4674772E-4 | 55.15 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 185.51 | 0.0053905807 | 862 | 188.18 | 0.0053141676 | 849.75 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 186.59 | 0.0053592767 | 857 | 189.65 | 0.0052729226 | 843.18 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 281.41 | 0.0035535109 | 568 | 371.51 | 0.002691726 | 430.08 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 648.04 | 0.0015431057 | 246 | 680.10 | 0.0014703696 | 234.38 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 1465.35 | 6.824312E-4 | 109 | 1552.95 | 6.439357E-4 | 102.84 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 128.17 | 0.0078023677 | 1247 | 130.75 | 0.007648098 | 1222.32 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 296.66 | 0.0033708552 | 539 | 300.80 | 0.0033244293 | 531.58 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 5994.19 | 1.6682823E-4 | 26 | 6422.99 | 1.5569081E-4 | 24.31 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 362.11 | 0.0027615835 | 442 | 374.97 | 0.0026668478 | 426.83 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 1251.98 | 7.987351E-4 | 127 | 1323.20 | 7.557455E-4 | 120.14 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 140.88 | 0.007098229 | 1135 | 142.61 | 0.0070119738 | 1121.22 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 140.02 | 0.0071420455 | 1142 | 154.21 | 0.006484543 | 1036.83 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 427.75 | 0.002337796 | 374 | 509.45 | 0.0019629179 | 313.87 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 115.10 | 0.008688132 | 1389 | 120.71 | 0.008284105 | 1324.43 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 168.91 | 0.0059204726 | 946 | 186.58 | 0.005359521 | 856.26 |
| **RodgersCreek** | 325.31 | 0.003074 | 358.11 | 0.0027924324 | 446 | 380.39 | 0.0026288952 | 419.88 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 3195.61 | 3.1292936E-4 | 50 | 3567.25 | 2.8032827E-4 | 44.69 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 352.49 | 0.0028369976 | 454 | 368.40 | 0.0027144249 | 434.38 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 423.76 | 0.0023598252 | 377 | 452.54 | 0.0022097337 | 353.03 |
| **Compton** | 2658.16 | 3.762E-4 | 6515.42 | 1.5348197E-4 | 24 | 7071.18 | 1.4141915E-4 | 22.15 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 177.10 | 0.005646453 | 902 | 187.25 | 0.0053405035 | 853.17 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 573.96 | 0.001742268 | 278 | 612.30 | 0.0016331943 | 260.56 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 598.91 | 0.0016696973 | 266 | 609.02 | 0.0016419933 | 261.57 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 185.08 | 0.0054031024 | 864 | 187.73 | 0.0053267274 | 851.78 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 140.39 | 0.0071232673 | 1139 | 142.11 | 0.0070365747 | 1125.14 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 773.25 | 0.0012932476 | 207 | 792.89 | 0.0012612119 | 201.88 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1141.60 | 8.7596243E-4 | 139 | 1176.04 | 8.5031276E-4 | 134.9 |
| **TOTAL** | 9.08 | 0.1101451 | 16.78 | 0.059604947 | 9525 | 17.72 | 0.056423936 | 9016.71 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.89121264 | 0.550984 | 0.9006766 | 0.56879264 | 0.33238843 |
| **20.00** | 0.67964906 | 0.30358338 | 0.7007603 | 0.32352504 | 0.110482074 |
| **30.00** | 0.4641456 | 0.1672696 | 0.49149004 | 0.18401866 | 0.036722966 |
| **40.00** | 0.2920155 | 0.09216288 | 0.31979945 | 0.10466846 | 0.012206289 |
| **50.00** | 0.16040006 | 0.050780274 | 0.18402293 | 0.059534647 | 0.004057229 |
| **60.00** | 0.08844049 | 0.02797912 | 0.10505779 | 0.03386287 | 0.001348576 |
| **70.00** | 0.040063232 | 0.0154160485 | 0.051754516 | 0.01926095 | 4.4825108E-4 |
| **80.00** | 0.017120034 | 0.008493996 | 0.023546379 | 0.010955486 | 1.4899348E-4 |
| **90.00** | 0.007867699 | 0.004680056 | 0.011085337 | 0.0062313997 | 4.952371E-5 |
| **100.00** | 0.0031096288 | 0.0025786362 | 0.004401453 | 0.0035443744 | 1.6461108E-5 |
| **110.00** | 0.0010625806 | 0.0014207874 | 0.0017020055 | 0.002016014 | 5.4714824E-6 |
| **120.00** | 0.0 | 7.8283116E-4 | 3.0602462E-4 | 0.0011466938 | 1.8186574E-6 |
| **130.00** | 0.0 | 4.3132747E-4 | 1.1650773E-4 | 6.5223104E-4 | 6.045007E-7 |
| **140.00** | 0.0 | 2.3765455E-4 | 1.3194035E-5 | 3.709842E-4 | 2.0092905E-7 |
| **150.00** | 0.0 | 1.3094385E-4 | 0.0 | 2.1101307E-4 | 6.678649E-8 |

### Moment Release Variability Plots
*[(top)](#bruce-2620)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2620)*

Example rupture plots:

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![example](resources/trigger_within_prev_m6_example_re_rup.png) |  |  |
| ![example](resources/trigger_within_prev_m6_example_new_hypo.png) | ![example](resources/trigger_within_prev_m6.5_example_new_hypo.png) | ![example](resources/trigger_within_prev_m7_example_new_hypo.png) |

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![hypocenter plot](resources/trigger_within_prev_m6_1yr.png) | ![hypocenter plot](resources/trigger_within_prev_m6.5_1yr.png) | ![hypocenter plot](resources/trigger_within_prev_m7_1yr.png) |
| ![hypocenter plot](resources/trigger_within_prev_m6_10yr.png) | ![hypocenter plot](resources/trigger_within_prev_m6.5_10yr.png) | ![hypocenter plot](resources/trigger_within_prev_m7_10yr.png) |
| ![hypocenter plot](resources/trigger_within_prev_m6_100yr.png) | ![hypocenter plot](resources/trigger_within_prev_m6.5_100yr.png) | ![hypocenter plot](resources/trigger_within_prev_m7_100yr.png) |

## Input File
*[(top)](#bruce-2620)*

```
  A_1 = 0.001
  fA = .1
  B_1 = 0.006
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
