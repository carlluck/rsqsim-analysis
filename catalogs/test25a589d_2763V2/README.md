# JG Test Rerun 2763
## Metadata
| **Catalog** | JG Test Rerun 2763 |
|-----|-----|
| **Author** | Jacqui Gilchrist, 2018/08/21 |
| **Description** | Rerun test of Bruce's rundir2763, reading new stiffness matrices |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 1,004,499 events in 55,815 years |
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
*[(top)](#jg-test-rerun-2763)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#jg-test-rerun-2763)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#jg-test-rerun-2763)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#jg-test-rerun-2763)*

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
*[(top)](#jg-test-rerun-2763)*

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
*[(top)](#jg-test-rerun-2763)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#jg-test-rerun-2763)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#jg-test-rerun-2763)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#jg-test-rerun-2763)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#jg-test-rerun-2763)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#jg-test-rerun-2763)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#jg-test-rerun-2763)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#jg-test-rerun-2763)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#jg-test-rerun-2763)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#jg-test-rerun-2763)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0035853384 | 0.0019772276 | 0.0026003553 | 0.001853919 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 2.7579526E-4 | 2.5851387E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0022260617 | 0.0018234558 | 0.0015759729 | 0.0014888186 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 8.0768607E-4 | 7.692227E-4 | 7.6828676E-4 | 7.499237E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0016744712 | 0.0014333741 | 0.0014380752 | 0.0013724129 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 0.0011228806 | 8.5879955E-4 | 7.0918776E-4 | 6.577304E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.008313257 | 0.0077857915 | 0.00815566 | 0.0077770725 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0015956726 | 0.0015247444 | 0.0015562732 | 0.001530872 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0013789763 | 0.0012407703 | 0.0012016793 | 0.0011729936 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 0.001103181 | 5.9142074E-4 | 3.7429357E-4 | 3.0130812E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0028761504 | 0.0025162518 | 0.0026988536 | 0.0026147636 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.00462942 | 0.003032399 | 0.0027579525 | 0.0025002968 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0049643144 | 0.004907921 | 0.0049643144 | 0.0049055973 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.009495237 | 0.0069144936 | 0.007781366 | 0.0068364847 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0049643144 | 0.0049103387 | 0.0049643144 | 0.004907484 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.0050825123 | 0.0049636434 | 0.0050825123 | 0.004985205 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0057720006 | 0.005387677 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 2.5609558E-4 | 2.282262E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0027776521 | 0.0025648815 | 0.002501857 | 0.0024283046 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.005338608 | 0.003355518 | 0.00407783 | 0.0032621396 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0027776521 | 0.0027287472 | 0.0027776521 | 0.0027485443 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0020093655 | 0.0016234391 | 0.0013395769 | 0.0011516064 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.007860164 | 0.007533693 | 0.007663168 | 0.0074918936 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0075843693 | 0.004260573 | 0.0048461165 | 0.0036415257 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.0087072505 | 0.0066669555 | 0.005397707 | 0.005128925 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.0087072505 | 0.0066669555 | 0.0057720006 | 0.0054439357 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.006717584 | 0.006602484 | 0.0066978848 | 0.006623675 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.007663168 | 0.0044064466 | 0.006678185 | 0.0060556936 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0052007106 | 0.003306461 | 0.0023048604 | 0.0019340481 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0046688197 | 0.003487047 | 0.0030337477 | 0.002796403 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.0066978848 | 0.0065145395 | 0.0066978848 | 0.006621734 |

### Paleo Open Interval Plots
*[(top)](#jg-test-rerun-2763)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#jg-test-rerun-2763)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 360.08 | 0.0027771406 | 141 | 363.75 | 0.0027491709 | 139.59 |
| **FRA** | 119.00 | 0.008403362 | 122.13 | 0.00818793 | 415 | 127.08 | 0.007868998 | 398.83 |
| **COA** | 181.00 | 0.005524862 | 176.79 | 0.005656335 | 287 | 188.01 | 0.0053188624 | 269.89 |
| **SCZ** | 106.00 | 0.009433962 | 128.54 | 0.0077794935 | 395 | 146.11 | 0.006844229 | 347.23 |
| **TYS** | 329.00 | 0.0030395137 | 375.61 | 0.0026623143 | 134 | 407.55 | 0.002453669 | 123.4 |
| **TOTAL** | 31.61 | 0.0316373 | 36.94 | 0.027070267 | 1372 | 39.65 | 0.025218513 | 1277.89 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9763213 | 0.76284325 | 0.9791946 | 0.77710086 | 0.72878754 |
| **20.00** | 0.90621084 | 0.58192986 | 0.9169703 | 0.60388577 | 0.53113127 |
| **30.00** | 0.7992319 | 0.4439213 | 0.82183397 | 0.46928015 | 0.3870819 |
| **40.00** | 0.6863358 | 0.33864236 | 0.72162926 | 0.364678 | 0.28210047 |
| **50.00** | 0.5812741 | 0.25833106 | 0.62245095 | 0.2833916 | 0.2055913 |
| **60.00** | 0.47735104 | 0.19706611 | 0.523463 | 0.22022384 | 0.14983238 |
| **70.00** | 0.37420753 | 0.15033056 | 0.4222662 | 0.17113614 | 0.10919597 |
| **80.00** | 0.29472435 | 0.11467865 | 0.34279492 | 0.13299005 | 0.079580665 |
| **90.00** | 0.22227278 | 0.08748184 | 0.26610786 | 0.103346676 | 0.057997398 |
| **100.00** | 0.15061408 | 0.06673493 | 0.19027267 | 0.08031079 | 0.04226778 |
| **110.00** | 0.09151585 | 0.050908294 | 0.1284415 | 0.062409587 | 0.030804234 |
| **120.00** | 0.04957315 | 0.038835052 | 0.07584544 | 0.048498545 | 0.022449743 |
| **130.00** | 0.027458156 | 0.029625058 | 0.042781673 | 0.03768826 | 0.016361093 |
| **140.00** | 0.0045625535 | 0.022599276 | 0.011687864 | 0.029287579 | 0.011923761 |
| **150.00** | 0.0 | 0.017239707 | 0.00452337 | 0.022759404 | 0.008689889 |
| **160.00** | 0.0 | 0.013151194 | 0.0012062946 | 0.017686352 | 0.0063330824 |
| **170.00** | 0.0 | 0.0100323 | 6.428648E-4 | 0.0137440795 | 0.0046154717 |
| **180.00** | 0.0 | 0.0076530725 | 3.2478967E-4 | 0.010680536 | 0.0033636983 |
| **190.00** | 0.0 | 0.0058380947 | 2.4634573E-4 | 0.008299854 | 0.0024514215 |
| **200.00** | 0.0 | 0.0044535515 | 1.8830739E-4 | 0.0064498233 | 0.0017865654 |
| **210.00** | 0.0 | 0.0033973616 | 1.6979937E-4 | 0.0050121634 | 0.0013020267 |
| **220.00** | 0.0 | 0.0025916544 | 1.5709065E-4 | 0.0038949565 | 9.489008E-4 |
| **230.00** | 0.0 | 0.0019770262 | 1.443819E-4 | 0.0030267742 | 6.915471E-4 |
| **240.00** | 0.0 | 0.0015081612 | 7.5108954E-5 | 0.0023521087 | 5.039909E-4 |
| **250.00** | 0.0 | 0.0011504906 | 0.0 | 0.0018278257 | 3.673023E-4 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#jg-test-rerun-2763)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 207.54 | 0.0048183515 | 244 | 234.32 | 0.0042676954 | 215.7 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 173.16 | 0.0057749995 | 293 | 183.78 | 0.005441235 | 276.11 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 2198.53 | 4.5484895E-4 | 22 | 3073.60 | 3.2535184E-4 | 15.29 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 201.40 | 0.0049652215 | 252 | 203.59 | 0.0049118847 | 249.28 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 196.70 | 0.005083912 | 258 | 200.47 | 0.0049883975 | 253.16 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 386.16 | 0.0025896297 | 132 | 534.46 | 0.0018710301 | 94.81 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 702.10 | 0.0014242916 | 72 | 729.36 | 0.0013710735 | 69.3 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 1416.67 | 7.0588005E-4 | 36 | 1516.07 | 6.596021E-4 | 33.67 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 130.32 | 0.0076737124 | 389 | 133.29 | 0.007502459 | 380.33 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 360.08 | 0.0027771406 | 141 | 363.25 | 0.0027529302 | 139.77 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 5051.33 | 1.9796751E-4 | 10 | 5604.41 | 1.7843102E-4 | 9.05 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 401.06 | 0.0024934176 | 127 | 413.24 | 0.0024199046 | 123.26 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 1244.60 | 8.034742E-4 | 41 | 1354.94 | 7.3803857E-4 | 37.64 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 149.15 | 0.00670461 | 340 | 150.72 | 0.006634975 | 336.46 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 143.24 | 0.0069814962 | 354 | 158.70 | 0.006301228 | 319.51 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 426.51 | 0.002344589 | 117 | 504.85 | 0.0019808002 | 98.79 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 122.13 | 0.00818793 | 415 | 126.77 | 0.0078885015 | 399.85 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 128.54 | 0.0077794935 | 395 | 146.37 | 0.006832118 | 346.64 |
| **RodgersCreek** | 325.31 | 0.003074 | 243.67 | 0.0041039176 | 207 | 305.58 | 0.0032724547 | 165.01 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 2818.27 | 3.548278E-4 | 18 | 3511.00 | 2.8481893E-4 | 14.28 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 369.32 | 0.002707668 | 137 | 380.13 | 0.0026306873 | 133.11 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 375.61 | 0.0026623143 | 134 | 408.14 | 0.002450122 | 123.22 |
| **Compton** | 2658.16 | 3.762E-4 | 7335.73 | 1.3631902E-4 | 7 | 7610.27 | 1.3140135E-4 | 6.76 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 176.79 | 0.005656335 | 287 | 187.81 | 0.0053244703 | 270.22 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 603.10 | 0.0016580942 | 84 | 644.30 | 0.001552061 | 78.63 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 639.67 | 0.0015633085 | 79 | 652.31 | 0.0015330192 | 77.47 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 201.40 | 0.0049652215 | 252 | 203.96 | 0.0049028047 | 248.81 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 149.15 | 0.00670461 | 340 | 150.92 | 0.0066260747 | 336.01 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 833.88 | 0.0011992075 | 61 | 853.06 | 0.0011722457 | 59.62 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1287.50 | 7.767006E-4 | 39 | 1318.10 | 7.586694E-4 | 38.06 |
| **TOTAL** | 9.08 | 0.1101451 | 16.89 | 0.059213743 | 3000 | 18.20 | 0.05494389 | 2783.34 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.88905305 | 0.55314374 | 0.90266734 | 0.57727367 | 0.33238843 |
| **20.00** | 0.6746452 | 0.30596796 | 0.70596117 | 0.33324486 | 0.110482074 |
| **30.00** | 0.44997102 | 0.16924426 | 0.4932584 | 0.19237347 | 0.036722966 |
| **40.00** | 0.27996174 | 0.093616396 | 0.32099873 | 0.11105213 | 0.012206289 |
| **50.00** | 0.15661733 | 0.051783323 | 0.19101308 | 0.06410747 | 0.004057229 |
| **60.00** | 0.07747594 | 0.02864362 | 0.10555293 | 0.03700755 | 0.001348576 |
| **70.00** | 0.03672708 | 0.015844038 | 0.052479055 | 0.021363484 | 4.4825108E-4 |
| **80.00** | 0.013668035 | 0.00876403 | 0.02484542 | 0.012332576 | 1.4899348E-4 |
| **90.00** | 0.0043927114 | 0.004847768 | 0.009824611 | 0.007119271 | 4.952371E-5 |
| **100.00** | 0.0031574848 | 0.0026815126 | 0.0049077016 | 0.0041097677 | 1.6461108E-5 |
| **110.00** | 0.0 | 0.0014832618 | 0.0017257957 | 0.0023724604 | 5.4714824E-6 |
| **120.00** | 0.0 | 8.2045695E-4 | 8.870206E-4 | 0.0013695589 | 1.8186574E-6 |
| **130.00** | 0.0 | 4.538306E-4 | 4.6590347E-5 | 7.906102E-4 | 6.045007E-7 |
| **140.00** | 0.0 | 2.5103355E-4 | 0.0 | 4.5639844E-4 | 2.0092905E-7 |

### Moment Release Variability Plots
*[(top)](#jg-test-rerun-2763)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#jg-test-rerun-2763)*

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
*[(top)](#jg-test-rerun-2763)*

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
  maxWallTime = 28800
  KZeroFrac = 0
  KOneFrac =  0
  muPin = 1.0
  tStart = 0
  maxT = 1.0000000000000000159e+100
  maxTransitions = 1.0000000000000000159e+8
  faultFname = zfault_Deepen.in
  outFnameInfix = test25a589d_2763V2
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
  KTauFname = /scratch/sciteam/shaw1/rsqsim/bluew/rundir2754/Ktau..out
  KSigmaFname = /scratch/sciteam/shaw1/rsqsim/bluew/rundir2754/Ksigma..out
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
  receiverElementAreaFrac = 0.8
  receiverElementIntTol = 1.0e-4
  receiverElementSubdivisionMax = 4
  tgfDist1 = 3
  tgfDist1 = 10
```
