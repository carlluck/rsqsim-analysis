# Bruce 2621
## Metadata
| **Catalog** | Bruce 2621 |
|-----|-----|
| **Author** | Bruce Shaw, 2018/03/08 |
| **Description** | sensitivity test, diff r2585   b=.007 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 2,476,499 events in 202,704 years |
| **Frictional Params** | a=0.001, b=0.007, (b-a)=0.006, ddotEQ=1 |

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
*[(top)](#bruce-2621)*

* [PGA](hazard_pga/)
* [0.2s SA](hazard_sa_0.2s/)
* [1.0s SA](hazard_sa_1.0s/)
* [10.0s SA](hazard_sa_10.0s/)
* [2.0s SA](hazard_sa_2.0s/)
* [5.0s SA](hazard_sa_5.0s/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2621)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2621)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2621)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2621)*

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
*[(top)](#bruce-2621)*

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
*[(top)](#bruce-2621)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2621)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2621)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2621)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2621)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2621)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2621)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2621)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2621)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2621)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.003931236 | 0.0025825978 | 0.0030458225 | 0.0024602697 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 2.529753E-4 | 2.2896758E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.002109814 | 0.0016872645 | 0.0014014832 | 0.0013387381 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 7.2350935E-4 | 6.956008E-4 | 7.184498E-4 | 7.085229E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0015482089 | 0.0012872148 | 0.001259817 | 0.0012137807 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 8.39878E-4 | 6.80662E-4 | 5.666647E-4 | 5.416591E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.0080952095 | 0.0072200466 | 0.0076651517 | 0.007316842 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0014672567 | 0.0013995181 | 0.0014166617 | 0.0013971863 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0011535673 | 0.0010613273 | 0.0010726153 | 0.0010534287 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 9.5624663E-4 | 5.518964E-4 | 2.580348E-4 | 2.361425E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0026056457 | 0.0022785813 | 0.0023121943 | 0.002250118 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0037946294 | 0.002744366 | 0.002008624 | 0.0018999733 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0045535555 | 0.0044597816 | 0.0045181387 | 0.004465457 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.006096705 | 0.0049313568 | 0.0049228994 | 0.0045868647 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0044979006 | 0.0044328705 | 0.004477663 | 0.004430494 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.0045687337 | 0.004432401 | 0.004523198 | 0.0044600493 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.00522141 | 0.004846414 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 2.7827284E-4 | 2.2822726E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0027776689 | 0.0024406402 | 0.0023374918 | 0.0022777799 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.002959811 | 0.0023548747 | 0.0022919562 | 0.0022040617 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0029041565 | 0.0028251896 | 0.0028737993 | 0.0028352097 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0018821362 | 0.0015055496 | 0.0011738053 | 0.0010469474 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.008059793 | 0.007171209 | 0.0068353927 | 0.0067115417 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.007007416 | 0.0039475807 | 0.0038249865 | 0.0030981782 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.00757914 | 0.0060163983 | 0.004619329 | 0.0044646794 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.00757914 | 0.0060163983 | 0.00491784 | 0.0047330107 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.0058842055 | 0.0057860073 | 0.0058740866 | 0.0058139046 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.006268728 | 0.0038643545 | 0.005570516 | 0.0052310363 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0044118892 | 0.0028144673 | 0.0019580289 | 0.0017201675 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.004270223 | 0.0031360113 | 0.0026056457 | 0.0024243116 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.0058842055 | 0.0057383557 | 0.0058690268 | 0.0058074985 |

### Paleo Open Interval Plots
*[(top)](#bruce-2621)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2621)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 349.60 | 0.0028603973 | 566 | 354.44 | 0.0028213167 | 558.26 |
| **FRA** | 119.00 | 0.008403362 | 129.68 | 0.0077111362 | 1524 | 135.31 | 0.0073902668 | 1460.59 |
| **COA** | 181.00 | 0.005524862 | 206.37 | 0.0048456066 | 958 | 215.41 | 0.004642241 | 917.8 |
| **SCZ** | 106.00 | 0.009433962 | 203.27 | 0.0049196775 | 973 | 218.13 | 0.004584461 | 906.77 |
| **TYS** | 329.00 | 0.0030395137 | 510.73 | 0.0019579749 | 386 | 535.97 | 0.0018657673 | 367.83 |
| **TOTAL** | 31.61 | 0.0316373 | 44.85 | 0.022295326 | 4406 | 46.96 | 0.021296274 | 4208.61 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.98378277 | 0.80015224 | 0.98529625 | 0.80818623 | 0.72878754 |
| **20.00** | 0.93674296 | 0.6402436 | 0.9418966 | 0.653165 | 0.53113127 |
| **30.00** | 0.8674052 | 0.5122924 | 0.8773653 | 0.527879 | 0.3870819 |
| **40.00** | 0.7814269 | 0.40991187 | 0.79660845 | 0.42662454 | 0.28210047 |
| **50.00** | 0.6831479 | 0.3279919 | 0.70414585 | 0.34479207 | 0.2055913 |
| **60.00** | 0.5755211 | 0.26244345 | 0.60250175 | 0.2786562 | 0.14983238 |
| **70.00** | 0.48446718 | 0.20999472 | 0.5142072 | 0.22520612 | 0.10919597 |
| **80.00** | 0.39079404 | 0.16802774 | 0.42130443 | 0.18200849 | 0.079580665 |
| **90.00** | 0.31145626 | 0.13444778 | 0.3418595 | 0.14709677 | 0.057997398 |
| **100.00** | 0.23819265 | 0.107578695 | 0.2672332 | 0.118881576 | 0.04226778 |
| **110.00** | 0.1768275 | 0.08607933 | 0.202614 | 0.096078455 | 0.030804234 |
| **120.00** | 0.13133763 | 0.06887657 | 0.15361036 | 0.07764929 | 0.022449743 |
| **130.00** | 0.09448916 | 0.05511174 | 0.113875866 | 0.062755086 | 0.016361093 |
| **140.00** | 0.0620674 | 0.044097785 | 0.077591635 | 0.050717797 | 0.011923761 |
| **150.00** | 0.040957432 | 0.03528494 | 0.052275125 | 0.04098943 | 0.008689889 |
| **160.00** | 0.017725628 | 0.028233323 | 0.02545171 | 0.03312709 | 0.0063330824 |
| **170.00** | 0.0035743231 | 0.022590958 | 0.006837393 | 0.02677286 | 0.0046154717 |
| **180.00** | 0.0019683721 | 0.018076206 | 0.0038285805 | 0.021637456 | 0.0033636983 |
| **190.00** | 0.0 | 0.014463716 | 0.001135501 | 0.017487096 | 0.0024514215 |
| **200.00** | 0.0 | 0.011573175 | 6.823779E-4 | 0.01413283 | 0.0017865654 |
| **210.00** | 0.0 | 0.0092603015 | 4.5451973E-4 | 0.011421959 | 0.0013020267 |
| **220.00** | 0.0 | 0.0074096513 | 2.921056E-4 | 0.00923107 | 9.489008E-4 |
| **230.00** | 0.0 | 0.005928849 | 1.3775165E-4 | 0.0074604237 | 6.915471E-4 |
| **240.00** | 0.0 | 0.0047439816 | 4.227385E-5 | 0.006029412 | 5.039909E-4 |
| **250.00** | 0.0 | 0.0037959076 | 3.3197168E-5 | 0.004872888 | 3.673023E-4 |
| **260.00** | 0.0 | 0.0030373042 | 2.6981528E-5 | 0.003938201 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.0024303056 | 0.0 | 0.0031827998 | 1.9508575E-4 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2621)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 256.58 | 0.0038973675 | 770 | 279.63 | 0.003576176 | 706.54 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 203.40 | 0.0049164933 | 972 | 211.46 | 0.004729072 | 934.96 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 2293.64 | 4.3598903E-4 | 86 | 3169.35 | 3.1552184E-4 | 62.06 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 223.28 | 0.004478591 | 885 | 225.67 | 0.0044311774 | 875.63 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 221.03 | 0.004524187 | 894 | 224.19 | 0.0044605043 | 881.43 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 328.49 | 0.0030442677 | 602 | 407.75 | 0.002452501 | 484.91 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 804.01 | 0.0012437608 | 246 | 824.77 | 0.0012124522 | 239.81 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 1745.57 | 5.7287957E-4 | 112 | 1823.44 | 5.4841326E-4 | 107.25 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 146.37 | 0.006832143 | 1351 | 149.01 | 0.006711017 | 1326.99 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 349.60 | 0.0028603973 | 566 | 354.02 | 0.0028247123 | 558.92 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 6571.29 | 1.5217706E-4 | 29 | 6893.54 | 1.4506334E-4 | 27.6 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 427.76 | 0.002337735 | 462 | 438.96 | 0.0022780935 | 450.23 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 1445.41 | 6.9184485E-4 | 135 | 1504.10 | 6.648489E-4 | 129.76 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 170.19 | 0.005875821 | 1161 | 172.09 | 0.005810934 | 1148.19 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 166.04 | 0.006022717 | 1190 | 178.35 | 0.005607091 | 1107.86 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 511.03 | 0.001956822 | 387 | 580.46 | 0.0017227571 | 340.16 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 129.68 | 0.0077111362 | 1524 | 135.36 | 0.0073878663 | 1460.14 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 203.27 | 0.0049196775 | 973 | 218.00 | 0.004587101 | 907.27 |
| **RodgersCreek** | 325.31 | 0.003074 | 435.56 | 0.0022959088 | 453 | 452.40 | 0.0022104206 | 436.12 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 3855.59 | 2.5936373E-4 | 50 | 4162.50 | 2.4024012E-4 | 46.3 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 432.24 | 0.0023135268 | 457 | 444.00 | 0.0022522728 | 444.9 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 510.73 | 0.0019579749 | 386 | 537.03 | 0.001862098 | 367.1 |
| **Compton** | 2658.16 | 3.762E-4 | 7666.51 | 1.3043747E-4 | 25 | 7894.31 | 1.2667346E-4 | 24.28 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 206.37 | 0.0048456066 | 958 | 215.29 | 0.0046449583 | 918.36 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 675.46 | 0.0014804834 | 293 | 712.20 | 0.0014041073 | 277.87 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 704.82 | 0.0014188094 | 280 | 715.56 | 0.001397513 | 275.77 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 221.53 | 0.004514055 | 892 | 224.14 | 0.0044615683 | 881.62 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 170.19 | 0.005875821 | 1161 | 171.83 | 0.0058196057 | 1149.86 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 930.15 | 0.0010750915 | 212 | 946.47 | 0.0010565534 | 208.35 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1391.48 | 7.1865733E-4 | 142 | 1411.11 | 7.086644E-4 | 140.03 |
| **TOTAL** | 9.08 | 0.1101451 | 19.50 | 0.05128662 | 10135 | 20.32 | 0.04922293 | 9727.21 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.91568184 | 0.5987769 | 0.92112595 | 0.6112622 | 0.33238843 |
| **20.00** | 0.74373436 | 0.35853377 | 0.75761515 | 0.37364146 | 0.110482074 |
| **30.00** | 0.5467642 | 0.21468174 | 0.56827617 | 0.22839288 | 0.036722966 |
| **40.00** | 0.37601462 | 0.12854648 | 0.3976524 | 0.13960794 | 0.012206289 |
| **50.00** | 0.24400179 | 0.07697066 | 0.26345977 | 0.08533705 | 0.004057229 |
| **60.00** | 0.14785203 | 0.046088252 | 0.16371222 | 0.05216331 | 0.001348576 |
| **70.00** | 0.08660162 | 0.027596582 | 0.097966395 | 0.03188546 | 4.4825108E-4 |
| **80.00** | 0.042590395 | 0.016524196 | 0.049608 | 0.019490374 | 1.4899348E-4 |
| **90.00** | 0.022959873 | 0.009894307 | 0.027470764 | 0.011913729 | 4.952371E-5 |
| **100.00** | 0.010316231 | 0.0059244824 | 0.01292177 | 0.0072824117 | 1.6461108E-5 |
| **110.00** | 0.0044355732 | 0.003547443 | 0.0060375542 | 0.004451463 | 5.4714824E-6 |
| **120.00** | 0.00200638 | 0.002124127 | 0.0029906952 | 0.002721011 | 1.8186574E-6 |
| **130.00** | 0.0 | 0.0012718781 | 5.420113E-4 | 0.0016632511 | 6.045007E-7 |
| **140.00** | 0.0 | 7.615713E-4 | 1.8899888E-4 | 0.0010166825 | 2.0092905E-7 |
| **150.00** | 0.0 | 4.560113E-4 | 1.5406996E-4 | 6.2145956E-4 | 6.678649E-8 |
| **160.00** | 0.0 | 2.7304902E-4 | 0.0 | 3.7987472E-4 | 2.2199057E-8 |

### Moment Release Variability Plots
*[(top)](#bruce-2621)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2621)*

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
*[(top)](#bruce-2621)*

```
  A_1 = 0.001
  fA = .1
  B_1 = 0.007
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
