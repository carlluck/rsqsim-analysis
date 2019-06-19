# JG Tune Base SW
## Metadata
| **Catalog** | JG Tune Base SW |
|-----|-----|
| **Author** | Jacqui Gilchrist, 2017/11/20 |
| **Description** | Tuned, additional slip weakening parameters using Keith's fault geometry. muSlipAmp = 0.2, muSlipInvDist_1 = 2.0, cohesion = 6. |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 0.90 km^2 |
| **Length** | 40,715,999 events in 110,918 years |
| **Frictional Params** | a=0.005, b=0.006, (b-a)=0.001, ddotEQ=1 |

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
*[(top)](#jg-tune-base-sw)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#jg-tune-base-sw)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#jg-tune-base-sw)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#jg-tune-base-sw)*

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
*[(top)](#jg-tune-base-sw)*

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
*[(top)](#jg-tune-base-sw)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#jg-tune-base-sw)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#jg-tune-base-sw)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#jg-tune-base-sw)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#jg-tune-base-sw)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#jg-tune-base-sw)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#jg-tune-base-sw)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#jg-tune-base-sw)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#jg-tune-base-sw)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#jg-tune-base-sw)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0052305437 | 0.0032023503 | 0.0 | 0.0 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 0.001095204 | 8.0799137E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0028985143 | 0.001752133 | 0.0016239233 | 0.0015329231 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 0.0011329697 | 7.802799E-4 | 0.0 | 0.0 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.001708896 | 0.0010456459 | 8.2140305E-4 | 8.0583844E-4 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 8.8749296E-4 | 5.861867E-4 | 0.0 | 0.0 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.016003197 | 0.0096236365 | 0.0050511565 | 0.004995416 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0019071656 | 0.0012832038 | 8.780515E-4 | 8.670119E-4 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0016239233 | 0.001206265 | 0.0 | 0.0 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 6.7978184E-4 | 4.2832125E-4 | 0.0 | 0.0 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0036727102 | 0.0026188884 | 0.0 | 0.0 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0047112657 | 0.003327893 | 0.0026341546 | 0.0025158343 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.007458717 | 0.0050376295 | 0.0032761707 | 0.0032421884 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.007524807 | 0.005551218 | 0.004380816 | 0.004237935 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0058725597 | 0.0044318754 | 0.0034272333 | 0.0033811831 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.0072321235 | 0.005232615 | 0.0034649991 | 0.0034300669 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.008025202 | 0.005554099 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 6.325748E-4 | 4.1425994E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0022281737 | 0.0015903686 | 0.0010385555 | 0.0010264999 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.004720707 | 0.0028585894 | 0.0 | 0.0 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.004947301 | 0.003477871 | 0.0021526425 | 0.002081303 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0031156668 | 0.0018862793 | 0.0 | 0.0 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.009658567 | 0.006934487 | 0.004446906 | 0.0043936726 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.006524017 | 0.00381067 | 0.0 | 0.0 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.005948091 | 0.0039989045 | 0.0 | 0.0 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.005948091 | 0.0039989045 | 0.0 | 0.0 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.009847395 | 0.00704596 | 0.0046451758 | 0.0045698737 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.009271469 | 0.005556329 | 0.005079481 | 0.004867045 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.010026782 | 0.0054747374 | 0.0 | 0.0 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0054193716 | 0.0034318 | 0.0 | 0.0 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.011159752 | 0.008193025 | 0.006269099 | 0.006130749 |

### Paleo Open Interval Plots
*[(top)](#jg-tune-base-sw)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#jg-tune-base-sw)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 466.05 | 0.0021457057 | 228 | 482.21 | 0.0020737725 | 220.39 |
| **FRA** | 119.00 | 0.008403362 | 195.92 | 0.005104008 | 540 | 198.66 | 0.005033648 | 532.56 |
| **COA** | 181.00 | 0.005524862 | 264.20 | 0.0037850619 | 401 | 267.55 | 0.0037375593 | 395.98 |
| **SCZ** | 106.00 | 0.009433962 | 230.71 | 0.0043343944 | 459 | 237.67 | 0.0042075673 | 445.59 |
| **TYS** | 329.00 | 0.0030395137 | 380.24 | 0.0026298836 | 279 | 398.71 | 0.002508095 | 265.96 |
| **TOTAL** | 31.61 | 0.0316373 | 55.54 | 0.01800354 | 1907 | 56.94 | 0.017562669 | 1860.22 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9881272 | 0.83524066 | 0.98871505 | 0.8389311 | 0.72878754 |
| **20.00** | 0.9567345 | 0.69762695 | 0.95889544 | 0.7038054 | 0.53113127 |
| **30.00** | 0.90837795 | 0.58268636 | 0.9120497 | 0.59044427 | 0.3870819 |
| **40.00** | 0.8412783 | 0.48668334 | 0.84751534 | 0.49534205 | 0.28210047 |
| **50.00** | 0.7673258 | 0.40649772 | 0.7759867 | 0.41555786 | 0.2055913 |
| **60.00** | 0.69384134 | 0.3395234 | 0.7058223 | 0.3486244 | 0.14983238 |
| **70.00** | 0.62000287 | 0.28358373 | 0.63292253 | 0.2924719 | 0.10919597 |
| **80.00** | 0.54850817 | 0.23686066 | 0.56337965 | 0.24536376 | 0.079580665 |
| **90.00** | 0.4723062 | 0.19783565 | 0.4883529 | 0.20584328 | 0.057997398 |
| **100.00** | 0.40995836 | 0.16524038 | 0.42622608 | 0.17268834 | 0.04226778 |
| **110.00** | 0.35194853 | 0.13801548 | 0.36752832 | 0.14487362 | 0.030804234 |
| **120.00** | 0.28932554 | 0.11527614 | 0.30614898 | 0.12153898 | 0.022449743 |
| **130.00** | 0.23485306 | 0.09628332 | 0.2501942 | 0.101962835 | 0.016361093 |
| **140.00** | 0.1737899 | 0.08041974 | 0.18787405 | 0.085539795 | 0.011923761 |
| **150.00** | 0.13608296 | 0.06716984 | 0.14685746 | 0.071761996 | 0.008689889 |
| **160.00** | 0.10152795 | 0.056102976 | 0.109524764 | 0.06020337 | 0.0063330824 |
| **170.00** | 0.06513964 | 0.046859488 | 0.0722614 | 0.05050648 | 0.0046154717 |
| **180.00** | 0.04490782 | 0.039138947 | 0.051267568 | 0.04237146 | 0.0033636983 |
| **190.00** | 0.032607123 | 0.03269044 | 0.037601404 | 0.035546735 | 0.0024514215 |
| **200.00** | 0.020312557 | 0.027304383 | 0.023702057 | 0.029821262 | 0.0017865654 |
| **210.00** | 0.008430634 | 0.022805732 | 0.010525152 | 0.025017984 | 0.0013020267 |
| **220.00** | 0.0 | 0.019048274 | 0.0018826893 | 0.020988366 | 9.489008E-4 |
| **230.00** | 0.0 | 0.015909892 | 0.0010131068 | 0.017607793 | 6.915471E-4 |
| **240.00** | 0.0 | 0.013288588 | 6.093537E-4 | 0.014771725 | 5.039909E-4 |
| **250.00** | 0.0 | 0.011099169 | 2.9992982E-4 | 0.012392459 | 3.673023E-4 |
| **260.00** | 0.0 | 0.009270477 | 1.310387E-4 | 0.01039642 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.007743079 | 1.2212759E-4 | 0.00872188 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.0064673345 | 1.1321649E-4 | 0.0073170564 | 1.4217607E-4 |
| **290.00** | 0.0 | 0.005401781 | 7.754318E-5 | 0.0061385063 | 1.0361615E-4 |
| **300.00** | 0.0 | 0.0045117866 | 5.9271075E-5 | 0.005149784 | 7.551416E-5 |
| **310.00** | 0.0 | 0.0037684278 | 0.0 | 0.004320314 | 5.503378E-5 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#jg-tune-base-sw)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 248.91 | 0.004017543 | 426 | 265.03 | 0.0037731298 | 400.04 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 257.13 | 0.003889151 | 412 | 261.94 | 0.003817698 | 404.42 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 369.08 | 0.0027094209 | 287 | 384.72 | 0.002599272 | 275.34 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 291.38 | 0.0034318864 | 363 | 295.46 | 0.00338458 | 357.98 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 287.86 | 0.003473886 | 367 | 290.59 | 0.0034413286 | 363.54 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 1269.12 | 7.87948E-4 | 84 | 1281.60 | 7.8027445E-4 | 83.17 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 1253.93 | 7.974904E-4 | 84 | 1267.30 | 7.8908185E-4 | 83.11 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 2785.92 | 3.5894735E-4 | 38 | 2819.61 | 3.5465922E-4 | 37.54 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 224.40 | 0.004456348 | 471 | 226.96 | 0.0044060955 | 465.7 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 466.05 | 0.0021457057 | 228 | 481.91 | 0.0020750663 | 220.51 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 914.81 | 0.0010931259 | 116 | 929.26 | 0.0010761246 | 114.16 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 442.62 | 0.0022592887 | 239 | 530.77 | 0.0018840387 | 199.1 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 159.53 | 0.0062685213 | 664 | 163.10 | 0.0061311037 | 649.45 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 196.60 | 0.0050863964 | 538 | 205.09 | 0.004875882 | 515.76 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 266.93 | 0.0037463428 | 397 | 280.34 | 0.0035670886 | 378 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 195.92 | 0.005104008 | 540 | 198.51 | 0.005037438 | 532.97 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 230.71 | 0.0043343944 | 459 | 237.74 | 0.0042063496 | 445.47 |
| **RodgersCreek** | 325.31 | 0.003074 | 440.09 | 0.0022722837 | 240 | 455.39 | 0.0021959092 | 231.92 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 2743.01 | 3.6456354E-4 | 39 | 3241.43 | 3.085061E-4 | 32.94 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 396.62 | 0.002521326 | 266 | 422.87 | 0.002364802 | 249.54 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 380.24 | 0.0026298836 | 279 | 398.37 | 0.0025102263 | 266.18 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 264.20 | 0.0037850619 | 401 | 267.78 | 0.0037344228 | 395.63 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 612.62 | 0.0016323217 | 172 | 648.85 | 0.001541182 | 162.35 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 1150.63 | 8.6908846E-4 | 92 | 1162.65 | 8.6010713E-4 | 91.04 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 305.44 | 0.00327394 | 347 | 308.77 | 0.0032386912 | 343.23 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 215.41 | 0.0046422984 | 492 | 218.87 | 0.004568954 | 484.22 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1693.69 | 5.9042516E-4 | 63 | 1709.32 | 5.8502954E-4 | 62.4 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 2774.44 | 3.6043336E-4 | 38 | 2803.34 | 3.567169E-4 | 37.58 |
| **TOTAL** | 9.13 | 0.1094837 | 16.68 | 0.059960887 | 6350 | 17.17 | 0.058234714 | 6167.22 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.8850001 | 0.5490263 | 0.89047265 | 0.55858576 | 0.33459413 |
| **20.00** | 0.67514664 | 0.30142993 | 0.6876654 | 0.31201804 | 0.111953236 |
| **30.00** | 0.46421567 | 0.16549297 | 0.47928047 | 0.17428882 | 0.037458897 |
| **40.00** | 0.29767272 | 0.090859994 | 0.31198993 | 0.097355254 | 0.012533528 |
| **50.00** | 0.17500785 | 0.04988453 | 0.18805051 | 0.05438126 | 0.004193645 |
| **60.00** | 0.10320168 | 0.02738792 | 0.111950584 | 0.030376596 | 0.001403169 |
| **70.00** | 0.05871379 | 0.01503669 | 0.06429671 | 0.016967934 | 4.6949214E-4 |
| **80.00** | 0.03268263 | 0.0082555385 | 0.03652104 | 0.009478046 | 1.5708932E-4 |
| **90.00** | 0.015107886 | 0.0045325086 | 0.017653413 | 0.005294301 | 5.2561165E-5 |
| **100.00** | 0.010031756 | 0.0024884664 | 0.011534762 | 0.0029573212 | 1.7586659E-5 |
| **110.00** | 0.002597567 | 0.0013662336 | 0.002244252 | 0.0016519175 | 5.884393E-6 |
| **120.00** | 0.0024500077 | 7.5009826E-4 | 0.001873716 | 9.227375E-4 | 1.9688835E-6 |
| **130.00** | 0.0023024483 | 4.1182368E-4 | 0.0017354207 | 5.15428E-4 | 6.5877686E-7 |
| **140.00** | 0.002154889 | 2.2610206E-4 | 0.0017088006 | 2.8791075E-4 | 2.2042288E-7 |
| **150.00** | 0.0020073298 | 1.2413599E-4 | 0.0016916628 | 1.6082285E-4 | 7.3752204E-8 |
| **160.00** | 0.0018597704 | 6.8153924E-5 | 0.0016603215 | 8.983335E-5 | 2.4677055E-8 |
| **170.00** | 0.0017122112 | 3.74183E-5 | 0.0016512917 | 5.0179628E-5 | 8.256798E-9 |
| **180.00** | 0.0 | 2.0543632E-5 | 0.0 | 2.8029626E-5 | 2.762676E-9 |

### Moment Release Variability Plots
*[(top)](#jg-tune-base-sw)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#jg-tune-base-sw)*

Example rupture plots:

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![example](resources/elastic_rebound_triggering_m6_example_re_rup.png) |  |  |
| ![example](resources/elastic_rebound_triggering_m6_example_new_hypo.png) | ![example](resources/elastic_rebound_triggering_m6.5_example_new_hypo.png) |  |

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_1yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_1yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_1yr.png) |
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_10yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_10yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_10yr.png) |
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_100yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_100yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_100yr.png) |

## Input File
*[(top)](#jg-tune-base-sw)*

```
A_1 = 0.005
fA = .1
B_1 = 0.006
Dc_1 = 1.0000000000000000818e-05
mu0_1 = 0.6
ddotStar_1 = 9.9999999999999995475e-07
ddotAB_1 = 9.9999999999999995475e-07
alpha_1 = 0.0
theta0_1 = 200000000
tau0_1 = 60
sigma0_1 = 100
sigmaFracPin = .5
lowSigmaAction = 1
maxThetaPin = 1.0e13
ddotEQ_1 = 1
ddotEQFname = 
stressOvershootFactor = 0.2
muSlipAmp_1 = 0.2
muSlipInvDist_1 = 2.0
cohesion = 6.0
lameLambda = 30000
lameMu = 30000
slowSlip_1 = 0
nEq = 2000000000000000
KZeroFrac = 0
KOneFrac =  0
muPin = 1.0
tStart = 20566980085269.25
maxT = 2.529738e13
maxTrans = 
faultFname = UCERF3.D3.1.1km.tri.2.flt
outFnameInfix = tuneBaseCatalogSW_1e5t
writeTau = 2
writeSigma = 2
writeSlip = 0
writeSlipSpeed = 0
writeState = 0
writeTheta = 2
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
pinnedFname = tuneBaseCatalogSW_1e5.pin
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
