# JG Test Rerun 2763 V3
## Metadata
| **Catalog** | JG Test Rerun 2763 V3 |
|-----|-----|
| **Author** | Jacqui Gilchrist, 2018/08/22 |
| **Description** | Test of reading in the stiffness files written by previous run test25a589d_J using Bruce's executable |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 1,035,499 events in 57,621 years |
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
*[(top)](#jg-test-rerun-2763-v3)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#jg-test-rerun-2763-v3)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#jg-test-rerun-2763-v3)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#jg-test-rerun-2763-v3)*

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
*[(top)](#jg-test-rerun-2763-v3)*

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
*[(top)](#jg-test-rerun-2763-v3)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#jg-test-rerun-2763-v3)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#jg-test-rerun-2763-v3)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#jg-test-rerun-2763-v3)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#jg-test-rerun-2763-v3)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#jg-test-rerun-2763-v3)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#jg-test-rerun-2763-v3)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#jg-test-rerun-2763-v3)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#jg-test-rerun-2763-v3)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#jg-test-rerun-2763-v3)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0036333178 | 0.0018490107 | 0.0026441424 | 0.0018566322 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 2.853391E-4 | 2.6238404E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0023397806 | 0.0018965844 | 0.001788125 | 0.0016558036 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 8.1797206E-4 | 7.770127E-4 | 8.1797206E-4 | 7.969114E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0015788763 | 0.0013830989 | 0.0014266955 | 0.0013770901 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 9.321077E-4 | 7.675946E-4 | 6.087234E-4 | 5.8618974E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.008198744 | 0.0077439635 | 0.008065585 | 0.007709255 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0015598537 | 0.0015144894 | 0.001540831 | 0.001514636 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0014837633 | 0.001345182 | 0.0012364694 | 0.0012013343 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 0.0012364694 | 6.321449E-4 | 3.804521E-4 | 2.976786E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.002948504 | 0.0025613362 | 0.0027773005 | 0.0026703302 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0047556516 | 0.0030665551 | 0.002853391 | 0.002580641 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.004983923 | 0.0049280366 | 0.004983923 | 0.0049266852 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.009986868 | 0.0069619566 | 0.00759002 | 0.0066411053 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0049649 | 0.0049107885 | 0.0049649 | 0.0049104104 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.005021968 | 0.004899558 | 0.004983923 | 0.004913106 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0055355784 | 0.005278406 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 3.233843E-4 | 2.7305147E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0028343683 | 0.0025818036 | 0.002510984 | 0.0024286977 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0053453525 | 0.0033405083 | 0.0041659507 | 0.0033464085 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0027392553 | 0.0026941523 | 0.0027392553 | 0.002710545 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0019973738 | 0.0016184894 | 0.0013886503 | 0.0011934785 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.0075709973 | 0.0073382966 | 0.0074188164 | 0.007275681 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.007437839 | 0.0042712395 | 0.004831742 | 0.0036204406 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.008636263 | 0.006587845 | 0.005174149 | 0.004952029 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.008636263 | 0.006587845 | 0.005440465 | 0.005171625 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.006600844 | 0.0064919316 | 0.006600844 | 0.006529425 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.0074188164 | 0.0042596124 | 0.006315505 | 0.0057954867 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0048888098 | 0.0032283736 | 0.0024539162 | 0.0020443506 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.004641516 | 0.0035324541 | 0.0031006848 | 0.002864264 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.0066579124 | 0.006423238 | 0.0066579124 | 0.0065663336 |

### Paleo Open Interval Plots
*[(top)](#jg-test-rerun-2763-v3)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#jg-test-rerun-2763-v3)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 365.97 | 0.0027324567 | 144 | 369.61 | 0.0027055268 | 142.56 |
| **FRA** | 119.00 | 0.008403362 | 122.83 | 0.00814107 | 427 | 127.94 | 0.007816017 | 409.97 |
| **COA** | 181.00 | 0.005524862 | 190.93 | 0.005237468 | 275 | 199.69 | 0.0050077853 | 262.92 |
| **SCZ** | 106.00 | 0.009433962 | 131.70 | 0.007592845 | 399 | 150.64 | 0.0066381413 | 348.85 |
| **TYS** | 329.00 | 0.0030395137 | 370.75 | 0.0026972569 | 141 | 401.35 | 0.0024915808 | 130.2 |
| **TOTAL** | 31.61 | 0.0316373 | 37.86 | 0.026416074 | 1386 | 40.54 | 0.024669487 | 1294.41 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9756707 | 0.7678501 | 0.9786898 | 0.7813791 | 0.72878754 |
| **20.00** | 0.91297007 | 0.58959377 | 0.92253315 | 0.61055326 | 0.53113127 |
| **30.00** | 0.8307004 | 0.45271963 | 0.848366 | 0.47707355 | 0.3870819 |
| **40.00** | 0.71474487 | 0.34762082 | 0.7433698 | 0.3727753 | 0.28210047 |
| **50.00** | 0.60636157 | 0.2669207 | 0.64428633 | 0.2912788 | 0.2055913 |
| **60.00** | 0.48959857 | 0.20495507 | 0.53477186 | 0.22759917 | 0.14983238 |
| **70.00** | 0.3810985 | 0.15737477 | 0.42891073 | 0.17784123 | 0.10919597 |
| **80.00** | 0.28753757 | 0.12084023 | 0.33602044 | 0.13896142 | 0.079580665 |
| **90.00** | 0.20933852 | 0.092787184 | 0.25494477 | 0.10858154 | 0.057997398 |
| **100.00** | 0.13056423 | 0.07124665 | 0.17295615 | 0.084843345 | 0.04226778 |
| **110.00** | 0.095704824 | 0.054706745 | 0.12953645 | 0.06629482 | 0.030804234 |
| **120.00** | 0.048546292 | 0.042006582 | 0.07584036 | 0.051801383 | 0.022449743 |
| **130.00** | 0.029082283 | 0.032254755 | 0.04477715 | 0.040476516 | 0.016361093 |
| **140.00** | 0.01849392 | 0.024766818 | 0.024926197 | 0.031627502 | 0.011923761 |
| **150.00** | 0.007964836 | 0.019017203 | 0.0095774755 | 0.02471307 | 0.008689889 |
| **160.00** | 0.0 | 0.014602361 | 0.0023541595 | 0.019310275 | 0.0063330824 |
| **170.00** | 0.0 | 0.011212425 | 0.001813459 | 0.015088645 | 0.0046154717 |
| **180.00** | 0.0 | 0.008609462 | 5.9211307E-4 | 0.0117899515 | 0.0033636983 |
| **190.00** | 0.0 | 0.006610776 | 4.784548E-4 | 0.009212421 | 0.0024514215 |
| **200.00** | 0.0 | 0.0050760848 | 2.4656355E-4 | 0.0071983933 | 0.0017865654 |
| **210.00** | 0.0 | 0.0038976723 | 1.810462E-4 | 0.0056246743 | 0.0013020267 |
| **220.00** | 0.0 | 0.0029928281 | 0.0 | 0.0043950025 | 9.489008E-4 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#jg-test-rerun-2763-v3)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 207.49 | 0.004819584 | 254 | 234.97 | 0.004255867 | 224.25 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 183.56 | 0.0054477314 | 286 | 193.21 | 0.0051758275 | 271.74 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 2144.81 | 4.6624185E-4 | 24 | 3021.58 | 3.3095235E-4 | 16.67 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 201.84 | 0.0049544196 | 261 | 203.76 | 0.0049077678 | 258.52 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 201.07 | 0.004973475 | 262 | 203.66 | 0.0049100774 | 258.63 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 377.61 | 0.0026482125 | 139 | 540.98 | 0.001848483 | 96.89 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 703.82 | 0.0014208219 | 75 | 722.31 | 0.0013844505 | 73.03 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 1619.49 | 6.174792E-4 | 32 | 1679.04 | 5.9558015E-4 | 30.87 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 134.45 | 0.0074375537 | 391 | 137.10 | 0.0072939694 | 383.45 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 365.97 | 0.0027324567 | 144 | 369.69 | 0.0027049442 | 142.55 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 6013.24 | 1.662997E-4 | 9 | 6350.42 | 1.574698E-4 | 8.36 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 396.98 | 0.0025190099 | 132 | 410.86 | 0.0024339159 | 127.55 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 1143.64 | 8.743993E-4 | 45 | 1228.28 | 8.141482E-4 | 41.87 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 149.93 | 0.0066695614 | 350 | 152.09 | 0.0065748454 | 345.01 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 147.40 | 0.0067842193 | 356 | 162.99 | 0.0061353296 | 321.72 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 407.48 | 0.002454096 | 129 | 485.70 | 0.0020588802 | 108.07 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 122.83 | 0.00814107 | 427 | 127.91 | 0.007817958 | 410.07 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 131.70 | 0.007592845 | 399 | 150.51 | 0.0066440385 | 349.17 |
| **RodgersCreek** | 325.31 | 0.003074 | 239.96 | 0.0041674366 | 219 | 299.34 | 0.0033406576 | 175.47 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 2372.26 | 4.215387E-4 | 23 | 3228.49 | 3.0974188E-4 | 16.82 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 358.08 | 0.0027926662 | 146 | 371.61 | 0.0026910116 | 140.65 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 370.75 | 0.0026972569 | 141 | 400.28 | 0.002498268 | 130.65 |
| **Compton** | 2658.16 | 3.762E-4 | 5345.10 | 1.8708715E-4 | 10 | 5849.00 | 1.7096946E-4 | 8.97 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 190.93 | 0.005237468 | 275 | 199.25 | 0.0050188354 | 263.51 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 538.49 | 0.0018570302 | 97 | 587.64 | 0.001701719 | 88.9 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 643.54 | 0.0015539104 | 82 | 657.09 | 0.0015218729 | 80.33 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 201.07 | 0.004973475 | 262 | 203.64 | 0.004910592 | 258.7 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 151.23 | 0.00661223 | 347 | 152.89 | 0.0065407655 | 343.21 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 819.77 | 0.0012198491 | 64 | 839.82 | 0.0011907273 | 62.43 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1201.22 | 8.324877E-4 | 43 | 1235.07 | 8.0967357E-4 | 41.82 |
| **TOTAL** | 9.08 | 0.1101451 | 16.80 | 0.05952591 | 3130 | 18.14 | 0.055135787 | 2899.1 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.8878377 | 0.5514197 | 0.9006839 | 0.5761669 | 0.33238843 |
| **20.00** | 0.67345244 | 0.30406365 | 0.70764786 | 0.33196834 | 0.110482074 |
| **30.00** | 0.4453516 | 0.16766669 | 0.49049142 | 0.19126917 | 0.036722966 |
| **40.00** | 0.29218304 | 0.09245471 | 0.3324319 | 0.110202976 | 0.012206289 |
| **50.00** | 0.16240808 | 0.050981347 | 0.19460595 | 0.06349531 | 0.004057229 |
| **60.00** | 0.0832777 | 0.028112117 | 0.10765299 | 0.036583897 | 0.001348576 |
| **70.00** | 0.04968376 | 0.015501575 | 0.06373483 | 0.021078432 | 4.4825108E-4 |
| **80.00** | 0.025629679 | 0.008547873 | 0.032296088 | 0.012144695 | 1.4899348E-4 |
| **90.00** | 0.012726601 | 0.0047134655 | 0.01824894 | 0.0069973716 | 4.952371E-5 |
| **100.00** | 0.009010996 | 0.0025990976 | 0.01014831 | 0.004031654 | 1.6461108E-5 |
| **110.00** | 0.0046467893 | 0.0014331935 | 0.0051128706 | 0.0023229057 | 5.4714824E-6 |
| **120.00** | 0.0 | 7.902911E-4 | 6.136636E-4 | 0.0013383814 | 1.8186574E-6 |
| **130.00** | 0.0 | 4.3578207E-4 | 0.0 | 7.7113113E-4 | 6.045007E-7 |

### Moment Release Variability Plots
*[(top)](#jg-test-rerun-2763-v3)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#jg-test-rerun-2763-v3)*

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
*[(top)](#jg-test-rerun-2763-v3)*

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
  outFnameInfix = test25a589d_flt2763V3
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
  KTauFname = /u/sciteam/gilchris/testParamSweep/test25a589d_J/Ktau.test25a589d_J.out
  KSigmaFname = /u/sciteam/gilchris/testParamSweep/test25a589d_J/Ksigma.test25a589d_J.out
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
