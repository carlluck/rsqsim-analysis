# JG Base SW
## Metadata
| **Catalog** | JG Base SW |
|-----|-----|
| **Author** | Jacqui Gilchrist, 2017/11/20 |
| **Description** | Untuned, additional slip weakening parameters using Keith's fault geometry. muSlipAmp = 0.2, muSlipInvDist_1 = 2.0, cohesion = 6. |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 0.90 km^2 |
| **Length** | 38,360,499 events in 113,506 years |
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
*[(top)](#jg-base-sw)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#jg-base-sw)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#jg-base-sw)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#jg-base-sw)*

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
*[(top)](#jg-base-sw)*

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
*[(top)](#jg-base-sw)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#jg-base-sw)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#jg-base-sw)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#jg-base-sw)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#jg-base-sw)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#jg-base-sw)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#jg-base-sw)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#jg-base-sw)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#jg-base-sw)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#jg-base-sw)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0059537063 | 0.00403592 | 0.0 | 0.0 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 9.4927516E-4 | 6.888063E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0020736593 | 0.0013537458 | 9.124101E-4 | 8.9254964E-4 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 0.0012073305 | 8.752633E-4 | 0.0 | 0.0 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.002101308 | 0.0013879859 | 0.0011612492 | 0.0011041487 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 0.0011059516 | 8.1115775E-4 | 0.0 | 0.0 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.024183476 | 0.013960866 | 0.009326858 | 0.009115071 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0027740954 | 0.0017706269 | 0.0013916558 | 0.001373402 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0024699585 | 0.0018108506 | 0.0 | 0.0 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 3.8708307E-4 | 2.6264114E-4 | 0.0 | 0.0 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.002728014 | 0.0019306593 | 0.0 | 0.0 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0030597996 | 0.0022222754 | 0.0015206835 | 0.001495223 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.009087236 | 0.0062666927 | 0.0052164053 | 0.0051320377 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0064237355 | 0.004396094 | 0.0032349085 | 0.0031805974 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.008469746 | 0.00626405 | 0.005207189 | 0.00512897 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.009289994 | 0.006424095 | 0.0052164053 | 0.005148875 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.008396016 | 0.005829229 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 5.6219206E-4 | 3.9905752E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0028754743 | 0.0018094358 | 0.0013916558 | 0.0013762278 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.003916912 | 0.0023665724 | 0.0 | 0.0 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.005852327 | 0.0039646965 | 0.002451526 | 0.0024259917 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.002027578 | 0.0012785819 | 0.0 | 0.0 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.013805963 | 0.009529199 | 0.0075573362 | 0.007422644 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.004903052 | 0.002929241 | 0.0 | 0.0 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.0074283085 | 0.0048394813 | 0.0 | 0.0 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.0074283085 | 0.0048394813 | 0.0 | 0.0 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.013299068 | 0.009388792 | 0.0064421683 | 0.006339104 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.009787672 | 0.005810847 | 0.0058246786 | 0.005589567 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.007207118 | 0.004622758 | 0.0 | 0.0 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0048385384 | 0.0030429503 | 0.0 | 0.0 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.012607848 | 0.008519289 | 0.006303924 | 0.0062277443 |

### Paleo Open Interval Plots
*[(top)](#jg-base-sw)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#jg-base-sw)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 407.62 | 0.002453275 | 266 | 411.79 | 0.00242841 | 263.28 |
| **FRA** | 119.00 | 0.008403362 | 107.51 | 0.009301845 | 1009 | 109.95 | 0.009095334 | 986.61 |
| **COA** | 181.00 | 0.005524862 | 227.64 | 0.004392899 | 476 | 231.43 | 0.004320941 | 468.21 |
| **SCZ** | 106.00 | 0.009433962 | 308.55 | 0.003241015 | 352 | 313.00 | 0.0031949277 | 347 |
| **TYS** | 329.00 | 0.0030395137 | 656.80 | 0.001522529 | 165 | 668.30 | 0.0014963263 | 162.14 |
| **TOTAL** | 31.61 | 0.0316373 | 47.81 | 0.020914584 | 2268 | 48.73 | 0.02052277 | 2225.53 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9862723 | 0.8112769 | 0.9868381 | 0.8144618 | 0.72878754 |
| **20.00** | 0.9439868 | 0.6581702 | 0.9460223 | 0.6633481 | 0.53113127 |
| **30.00** | 0.88711625 | 0.5339583 | 0.8907477 | 0.5402717 | 0.3870819 |
| **40.00** | 0.8070032 | 0.43318805 | 0.8129499 | 0.4400307 | 0.28210047 |
| **50.00** | 0.7264432 | 0.35143545 | 0.73399407 | 0.35838822 | 0.2055913 |
| **60.00** | 0.6341328 | 0.2851115 | 0.64313567 | 0.29189354 | 0.14983238 |
| **70.00** | 0.53843886 | 0.23130436 | 0.54959005 | 0.23773614 | 0.10919597 |
| **80.00** | 0.44870412 | 0.18765189 | 0.46135274 | 0.19362701 | 0.079580665 |
| **90.00** | 0.33047956 | 0.15223764 | 0.34568343 | 0.15770182 | 0.057997398 |
| **100.00** | 0.2246606 | 0.12350689 | 0.23989788 | 0.12844211 | 0.04226778 |
| **110.00** | 0.11783043 | 0.100198284 | 0.13266341 | 0.1046112 | 0.030804234 |
| **120.00** | 0.054156832 | 0.081288554 | 0.067288935 | 0.08520183 | 0.022449743 |
| **130.00** | 0.026336087 | 0.06594753 | 0.03664502 | 0.06939364 | 0.016361093 |
| **140.00** | 0.014958531 | 0.053501707 | 0.024062026 | 0.056518473 | 0.011923761 |
| **150.00** | 0.010518419 | 0.043404702 | 0.01786287 | 0.04603214 | 0.008689889 |
| **160.00** | 0.006469641 | 0.035213232 | 0.011944886 | 0.037491422 | 0.0063330824 |
| **170.00** | 0.0041626636 | 0.028567681 | 0.0072283293 | 0.030535333 | 0.0046154717 |
| **180.00** | 0.0 | 0.023176301 | 0.0027883647 | 0.024869863 | 0.0033636983 |
| **190.00** | 0.0 | 0.018802397 | 0.0018765915 | 0.020255554 | 0.0024514215 |
| **200.00** | 0.0 | 0.015253951 | 9.854231E-4 | 0.016497377 | 0.0017865654 |
| **210.00** | 0.0 | 0.012375179 | 5.13829E-4 | 0.013436483 | 0.0013020267 |
| **220.00** | 0.0 | 0.0100396965 | 2.0217073E-4 | 0.010943503 | 9.489008E-4 |
| **230.00** | 0.0 | 0.008144974 | 8.248438E-5 | 0.008913066 | 6.915471E-4 |
| **240.00** | 0.0 | 0.0066078296 | 4.6325724E-5 | 0.007259352 | 5.039909E-4 |
| **250.00** | 0.0 | 0.0053607794 | 3.7257032E-5 | 0.0059124655 | 3.673023E-4 |
| **260.00** | 0.0 | 0.0043490767 | 2.8188339E-5 | 0.0048154774 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.0035283056 | 0.0 | 0.0039220224 | 1.9508575E-4 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#jg-base-sw)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 331.90 | 0.0030129282 | 326 | 341.74 | 0.0029261727 | 316.54 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 216.26 | 0.004624104 | 501 | 221.91 | 0.004506375 | 488.24 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 362.95 | 0.0027551856 | 299 | 377.34 | 0.002650122 | 287.56 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 192.36 | 0.0051984508 | 565 | 195.08 | 0.0051260064 | 557.11 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 192.02 | 0.005207668 | 566 | 194.51 | 0.0051411204 | 558.78 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 769.45 | 0.0012996377 | 141 | 802.58 | 0.0012459784 | 135.07 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 980.67 | 0.0010197144 | 111 | 1034.46 | 9.6668926E-4 | 105.27 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 1766.19 | 5.661908E-4 | 61 | 1842.42 | 5.4276333E-4 | 58.46 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 132.31 | 0.0075578988 | 820 | 134.70 | 0.007424174 | 805.5 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 407.62 | 0.002453275 | 266 | 411.81 | 0.0024282765 | 263.27 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 703.99 | 0.0014204652 | 155 | 716.89 | 0.0013949231 | 152.22 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 714.76 | 0.0013990762 | 152 | 753.05 | 0.0013279343 | 144.24 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 158.60 | 0.0063050603 | 684 | 160.58 | 0.006227609 | 675.61 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 171.68 | 0.005824768 | 632 | 178.82 | 0.005592072 | 606.74 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 306.08 | 0.0032670847 | 355 | 317.26 | 0.0031520168 | 342.52 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 107.51 | 0.009301845 | 1009 | 109.99 | 0.009091631 | 986.21 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 308.55 | 0.003241015 | 352 | 313.13 | 0.0031935137 | 346.83 |
| **RodgersCreek** | 325.31 | 0.003074 | 625.36 | 0.0015990916 | 174 | 632.39 | 0.0015813105 | 172.07 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 6377.17 | 1.5680947E-4 | 17 | 6461.61 | 1.5476029E-4 | 16.75 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 622.79 | 0.0016056757 | 174 | 633.47 | 0.001578597 | 171.07 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 656.80 | 0.001522529 | 165 | 668.71 | 0.0014954206 | 162.08 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 227.64 | 0.004392899 | 476 | 231.82 | 0.0043137274 | 467.43 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 1089.58 | 9.1778225E-4 | 99 | 1116.45 | 8.956935E-4 | 96.61 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 729.58 | 0.0013706515 | 149 | 739.17 | 0.0013528652 | 147.07 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 191.78 | 0.0052142125 | 566 | 195.01 | 0.005128016 | 556.66 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 155.22 | 0.0064424053 | 699 | 157.77 | 0.006338195 | 687.7 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 994.74 | 0.0010052914 | 110 | 1008.26 | 9.918101E-4 | 108.52 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 2104.43 | 4.751882E-4 | 52 | 2171.01 | 4.6061457E-4 | 50.42 |
| **TOTAL** | 9.13 | 0.1094837 | 15.43 | 0.06481473 | 7033 | 15.71 | 0.06363355 | 6904.85 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.8735877 | 0.5230139 | 0.87726384 | 0.5292282 | 0.33459413 |
| **20.00** | 0.63306767 | 0.2735435 | 0.64139795 | 0.2800825 | 0.111953236 |
| **30.00** | 0.4146539 | 0.14306706 | 0.4238948 | 0.14822756 | 0.037458897 |
| **40.00** | 0.23955444 | 0.074826054 | 0.24799323 | 0.0784462 | 0.012533528 |
| **50.00** | 0.12849388 | 0.039135065 | 0.13451971 | 0.041515943 | 0.004193645 |
| **60.00** | 0.06597359 | 0.020468183 | 0.070406504 | 0.021971408 | 0.001403169 |
| **70.00** | 0.032637138 | 0.010705143 | 0.03503469 | 0.011627888 | 4.6949214E-4 |
| **80.00** | 0.014126392 | 0.0055989386 | 0.015473079 | 0.0061538066 | 1.5708932E-4 |
| **90.00** | 0.00341392 | 0.0029283226 | 0.0035828478 | 0.003256768 | 5.2561165E-5 |
| **100.00** | 0.0019178579 | 0.0015315533 | 0.002258785 | 0.0017235735 | 1.7586659E-5 |
| **110.00** | 0.0 | 8.010236E-4 | 1.3158306E-4 | 9.121637E-4 | 5.884393E-6 |
| **120.00** | 0.0 | 4.189465E-4 | 2.0728374E-5 | 4.8274276E-4 | 1.9688835E-6 |
| **130.00** | 0.0 | 2.1911482E-4 | 1.3436935E-5 | 2.5548108E-4 | 6.5877686E-7 |
| **140.00** | 0.0 | 1.14600094E-4 | 0.0 | 1.352078E-4 | 2.2042288E-7 |

### Moment Release Variability Plots
*[(top)](#jg-base-sw)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#jg-base-sw)*

Example rupture plots:

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![example](resources/trigger_within_prev_m6_example_re_rup.png) |  |  |
| ![example](resources/trigger_within_prev_m6_example_new_hypo.png) | ![example](resources/trigger_within_prev_m6.5_example_new_hypo.png) |  |

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![hypocenter plot](resources/trigger_within_prev_m6_1yr.png) | ![hypocenter plot](resources/trigger_within_prev_m6.5_1yr.png) | ![hypocenter plot](resources/trigger_within_prev_m7_1yr.png) |
| ![hypocenter plot](resources/trigger_within_prev_m6_10yr.png) | ![hypocenter plot](resources/trigger_within_prev_m6.5_10yr.png) | ![hypocenter plot](resources/trigger_within_prev_m7_10yr.png) |
| ![hypocenter plot](resources/trigger_within_prev_m6_100yr.png) | ![hypocenter plot](resources/trigger_within_prev_m6.5_100yr.png) | ![hypocenter plot](resources/trigger_within_prev_m7_100yr.png) |

## Input File
*[(top)](#jg-base-sw)*

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
tStart = 19620514746453.515625
maxT = 2.4350915e+13
maxTrans = 
faultFname = UCERF3.D3.1.1km.tri.2.flt
outFnameInfix = baseCatalogSW_10t
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
pinnedFname = baseCatalogSW_10.pin
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
