# JG Mod Load Test B
## Metadata
| **Catalog** | JG Mod Load Test B |
|-----|-----|
| **Author** | Jacqui Gilchrist, 2017/11/14 |
| **Description** | Bruce's modified loading with higher values of frictional parameters |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.34 km^2 |
| **Length** | 15,251,199 events in 192,869 years |
| **Frictional Params** | a=0.01, b=0.015, (b-a)=0.005, ddotEQ=1 |

* [Metadata](#metadata)
* [BBP Calculations, LA Basin 863 (m/s) Velocity Model](#bbp-calculations-la-basin-863-ms-velocity-model)
  * [Full Catalog GMPE Comparisons, LA Basin 863 (m/s)](#full-catalog-gmpe-comparisons-la-basin-863-ms)
  * [Full Catalog RotD100/RotD50 Ratios, LA Basin 863 (m/s)](bbp_LA_BASIN_863/catalog_rotd_ratio_comparisons/)
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

## BBP Calculations, LA Basin 863 (m/s) Velocity Model
*[(top)](#jg-mod-load-test-b)*


### Full Catalog GMPE Comparisons, LA Basin 863 (m/s)
*[(top)](#jg-mod-load-test-b)*

* [BSSA2014](bbp_LA_BASIN_863/gmpe_bbp_comparisons_BSSA2014/)
* [NGAWest_2014_NoIdr](bbp_LA_BASIN_863/gmpe_bbp_comparisons_NGAWest_2014_NoIdr/)

### Full Catalog RotD100/RotD50 Ratios, LA Basin 863 (m/s)
*[(top)](#jg-mod-load-test-b)*

[Full Catalog RotD100/RotD50 Ratios Plotted Here](bbp_LA_BASIN_863/catalog_rotd_ratio_comparisons/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#jg-mod-load-test-b)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#jg-mod-load-test-b)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#jg-mod-load-test-b)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#jg-mod-load-test-b)*

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
*[(top)](#jg-mod-load-test-b)*

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
*[(top)](#jg-mod-load-test-b)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#jg-mod-load-test-b)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#jg-mod-load-test-b)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#jg-mod-load-test-b)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#jg-mod-load-test-b)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#jg-mod-load-test-b)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#jg-mod-load-test-b)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#jg-mod-load-test-b)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#jg-mod-load-test-b)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#jg-mod-load-test-b)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 9.3190145E-4 | 5.9146504E-4 | 0.0 | 0.0 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 1.4910423E-4 | 1.4488463E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.001304662 | 8.893027E-4 | 0.0011928339 | 0.0010535378 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 9.372266E-4 | 7.1596587E-4 | 5.325151E-4 | 5.049071E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0016454717 | 9.282452E-4 | 8.946254E-4 | 8.2363206E-4 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 4.9523904E-4 | 3.28126E-4 | 3.6211027E-4 | 3.434108E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.014894447 | 0.007983953 | 0.0049151145 | 0.0044898656 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0017306741 | 0.0013949522 | 0.0014590914 | 0.0013670613 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 8.679996E-4 | 7.2060846E-4 | 9.15926E-4 | 8.2150777E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 9.478769E-4 | 5.4258574E-4 | 0.0 | 0.0 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.002002257 | 0.0015392022 | 0.0 | 0.0 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.002220588 | 0.0013041461 | 0.0 | 0.0 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0116727315 | 0.0061995676 | 0.0 | 0.0 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0038554093 | 0.0022381842 | 0.0 | 0.0 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.010384045 | 0.0065151607 | 0.0 | 0.0 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.011337247 | 0.0063514733 | 0.0 | 0.0 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.00775342 | 0.0040577003 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 1.5975453E-4 | 1.1421734E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.005490231 | 0.002769765 | 0.0 | 0.0 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.003067287 | 0.0015005282 | 0.0 | 0.0 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0071090767 | 0.0048489016 | 0.0031684649 | 0.0030288778 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0010011285 | 5.830782E-4 | 0.0 | 0.0 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.0076682176 | 0.00615731 | 0.007897199 | 0.007098801 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0025454222 | 0.0011883844 | 0.0025187964 | 0.0015095707 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.00598547 | 0.004244417 | 0.0038607346 | 0.003690761 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.00598547 | 0.004244417 | 0.0038500843 | 0.0036720603 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.0043240227 | 0.0040776473 | 0.004371949 | 0.0042360174 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.0057192123 | 0.0028354984 | 0.0051174704 | 0.0038207711 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0022418885 | 0.001278513 | 9.691775E-4 | 5.7679013E-4 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.003589152 | 0.0016595061 | 0.0014484411 | 0.0013888853 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.0057298625 | 0.0048345844 | 0.004973691 | 0.0047902167 |

### Paleo Open Interval Plots
*[(top)](#jg-mod-load-test-b)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#jg-mod-load-test-b)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 319.38 | 0.0031310667 | 588 | 332.46 | 0.0030079118 | 564.89 |
| **FRA** | 119.00 | 0.008403362 | 203.55 | 0.004912888 | 923 | 222.78 | 0.004488753 | 843.23 |
| **COA** | 181.00 | 0.005524862 | 259.16 | 0.003858626 | 725 | 271.34 | 0.0036854493 | 692.49 |
| **SCZ** | 106.00 | 0.009433962 | 2267.34 | 4.410452E-4 | 34 | 2479.62 | 4.0328808E-4 | 31.14 |
| **TYS** | 329.00 | 0.0030395137 | 1811.69 | 5.519702E-4 | 103 | 1856.67 | 5.3859904E-4 | 100.5 |
| **TOTAL** | 31.61 | 0.0316373 | 79.14 | 0.012636211 | 2373 | 84.13 | 0.011886164 | 2232.12 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9945044 | 0.8812957 | 0.99500066 | 0.88793063 | 0.72878754 |
| **20.00** | 0.98216796 | 0.7766821 | 0.9835743 | 0.78842086 | 0.53113127 |
| **30.00** | 0.9631614 | 0.6844865 | 0.9663793 | 0.70006305 | 0.3870819 |
| **40.00** | 0.9374861 | 0.603235 | 0.9425421 | 0.6216074 | 0.28210047 |
| **50.00** | 0.90724176 | 0.5316284 | 0.9141147 | 0.5519443 | 0.2055913 |
| **60.00** | 0.8690094 | 0.4685218 | 0.8775518 | 0.49008825 | 0.14983238 |
| **70.00** | 0.83127147 | 0.41290623 | 0.8425692 | 0.4351644 | 0.10919597 |
| **80.00** | 0.7926232 | 0.36389247 | 0.8057924 | 0.38639578 | 0.079580665 |
| **90.00** | 0.7499564 | 0.32069686 | 0.764969 | 0.34309268 | 0.057997398 |
| **100.00** | 0.7116825 | 0.28262874 | 0.727446 | 0.3046425 | 0.04226778 |
| **110.00** | 0.6629465 | 0.2490795 | 0.68104 | 0.2705014 | 0.030804234 |
| **120.00** | 0.6163631 | 0.21951269 | 0.63722944 | 0.2401865 | 0.022449743 |
| **130.00** | 0.5728864 | 0.19345558 | 0.5938916 | 0.21326895 | 0.016361093 |
| **140.00** | 0.5280267 | 0.17049156 | 0.54992074 | 0.18936804 | 0.011923761 |
| **150.00** | 0.4777955 | 0.15025347 | 0.50107485 | 0.16814569 | 0.008689889 |
| **160.00** | 0.42964047 | 0.13241774 | 0.45374447 | 0.14930171 | 0.0063330824 |
| **170.00** | 0.39561146 | 0.116699174 | 0.4177825 | 0.13256957 | 0.0046154717 |
| **180.00** | 0.35699332 | 0.10284648 | 0.3783435 | 0.11771258 | 0.0033636983 |
| **190.00** | 0.31402704 | 0.09063815 | 0.33508998 | 0.10452061 | 0.0024514215 |
| **200.00** | 0.28432217 | 0.079879016 | 0.30488804 | 0.092807055 | 0.0017865654 |
| **210.00** | 0.25653195 | 0.07039703 | 0.27558225 | 0.08240622 | 0.0013020267 |
| **220.00** | 0.23496431 | 0.062040597 | 0.25334385 | 0.07317101 | 9.489008E-4 |
| **230.00** | 0.21095811 | 0.054676108 | 0.22782378 | 0.064970784 | 6.915471E-4 |
| **240.00** | 0.18681626 | 0.048185818 | 0.20279936 | 0.05768955 | 5.039909E-4 |
| **250.00** | 0.1693711 | 0.04246595 | 0.18328549 | 0.05122432 | 3.673023E-4 |
| **260.00** | 0.15125377 | 0.03742506 | 0.16562755 | 0.045483645 | 2.6768536E-4 |
| **270.00** | 0.13236797 | 0.032982543 | 0.14553113 | 0.040386323 | 1.9508575E-4 |
| **280.00** | 0.11844011 | 0.029067371 | 0.13013124 | 0.035860255 | 1.4217607E-4 |
| **290.00** | 0.09938724 | 0.02561695 | 0.11033241 | 0.03184142 | 1.0361615E-4 |
| **300.00** | 0.08066546 | 0.022576107 | 0.09105674 | 0.028272972 | 7.551416E-5 |
| **310.00** | 0.0612609 | 0.019896224 | 0.07009321 | 0.025104439 | 5.503378E-5 |
| **320.00** | 0.05035861 | 0.017534457 | 0.05708078 | 0.022291001 | 4.0107934E-5 |
| **330.00** | 0.039280172 | 0.015453041 | 0.04628375 | 0.019792862 | 2.9230163E-5 |
| **340.00** | 0.03338233 | 0.013618697 | 0.038823456 | 0.01757469 | 2.1302578E-5 |
| **350.00** | 0.026764149 | 0.012002099 | 0.031494994 | 0.015605106 | 1.5525055E-5 |
| **360.00** | 0.017278235 | 0.010577398 | 0.02129481 | 0.013856252 | 1.1314466E-5 |
| **370.00** | 0.0150029985 | 0.009321815 | 0.018604888 | 0.012303391 | 8.245842E-6 |
| **380.00** | 0.010885959 | 0.008215275 | 0.012354381 | 0.010924557 | 6.009467E-6 |
| **390.00** | 0.010185037 | 0.0072400863 | 0.01170574 | 0.00970025 | 4.379625E-6 |
| **400.00** | 0.009484115 | 0.0063806567 | 0.01115838 | 0.008613149 | 3.1918162E-6 |
| **410.00** | 0.0046086423 | 0.005623245 | 0.004164595 | 0.007647879 | 2.3261557E-6 |
| **420.00** | 0.0041643255 | 0.0049557416 | 0.0040063197 | 0.006790786 | 1.6952735E-6 |
| **430.00** | 0.003720009 | 0.0043674735 | 0.0037884368 | 0.0060297474 | 1.2354942E-6 |
| **440.00** | 0.0032756925 | 0.0038490356 | 0.0034688988 | 0.0053539975 | 9.004128E-7 |
| **450.00** | 0.0028313757 | 0.0033921383 | 0.0031363638 | 0.0047539785 | 6.5620964E-7 |
| **460.00** | 0.0 | 0.0029894768 | 9.754797E-4 | 0.0042212033 | 4.782374E-7 |
| **470.00** | 0.0 | 0.0026346128 | 6.171154E-4 | 0.0037481356 | 3.4853346E-7 |
| **480.00** | 0.0 | 0.0023218729 | 4.923147E-4 | 0.0033280845 | 2.5400686E-7 |
| **490.00** | 0.0 | 0.0020462566 | 3.5024417E-4 | 0.0029551082 | 1.8511703E-7 |
| **500.00** | 0.0 | 0.001803357 | 2.8443302E-4 | 0.0026239313 | 1.3491099E-7 |
| **510.00** | 0.0 | 0.0015892908 | 1.7571833E-4 | 0.002329869 | 9.832145E-8 |
| **520.00** | 0.0 | 0.0014006351 | 1.6340389E-4 | 0.002068762 | 7.165545E-8 |
| **530.00** | 0.0 | 0.0012343737 | 1.4643838E-4 | 0.0018369172 | 5.2221598E-8 |
| **540.00** | 0.0 | 0.0010878481 | 1.142383E-4 | 0.0016310551 | 3.8058452E-8 |
| **550.00** | 0.0 | 9.587158E-4 | 9.471527E-5 | 0.0014482639 | 2.7736526E-8 |
| **560.00** | 0.0 | 8.449121E-4 | 8.4663574E-5 | 0.0012859579 | 2.0214035E-8 |
| **570.00** | 0.0 | 7.4461737E-4 | 7.461188E-5 | 0.0011418414 | 1.4731737E-8 |
| **580.00** | 0.0 | 6.5622805E-4 | 6.634347E-5 | 0.0010138759 | 1.0736306E-8 |
| **590.00** | 0.0 | 5.7833095E-4 | 6.339237E-5 | 9.0025156E-4 | 7.824486E-9 |
| **600.00** | 0.0 | 5.0968054E-4 | 6.0441267E-5 | 7.99361E-4 | 5.7023883E-9 |
| **610.00** | 0.0 | 4.4917926E-4 | 5.7490164E-5 | 7.097771E-4 | 4.1558295E-9 |
| **620.00** | 0.0 | 3.9585974E-4 | 5.453906E-5 | 6.3023285E-4 | 3.0287168E-9 |
| **630.00** | 0.0 | 3.4886948E-4 | 5.1587962E-5 | 5.5960304E-4 | 2.2072912E-9 |
| **640.00** | 0.0 | 3.0745714E-4 | 4.863686E-5 | 4.968887E-4 | 1.6086463E-9 |
| **650.00** | 0.0 | 2.7096065E-4 | 4.568576E-5 | 4.4120272E-4 | 1.1723614E-9 |
| **660.00** | 0.0 | 2.3879645E-4 | 4.2734657E-5 | 3.917574E-4 | 8.544024E-10 |
| **670.00** | 0.0 | 2.1045028E-4 | 3.9783557E-5 | 3.4785343E-4 | 6.2267785E-10 |
| **680.00** | 0.0 | 1.8546892E-4 | 3.6832454E-5 | 3.0886973E-4 | 4.5379986E-10 |
| **690.00** | 0.0 | 1.6345296E-4 | 0.0 | 2.7425488E-4 | 3.307237E-10 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#jg-mod-load-test-b)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 356.43 | 0.00280563 | 527 | 508.67 | 0.0019658983 | 369.24 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 249.18 | 0.004013184 | 754 | 265.74 | 0.003763058 | 707.02 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 689.54 | 0.001450234 | 272 | 718.83 | 0.0013911457 | 260.92 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 70468.27 | 1.4190784E-5 | 3 | 72491.89 | 1.3794645E-5 | 2.94 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 1111.30 | 8.998508E-4 | 168 | 1211.58 | 8.2536606E-4 | 154.13 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 14390.49 | 6.949035E-5 | 13 | 20872.63 | 4.7909623E-5 | 8.8 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 126.60 | 0.0078986725 | 1483 | 141.01 | 0.007091494 | 1331.05 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 319.38 | 0.0031310667 | 588 | 332.52 | 0.0030073388 | 564.77 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 169.20 | 0.005910004 | 1109 | 230.28 | 0.0043424997 | 814.61 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 2389.24 | 4.1854338E-4 | 77 | 2532.37 | 3.9488694E-4 | 72.67 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 203.04 | 0.0049251732 | 924 | 212.48 | 0.0047062906 | 882.94 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 2175.69 | 4.5962507E-4 | 74 | 2305.73 | 4.3370159E-4 | 69.71 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 1034.59 | 9.665638E-4 | 182 | 1726.73 | 5.7912944E-4 | 108.93 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 203.55 | 0.004912888 | 923 | 222.52 | 0.0044940175 | 844.13 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 2267.34 | 4.410452E-4 | 34 | 2474.49 | 4.0412435E-4 | 31.18 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 5522.97 | 1.8106212E-4 | 34 | 5778.52 | 1.7305481E-4 | 32.32 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 187788.10 | 0.0 | 0 | ∞ | 0.0 | 0 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 1811.69 | 5.519702E-4 | 103 | 1860.39 | 5.3752156E-4 | 100.33 |
| **Compton** | 2658.16 | 3.762E-4 | 3025.93 | 3.3047728E-4 | 62 | 3556.03 | 2.8121215E-4 | 52.87 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 259.16 | 0.003858626 | 725 | 271.00 | 0.003690091 | 693.33 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 837.76 | 0.0011936635 | 224 | 946.91 | 0.0010560687 | 198.16 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 799.42 | 0.001250901 | 235 | 821.43 | 0.0012173833 | 228.73 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 227.99 | 0.004386235 | 823 | 235.05 | 0.0042544417 | 798.28 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1127.41 | 8.8699255E-4 | 166 | 1219.18 | 8.202262E-4 | 153.58 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1269.68 | 7.875995E-4 | 148 | 1473.74 | 6.785462E-4 | 127.61 |
| **TOTAL** | 10.14 | 0.0985812 | 23.56 | 0.042452767 | 7970 | 26.58 | 0.037620336 | 7062.82 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.95359 | 0.65407866 | 0.9591715 | 0.6864627 | 0.3731361 |
| **20.00** | 0.8583683 | 0.4278189 | 0.8742902 | 0.47123107 | 0.13923056 |
| **30.00** | 0.736103 | 0.2798272 | 0.76285315 | 0.32348254 | 0.051951952 |
| **40.00** | 0.605625 | 0.183029 | 0.64188504 | 0.22205871 | 0.01938515 |
| **50.00** | 0.48754156 | 0.11971536 | 0.52665746 | 0.15243503 | 0.0072332993 |
| **60.00** | 0.38410965 | 0.07830326 | 0.4252715 | 0.10464096 | 0.0026990052 |
| **70.00** | 0.29553103 | 0.051216494 | 0.33639362 | 0.07183212 | 0.0010070964 |
| **80.00** | 0.22375646 | 0.033499613 | 0.2588222 | 0.049310073 | 3.7578403E-4 |
| **90.00** | 0.16570926 | 0.021911383 | 0.19803773 | 0.033849526 | 1.4021859E-4 |
| **100.00** | 0.113850996 | 0.014331768 | 0.1410927 | 0.023236437 | 5.232062E-5 |
| **110.00** | 0.07432296 | 0.0093741035 | 0.09812703 | 0.015950948 | 1.9522713E-5 |
| **120.00** | 0.048288513 | 0.006131401 | 0.06672531 | 0.010949731 | 7.284629E-6 |
| **130.00** | 0.031549297 | 0.0040104184 | 0.04709239 | 0.007516582 | 2.7181584E-6 |
| **140.00** | 0.017798364 | 0.0026231292 | 0.02985293 | 0.0051598535 | 1.014243E-6 |
| **150.00** | 0.012264295 | 0.0017157329 | 0.021731649 | 0.003542047 | 3.7845072E-7 |
| **160.00** | 0.0069101504 | 0.0011222241 | 0.013370481 | 0.0024314832 | 1.4121363E-7 |
| **170.00** | 0.005459284 | 7.340229E-4 | 0.009719214 | 0.0016691226 | 5.2691906E-8 |
| **180.00** | 0.0037303935 | 4.8010872E-4 | 0.0051134825 | 0.0011457904 | 1.9661252E-8 |
| **190.00** | 0.002129801 | 3.1402885E-4 | 0.003470164 | 7.8654237E-4 | 7.3363235E-9 |
| **200.00** | 0.0 | 2.0539957E-4 | 7.968147E-4 | 5.3993205E-4 | 2.7374474E-9 |
| **210.00** | 0.0 | 1.3434747E-4 | 5.625892E-4 | 3.7064322E-4 | 1.0214405E-9 |
| **220.00** | 0.0 | 8.7873814E-5 | 2.0074421E-4 | 2.5443276E-4 | 3.8113632E-10 |
| **230.00** | 0.0 | 5.7476387E-5 | 4.7884598E-5 | 1.7465859E-4 | 1.4221573E-10 |
| **240.00** | 0.0 | 3.759408E-5 | 2.9112676E-5 | 1.1989661E-4 | 5.3065826E-11 |
| **250.00** | 0.0 | 2.4589484E-5 | 2.174806E-5 | 8.2304556E-5 | 1.9800776E-11 |
| **260.00** | 0.0 | 1.6083457E-5 | 1.5499872E-5 | 5.6499008E-5 | 7.388384E-12 |
| **270.00** | 0.0 | 1.0519846E-5 | 0.0 | 3.8784463E-5 | 2.756873E-12 |

### Moment Release Variability Plots
*[(top)](#jg-mod-load-test-b)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#jg-mod-load-test-b)*

Example rupture plots:

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![example](resources/trigger_within_prev_m6_example_re_rup.png) | ![example](resources/trigger_within_prev_m6.5_example_re_rup.png) |  |
| ![example](resources/trigger_within_prev_m6_example_new_hypo.png) | ![example](resources/trigger_within_prev_m6.5_example_new_hypo.png) | ![example](resources/trigger_within_prev_m7_example_new_hypo.png) |

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![hypocenter plot](resources/trigger_within_prev_m6_1yr.png) | ![hypocenter plot](resources/trigger_within_prev_m6.5_1yr.png) | ![hypocenter plot](resources/trigger_within_prev_m7_1yr.png) |
| ![hypocenter plot](resources/trigger_within_prev_m6_10yr.png) | ![hypocenter plot](resources/trigger_within_prev_m6.5_10yr.png) | ![hypocenter plot](resources/trigger_within_prev_m7_10yr.png) |
| ![hypocenter plot](resources/trigger_within_prev_m6_100yr.png) | ![hypocenter plot](resources/trigger_within_prev_m6.5_100yr.png) | ![hypocenter plot](resources/trigger_within_prev_m7_100yr.png) |

## Input File
*[(top)](#jg-mod-load-test-b)*

```
  A_1 = 0.01
  fA = 0.1
  B_1 = 0.015
  muSlipAmp_1 = 0
  muSlipInvDist_1 = 00
  cohesion = 00
  Dc_1 = 1.0000000000000000818e-05
  mu0_1 = 0.6
  ddotStar_1 = 9.9999999999999995475e-07
  ddotAB_1 = 9.9999999999999995475e-07
  alpha_1 = 0.0
  theta0_1 = 200000000
  tau0_1 = 55
  sigma0_1 = 100
  sigmaFracPin = 0.5
  lowSigmaAction = 1
  maxThetaPin = 1.0e13
  ddotEQ_1 = 1
  ddotEQFname = 
  stressOvershootFactor = 0.10000000000000000555
  lameLambda = 30000
  lameMu = 30000
  slowSlip_1 = 0
  nEq = 1000000000000
  KZeroFrac = 0
  KOneFrac =  0
  muPin = 1.0
  tStart = 0
  maxT = 3.1536e13
  maxTransitions = 1.0000000000000000159e+100
  faultFname = zfault_Deepen.in
  outFnameInfix = modLoad_testB
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
  minMagWrite = 7.65
  writeStiffness = 0
  nbuffEQS = 100
  nbuffPED = 100
  nbuffTRANS = 100
  nbuffSnap = 10
  stressRateSpecification = 2
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
  tauDotFname =  tauDotMod.in
  sigmaDotFname =  sigmaDotMod.in
  KZeroFname = zfault_Deepen_KZero.in
  pinnedFname =  
  neighborFname = 
  stressRateFname =  
  slowSlipFname = 
  writePatchFname = 
  DEBUG = 0
  ZBrentUpperBracket = 0
```
