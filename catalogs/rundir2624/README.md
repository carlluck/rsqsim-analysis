# Bruce 2624
## Metadata
| **Catalog** | Bruce 2624 |
|-----|-----|
| **Author** | Bruce Shaw, 2018/03/08 |
| **Description** | sensitivity test, diff r2585   a=.0008 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 2,512,999 events in 250,300 years |
| **Frictional Params** | a=8.0E-4, b=0.008, (b-a)=0.0072, ddotEQ=1 |

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
*[(top)](#bruce-2624)*

* [PGA](hazard_pga/)
* [0.2s SA](hazard_sa_0.2s/)
* [1.0s SA](hazard_sa_1.0s/)
* [10.0s SA](hazard_sa_10.0s/)
* [2.0s SA](hazard_sa_2.0s/)
* [5.0s SA](hazard_sa_5.0s/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2624)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2624)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2624)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2624)*

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
*[(top)](#bruce-2624)*

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
*[(top)](#bruce-2624)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2624)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2624)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2624)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2624)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2624)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2624)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2624)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2624)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2624)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0035924958 | 0.0022803722 | 0.0026627693 | 0.002262321 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 1.875764E-4 | 1.7976861E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0017901312 | 0.0014536135 | 0.0012151689 | 0.0011792126 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 6.157399E-4 | 5.9549423E-4 | 6.075844E-4 | 6.0053566E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0012722573 | 0.0010910643 | 0.0010642922 | 0.0010341502 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 6.850616E-4 | 5.6534045E-4 | 4.5263E-4 | 4.412183E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.0067160507 | 0.0060687196 | 0.006418375 | 0.0062010027 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0011947801 | 0.0011580371 | 0.0011621581 | 0.0011501536 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 9.990482E-4 | 9.1494294E-4 | 8.88949E-4 | 8.7668735E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 8.3593826E-4 | 4.857946E-4 | 2.2835388E-4 | 2.1506743E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0022916943 | 0.0019909209 | 0.0019287746 | 0.0018919839 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.002988989 | 0.0022622738 | 0.0017085763 | 0.0016452868 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0039024046 | 0.0038131631 | 0.0038534715 | 0.0038096204 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.005284761 | 0.0043189228 | 0.0042327023 | 0.0039990586 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0038575493 | 0.0037970978 | 0.0038371605 | 0.0037976406 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.0041022142 | 0.0038882904 | 0.0039187158 | 0.003871068 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0044814446 | 0.0041240137 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 2.2835388E-4 | 1.9293041E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0023691715 | 0.0020794165 | 0.0019491634 | 0.0019133927 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.002809568 | 0.0021547081 | 0.0019165414 | 0.001868639 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0024425709 | 0.0023872391 | 0.002393638 | 0.0023658455 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0015699329 | 0.0012865299 | 0.0010235147 | 9.3406433E-4 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.0070708147 | 0.0062416415 | 0.005814868 | 0.005728705 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0060350667 | 0.0035924087 | 0.0032948202 | 0.0028081262 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.006238954 | 0.0050896667 | 0.0038004608 | 0.0037163012 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.006238954 | 0.0050896667 | 0.0040410478 | 0.003935725 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.004983008 | 0.0048990264 | 0.0049666967 | 0.0049146297 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.0055212704 | 0.0034284526 | 0.0046608658 | 0.0044532805 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.003714828 | 0.0024607615 | 0.0017208095 | 0.0015528187 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0036414287 | 0.0026402525 | 0.0024221821 | 0.0022882323 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.0049544633 | 0.0048455177 | 0.0049544633 | 0.0049046087 |

### Paleo Open Interval Plots
*[(top)](#bruce-2624)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2624)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 420.06 | 0.0023806214 | 584 | 424.80 | 0.0023540363 | 577.46 |
| **FRA** | 119.00 | 0.008403362 | 156.16 | 0.006403496 | 1570 | 160.84 | 0.0062173987 | 1524.36 |
| **COA** | 181.00 | 0.005524862 | 251.65 | 0.0039737634 | 975 | 259.05 | 0.0038602161 | 947.11 |
| **SCZ** | 106.00 | 0.009433962 | 236.39 | 0.0042303666 | 1038 | 250.33 | 0.0039947364 | 980.22 |
| **TYS** | 329.00 | 0.0030395137 | 591.53 | 0.0016905247 | 415 | 614.14 | 0.0016282966 | 399.73 |
| **TOTAL** | 31.61 | 0.0316373 | 53.54 | 0.018677866 | 4581 | 55.40 | 0.018052002 | 4427.52 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9876482 | 0.82962734 | 0.9885094 | 0.83483595 | 0.72878754 |
| **20.00** | 0.954848 | 0.68828154 | 0.95767134 | 0.6969511 | 0.53113127 |
| **30.00** | 0.9020193 | 0.5710172 | 0.9077247 | 0.58183986 | 0.3870819 |
| **40.00** | 0.83896995 | 0.4737315 | 0.8477666 | 0.4857408 | 0.28210047 |
| **50.00** | 0.7663726 | 0.3930206 | 0.7786792 | 0.4055139 | 0.2055913 |
| **60.00** | 0.68589586 | 0.32606062 | 0.7009169 | 0.3385376 | 0.14983238 |
| **70.00** | 0.60033154 | 0.27050883 | 0.6188905 | 0.28262335 | 0.10919597 |
| **80.00** | 0.516825 | 0.22442152 | 0.5381439 | 0.23594415 | 0.079580665 |
| **90.00** | 0.44743416 | 0.18618622 | 0.4690482 | 0.19697466 | 0.057997398 |
| **100.00** | 0.37373874 | 0.15446518 | 0.39606225 | 0.16444153 | 0.04226778 |
| **110.00** | 0.3048797 | 0.12814854 | 0.32606834 | 0.1372817 | 0.030804234 |
| **120.00** | 0.24030478 | 0.10631553 | 0.2605909 | 0.11460771 | 0.022449743 |
| **130.00** | 0.18098165 | 0.088202275 | 0.19908749 | 0.095678635 | 0.016361093 |
| **140.00** | 0.14834596 | 0.07317502 | 0.16450231 | 0.07987596 | 0.011923761 |
| **150.00** | 0.10609364 | 0.060707998 | 0.12070744 | 0.06668333 | 0.008689889 |
| **160.00** | 0.07000963 | 0.050365012 | 0.08301529 | 0.05566964 | 0.0063330824 |
| **170.00** | 0.041779425 | 0.041784193 | 0.0523671 | 0.04647502 | 0.0046154717 |
| **180.00** | 0.028024685 | 0.03466531 | 0.036068555 | 0.038799018 | 0.0033636983 |
| **190.00** | 0.01104258 | 0.028759288 | 0.016188039 | 0.032390814 | 0.0024514215 |
| **200.00** | 0.005996538 | 0.023859492 | 0.009690807 | 0.027041016 | 0.0017865654 |
| **210.00** | 0.0022528437 | 0.019794486 | 0.0037317353 | 0.022574814 | 0.0013020267 |
| **220.00** | 0.001175354 | 0.016422048 | 0.0020356362 | 0.018846266 | 9.489008E-4 |
| **230.00** | 0.0 | 0.01362418 | 7.4266817E-4 | 0.01573354 | 6.915471E-4 |
| **240.00** | 0.0 | 0.011302993 | 5.8439316E-4 | 0.013134926 | 5.039909E-4 |
| **250.00** | 0.0 | 0.009377272 | 4.3900605E-4 | 0.010965508 | 3.673023E-4 |
| **260.00** | 0.0 | 0.007779641 | 2.5690833E-4 | 0.009154401 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.006454203 | 1.8611955E-4 | 0.007642423 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.0053545833 | 1.4586515E-4 | 0.0063801697 | 1.4217607E-4 |
| **290.00** | 0.0 | 0.0044423086 | 1.05356106E-4 | 0.005326395 | 1.0361615E-4 |
| **300.00** | 0.0 | 0.003685461 | 5.9600552E-5 | 0.004446666 | 7.551416E-5 |
| **310.00** | 0.0 | 0.003057559 | 3.2996395E-5 | 0.0037122369 | 5.503378E-5 |
| **320.00** | 0.0 | 0.0025366347 | 2.3131382E-5 | 0.0030991088 | 4.0107934E-5 |
| **330.00** | 0.0 | 0.0021044614 | 1.5420104E-5 | 0.0025872474 | 2.9230163E-5 |
| **340.00** | 0.0 | 0.0017459188 | 0.0 | 0.0021599273 | 2.1302578E-5 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2624)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 295.61 | 0.003382811 | 830 | 315.59 | 0.0031686618 | 777.44 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 247.58 | 0.0040390408 | 991 | 254.16 | 0.0039345296 | 965.35 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 2545.96 | 3.9277918E-4 | 96 | 3300.58 | 3.029766E-4 | 73.65 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 260.39 | 0.0038403778 | 942 | 263.06 | 0.003801401 | 932.43 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 255.39 | 0.003915577 | 961 | 258.67 | 0.0038658786 | 948.79 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 375.28 | 0.002664696 | 653 | 442.09 | 0.0022620063 | 554.25 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 953.03 | 0.0010492862 | 258 | 973.63 | 0.0010270834 | 252.52 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 2212.60 | 4.5195632E-4 | 111 | 2262.96 | 4.418993E-4 | 108.49 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 171.70 | 0.0058239573 | 1428 | 174.35 | 0.005735446 | 1406.29 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 420.06 | 0.0023806214 | 584 | 424.84 | 0.0023538277 | 577.42 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 6762.64 | 1.4787125E-4 | 36 | 7161.42 | 1.3963711E-4 | 33.92 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 513.72 | 0.0019465868 | 478 | 523.57 | 0.0019099697 | 468.97 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 1739.22 | 5.749714E-4 | 141 | 1784.53 | 5.6037185E-4 | 137.36 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 201.73 | 0.0049570813 | 1215 | 203.79 | 0.0049069407 | 1202.7 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 203.07 | 0.004924415 | 1207 | 212.41 | 0.004707841 | 1153.92 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 579.67 | 0.0017251187 | 422 | 642.85 | 0.0015555818 | 380.6 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 156.16 | 0.006403496 | 1570 | 160.86 | 0.0062164296 | 1524.13 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 236.39 | 0.0042303666 | 1038 | 250.61 | 0.003990245 | 979.13 |
| **RodgersCreek** | 325.31 | 0.003074 | 521.02 | 0.001919313 | 470 | 534.43 | 0.0018711473 | 458.21 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 4283.22 | 2.334693E-4 | 58 | 4504.15 | 2.2201761E-4 | 55.14 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 519.37 | 0.0019254196 | 473 | 529.36 | 0.0018890827 | 464.06 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 591.53 | 0.0016905247 | 415 | 614.26 | 0.001627975 | 399.66 |
| **Compton** | 2658.16 | 3.762E-4 | 8453.30 | 1.1829699E-4 | 29 | 8750.09 | 1.1428459E-4 | 28.01 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 251.65 | 0.0039737634 | 975 | 258.90 | 0.0038625286 | 947.69 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 792.65 | 0.0012615932 | 310 | 822.66 | 0.0012155676 | 298.69 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 861.86 | 0.0011602781 | 285 | 870.66 | 0.0011485508 | 282.12 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 259.56 | 0.0038526212 | 945 | 262.58 | 0.0038082984 | 934.12 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 201.40 | 0.0049652476 | 1217 | 203.44 | 0.004915475 | 1204.79 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1117.37 | 8.949599E-4 | 219 | 1134.60 | 8.8136474E-4 | 215.68 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1646.56 | 6.0732645E-4 | 149 | 1662.97 | 6.0133386E-4 | 147.53 |
| **TOTAL** | 9.08 | 0.1101451 | 23.37 | 0.042782422 | 10492 | 24.13 | 0.041446507 | 10164.41 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9380315 | 0.651926 | 0.9413102 | 0.6606936 | 0.33238843 |
| **20.00** | 0.8028143 | 0.4250075 | 0.81161433 | 0.43651605 | 0.110482074 |
| **30.00** | 0.63499767 | 0.27707344 | 0.64915043 | 0.28840336 | 0.036722966 |
| **40.00** | 0.4714147 | 0.18063138 | 0.48876363 | 0.19054626 | 0.012206289 |
| **50.00** | 0.34113067 | 0.11775829 | 0.35844794 | 0.1258927 | 0.004057229 |
| **60.00** | 0.23193143 | 0.076769695 | 0.24776542 | 0.0831765 | 0.001348576 |
| **70.00** | 0.15341085 | 0.050048158 | 0.16736573 | 0.054954182 | 4.4825108E-4 |
| **80.00** | 0.10263647 | 0.032627694 | 0.11386887 | 0.03630788 | 1.4899348E-4 |
| **90.00** | 0.06672442 | 0.021270843 | 0.07500383 | 0.023988383 | 4.952371E-5 |
| **100.00** | 0.039902054 | 0.013867016 | 0.045813527 | 0.015848972 | 1.6461108E-5 |
| **110.00** | 0.021728298 | 0.009040268 | 0.02576743 | 0.010471314 | 5.4714824E-6 |
| **120.00** | 0.012272454 | 0.0058935857 | 0.015263974 | 0.0069183307 | 1.8186574E-6 |
| **130.00** | 0.0055295806 | 0.0038421818 | 0.006723867 | 0.0045708967 | 6.045007E-7 |
| **140.00** | 0.0017711221 | 0.0025048181 | 0.0021580886 | 0.0030199625 | 2.0092905E-7 |
| **150.00** | 9.665191E-4 | 0.0016329561 | 9.07475E-4 | 0.00199527 | 6.678649E-8 |
| **160.00** | 0.0 | 0.0010645665 | 1.3063401E-4 | 0.0013182621 | 2.2199057E-8 |
| **170.00** | 0.0 | 6.940186E-4 | 4.044163E-5 | 8.709673E-4 | 7.37871E-9 |
| **180.00** | 0.0 | 4.5244876E-4 | 2.4396399E-5 | 5.7544257E-4 | 2.452598E-9 |
| **190.00** | 0.0 | 2.949631E-4 | 0.0 | 3.8019122E-4 | 8.152152E-10 |

### Moment Release Variability Plots
*[(top)](#bruce-2624)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2624)*

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
*[(top)](#bruce-2624)*

```
  A_1 = 0.0008
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
