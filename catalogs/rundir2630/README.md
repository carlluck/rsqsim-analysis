# Bruce 2630
## Metadata
| **Catalog** | Bruce 2630 |
|-----|-----|
| **Author** | Bruce Shaw, 2018/03/08 |
| **Description** | sensitivity test, diff r2585   N=110 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 2,673,999 events in 276,821 years |
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
*[(top)](#bruce-2630)*

* [PGA](hazard_pga/)
* [0.2s SA](hazard_sa_0.2s/)
* [1.0s SA](hazard_sa_1.0s/)
* [10.0s SA](hazard_sa_10.0s/)
* [2.0s SA](hazard_sa_2.0s/)
* [5.0s SA](hazard_sa_5.0s/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2630)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2630)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2630)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2630)*

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
*[(top)](#bruce-2630)*

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
*[(top)](#bruce-2630)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2630)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2630)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2630)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2630)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2630)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2630)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2630)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2630)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2630)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0036143586 | 0.0022447424 | 0.0024770503 | 0.0021697776 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 1.8034987E-4 | 1.7092895E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0016636356 | 0.0013339494 | 0.0010084871 | 9.894543E-4 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 5.8889756E-4 | 5.676175E-4 | 5.631333E-4 | 5.553279E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0011299471 | 9.769442E-4 | 9.7536156E-4 | 9.51677E-4 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 6.2938425E-4 | 5.149778E-4 | 4.0118647E-4 | 3.934167E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.006834892 | 0.005922779 | 0.0063527324 | 0.006118163 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0010968217 | 0.0010677604 | 0.0010673768 | 0.0010562956 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 9.164718E-4 | 8.2297804E-4 | 7.950117E-4 | 7.848525E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 7.986923E-4 | 4.749334E-4 | 2.1347536E-4 | 2.0149173E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0021384342 | 0.0018712697 | 0.0017961375 | 0.0017594186 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0029113623 | 0.0021925324 | 0.0016047459 | 0.0015421533 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.003434009 | 0.0033635653 | 0.0034008834 | 0.0033641364 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0047479863 | 0.0038687538 | 0.0037026934 | 0.0035518939 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0033972028 | 0.0033428196 | 0.0033787997 | 0.003343375 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.0033935222 | 0.003310821 | 0.0033640773 | 0.0033283557 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.003989781 | 0.0037062853 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 2.2083658E-4 | 1.9203179E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0021421148 | 0.0018991065 | 0.0017850957 | 0.0017568434 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.002396077 | 0.001926931 | 0.0017850957 | 0.0017427193 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.002215727 | 0.0021709648 | 0.002186282 | 0.0021635613 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0014980081 | 0.0012336142 | 9.422361E-4 | 8.654331E-4 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.0066030137 | 0.0057495115 | 0.005300078 | 0.0052275476 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0054730666 | 0.0032914325 | 0.0029555296 | 0.0025957825 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.005778557 | 0.0047475924 | 0.0034634536 | 0.0033921255 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.005778557 | 0.0047475924 | 0.0036658873 | 0.0035856129 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.004471941 | 0.0044023497 | 0.004460899 | 0.0044138087 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.0049062525 | 0.0031385827 | 0.0041517275 | 0.0039935634 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0034634536 | 0.0023308767 | 0.0015679398 | 0.0014460217 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.003253659 | 0.0024124505 | 0.0022856586 | 0.0021702582 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.0044461763 | 0.004348244 | 0.0044424958 | 0.0043967413 |

### Paleo Open Interval Plots
*[(top)](#bruce-2630)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2630)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 456.26 | 0.0021917322 | 595 | 461.16 | 0.0021684545 | 588.65 |
| **FRA** | 119.00 | 0.008403362 | 159.84 | 0.0062564057 | 1699 | 164.41 | 0.00608233 | 1651.73 |
| **COA** | 181.00 | 0.005524862 | 276.40 | 0.003617903 | 983 | 284.03 | 0.0035207984 | 956.63 |
| **SCZ** | 106.00 | 0.009433962 | 269.89 | 0.0037051786 | 1006 | 281.56 | 0.003551596 | 964.33 |
| **TYS** | 329.00 | 0.0030395137 | 637.82 | 0.0015678386 | 426 | 660.64 | 0.0015136815 | 411.29 |
| **TOTAL** | 31.61 | 0.0316373 | 57.67 | 0.0173396 | 4709 | 59.37 | 0.016843136 | 4574.2 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9894809 | 0.8408046 | 0.990101 | 0.84498924 | 0.72878754 |
| **20.00** | 0.9598723 | 0.70695233 | 0.9620736 | 0.71400684 | 0.53113127 |
| **30.00** | 0.91152674 | 0.59440875 | 0.9160007 | 0.6033281 | 0.3870819 |
| **40.00** | 0.8543141 | 0.4997816 | 0.86110103 | 0.5098058 | 0.28210047 |
| **50.00** | 0.7861875 | 0.42021868 | 0.7954542 | 0.4307804 | 0.2055913 |
| **60.00** | 0.7215605 | 0.3533218 | 0.7326373 | 0.36400482 | 0.14983238 |
| **70.00** | 0.6503633 | 0.2970746 | 0.66335946 | 0.30758014 | 0.10919597 |
| **80.00** | 0.583611 | 0.24978167 | 0.5983354 | 0.25990194 | 0.079580665 |
| **90.00** | 0.50898916 | 0.21001756 | 0.5253818 | 0.21961434 | 0.057997398 |
| **100.00** | 0.44287848 | 0.17658374 | 0.45960683 | 0.18557176 | 0.04226778 |
| **110.00** | 0.37394696 | 0.14847241 | 0.39041618 | 0.15680614 | 0.030804234 |
| **120.00** | 0.3161093 | 0.12483628 | 0.33251387 | 0.1324995 | 0.022449743 |
| **130.00** | 0.26233327 | 0.10496292 | 0.2798284 | 0.11196066 | 0.016361093 |
| **140.00** | 0.20758167 | 0.088253304 | 0.22431538 | 0.09460555 | 0.011923761 |
| **150.00** | 0.16127592 | 0.07420378 | 0.17683598 | 0.07994068 | 0.008689889 |
| **160.00** | 0.123165 | 0.06239088 | 0.13664271 | 0.06754901 | 0.0063330824 |
| **170.00** | 0.09493494 | 0.052458536 | 0.106866896 | 0.05707819 | 0.0046154717 |
| **180.00** | 0.06450037 | 0.044107378 | 0.07437713 | 0.048230458 | 0.0033636983 |
| **190.00** | 0.04477981 | 0.037085686 | 0.05248219 | 0.040754218 | 0.0024514215 |
| **200.00** | 0.02920031 | 0.031181814 | 0.035494346 | 0.034436878 | 0.0017865654 |
| **210.00** | 0.016571607 | 0.026217813 | 0.021159187 | 0.02909879 | 0.0013020267 |
| **220.00** | 0.008196498 | 0.022044057 | 0.010788535 | 0.024588166 | 9.489008E-4 |
| **230.00** | 0.0031761564 | 0.018534744 | 0.0051106866 | 0.020776736 | 6.915471E-4 |
| **240.00** | 0.0010818248 | 0.015584097 | 0.0023786782 | 0.017556118 | 5.039909E-4 |
| **250.00** | 0.0 | 0.013103181 | 9.638162E-4 | 0.014834732 | 3.673023E-4 |
| **260.00** | 0.0 | 0.0110172145 | 6.7563105E-4 | 0.012535189 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.009263325 | 4.64751E-4 | 0.0105921 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.0077886456 | 2.937552E-4 | 0.008950211 | 1.4217607E-4 |
| **290.00** | 0.0 | 0.006548729 | 1.7040428E-4 | 0.007562832 | 1.0361615E-4 |
| **300.00** | 0.0 | 0.005506201 | 1.334453E-4 | 0.0063905115 | 7.551416E-5 |
| **310.00** | 0.0 | 0.004629639 | 9.2104405E-5 | 0.005399914 | 5.503378E-5 |
| **320.00** | 0.0 | 0.003892622 | 7.9978374E-5 | 0.004562869 | 4.0107934E-5 |
| **330.00** | 0.0 | 0.0032729344 | 7.069823E-5 | 0.0038555753 | 2.9230163E-5 |
| **340.00** | 0.0 | 0.0027518983 | 3.4190547E-5 | 0.0032579198 | 2.1302578E-5 |
| **350.00** | 0.0 | 0.0023138085 | 0.0 | 0.002752907 | 1.5525055E-5 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2630)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 331.40 | 0.0030175277 | 820 | 347.91 | 0.002874326 | 781.11 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 272.79 | 0.0036657976 | 996 | 278.86 | 0.0035859887 | 974.32 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 2918.67 | 3.426221E-4 | 93 | 3652.44 | 2.7378992E-4 | 74.1 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 295.23 | 0.003387178 | 920 | 298.30 | 0.0033523045 | 910.52 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 297.17 | 0.0033650636 | 914 | 300.44 | 0.0033284202 | 904.04 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 403.66 | 0.0024773213 | 673 | 460.68 | 0.0021707127 | 589.67 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 1041.90 | 9.597843E-4 | 261 | 1061.20 | 9.4232743E-4 | 256.25 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 2499.75 | 4.0004065E-4 | 109 | 2553.64 | 3.915981E-4 | 106.69 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 188.42 | 0.0053073647 | 1442 | 191.00 | 0.0052355235 | 1422.44 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 456.26 | 0.0021917322 | 595 | 461.34 | 0.002167601 | 588.46 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 7880.50 | 1.2689555E-4 | 33 | 8235.20 | 1.2142999E-4 | 31.59 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 560.33 | 0.00178466 | 485 | 569.22 | 0.0017567839 | 477.44 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 1872.06 | 5.341698E-4 | 145 | 1915.74 | 5.219921E-4 | 141.71 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 224.96 | 0.0044452474 | 1208 | 227.45 | 0.004396559 | 1194.78 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 226.27 | 0.004419467 | 1201 | 235.09 | 0.0042537665 | 1155.98 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 637.99 | 0.0015674157 | 426 | 691.64 | 0.0014458444 | 392.93 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 159.84 | 0.0062564057 | 1699 | 164.40 | 0.006082552 | 1651.79 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 269.89 | 0.0037051786 | 1006 | 281.34 | 0.0035544678 | 965.11 |
| **RodgersCreek** | 325.31 | 0.003074 | 559.94 | 0.0017858914 | 485 | 573.89 | 0.0017424915 | 473.21 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 4726.43 | 2.1157617E-4 | 58 | 4908.98 | 2.0370817E-4 | 55.82 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 557.09 | 0.001795036 | 488 | 568.74 | 0.0017582825 | 478 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 637.82 | 0.0015678386 | 426 | 660.85 | 0.0015132041 | 411.19 |
| **Compton** | 2658.16 | 3.762E-4 | 10350.60 | 9.661277E-5 | 26 | 10631.86 | 9.405688E-5 | 25.22 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 276.40 | 0.003617903 | 983 | 283.83 | 0.0035232184 | 957.3 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 964.04 | 0.0010373053 | 282 | 985.36 | 0.0010148583 | 275.89 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 932.53 | 0.0010723519 | 291 | 942.75 | 0.0010607241 | 287.81 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 294.27 | 0.0033982352 | 923 | 297.33 | 0.0033632922 | 913.51 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 224.22 | 0.0044599785 | 1212 | 226.63 | 0.004412468 | 1199.08 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1250.66 | 7.9957984E-4 | 217 | 1267.05 | 7.892352E-4 | 214.19 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1764.71 | 5.666655E-4 | 153 | 1788.62 | 5.590908E-4 | 150.96 |
| **TOTAL** | 9.08 | 0.1101451 | 25.25 | 0.039608497 | 10760 | 25.91 | 0.03860067 | 10486.24 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.94665873 | 0.6729495 | 0.94892156 | 0.679766 | 0.33238843 |
| **20.00** | 0.8215995 | 0.45286104 | 0.82829475 | 0.4620818 | 0.110482074 |
| **30.00** | 0.6724879 | 0.30475262 | 0.68294245 | 0.31410748 | 0.036722966 |
| **40.00** | 0.5361662 | 0.20508313 | 0.5482823 | 0.21351959 | 0.012206289 |
| **50.00** | 0.40706065 | 0.13801059 | 0.42016837 | 0.14514334 | 0.004057229 |
| **60.00** | 0.29894915 | 0.09287416 | 0.31174546 | 0.09866351 | 0.001348576 |
| **70.00** | 0.20927955 | 0.062499624 | 0.22141182 | 0.0670681 | 4.4825108E-4 |
| **80.00** | 0.14335465 | 0.04205909 | 0.15322669 | 0.045590613 | 1.4899348E-4 |
| **90.00** | 0.09050926 | 0.028303646 | 0.09909697 | 0.030990947 | 4.952371E-5 |
| **100.00** | 0.0584681 | 0.019046925 | 0.064796425 | 0.021066591 | 1.6461108E-5 |
| **110.00** | 0.039441016 | 0.012817618 | 0.04380141 | 0.014320352 | 5.4714824E-6 |
| **120.00** | 0.023826417 | 0.00862561 | 0.026713831 | 0.009734488 | 1.8186574E-6 |
| **130.00** | 0.015965305 | 0.0058046 | 0.017938884 | 0.006617174 | 6.045007E-7 |
| **140.00** | 0.005790219 | 0.003906203 | 0.0072759693 | 0.0044981297 | 2.0092905E-7 |
| **150.00** | 0.0022427763 | 0.0026286773 | 0.0030097093 | 0.0030576757 | 6.678649E-8 |
| **160.00** | 0.0010720085 | 0.0017689671 | 0.0016223557 | 0.0020785038 | 2.2199057E-8 |
| **170.00** | 0.0 | 0.0011904256 | 5.4605445E-4 | 0.0014128962 | 7.37871E-9 |
| **180.00** | 0.0 | 8.010963E-4 | 4.1265096E-4 | 9.604388E-4 | 2.452598E-9 |
| **190.00** | 0.0 | 5.390974E-4 | 9.772871E-5 | 6.528736E-4 | 8.152152E-10 |
| **200.00** | 0.0 | 3.6278533E-4 | 8.116468E-5 | 4.4380128E-4 | 2.709681E-10 |
| **210.00** | 0.0 | 2.4413622E-4 | 0.0 | 3.0168102E-4 | 9.006666E-11 |

### Moment Release Variability Plots
*[(top)](#bruce-2630)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2630)*

Example rupture plots:

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![example](resources/elastic_rebound_triggering_m6_example_re_rup.png) |  |  |
| ![example](resources/elastic_rebound_triggering_m6_example_new_hypo.png) | ![example](resources/elastic_rebound_triggering_m6.5_example_new_hypo.png) | ![example](resources/elastic_rebound_triggering_m7_example_new_hypo.png) |

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_1yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_1yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_1yr.png) |
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_10yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_10yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_10yr.png) |
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_100yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_100yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_100yr.png) |

## Input File
*[(top)](#bruce-2630)*

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
  sigma0_1 = 110
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
