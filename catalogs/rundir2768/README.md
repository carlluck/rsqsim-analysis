# Bruce 2768
## Metadata
| **Catalog** | Bruce 2768 |
|-----|-----|
| **Author** | Bruce Shaw, 2018/08/14 |
| **Description** | FinitePatch fracArea=0.90, 48Hr, all else same as r2585 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 2,903,731 events in 128,699 years |
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
*[(top)](#bruce-2768)*


### Full Catalog GMPE Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-2768)*

* [ASK2014](bbp_LA_BASIN_863/gmpe_bbp_comparisons_ASK2014/)
* [NGAWest_2014_NoIdr](bbp_LA_BASIN_863/gmpe_bbp_comparisons_NGAWest_2014_NoIdr/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2768)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2768)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2768)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2768)*

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
*[(top)](#bruce-2768)*

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
*[(top)](#bruce-2768)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2768)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2768)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2768)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2768)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2768)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2768)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2768)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2768)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2768)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0036635378 | 0.0018718452 | 0.0024989694 | 0.001687174 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 2.830548E-4 | 2.560208E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0025879296 | 0.002048936 | 0.0018277252 | 0.0016785542 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 9.300372E-4 | 8.7483076E-4 | 9.0577535E-4 | 8.834662E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0018115507 | 0.0015700393 | 0.0016255432 | 0.0015321487 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 0.00101091 | 8.3665544E-4 | 7.278552E-4 | 6.776211E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.009356983 | 0.00873807 | 0.009162888 | 0.008625144 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0017306779 | 0.0016767504 | 0.0017145034 | 0.0016836021 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0016012815 | 0.0014742257 | 0.001358663 | 0.0013173099 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 0.0012616157 | 5.665637E-4 | 4.04364E-4 | 2.9411953E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0036311888 | 0.003048616 | 0.0032187374 | 0.0030955984 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0052162954 | 0.0032213333 | 0.003323872 | 0.0029097747 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0054589137 | 0.0053784107 | 0.0054265647 | 0.0053525954 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.012106658 | 0.0081000645 | 0.010351718 | 0.008068983 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0054103904 | 0.0053500235 | 0.0054103904 | 0.0053440956 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.0054670013 | 0.0053402814 | 0.005434652 | 0.0053410516 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0061139837 | 0.0057992176 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 3.8010217E-4 | 3.20315E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0031378646 | 0.002859286 | 0.002773937 | 0.002674793 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0065830457 | 0.0037155917 | 0.004997939 | 0.0035794212 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.003008468 | 0.0029433467 | 0.003000381 | 0.0029664915 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0022644384 | 0.0018009497 | 0.0014476231 | 0.0012225313 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.008515906 | 0.008234712 | 0.008378422 | 0.008176858 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.008022581 | 0.0043685874 | 0.0051596845 | 0.0037466537 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.010092925 | 0.007329527 | 0.005774318 | 0.005473723 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.010092925 | 0.007329527 | 0.0062514674 | 0.005846004 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.007246203 | 0.007122743 | 0.007246203 | 0.0071502016 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.008556342 | 0.0048958166 | 0.0073836865 | 0.0065557766 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0058794525 | 0.0037541925 | 0.0026768895 | 0.002145791 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.005175859 | 0.0038557292 | 0.0032915229 | 0.003018586 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.0072704647 | 0.0070404774 | 0.0072623775 | 0.007155679 |

### Paleo Open Interval Plots
*[(top)](#bruce-2768)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2768)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 333.13 | 0.0030018748 | 371 | 336.78 | 0.0029693411 | 366.99 |
| **FRA** | 119.00 | 0.008403362 | 108.81 | 0.009190091 | 1137 | 114.71 | 0.008717283 | 1078.38 |
| **COA** | 181.00 | 0.005524862 | 164.65 | 0.0060734577 | 751 | 176.18 | 0.0056760325 | 701.84 |
| **SCZ** | 106.00 | 0.009433962 | 96.66 | 0.010345307 | 1280 | 124.02 | 0.00806341 | 997.5 |
| **TYS** | 329.00 | 0.0030395137 | 311.32 | 0.003212124 | 397 | 349.23 | 0.0028634188 | 353.89 |
| **TOTAL** | 31.61 | 0.0316373 | 31.43 | 0.031820513 | 3935 | 35.34 | 0.028294373 | 3498.81 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9649471 | 0.72745353 | 0.9715477 | 0.75356215 | 0.72878754 |
| **20.00** | 0.8757043 | 0.52918863 | 0.8985644 | 0.56785595 | 0.53113127 |
| **30.00** | 0.75777733 | 0.38496017 | 0.79953134 | 0.42791477 | 0.3870819 |
| **40.00** | 0.6244149 | 0.28004062 | 0.6838014 | 0.32246038 | 0.28210047 |
| **50.00** | 0.49048585 | 0.20371655 | 0.5628478 | 0.24299395 | 0.2055913 |
| **60.00** | 0.36581957 | 0.14819433 | 0.44650546 | 0.18311106 | 0.14983238 |
| **70.00** | 0.24304728 | 0.107804485 | 0.3275277 | 0.13798557 | 0.10919597 |
| **80.00** | 0.13701645 | 0.078422755 | 0.22021057 | 0.103980705 | 0.079580665 |
| **90.00** | 0.07556811 | 0.057048913 | 0.14414687 | 0.07835592 | 0.057997398 |
| **100.00** | 0.03680478 | 0.041500434 | 0.08964888 | 0.059046064 | 0.04226778 |
| **110.00** | 0.012326972 | 0.030189637 | 0.049205817 | 0.04449488 | 0.030804234 |
| **120.00** | 0.0017507727 | 0.021961559 | 0.021742 | 0.033529658 | 0.022449743 |
| **130.00** | 0.0 | 0.015976014 | 0.0068095005 | 0.025266683 | 0.016361093 |
| **140.00** | 0.0 | 0.011621808 | 0.0025607091 | 0.019040016 | 0.011923761 |
| **150.00** | 0.0 | 0.008454325 | 0.0014914515 | 0.014347836 | 0.008689889 |
| **160.00** | 0.0 | 0.006150129 | 5.415034E-4 | 0.010811987 | 0.0063330824 |
| **170.00** | 0.0 | 0.004473933 | 3.7581965E-4 | 0.008147504 | 0.0046154717 |
| **180.00** | 0.0 | 0.0032545784 | 2.1125205E-4 | 0.0061396514 | 0.0033636983 |
| **190.00** | 0.0 | 0.0023675545 | 1.05471314E-4 | 0.004626609 | 0.0024514215 |
| **200.00** | 0.0 | 0.001722286 | 1.93896E-5 | 0.0034864375 | 0.0017865654 |
| **210.00** | 0.0 | 0.001252883 | 0.0 | 0.0026272475 | 0.0013020267 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2768)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 195.75 | 0.005108566 | 632 | 226.21 | 0.0044207256 | 546.63 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 159.96 | 0.006251612 | 773 | 171.20 | 0.0058412123 | 722.26 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 2054.07 | 4.8683866E-4 | 60 | 3062.83 | 3.2649597E-4 | 39.69 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 184.83 | 0.0054103816 | 669 | 187.19 | 0.0053422265 | 660.54 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 184.00 | 0.00543468 | 672 | 187.34 | 0.005337748 | 660.01 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 397.89 | 0.0025132569 | 309 | 585.39 | 0.0017082557 | 209.78 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 619.31 | 0.0016147053 | 199 | 646.63 | 0.0015464694 | 190.56 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 1377.90 | 7.257431E-4 | 90 | 1476.92 | 6.7708513E-4 | 83.87 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 119.55 | 0.008364924 | 1035 | 122.38 | 0.008171173 | 1011.03 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 333.13 | 0.0030018748 | 371 | 337.07 | 0.0029667523 | 366.65 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 4473.28 | 2.235494E-4 | 28 | 4914.62 | 2.0347437E-4 | 25.24 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 359.66 | 0.0027804184 | 343 | 373.57 | 0.0026768716 | 330.24 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 1081.91 | 9.2429254E-4 | 113 | 1184.04 | 8.445626E-4 | 103.26 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 137.83 | 0.0072554583 | 897 | 139.90 | 0.0071480363 | 883.71 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 126.92 | 0.007878974 | 974 | 144.65 | 0.0069134077 | 854.69 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 374.30 | 0.0026716746 | 331 | 465.83 | 0.0021466883 | 265.93 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 108.81 | 0.009190091 | 1137 | 114.60 | 0.008725991 | 1079.46 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 96.66 | 0.010345307 | 1280 | 124.10 | 0.008057774 | 996.93 |
| **RodgersCreek** | 325.31 | 0.003074 | 200.15 | 0.004996254 | 618 | 278.84 | 0.0035862965 | 442.99 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 2536.64 | 3.9422247E-4 | 49 | 3517.70 | 2.842766E-4 | 35.3 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 310.55 | 0.0032200557 | 398 | 322.55 | 0.0031002683 | 383.08 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 311.32 | 0.003212124 | 397 | 349.80 | 0.0028587512 | 353.25 |
| **Compton** | 2658.16 | 3.762E-4 | 5251.25 | 1.9043098E-4 | 24 | 5740.27 | 1.7420795E-4 | 21.68 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 164.65 | 0.0060734577 | 751 | 176.26 | 0.0056735575 | 701.56 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 531.26 | 0.0018823198 | 233 | 582.11 | 0.0017178934 | 212.67 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 581.99 | 0.0017182538 | 212 | 591.89 | 0.0016895077 | 208.47 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 184.28 | 0.0054265806 | 671 | 186.74 | 0.0053550857 | 662.15 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 137.98 | 0.007247361 | 896 | 139.85 | 0.0071504954 | 884 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 733.14 | 0.0013639883 | 169 | 757.68 | 0.0013198218 | 163.53 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1104.80 | 9.051433E-4 | 112 | 1130.28 | 8.847399E-4 | 109.44 |
| **TOTAL** | 9.08 | 0.1101451 | 14.64 | 0.068308145 | 8446 | 16.27 | 0.061458398 | 7598.85 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.85847676 | 0.5050583 | 0.8808439 | 0.5408659 | 0.33238843 |
| **20.00** | 0.6028925 | 0.25508386 | 0.65295064 | 0.2925359 | 0.110482074 |
| **30.00** | 0.374294 | 0.12883222 | 0.43332514 | 0.15822268 | 0.036722966 |
| **40.00** | 0.21323998 | 0.065067776 | 0.26722404 | 0.08557725 | 0.012206289 |
| **50.00** | 0.10385457 | 0.03286302 | 0.14262748 | 0.04628581 | 0.004057229 |
| **60.00** | 0.046816688 | 0.01659774 | 0.0732812 | 0.025034416 | 0.001348576 |
| **70.00** | 0.015468823 | 0.008382826 | 0.030786319 | 0.013540261 | 4.4825108E-4 |
| **80.00** | 0.006321582 | 0.0042338157 | 0.015021645 | 0.0073234653 | 1.4899348E-4 |
| **90.00** | 0.0023123573 | 0.0021383238 | 0.0050604003 | 0.0039610122 | 4.952371E-5 |
| **100.00** | 0.0 | 0.0010799781 | 6.3558057E-4 | 0.0021423763 | 1.6461108E-5 |
| **110.00** | 0.0 | 5.454519E-4 | 9.970474E-5 | 0.0011587383 | 5.4714824E-6 |
| **120.00** | 0.0 | 2.7548498E-4 | 2.0898724E-5 | 6.26722E-4 | 1.8186574E-6 |
| **130.00** | 0.0 | 1.3913598E-4 | 0.0 | 3.3897252E-4 | 6.045007E-7 |

### Moment Release Variability Plots
*[(top)](#bruce-2768)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2768)*

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
*[(top)](#bruce-2768)*

```
  A_1 = 0.001
  fA = 0.1
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
  nEq = 10000000
  maxWallTime = 85000
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
  KTauFname = /scratch/sciteam/shaw1/rsqsim/bluew/rundir2756/Ktau..out
  KSigmaFname = /scratch/sciteam/shaw1/rsqsim/bluew/rundir2756/Ksigma..out
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
  receiverElementAreaFrac = 0.85
  receiverElementIntTol = 1.0e-4
  receiverElementSubdivisionMax = 4
  tgfDist1 = 3
  tgfDist1 = 10
```
