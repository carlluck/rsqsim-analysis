# Bruce 2734
## Metadata
| **Catalog** | Bruce 2734 |
|-----|-----|
| **Author** | Bruce Shaw, 2018/06/05 |
| **Description** | Finite receiver patch fracArea=0.8, all else same as r2585 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 454,499 events in 25,525 years |
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
*[(top)](#bruce-2734)*


### Full Catalog GMPE Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-2734)*

* [ASK2014](bbp_LA_BASIN_863/gmpe_bbp_comparisons_ASK2014/)
* [NGAWest_2014_NoIdr](bbp_LA_BASIN_863/gmpe_bbp_comparisons_NGAWest_2014_NoIdr/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2734)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2734)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2734)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2734)*

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
*[(top)](#bruce-2734)*

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
*[(top)](#bruce-2734)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2734)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2734)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2734)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2734)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2734)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2734)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2734)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2734)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2734)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0036007958 | 0.0017949422 | 0.0023676464 | 0.0016897945 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 2.959558E-4 | 2.7632923E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0022196686 | 0.0018213119 | 0.0017264088 | 0.0015978194 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 8.878674E-4 | 8.365151E-4 | 8.385414E-4 | 8.163129E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0017264088 | 0.0015292692 | 0.001627757 | 0.0015365344 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 0.0011838232 | 8.985264E-4 | 7.892155E-4 | 7.2664744E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.008237436 | 0.0077794557 | 0.008188111 | 0.0078107533 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.001578431 | 0.0015318794 | 0.001578431 | 0.001557752 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0012331492 | 0.0011347252 | 0.0011344972 | 0.0011183897 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 0.0012824752 | 5.9004355E-4 | 3.4528176E-4 | 2.967315E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0028115802 | 0.002482971 | 0.0026636024 | 0.0026009681 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.004537989 | 0.0030263294 | 0.0026636024 | 0.0024698554 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0050805747 | 0.004952014 | 0.0050312486 | 0.0049443045 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.009914519 | 0.0069350153 | 0.007744177 | 0.006778645 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0050312486 | 0.004971369 | 0.0050312486 | 0.0049662506 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.0048832707 | 0.004799648 | 0.0048832707 | 0.0048186905 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0053272047 | 0.0051240767 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 2.959558E-4 | 2.6063807E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0026636024 | 0.002516596 | 0.0025649504 | 0.0024917785 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.005524508 | 0.003391268 | 0.0044886633 | 0.0034747259 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.002860906 | 0.002806069 | 0.002860906 | 0.0028278267 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0020223646 | 0.0016372489 | 0.001430453 | 0.0011805745 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.007546873 | 0.007342016 | 0.007448221 | 0.007322976 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0071029393 | 0.004201934 | 0.004439337 | 0.0034292275 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.009125304 | 0.0069404645 | 0.0052778786 | 0.0050577163 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.009125304 | 0.0069404645 | 0.005721812 | 0.005418596 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.0067576575 | 0.006646447 | 0.0067576575 | 0.006683132 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.007250917 | 0.0043689273 | 0.0063630496 | 0.005808912 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0052285525 | 0.0033594996 | 0.0022689945 | 0.0019151332 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.004784619 | 0.003591445 | 0.003107536 | 0.0028468687 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.0067576575 | 0.0065714233 | 0.0067576575 | 0.006682938 |

### Paleo Open Interval Plots
*[(top)](#bruce-2734)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2734)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 352.97 | 0.0028330667 | 58 | 356.66 | 0.0028037545 | 57.4 |
| **FRA** | 119.00 | 0.008403362 | 121.77 | 0.008211904 | 167 | 126.66 | 0.007895141 | 160.52 |
| **COA** | 181.00 | 0.005524862 | 179.67 | 0.0055657476 | 113 | 189.61 | 0.0052738986 | 107.04 |
| **SCZ** | 106.00 | 0.009433962 | 128.40 | 0.0077881217 | 157 | 146.87 | 0.0068088435 | 137.31 |
| **TYS** | 329.00 | 0.0030395137 | 377.56 | 0.0026485587 | 54 | 407.61 | 0.0024533272 | 50 |
| **TOTAL** | 31.61 | 0.0316373 | 36.89 | 0.02710918 | 549 | 39.55 | 0.025287587 | 512.17 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9732365 | 0.7625465 | 0.9767486 | 0.77656424 | 0.72878754 |
| **20.00** | 0.9040322 | 0.58147717 | 0.9155681 | 0.6030521 | 0.53113127 |
| **30.00** | 0.81477636 | 0.44340336 | 0.8320531 | 0.4683087 | 0.3870819 |
| **40.00** | 0.72600466 | 0.3381157 | 0.74989974 | 0.36367178 | 0.28210047 |
| **50.00** | 0.58517873 | 0.25782892 | 0.6220265 | 0.28241453 | 0.2055913 |
| **60.00** | 0.46878433 | 0.19660655 | 0.5103794 | 0.21931303 | 0.14983238 |
| **70.00** | 0.3823178 | 0.14992164 | 0.42448887 | 0.17031065 | 0.10919597 |
| **80.00** | 0.29863393 | 0.114322215 | 0.33946612 | 0.13225716 | 0.079580665 |
| **90.00** | 0.23879188 | 0.08717601 | 0.27916425 | 0.102706194 | 0.057997398 |
| **100.00** | 0.15037593 | 0.06647576 | 0.19054806 | 0.07975796 | 0.04226778 |
| **110.00** | 0.076540984 | 0.050690856 | 0.120968066 | 0.06193718 | 0.030804234 |
| **120.00** | 0.04763781 | 0.038654137 | 0.076671645 | 0.0480982 | 0.022449743 |
| **130.00** | 0.011854114 | 0.029475575 | 0.03806243 | 0.037351344 | 0.016361093 |
| **140.00** | 0.0 | 0.022476496 | 0.016860455 | 0.02900572 | 0.011923761 |
| **150.00** | 0.0 | 0.017139373 | 0.008584693 | 0.022524804 | 0.008689889 |
| **160.00** | 0.0 | 0.01306957 | 0.0045987163 | 0.017491959 | 0.0063330824 |
| **170.00** | 0.0 | 0.009966155 | 7.262434E-4 | 0.013583629 | 0.0046154717 |
| **180.00** | 0.0 | 0.0075996565 | 3.1440583E-4 | 0.010548562 | 0.0033636983 |
| **190.00** | 0.0 | 0.0057950914 | 1.6594841E-4 | 0.008191636 | 0.0024514215 |
| **200.00** | 0.0 | 0.0044190264 | 1.2707956E-4 | 0.006361332 | 0.0017865654 |
| **210.00** | 0.0 | 0.0033697132 | 0.0 | 0.004939983 | 0.0013020267 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2734)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 222.49 | 0.004494573 | 90 | 249.52 | 0.004007683 | 80.25 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 174.98 | 0.00571483 | 116 | 184.50 | 0.005420171 | 109.99 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 2362.58 | 4.2326638E-4 | 9 | 3461.94 | 2.888553E-4 | 6.08 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 198.08 | 0.0050484575 | 102 | 200.38 | 0.0049905055 | 100.83 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 204.14 | 0.0048985034 | 99 | 207.06 | 0.004829634 | 97.59 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 419.81 | 0.002382052 | 48 | 580.52 | 0.0017225873 | 34.62 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 619.32 | 0.0016146682 | 33 | 660.70 | 0.0015135561 | 30.92 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 1236.13 | 8.0897554E-4 | 16 | 1353.22 | 7.389799E-4 | 14.57 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 134.76 | 0.007420396 | 151 | 137.46 | 0.0072749914 | 148.04 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 352.97 | 0.0028330667 | 58 | 356.80 | 0.0028026586 | 57.32 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 3777.04 | 2.6475737E-4 | 5 | 4323.48 | 2.3129505E-4 | 4.3 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 387.47 | 0.0025808502 | 52 | 398.89 | 0.0025069565 | 50.49 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 1321.32 | 7.568179E-4 | 16 | 1422.66 | 7.029085E-4 | 14.93 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 148.64 | 0.0067278254 | 137 | 150.26 | 0.006654943 | 135.49 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 145.44 | 0.0068758633 | 139 | 162.23 | 0.006164141 | 124.69 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 438.67 | 0.0022796222 | 46 | 516.88 | 0.0019346831 | 38.73 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 121.77 | 0.008211904 | 167 | 126.93 | 0.007878646 | 160.21 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 128.40 | 0.0077881217 | 157 | 147.17 | 0.006794714 | 136.96 |
| **RodgersCreek** | 325.31 | 0.003074 | 224.14 | 0.0044615776 | 91 | 290.06 | 0.0034475313 | 70.29 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 2514.01 | 3.9777093E-4 | 8 | 3163.88 | 3.160675E-4 | 6.2 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 376.01 | 0.0026595332 | 54 | 384.36 | 0.0026017488 | 52.75 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 377.56 | 0.0026485587 | 54 | 403.53 | 0.0024781225 | 50.5 |
| **Compton** | 2658.16 | 3.762E-4 | 6214.31 | 1.60919E-4 | 3 | 6214.54 | 1.6091288E-4 | 2.88 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 179.67 | 0.0055657476 | 113 | 190.19 | 0.005257816 | 106.74 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 545.67 | 0.0018326166 | 37 | 592.17 | 0.0016887066 | 34.12 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 638.61 | 0.0015659055 | 32 | 646.63 | 0.0015464887 | 31.59 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 200.71 | 0.0049824184 | 101 | 203.19 | 0.004921445 | 99.69 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 148.64 | 0.0067278254 | 137 | 150.26 | 0.0066550653 | 135.52 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 878.87 | 0.0011378297 | 23 | 893.65 | 0.0011190022 | 22.59 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1207.65 | 8.2805415E-4 | 17 | 1232.96 | 8.1105786E-4 | 16.62 |
| **TOTAL** | 9.08 | 0.1101451 | 16.99 | 0.058856215 | 1194 | 18.33 | 0.054553982 | 1106.64 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.89834094 | 0.5551249 | 0.91038185 | 0.57952887 | 0.33238843 |
| **20.00** | 0.6853671 | 0.30816364 | 0.7140717 | 0.3358537 | 0.110482074 |
| **30.00** | 0.4800225 | 0.17106931 | 0.5179784 | 0.1946369 | 0.036722966 |
| **40.00** | 0.33453605 | 0.09496483 | 0.37555772 | 0.1127977 | 0.012206289 |
| **50.00** | 0.18232933 | 0.052717343 | 0.21762757 | 0.065369524 | 0.004057229 |
| **60.00** | 0.10429531 | 0.029264709 | 0.12591164 | 0.037883524 | 0.001348576 |
| **70.00** | 0.062108494 | 0.016245568 | 0.075965986 | 0.021954594 | 4.4825108E-4 |
| **80.00** | 0.032823365 | 0.00901832 | 0.041502062 | 0.012723321 | 1.4899348E-4 |
| **90.00** | 0.020437319 | 0.0050062938 | 0.026298158 | 0.007373532 | 4.952371E-5 |
| **100.00** | 0.013341103 | 0.0027791183 | 0.015286768 | 0.0042731743 | 1.6461108E-5 |
| **110.00** | 0.0 | 0.0015427576 | 0.00563329 | 0.002476428 | 5.4714824E-6 |
| **120.00** | 0.0 | 8.5642317E-4 | 0.002479331 | 0.0014351613 | 1.8186574E-6 |
| **130.00** | 0.0 | 4.7542184E-4 | 0.0014762759 | 8.3171745E-4 | 6.045007E-7 |
| **140.00** | 0.0 | 2.6391848E-4 | 0.0 | 4.8200425E-4 | 2.0092905E-7 |

### Moment Release Variability Plots
*[(top)](#bruce-2734)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2734)*

Example rupture plots:

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![example](resources/elastic_rebound_triggering_m6_example_re_rup.png) |  |  |
| ![example](resources/elastic_rebound_triggering_m6_example_new_hypo.png) |  |  |

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_1yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_1yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_1yr.png) |
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_10yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_10yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_10yr.png) |
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_100yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_100yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_100yr.png) |

## Input File
*[(top)](#bruce-2734)*

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
  receiverElementAreaFrac = 0.8
  receiverElementIntTol = 1.0e-4
  receiverElementSubdivisionMax = 4
  tgfDist1 = 3
  tgfDist1 = 10
```
