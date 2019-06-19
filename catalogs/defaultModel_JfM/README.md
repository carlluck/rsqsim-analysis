# JG Test Master Exec
## Metadata
| **Catalog** | JG Test Master Exec |
|-----|-----|
| **Author** | Jacqui Gilchrist, 2018/08/23 |
| **Description** | Calculating stiffness files using the executable from the master branch |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 2,528,298 events in 139,726 years |
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
*[(top)](#jg-test-master-exec)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#jg-test-master-exec)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#jg-test-master-exec)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#jg-test-master-exec)*

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
*[(top)](#jg-test-master-exec)*

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
| **Len≥100** | ![Slip Along Rupture](resources/slip_along_rupture_two_norm_len_100+.png) | N/A |
### Slip Rate Plots
*[(top)](#jg-test-master-exec)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#jg-test-master-exec)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#jg-test-master-exec)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#jg-test-master-exec)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#jg-test-master-exec)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#jg-test-master-exec)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#jg-test-master-exec)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#jg-test-master-exec)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#jg-test-master-exec)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#jg-test-master-exec)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0035864378 | 0.0018671764 | 0.0026359945 | 0.0018642532 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 2.5246144E-4 | 2.373393E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0023835332 | 0.0019065728 | 0.0016929768 | 0.0015770744 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 8.242124E-4 | 7.851904E-4 | 7.870857E-4 | 7.7264896E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0016187234 | 0.0014217042 | 0.0014405154 | 0.001383583 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 9.281671E-4 | 7.7312655E-4 | 6.3857896E-4 | 6.043295E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.008190147 | 0.007715594 | 0.008049065 | 0.0076973154 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0015890221 | 0.0015264768 | 0.0015593207 | 0.0015361191 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0014182393 | 0.0012942117 | 0.001254882 | 0.0012130736 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 0.0011435018 | 5.901044E-4 | 3.7126685E-4 | 2.9359644E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0028810308 | 0.0025177163 | 0.0027028227 | 0.0026255017 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.004737365 | 0.0030609965 | 0.0028587547 | 0.0025809882 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0049749757 | 0.004867533 | 0.004922998 | 0.0048562335 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.009794019 | 0.006904099 | 0.007737201 | 0.006766383 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.004871021 | 0.0048180344 | 0.004871021 | 0.0048186253 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.0049527 | 0.0048328303 | 0.0049007223 | 0.0048300084 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.005465048 | 0.005212005 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 3.044388E-4 | 2.6097504E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0030221122 | 0.002716567 | 0.0026211438 | 0.0025205861 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0055393013 | 0.0034462619 | 0.0042398674 | 0.0033344466 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0028290534 | 0.002765787 | 0.002821628 | 0.0027851223 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.002093945 | 0.0016759064 | 0.0013885379 | 0.0011760541 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.0076629478 | 0.007447226 | 0.0075738435 | 0.007411001 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.007648097 | 0.0042831306 | 0.0047150888 | 0.0035699238 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.008865852 | 0.0067250724 | 0.0053016907 | 0.0050509623 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.008865852 | 0.0067250724 | 0.005791763 | 0.0054503274 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.006615975 | 0.0064990763 | 0.006615975 | 0.0065414044 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.007365934 | 0.004222271 | 0.00660855 | 0.0060212696 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.005116057 | 0.00327994 | 0.0023315558 | 0.0019528071 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.004581433 | 0.0034459166 | 0.0029627094 | 0.0027405384 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.0066234004 | 0.006429523 | 0.00660855 | 0.0065289335 |

### Paleo Open Interval Plots
*[(top)](#jg-test-master-exec)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#jg-test-master-exec)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 353.44 | 0.002829372 | 381 | 358.54 | 0.002789102 | 375.57 |
| **FRA** | 119.00 | 0.008403362 | 123.75 | 0.008080735 | 1088 | 128.58 | 0.0077773957 | 1047.16 |
| **COA** | 181.00 | 0.005524862 | 179.50 | 0.0055710557 | 750 | 190.38 | 0.005252762 | 707.17 |
| **SCZ** | 106.00 | 0.009433962 | 129.25 | 0.007736748 | 1042 | 147.93 | 0.006760142 | 910.41 |
| **TYS** | 329.00 | 0.0030395137 | 361.04 | 0.0027697557 | 373 | 396.49 | 0.0025221142 | 339.28 |
| **TOTAL** | 31.61 | 0.0316373 | 37.06 | 0.026984245 | 3633 | 39.85 | 0.025093442 | 3378.29 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9754155 | 0.7634998 | 0.9787868 | 0.77807343 | 0.72878754 |
| **20.00** | 0.90913683 | 0.5829319 | 0.92002183 | 0.60539824 | 0.53113127 |
| **30.00** | 0.818097 | 0.44506836 | 0.8392335 | 0.47104424 | 0.3870819 |
| **40.00** | 0.69929254 | 0.3398096 | 0.7322143 | 0.366507 | 0.28210047 |
| **50.00** | 0.58480406 | 0.25944456 | 0.6256922 | 0.28516936 | 0.2055913 |
| **60.00** | 0.46241915 | 0.19808586 | 0.51176405 | 0.22188269 | 0.14983238 |
| **70.00** | 0.35567787 | 0.1512385 | 0.40883824 | 0.17264102 | 0.10919597 |
| **80.00** | 0.25557274 | 0.115470566 | 0.30483204 | 0.13432738 | 0.079580665 |
| **90.00** | 0.17760438 | 0.08816175 | 0.22390594 | 0.104516566 | 0.057997398 |
| **100.00** | 0.11947814 | 0.06731147 | 0.15933931 | 0.08132156 | 0.04226778 |
| **110.00** | 0.07719243 | 0.0513923 | 0.11098389 | 0.063274145 | 0.030804234 |
| **120.00** | 0.04543301 | 0.039238006 | 0.06975533 | 0.049231928 | 0.022449743 |
| **130.00** | 0.021263935 | 0.029958209 | 0.0389882 | 0.038306054 | 0.016361093 |
| **140.00** | 0.005034324 | 0.022873085 | 0.013456406 | 0.029804923 | 0.011923761 |
| **150.00** | 0.0 | 0.017463597 | 0.0033367104 | 0.023190416 | 0.008689889 |
| **160.00** | 0.0 | 0.013333451 | 0.0015949798 | 0.018043846 | 0.0063330824 |
| **170.00** | 0.0 | 0.010180087 | 8.123327E-4 | 0.014039437 | 0.0046154717 |
| **180.00** | 0.0 | 0.007772494 | 4.0626226E-4 | 0.0109237125 | 0.0033636983 |
| **190.00** | 0.0 | 0.0059342976 | 2.6432142E-4 | 0.00849945 | 0.0024514215 |
| **200.00** | 0.0 | 0.004530835 | 2.2610533E-4 | 0.0066131963 | 0.0017865654 |
| **210.00** | 0.0 | 0.0034592913 | 1.5980857E-4 | 0.005145552 | 0.0013020267 |
| **220.00** | 0.0 | 0.0026411682 | 1.10031164E-4 | 0.0040036174 | 9.489008E-4 |
| **230.00** | 0.0 | 0.0020165313 | 6.024613E-5 | 0.003115108 | 6.915471E-4 |
| **240.00** | 0.0 | 0.0015396212 | 0.0 | 0.0024237828 | 5.039909E-4 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#jg-test-master-exec)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 212.18 | 0.004713056 | 634 | 238.88 | 0.004186187 | 563.15 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 172.59 | 0.0057941955 | 780 | 183.31 | 0.005455167 | 734.4 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 2399.66 | 4.167253E-4 | 56 | 3394.28 | 2.946131E-4 | 39.3 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 205.38 | 0.004869029 | 656 | 207.75 | 0.004813571 | 648.52 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 204.13 | 0.0048987633 | 660 | 207.07 | 0.0048293965 | 650.65 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 377.90 | 0.0026462185 | 355 | 532.20 | 0.0018789785 | 251.83 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 700.08 | 0.0014284183 | 193 | 722.11 | 0.0013848279 | 187.01 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 1555.53 | 6.428661E-4 | 86 | 1643.05 | 6.0862524E-4 | 81.41 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 132.35 | 0.007555714 | 1017 | 135.10 | 0.007401862 | 996.29 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 353.44 | 0.002829372 | 381 | 358.55 | 0.002789038 | 375.53 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 5104.12 | 1.9592003E-4 | 27 | 5517.55 | 1.812399E-4 | 24.96 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 382.10 | 0.0026171312 | 353 | 397.62 | 0.0025149803 | 339.19 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 1181.19 | 8.466021E-4 | 114 | 1262.62 | 7.920064E-4 | 106.55 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 151.26 | 0.0066113207 | 890 | 153.06 | 0.006533313 | 879.5 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 143.66 | 0.0069608507 | 937 | 158.82 | 0.006296251 | 847.53 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 428.20 | 0.0023353586 | 314 | 510.60 | 0.0019584787 | 262.41 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 123.75 | 0.008080735 | 1088 | 128.54 | 0.0077793896 | 1047.44 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 129.25 | 0.007736748 | 1042 | 147.94 | 0.0067597046 | 910.16 |
| **RodgersCreek** | 325.31 | 0.003074 | 235.50 | 0.0042462284 | 571 | 299.15 | 0.0033428476 | 449.48 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 2510.04 | 3.9840007E-4 | 54 | 3315.55 | 3.0160943E-4 | 40.9 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 370.12 | 0.0027018047 | 364 | 380.89 | 0.0026254163 | 353.7 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 361.04 | 0.0027697557 | 373 | 396.45 | 0.0025224083 | 339.31 |
| **Compton** | 2658.16 | 3.762E-4 | 5308.29 | 1.8838464E-4 | 26 | 5963.02 | 1.6770017E-4 | 23.21 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 179.50 | 0.0055710557 | 750 | 190.77 | 0.005242051 | 705.73 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 573.30 | 0.0017442941 | 235 | 621.20 | 0.0016097899 | 216.82 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 640.90 | 0.0015603076 | 210 | 650.13 | 0.0015381452 | 207.01 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 203.52 | 0.0049136304 | 662 | 206.21 | 0.0048493994 | 653.32 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 151.09 | 0.0066187577 | 891 | 152.70 | 0.006548889 | 881.55 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 802.27 | 0.001246464 | 168 | 826.93 | 0.0012092869 | 162.98 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1281.83 | 7.80134E-4 | 106 | 1305.88 | 7.6576544E-4 | 104.04 |
| **TOTAL** | 9.08 | 0.1101451 | 16.72 | 0.059802376 | 8053 | 18.08 | 0.055301752 | 7447.02 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.8840979 | 0.5498973 | 0.89834946 | 0.57521147 | 0.33238843 |
| **20.00** | 0.6697224 | 0.30238703 | 0.7029647 | 0.33086824 | 0.110482074 |
| **30.00** | 0.45099247 | 0.1662818 | 0.4949554 | 0.19031923 | 0.036722966 |
| **40.00** | 0.2721405 | 0.09143791 | 0.31494159 | 0.1094738 | 0.012206289 |
| **50.00** | 0.15841304 | 0.05028146 | 0.1946665 | 0.062970586 | 0.004057229 |
| **60.00** | 0.09023335 | 0.02764964 | 0.11542232 | 0.036221407 | 0.001348576 |
| **70.00** | 0.048534 | 0.015204461 | 0.064905606 | 0.02083497 | 4.4825108E-4 |
| **80.00** | 0.024795057 | 0.0083608925 | 0.035946824 | 0.011984513 | 1.4899348E-4 |
| **90.00** | 0.005553985 | 0.0045976317 | 0.012551004 | 0.0068936297 | 4.952371E-5 |
| **100.00** | 0.0034192232 | 0.0025282253 | 0.00760024 | 0.003965295 | 1.6461108E-5 |
| **110.00** | 0.0013914029 | 0.0013902643 | 0.0026235632 | 0.0022808833 | 5.4714824E-6 |
| **120.00** | 0.0 | 7.6450256E-4 | 5.4789946E-4 | 0.0013119902 | 1.8186574E-6 |
| **130.00** | 0.0 | 4.2039788E-4 | 7.2783274E-5 | 7.5467187E-4 | 6.045007E-7 |
| **140.00** | 0.0 | 2.3117565E-4 | 1.243444E-5 | 4.340959E-4 | 2.0092905E-7 |
| **150.00** | 0.0 | 1.2712287E-4 | 0.0 | 2.4969695E-4 | 6.678649E-8 |

### Moment Release Variability Plots
*[(top)](#jg-test-master-exec)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#jg-test-master-exec)*

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
*[(top)](#jg-test-master-exec)*

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
  outFnameInfix = defaultModel_JfM
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
  minMagWrite = 7.7
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
  KZeroFname = UCERF3FM.15km.1km.tri.KZero
  pinnedFname =  
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
