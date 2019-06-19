# JG Test Calc Siffness
## Metadata
| **Catalog** | JG Test Calc Siffness |
|-----|-----|
| **Author** | Jacqui Gilchrist, 2018/08/21 |
| **Description** | Test of calculating and writing new stiffness matrices |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 1,735,240 events in 88,647 years |
| **Frictional Params** | a=0.001, b=0.008, (b-a)=0.007, ddotEQ=1 |

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
*[(top)](#jg-test-calc-siffness)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#jg-test-calc-siffness)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#jg-test-calc-siffness)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#jg-test-calc-siffness)*

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
*[(top)](#jg-test-calc-siffness)*

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
*[(top)](#jg-test-calc-siffness)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#jg-test-calc-siffness)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#jg-test-calc-siffness)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#jg-test-calc-siffness)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#jg-test-calc-siffness)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#jg-test-calc-siffness)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#jg-test-calc-siffness)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#jg-test-calc-siffness)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#jg-test-calc-siffness)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#jg-test-calc-siffness)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0032894823 | 0.0017775238 | 0.0026913946 | 0.001932734 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 4.5454665E-4 | 3.92765E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0023564654 | 0.0018809016 | 0.001650722 | 0.0015450603 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 8.373228E-4 | 7.942702E-4 | 8.1339927E-4 | 7.9630024E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0016746456 | 0.0014310972 | 0.0014712957 | 0.0014053427 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 8.0143753E-4 | 6.834839E-4 | 6.459347E-4 | 6.1589887E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.008552654 | 0.00801198 | 0.008337342 | 0.00794577 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0015789515 | 0.0015304254 | 0.0015669898 | 0.0015452238 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0014593339 | 0.0013199362 | 0.0012679459 | 0.0012216105 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 0.0012320606 | 6.159843E-4 | 3.827761E-4 | 3.071966E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.002870821 | 0.0025099732 | 0.002679433 | 0.002607679 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.004904319 | 0.0030921448 | 0.002870821 | 0.0026038955 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0053229807 | 0.005220443 | 0.0052751335 | 0.005197178 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.009689021 | 0.00696107 | 0.00777514 | 0.006773235 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0053708274 | 0.005250206 | 0.0053229807 | 0.005240468 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.005873221 | 0.0054789414 | 0.005478483 | 0.0053616576 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0061244178 | 0.005658591 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 3.5885262E-4 | 2.705261E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0028588593 | 0.002585369 | 0.0025478536 | 0.0024537267 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0055622156 | 0.003325908 | 0.0040071877 | 0.0031897933 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0027990504 | 0.002748176 | 0.0027870887 | 0.0027587395 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.002081345 | 0.0016636899 | 0.0013516782 | 0.0011687983 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.009988065 | 0.008671267 | 0.0082894955 | 0.008054364 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.007727293 | 0.0042432393 | 0.0045933137 | 0.0035101525 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.008923468 | 0.006776028 | 0.005394751 | 0.00513576 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.008923468 | 0.006776028 | 0.00572968 | 0.0054212203 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.00661485 | 0.00651153 | 0.00661485 | 0.0065414435 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.007380402 | 0.004336956 | 0.006507194 | 0.0059542223 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0052153245 | 0.0033429142 | 0.0024401979 | 0.0020149935 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0045574284 | 0.003391832 | 0.0030502472 | 0.0027924753 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.0066387733 | 0.0064466572 | 0.006626812 | 0.0065470194 |

### Paleo Open Interval Plots
*[(top)](#jg-test-calc-siffness)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#jg-test-calc-siffness)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 358.72 | 0.002787653 | 233 | 362.43 | 0.0027591502 | 230.61 |
| **FRA** | 119.00 | 0.008403362 | 119.71 | 0.008353519 | 699 | 124.64 | 0.008023334 | 671.37 |
| **COA** | 181.00 | 0.005524862 | 178.62 | 0.0055984086 | 468 | 189.06 | 0.005289357 | 442.22 |
| **SCZ** | 106.00 | 0.009433962 | 128.34 | 0.007791553 | 650 | 147.09 | 0.0067984113 | 567.22 |
| **TYS** | 329.00 | 0.0030395137 | 366.34 | 0.0027297034 | 229 | 400.14 | 0.0024991243 | 209.59 |
| **TOTAL** | 31.61 | 0.0316373 | 36.68 | 0.027262632 | 2279 | 39.44 | 0.025356738 | 2119.74 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9748079 | 0.7613773 | 0.97810465 | 0.77602744 | 0.72878754 |
| **20.00** | 0.9081827 | 0.57969534 | 0.9191965 | 0.6022186 | 0.53113127 |
| **30.00** | 0.8043481 | 0.44136682 | 0.82712066 | 0.46733817 | 0.3870819 |
| **40.00** | 0.6918338 | 0.33604667 | 0.7248898 | 0.36266726 | 0.28210047 |
| **50.00** | 0.56505567 | 0.25585827 | 0.6070782 | 0.28143975 | 0.2055913 |
| **60.00** | 0.45385054 | 0.19480468 | 0.50131243 | 0.21840496 | 0.14983238 |
| **70.00** | 0.35756597 | 0.14831986 | 0.40569592 | 0.16948825 | 0.10919597 |
| **80.00** | 0.25657985 | 0.11292736 | 0.3053315 | 0.13152754 | 0.079580665 |
| **90.00** | 0.1810982 | 0.085980326 | 0.22690408 | 0.10206898 | 0.057997398 |
| **100.00** | 0.12190337 | 0.06546346 | 0.1590472 | 0.07920833 | 0.04226778 |
| **110.00** | 0.081192195 | 0.04984239 | 0.1105372 | 0.06146784 | 0.030804234 |
| **120.00** | 0.04390057 | 0.03794886 | 0.06490304 | 0.047700733 | 0.022449743 |
| **130.00** | 0.018352013 | 0.0288934 | 0.031018473 | 0.037017077 | 0.016361093 |
| **140.00** | 0.011748269 | 0.021998778 | 0.017247867 | 0.028726269 | 0.011923761 |
| **150.00** | 0.0066373073 | 0.016749369 | 0.008652163 | 0.022292372 | 0.008689889 |
| **160.00** | 0.0029774897 | 0.012752589 | 0.0034246175 | 0.017299494 | 0.0063330824 |
| **170.00** | 0.0 | 0.0097095305 | 7.8444835E-4 | 0.013424882 | 0.0046154717 |
| **180.00** | 0.0 | 0.007392616 | 5.202342E-4 | 0.010418077 | 0.0033636983 |
| **190.00** | 0.0 | 0.0056285695 | 2.6182053E-4 | 0.0080847135 | 0.0024514215 |
| **200.00** | 0.0 | 0.004285465 | 1.8181409E-4 | 0.0062739598 | 0.0017865654 |
| **210.00** | 0.0 | 0.0032628556 | 9.934278E-5 | 0.004868765 | 0.0013020267 |
| **220.00** | 0.0 | 0.0024842639 | 6.0606086E-5 | 0.0037782954 | 9.489008E-4 |
| **230.00** | 0.0 | 0.001891462 | 0.0 | 0.002932061 | 6.915471E-4 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#jg-test-calc-siffness)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 216.28 | 0.0046235924 | 386 | 243.92 | 0.004099734 | 342.28 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 174.51 | 0.005730277 | 479 | 184.74 | 0.0054129814 | 452.52 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 2524.31 | 3.9614842E-4 | 33 | 3588.91 | 2.7863606E-4 | 22.9 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 187.83 | 0.005324088 | 445 | 190.76 | 0.005242322 | 438.16 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 182.48 | 0.0054799737 | 458 | 186.24 | 0.00536928 | 448.76 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 371.95 | 0.0026885476 | 225 | 516.20 | 0.001937246 | 161.79 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 683.36 | 0.0014633547 | 122 | 709.23 | 0.0014099862 | 117.56 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 1533.51 | 6.5209996E-4 | 54 | 1606.92 | 6.2231004E-4 | 51.53 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 120.45 | 0.008301902 | 694 | 124.12 | 0.008056718 | 673.48 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 358.72 | 0.002787653 | 233 | 362.23 | 0.0027606916 | 230.72 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 4970.72 | 2.0117819E-4 | 17 | 5332.33 | 1.8753519E-4 | 15.88 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 392.49 | 0.0025478087 | 213 | 407.37 | 0.0024547968 | 205.24 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 1153.53 | 8.66902E-4 | 73 | 1245.88 | 8.0264313E-4 | 67.52 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 151.10 | 0.006618189 | 554 | 152.95 | 0.0065379255 | 547.26 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 145.07 | 0.0068934485 | 577 | 160.20 | 0.0062423293 | 522.53 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 408.83 | 0.0024460293 | 204 | 497.63 | 0.0020095292 | 167.66 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 119.71 | 0.008353519 | 699 | 124.63 | 0.008023673 | 671.39 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 128.34 | 0.007791553 | 650 | 147.48 | 0.0067805764 | 565.73 |
| **RodgersCreek** | 325.31 | 0.003074 | 250.28 | 0.003995532 | 335 | 314.54 | 0.0031792445 | 266.6 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 2431.55 | 4.112595E-4 | 32 | 3034.73 | 3.2951913E-4 | 25.52 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 372.97 | 0.002681208 | 224 | 382.05 | 0.002617484 | 218.66 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 366.34 | 0.0027297034 | 229 | 399.54 | 0.0025028647 | 209.87 |
| **Compton** | 2658.16 | 3.762E-4 | 6117.81 | 1.6345727E-4 | 14 | 6579.20 | 1.5199411E-4 | 13.05 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 178.62 | 0.0055984086 | 468 | 189.25 | 0.0052839583 | 441.73 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 576.19 | 0.0017355403 | 145 | 625.41 | 0.0015989477 | 133.39 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 635.99 | 0.0015723568 | 131 | 645.57 | 0.0015490256 | 129.05 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 189.96 | 0.0052641323 | 440 | 192.56 | 0.0051932554 | 434.07 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 151.37 | 0.0066062217 | 553 | 153.15 | 0.0065294146 | 546.57 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 801.55 | 0.0012475888 | 104 | 822.69 | 0.0012155194 | 101.32 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1225.73 | 8.158394E-4 | 68 | 1250.98 | 7.99374E-4 | 66.61 |
| **TOTAL** | 9.08 | 0.1101451 | 16.08 | 0.06219177 | 5200 | 17.32 | 0.057742115 | 4827.96 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.8753102 | 0.5369138 | 0.8893058 | 0.56134415 | 0.33238843 |
| **20.00** | 0.66166484 | 0.28827643 | 0.69257253 | 0.31510723 | 0.110482074 |
| **30.00** | 0.43799785 | 0.1547796 | 0.47773084 | 0.17688358 | 0.036722966 |
| **40.00** | 0.25878277 | 0.08310331 | 0.29707003 | 0.09929256 | 0.012206289 |
| **50.00** | 0.14033066 | 0.04461931 | 0.17190756 | 0.055737294 | 0.004057229 |
| **60.00** | 0.07062775 | 0.023956724 | 0.09300763 | 0.031287804 | 0.001348576 |
| **70.00** | 0.033704985 | 0.012862696 | 0.047372002 | 0.017563224 | 4.4825108E-4 |
| **80.00** | 0.01366759 | 0.006906159 | 0.022705948 | 0.009859012 | 1.4899348E-4 |
| **90.00** | 0.005623798 | 0.0037080122 | 0.007985423 | 0.0055342987 | 4.952371E-5 |
| **100.00** | 0.004580408 | 0.001990883 | 0.0050640414 | 0.003106646 | 1.6461108E-5 |
| **110.00** | 0.0026450437 | 0.0010689325 | 0.0021240576 | 0.0017438974 | 5.4714824E-6 |
| **120.00** | 0.0017045079 | 5.739246E-4 | 0.001639414 | 9.789265E-4 | 1.8186574E-6 |
| **130.00** | 0.0 | 3.0814807E-4 | 2.4376763E-5 | 5.495147E-4 | 6.045007E-7 |
| **140.00** | 0.0 | 1.6544895E-4 | 0.0 | 3.0846684E-4 | 2.0092905E-7 |

### Moment Release Variability Plots
*[(top)](#jg-test-calc-siffness)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#jg-test-calc-siffness)*

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
*[(top)](#jg-test-calc-siffness)*

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
  nEq = 100000000000
  KZeroFrac = 0
  muPin = 1.0
  tStart = 0
  maxT = 3.16e13
  maxWallTime = 82800
  maxTrans = 1.0000000000000000159e100
  faultFname = UCERF3FM.15km.1km.tri.flt
  outFnameInfix = test25a589d_J
  writeTau = 2
  writeSigma = 2
  writeSlip = 0
  writeSlipSpeed = 0
  writeState = 0
  writeTheta = 2
  writePED = 1
  writeTransitions = 1
  minDtWrite = 0
  minDtWriteCoseismic = 0
  minDtWriteInterseismic = 0
  minMagWrite = 7.7
  writeStiffness = 3
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
  KZeroFname = UCERF3FM.15km.1km.tri.KZero
  pinnedFname =  UCERF3FM.15km.1km.tri.pin
  neighborFname = UCERF3FM.15km.1km.tri.neighbors
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
  lowSigmaAction = 1
  highSigmaAction = 0
```
