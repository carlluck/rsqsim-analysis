# Bruce 2625
## Metadata
| **Catalog** | Bruce 2625 |
|-----|-----|
| **Author** | Bruce Shaw, 2018/03/08 |
| **Description** | sensitivity test, diff r2585   a=.0009 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 2,539,499 events in 246,492 years |
| **Frictional Params** | a=9.0E-4, b=0.008, (b-a)=0.0071, ddotEQ=1 |

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
*[(top)](#bruce-2625)*

* [PGA](hazard_pga/)
* [0.2s SA](hazard_sa_0.2s/)
* [1.0s SA](hazard_sa_1.0s/)
* [10.0s SA](hazard_sa_10.0s/)
* [2.0s SA](hazard_sa_2.0s/)
* [5.0s SA](hazard_sa_5.0s/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2625)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2625)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2625)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2625)*

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
*[(top)](#bruce-2625)*

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
*[(top)](#bruce-2625)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2625)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2625)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2625)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2625)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2625)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2625)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2625)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2625)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2625)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0036821915 | 0.002379889 | 0.0027916727 | 0.0023615095 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 1.9467155E-4 | 1.8146727E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0018390248 | 0.001478488 | 0.0012135907 | 0.0011739483 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 6.3786E-4 | 6.16656E-4 | 6.171502E-4 | 6.1017333E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0012715779 | 0.0010845776 | 0.0010810484 | 0.0010546304 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 7.5797644E-4 | 6.214229E-4 | 4.8046594E-4 | 4.6606743E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.006917053 | 0.0062029227 | 0.0065152836 | 0.0062872623 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0012467263 | 0.001189887 | 0.0012053068 | 0.0011891479 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0010023514 | 9.3316595E-4 | 8.946607E-4 | 8.825521E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 9.5678994E-4 | 5.229798E-4 | 2.1952324E-4 | 2.0734314E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0021703807 | 0.0019184797 | 0.001905296 | 0.0018765188 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0031106027 | 0.0023475683 | 0.0017686117 | 0.0016963697 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.004042541 | 0.003925014 | 0.003959702 | 0.0039159376 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0052685575 | 0.0042975554 | 0.004278632 | 0.0040314766 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.004030115 | 0.003945092 | 0.0039804117 | 0.0039360914 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.0042744903 | 0.0040356996 | 0.004034257 | 0.0039837244 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.004469162 | 0.004167595 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 2.1952324E-4 | 1.8785476E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0023070648 | 0.002065979 | 0.0019591413 | 0.001924064 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0031313126 | 0.0023463364 | 0.002054406 | 0.0019847206 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.002460317 | 0.0024018835 | 0.0024147555 | 0.0023859618 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0016153596 | 0.0013079371 | 0.0010230611 | 9.341828E-4 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.007190421 | 0.00632772 | 0.0059768306 | 0.0058804536 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0061383666 | 0.0035666653 | 0.0033094164 | 0.002818833 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.006370316 | 0.0051510176 | 0.0038644373 | 0.0037705065 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.006370316 | 0.0051510176 | 0.004038399 | 0.003934017 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.005053176 | 0.0049639484 | 0.0050241826 | 0.0049734046 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.0054549454 | 0.003424645 | 0.004767382 | 0.0045348187 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0037443207 | 0.0024551658 | 0.0017561859 | 0.0015738319 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.003649056 | 0.0026804523 | 0.0024023296 | 0.0022580393 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.0050283247 | 0.004914678 | 0.0050200406 | 0.0049694357 |

### Paleo Open Interval Plots
*[(top)](#bruce-2625)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2625)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 415.16 | 0.0024086821 | 581 | 419.92 | 0.0023814035 | 574.41 |
| **FRA** | 119.00 | 0.008403362 | 153.00 | 0.0065358444 | 1577 | 157.92 | 0.0063322284 | 1527.89 |
| **COA** | 181.00 | 0.005524862 | 251.19 | 0.003981052 | 962 | 258.59 | 0.0038671528 | 934.39 |
| **SCZ** | 106.00 | 0.009433962 | 233.76 | 0.0042778854 | 1033 | 248.23 | 0.004028585 | 972.7 |
| **TYS** | 329.00 | 0.0030395137 | 573.44 | 0.0017438728 | 421 | 595.69 | 0.0016787357 | 405.2 |
| **TOTAL** | 31.61 | 0.0316373 | 52.79 | 0.018944174 | 4574 | 54.67 | 0.01829145 | 4415.97 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9867712 | 0.82742095 | 0.98778826 | 0.83283937 | 0.72878754 |
| **20.00** | 0.95468396 | 0.6846254 | 0.95780927 | 0.6936214 | 0.53113127 |
| **30.00** | 0.8978168 | 0.56647336 | 0.90395176 | 0.5776752 | 0.3870819 |
| **40.00** | 0.8353714 | 0.4687119 | 0.84421784 | 0.48111066 | 0.28210047 |
| **50.00** | 0.76078683 | 0.38782203 | 0.7732432 | 0.4006879 | 0.2055913 |
| **60.00** | 0.6745548 | 0.32089207 | 0.69075567 | 0.33370864 | 0.14983238 |
| **70.00** | 0.6005895 | 0.26551282 | 0.6192347 | 0.2779257 | 0.10919597 |
| **80.00** | 0.5210024 | 0.21969086 | 0.54108983 | 0.23146747 | 0.079580665 |
| **90.00** | 0.44222477 | 0.1817768 | 0.46412957 | 0.19277522 | 0.057997398 |
| **100.00** | 0.3735874 | 0.15040594 | 0.3960755 | 0.16055079 | 0.04226778 |
| **110.00** | 0.31379175 | 0.12444902 | 0.33634028 | 0.13371302 | 0.030804234 |
| **120.00** | 0.2514456 | 0.102971725 | 0.27222854 | 0.11136147 | 0.022449743 |
| **130.00** | 0.20249967 | 0.08520096 | 0.22119395 | 0.09274621 | 0.016361093 |
| **140.00** | 0.15946993 | 0.07049706 | 0.17616057 | 0.077242695 | 0.011923761 |
| **150.00** | 0.113030374 | 0.058330737 | 0.12745005 | 0.06433076 | 0.008689889 |
| **160.00** | 0.078922026 | 0.048264075 | 0.091890685 | 0.05357719 | 0.0063330824 |
| **170.00** | 0.058774788 | 0.039934702 | 0.069131635 | 0.044621192 | 0.0046154717 |
| **180.00** | 0.037345674 | 0.03304281 | 0.04450499 | 0.037162285 | 0.0033636983 |
| **190.00** | 0.016738271 | 0.027340312 | 0.02134913 | 0.030950215 | 0.0024514215 |
| **200.00** | 0.0067673465 | 0.022621946 | 0.00863601 | 0.025776558 | 0.0017865654 |
| **210.00** | 0.0021384703 | 0.018717872 | 0.003588363 | 0.02146773 | 0.0013020267 |
| **220.00** | 0.0 | 0.015487558 | 0.0010084872 | 0.017879171 | 9.489008E-4 |
| **230.00** | 0.0 | 0.01281473 | 6.2146015E-4 | 0.014890478 | 6.915471E-4 |
| **240.00** | 0.0 | 0.0106031755 | 2.959247E-4 | 0.012401376 | 5.039909E-4 |
| **250.00** | 0.0 | 0.00877329 | 2.340024E-4 | 0.010328354 | 3.673023E-4 |
| **260.00** | 0.0 | 0.007259203 | 1.9608204E-4 | 0.00860186 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.0060064164 | 1.0185E-4 | 0.007163968 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.004969835 | 7.056923E-5 | 0.0059664343 | 1.4217607E-4 |
| **290.00** | 0.0 | 0.0041121454 | 4.918329E-5 | 0.0049690814 | 1.0361615E-4 |
| **300.00** | 0.0 | 0.003402475 | 2.3652474E-5 | 0.0041384464 | 7.551416E-5 |
| **310.00** | 0.0 | 0.002815279 | 1.563845E-5 | 0.0034466612 | 5.503378E-5 |
| **320.00** | 0.0 | 0.0023294208 | 0.0 | 0.0028705152 | 4.0107934E-5 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2625)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 298.16 | 0.0033538812 | 809 | 316.71 | 0.0031574944 | 761.62 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 247.84 | 0.004034906 | 975 | 254.69 | 0.00392638 | 948.71 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 2783.79 | 3.5922186E-4 | 86 | 3614.54 | 2.7666058E-4 | 65.85 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 251.33 | 0.0039788904 | 961 | 254.08 | 0.0039358246 | 950.59 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 247.97 | 0.004032771 | 974 | 250.92 | 0.003985347 | 962.55 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 358.22 | 0.0027916036 | 674 | 423.82 | 0.0023594885 | 569.72 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 936.39 | 0.0010679283 | 258 | 953.88 | 0.0010483502 | 253.25 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 2079.52 | 4.808791E-4 | 116 | 2145.93 | 4.6599802E-4 | 112.43 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 167.70 | 0.0059629143 | 1439 | 170.32 | 0.0058714505 | 1416.89 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 415.16 | 0.0024086821 | 581 | 420.32 | 0.0023791196 | 573.87 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 7302.24 | 1.3694422E-4 | 32 | 7658.99 | 1.3056544E-4 | 30.34 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 510.60 | 0.0019584973 | 473 | 520.14 | 0.001922545 | 464.31 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 1791.95 | 5.58051E-4 | 135 | 1837.72 | 5.441532E-4 | 131.62 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 199.14 | 0.0050216485 | 1212 | 201.19 | 0.004970355 | 1199.61 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 199.80 | 0.0050050616 | 1208 | 209.57 | 0.0047715907 | 1151.62 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 568.83 | 0.0017579934 | 424 | 633.89 | 0.0015775653 | 380.48 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 153.00 | 0.0065358444 | 1577 | 157.74 | 0.006339374 | 1529.56 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 233.76 | 0.0042778854 | 1033 | 248.16 | 0.004029664 | 972.99 |
| **RodgersCreek** | 325.31 | 0.003074 | 486.72 | 0.0020545889 | 496 | 503.48 | 0.0019861953 | 479.46 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 4551.28 | 2.1971864E-4 | 53 | 4809.08 | 2.0794009E-4 | 50.14 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 524.19 | 0.0019076996 | 460 | 532.36 | 0.0018784393 | 452.95 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 573.44 | 0.0017438728 | 421 | 597.17 | 0.0016745697 | 404.22 |
| **Compton** | 2658.16 | 3.762E-4 | 7805.85 | 1.2810911E-4 | 30 | 8241.91 | 1.21331155E-4 | 28.26 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 251.19 | 0.003981052 | 962 | 258.48 | 0.0038687736 | 934.77 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 811.18 | 0.0012327743 | 298 | 840.56 | 0.0011896879 | 287.58 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 833.03 | 0.0012004387 | 290 | 844.16 | 0.0011846045 | 286.14 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 252.11 | 0.0039664563 | 958 | 255.07 | 0.0039205467 | 946.9 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 198.81 | 0.005029942 | 1214 | 200.83 | 0.004979435 | 1201.81 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1113.65 | 8.97951E-4 | 217 | 1129.73 | 8.8516844E-4 | 213.89 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1629.32 | 6.137544E-4 | 149 | 1648.03 | 6.0678634E-4 | 147.31 |
| **TOTAL** | 9.08 | 0.1101451 | 22.90 | 0.04367609 | 10545 | 23.63 | 0.04231523 | 10216.45 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.936981 | 0.6461259 | 0.9403551 | 0.6549789 | 0.33238843 |
| **20.00** | 0.797662 | 0.41747868 | 0.8067181 | 0.42899734 | 0.110482074 |
| **30.00** | 0.62721044 | 0.26974377 | 0.64107525 | 0.2809842 | 0.036722966 |
| **40.00** | 0.4795059 | 0.17428844 | 0.4955135 | 0.18403871 | 0.012206289 |
| **50.00** | 0.34626627 | 0.11261228 | 0.3622918 | 0.12054147 | 0.004057229 |
| **60.00** | 0.23187654 | 0.07276171 | 0.24733055 | 0.07895212 | 0.001348576 |
| **70.00** | 0.15403818 | 0.047013223 | 0.16700538 | 0.05171197 | 4.4825108E-4 |
| **80.00** | 0.09789871 | 0.030376462 | 0.10796986 | 0.033870246 | 1.4899348E-4 |
| **90.00** | 0.057997324 | 0.019627018 | 0.06553831 | 0.022184296 | 4.952371E-5 |
| **100.00** | 0.03485057 | 0.012681525 | 0.040390443 | 0.014530245 | 1.6461108E-5 |
| **110.00** | 0.021200322 | 0.008193862 | 0.02521361 | 0.009517004 | 5.4714824E-6 |
| **120.00** | 0.011722794 | 0.005294266 | 0.014069925 | 0.0062334365 | 1.8186574E-6 |
| **130.00** | 0.0054838215 | 0.0034207625 | 0.0068467036 | 0.004082769 | 6.045007E-7 |
| **140.00** | 0.0039629177 | 0.0022102431 | 0.0045455433 | 0.0026741277 | 2.0092905E-7 |
| **150.00** | 0.0023719287 | 0.0014280954 | 0.0023061484 | 0.0017514972 | 6.678649E-8 |
| **160.00** | 0.0015729815 | 9.2272944E-4 | 0.0015828122 | 0.0011471936 | 2.2199057E-8 |
| **170.00** | 0.0 | 5.9619936E-4 | 4.0032275E-4 | 7.5138756E-4 | 7.37871E-9 |
| **180.00** | 0.0 | 3.8521984E-4 | 1.9448564E-5 | 4.92143E-4 | 2.452598E-9 |
| **190.00** | 0.0 | 2.4890053E-4 | 0.0 | 3.2234326E-4 | 8.152152E-10 |

### Moment Release Variability Plots
*[(top)](#bruce-2625)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2625)*

Example rupture plots:

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
|  |  |  |
| ![example](resources/elastic_rebound_triggering_m6_example_new_hypo.png) | ![example](resources/elastic_rebound_triggering_m6.5_example_new_hypo.png) | ![example](resources/elastic_rebound_triggering_m7_example_new_hypo.png) |

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_1yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_1yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_1yr.png) |
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_10yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_10yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_10yr.png) |
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_100yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_100yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_100yr.png) |

## Input File
*[(top)](#bruce-2625)*

```
  A_1 = 0.0009
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
