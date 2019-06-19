# Bruce 2592
## Metadata
| **Catalog** | Bruce 2592 |
|-----|-----|
| **Author** | Bruce Shaw, 2018/02/11 |
| **Description** | straight loaded;  fracCreep=0.5;  H=16 (2,11,3); stressMult=1.2; neighbors |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.36 km^2 |
| **Length** | 3,087,999 events in 312,617 years |
| **Frictional Params** | a=0.001, b=0.008, (b-a)=0.007, ddotEQ=1 |

* [Metadata](#metadata)
* [Hazard Comparisons](#hazard-comparisons)
* [Extreme Event Examples](extreme_events/)
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
*[(top)](#bruce-2592)*

* [PGA](hazard_pga/)
* [0.2s SA](hazard_sa_0.2s/)
* [1.0s SA](hazard_sa_1.0s/)
* [10.0s SA](hazard_sa_10.0s/)
* [5.0s SA](hazard_sa_5.0s/)

## Extreme Event Examples
*[(top)](#bruce-2592)*

[Extreme Event Examples Here](extreme_events/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2592)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2592)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2592)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2592)*

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
*[(top)](#bruce-2592)*

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
*[(top)](#bruce-2592)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2592)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2592)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2592)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2592)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2592)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2592)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2592)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2592)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2592)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0045357132 | 0.0023204843 | 0.0026076287 | 0.0023009377 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 2.4385554E-4 | 2.2750489E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0017264972 | 0.001365383 | 0.0011087299 | 0.0010778084 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 6.4703E-4 | 6.1700423E-4 | 6.242702E-4 | 6.159708E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0013558369 | 0.0011394704 | 0.0010794672 | 0.0010575227 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 9.299025E-4 | 7.279352E-4 | 5.26728E-4 | 5.1031157E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.007127085 | 0.006086219 | 0.0061289025 | 0.005992829 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0013590882 | 0.0012842219 | 0.0012875573 | 0.0012712596 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0013395798 | 0.001221916 | 0.0011607524 | 0.0011413146 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 8.616229E-4 | 4.5062322E-4 | 2.4710695E-4 | 2.3408307E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0026238856 | 0.0021819358 | 0.0021264204 | 0.0020897514 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0030628256 | 0.0022107942 | 0.0016387092 | 0.0015745028 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0042853546 | 0.004143041 | 0.0041845613 | 0.0041367724 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0055761635 | 0.00441462 | 0.004174807 | 0.003980356 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.004168304 | 0.0040977034 | 0.0041390415 | 0.004096275 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.004119533 | 0.0038843616 | 0.0041227844 | 0.00406117 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.004929133 | 0.0045592105 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 3.2514072E-4 | 2.5903198E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0025035837 | 0.002214704 | 0.0021166662 | 0.002077854 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0026206342 | 0.0019936408 | 0.0022142082 | 0.0020893198 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0029165123 | 0.0027513567 | 0.0028059646 | 0.0027737361 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0017232458 | 0.0013977833 | 0.0011932665 | 0.0011242068 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.00609964 | 0.005857167 | 0.005894801 | 0.0058193337 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0062492047 | 0.003616179 | 0.0033717093 | 0.002939218 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.007114079 | 0.0054763537 | 0.0042918576 | 0.0041423207 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.007114079 | 0.0054763537 | 0.00432112 | 0.0042085745 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.005634689 | 0.0055299583 | 0.005602175 | 0.0055423835 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.006219942 | 0.003978203 | 0.005130721 | 0.0049280217 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0033652065 | 0.0025040682 | 0.0021296719 | 0.0018241035 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0026791596 | 0.0021529165 | 0.0024157956 | 0.0023355614 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.005611929 | 0.005482722 | 0.005589169 | 0.0055317497 |

### Paleo Open Interval Plots
*[(top)](#bruce-2592)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2592)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 355.56 | 0.0028124333 | 865 | 360.21 | 0.0027761422 | 853.83 |
| **FRA** | 119.00 | 0.008403362 | 163.17 | 0.00612844 | 1885 | 166.91 | 0.0059912405 | 1842.8 |
| **COA** | 181.00 | 0.005524862 | 235.22 | 0.0042513637 | 1307 | 241.59 | 0.0041392404 | 1272.52 |
| **SCZ** | 106.00 | 0.009433962 | 239.51 | 0.004175181 | 1284 | 251.23 | 0.0039804867 | 1224.16 |
| **TYS** | 329.00 | 0.0030395137 | 622.83 | 0.0016055796 | 494 | 647.81 | 0.0015436687 | 474.99 |
| **TOTAL** | 31.61 | 0.0316373 | 52.70 | 0.018975426 | 5835 | 54.24 | 0.018437652 | 5669.66 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9877955 | 0.8271624 | 0.9884795 | 0.8316226 | 0.72878754 |
| **20.00** | 0.9527714 | 0.6841976 | 0.9552634 | 0.6915962 | 0.53113127 |
| **30.00** | 0.8969355 | 0.5659425 | 0.90216666 | 0.57514703 | 0.3870819 |
| **40.00** | 0.82811123 | 0.46812636 | 0.8363771 | 0.47830528 | 0.28210047 |
| **50.00** | 0.75613606 | 0.3872165 | 0.7665425 | 0.3977695 | 0.2055913 |
| **60.00** | 0.67978275 | 0.32029095 | 0.6925661 | 0.33079413 | 0.14983238 |
| **70.00** | 0.59619963 | 0.26493263 | 0.6116269 | 0.27509588 | 0.10919597 |
| **80.00** | 0.5198885 | 0.2191423 | 0.5370972 | 0.22877595 | 0.079580665 |
| **90.00** | 0.434732 | 0.18126626 | 0.45303532 | 0.19025525 | 0.057997398 |
| **100.00** | 0.3640915 | 0.14993663 | 0.38180822 | 0.15822057 | 0.04226778 |
| **110.00** | 0.30320334 | 0.12402195 | 0.3199281 | 0.13157982 | 0.030804234 |
| **120.00** | 0.2455733 | 0.102586284 | 0.2617924 | 0.10942475 | 0.022449743 |
| **130.00** | 0.18714823 | 0.08485552 | 0.20310047 | 0.091000095 | 0.016361093 |
| **140.00** | 0.13441484 | 0.07018929 | 0.14881603 | 0.07567774 | 0.011923761 |
| **150.00** | 0.09686308 | 0.05805794 | 0.10916736 | 0.06293532 | 0.008689889 |
| **160.00** | 0.066778965 | 0.048023347 | 0.07724576 | 0.052338436 | 0.0063330824 |
| **170.00** | 0.036876485 | 0.039723106 | 0.045288447 | 0.043525826 | 0.0046154717 |
| **180.00** | 0.018299626 | 0.03285746 | 0.024151184 | 0.036197063 | 0.0033636983 |
| **190.00** | 0.0018924325 | 0.027178453 | 0.005010431 | 0.030102296 | 0.0024514215 |
| **200.00** | 8.9349196E-4 | 0.022480994 | 0.0030138516 | 0.025033752 | 0.0017865654 |
| **210.00** | 0.0 | 0.018595433 | 0.0016606665 | 0.020818634 | 0.0013020267 |
| **220.00** | 0.0 | 0.015381442 | 0.0012182823 | 0.017313248 | 9.489008E-4 |
| **230.00** | 0.0 | 0.01272295 | 7.5776235E-4 | 0.014398088 | 6.915471E-4 |
| **240.00** | 0.0 | 0.010523946 | 5.5730453E-4 | 0.011973776 | 5.039909E-4 |
| **250.00** | 0.0 | 0.0087050125 | 3.4493135E-4 | 0.009957663 | 3.673023E-4 |
| **260.00** | 0.0 | 0.007200459 | 1.7898911E-4 | 0.008281018 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.005955949 | 3.8158025E-5 | 0.0068866815 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.0049265367 | 1.6238515E-5 | 0.00572712 | 1.4217607E-4 |
| **290.00** | 0.0 | 0.0040750457 | 9.951047E-6 | 0.0047628027 | 1.0361615E-4 |
| **300.00** | 0.0 | 0.0033707246 | 0.0 | 0.0039608544 | 7.551416E-5 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2592)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 290.57 | 0.0034415394 | 1058 | 307.72 | 0.003249733 | 999.06 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 231.32 | 0.0043229796 | 1329 | 237.51 | 0.0042104204 | 1294.41 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 24508.80 | 4.080168E-5 | 13 | 31133.47 | 3.2119773E-5 | 9.78 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 241.14 | 0.004146905 | 1275 | 243.75 | 0.004102542 | 1261.35 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 242.48 | 0.00412412 | 1268 | 246.27 | 0.0040605506 | 1248.45 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 383.40 | 0.0026082562 | 802 | 434.69 | 0.0023004774 | 707.34 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 925.57 | 0.0010804102 | 332 | 944.82 | 0.0010584014 | 325.21 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 1942.64 | 5.147625E-4 | 158 | 2000.72 | 4.9982115E-4 | 153.41 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 169.63 | 0.0058952635 | 1813 | 171.86 | 0.0058187083 | 1789.45 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 355.56 | 0.0028124333 | 865 | 360.15 | 0.002776604 | 853.94 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 8385.40 | 1.1925485E-4 | 37 | 8665.25 | 1.1540347E-4 | 35.79 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 472.26 | 0.0021174971 | 651 | 480.68 | 0.0020803823 | 639.59 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 1026.95 | 9.737616E-4 | 299 | 1087.57 | 9.1948005E-4 | 282.13 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 178.63 | 0.0055982266 | 1722 | 180.53 | 0.005539252 | 1703.86 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 170.03 | 0.005881228 | 1809 | 181.66 | 0.0055047353 | 1693.01 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 469.85 | 0.0021283524 | 655 | 549.30 | 0.0018204836 | 560.23 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 163.17 | 0.00612844 | 1885 | 166.92 | 0.0059910095 | 1842.74 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 239.51 | 0.004175181 | 1284 | 251.12 | 0.003982094 | 1224.62 |
| **RodgersCreek** | 325.31 | 0.003074 | 453.34 | 0.0022058452 | 678 | 479.86 | 0.00208394 | 640.56 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 4047.21 | 2.4708387E-4 | 76 | 4264.04 | 2.3451912E-4 | 71.94 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 469.40 | 0.0021303587 | 655 | 478.36 | 0.0020904879 | 642.76 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 622.83 | 0.0016055796 | 494 | 648.06 | 0.0015430613 | 474.79 |
| **Compton** | 2658.16 | 3.762E-4 | 7546.86 | 1.3250539E-4 | 41 | 8223.62 | 1.2160099E-4 | 37.64 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 235.22 | 0.0042513637 | 1307 | 241.41 | 0.004142294 | 1273.47 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 871.26 | 0.0011477583 | 353 | 901.06 | 0.0011098094 | 341.34 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 776.66 | 0.001287557 | 396 | 787.62 | 0.001269652 | 390.44 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 237.05 | 0.0042185155 | 1297 | 240.25 | 0.004162336 | 1279.73 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 178.52 | 0.005601479 | 1723 | 180.48 | 0.0055407477 | 1704.3 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 865.46 | 0.0011554532 | 356 | 880.95 | 0.0011351432 | 349.76 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1595.16 | 6.2689575E-4 | 192 | 1616.76 | 6.185225E-4 | 189.43 |
| **TOTAL** | 9.08 | 0.1101451 | 20.17 | 0.04957224 | 15242 | 20.81 | 0.048063807 | 14778.22 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.92016345 | 0.6091307 | 0.92406434 | 0.6183887 | 0.33238843 |
| **20.00** | 0.75007755 | 0.37104023 | 0.76012826 | 0.38240457 | 0.110482074 |
| **30.00** | 0.57261676 | 0.22601199 | 0.586535 | 0.23647466 | 0.036722966 |
| **40.00** | 0.40677705 | 0.13767084 | 0.4227259 | 0.14623326 | 0.012206289 |
| **50.00** | 0.27387843 | 0.08385954 | 0.28896096 | 0.09042899 | 0.004057229 |
| **60.00** | 0.1779185 | 0.05108142 | 0.19103996 | 0.05592027 | 0.001348576 |
| **70.00** | 0.115250684 | 0.031115262 | 0.12588355 | 0.03458046 | 4.4825108E-4 |
| **80.00** | 0.06710776 | 0.018953262 | 0.075208254 | 0.021384167 | 1.4899348E-4 |
| **90.00** | 0.04110867 | 0.011545014 | 0.046270955 | 0.013223727 | 4.952371E-5 |
| **100.00** | 0.023084335 | 0.007032422 | 0.026747655 | 0.008177403 | 1.6461108E-5 |
| **110.00** | 0.012485282 | 0.0042836643 | 0.0147857135 | 0.005056814 | 5.4714824E-6 |
| **120.00** | 0.0072531854 | 0.0026093114 | 0.008768642 | 0.0031270764 | 1.8186574E-6 |
| **130.00** | 0.0036596144 | 0.0015894118 | 0.0044242125 | 0.0019337487 | 6.045007E-7 |
| **140.00** | 0.0026338967 | 9.6815947E-4 | 0.0028529754 | 0.0011958084 | 2.0092905E-7 |
| **150.00** | 0.002057908 | 5.897357E-4 | 0.002229078 | 7.394744E-4 | 6.678649E-8 |
| **160.00** | 7.667484E-4 | 3.592261E-4 | 7.301308E-4 | 4.572826E-4 | 2.2199057E-8 |
| **170.00** | 0.0 | 2.1881565E-4 | 0.0 | 2.8277838E-4 | 7.37871E-9 |

### Moment Release Variability Plots
*[(top)](#bruce-2592)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2592)*

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
*[(top)](#bruce-2592)*

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
  neighborFname = zfault_Deepen_neighbors.in
  stressRateFname =  
  slowSlipFname = 
  writePatchFname = 
  DEBUG = 0
  ZBrentUpperBracket = 0
```
