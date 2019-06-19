# Bruce 2412
## Metadata
| **Catalog** | Bruce 2412 |
|-----|-----|
| **Author** | Bruce Shaw, 2017/12/22 |
| **Description** | factorNormal=2.0;  50ky reference time; 85ky spinup; srt(slipRate) |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 1,999,999 events in 247,078 years |
| **Frictional Params** | a=0.001, b=0.008, (b-a)=0.007, ddotEQ=1 |

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
*[(top)](#bruce-2412)*


### Full Catalog GMPE Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-2412)*

* [BSSA2014](bbp_LA_BASIN_863/gmpe_bbp_comparisons_BSSA2014/)
* [NGAWest_2014_NoIdr](bbp_LA_BASIN_863/gmpe_bbp_comparisons_NGAWest_2014_NoIdr/)

### Full Catalog RotD100/RotD50 Ratios, LA Basin 863 (m/s)
*[(top)](#bruce-2412)*

[Full Catalog RotD100/RotD50 Ratios Plotted Here](bbp_LA_BASIN_863/catalog_rotd_ratio_comparisons/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2412)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2412)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2412)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2412)*

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
*[(top)](#bruce-2412)*

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
*[(top)](#bruce-2412)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2412)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2412)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2412)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2412)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2412)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2412)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2412)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2412)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2412)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0012186249 | 6.503398E-4 | 7.972698E-4 | 7.033707E-4 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 9.914236E-5 | 8.845841E-5 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0010409948 | 8.544601E-4 | 9.335906E-4 | 9.1205275E-4 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 6.609491E-4 | 5.986086E-4 | 5.1636645E-4 | 5.06997E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0011855774 | 9.2685205E-4 | 8.1379357E-4 | 7.909683E-4 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 5.865923E-4 | 4.560349E-4 | 3.6765292E-4 | 3.5610065E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.006592967 | 0.005460849 | 0.0048042736 | 0.004658709 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 9.872927E-4 | 9.471863E-4 | 9.6663804E-4 | 9.542743E-4 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 8.1379357E-4 | 7.193929E-4 | 7.435677E-4 | 7.335262E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 2.6851057E-4 | 1.4465711E-4 | 4.544025E-5 | 4.0846433E-5 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0015986706 | 0.001421598 | 0.0015201829 | 0.0015008015 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0016193253 | 0.0011415329 | 0.0012021011 | 0.0011634349 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0029453544 | 0.0028825526 | 0.0029370924 | 0.0029052184 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0024744282 | 0.002146461 | 0.0023174528 | 0.0022761007 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0029329616 | 0.002896878 | 0.0029246996 | 0.0028942232 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.002912307 | 0.00284905 | 0.002904045 | 0.002871185 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0033832332 | 0.003145319 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 1.5697541E-4 | 1.2692096E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0019787163 | 0.0016979813 | 0.0014953973 | 0.001466626 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0014623498 | 0.0011139384 | 0.0011236134 | 0.0010751459 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0023505 | 0.0021830318 | 0.0022720124 | 0.0022411905 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0012888507 | 7.615334E-4 | 3.6765292E-4 | 3.4638896E-4 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.0039863493 | 0.003866862 | 0.0039698253 | 0.003927966 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0027016294 | 0.0016173972 | 0.0015408376 | 0.0013047715 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.005262807 | 0.0042307125 | 0.0036434818 | 0.0035425797 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.005262807 | 0.0042307125 | 0.0037137077 | 0.003595682 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.004279645 | 0.004181321 | 0.004250729 | 0.004204215 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.004296169 | 0.0031279293 | 0.003936778 | 0.0036974521 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 6.7334186E-4 | 4.4372704E-4 | 5.7419954E-4 | 4.902582E-4 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.002540523 | 0.001576447 | 0.0012599342 | 0.0011770185 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.004287907 | 0.0041462877 | 0.004250729 | 0.0042009735 |

### Paleo Open Interval Plots
*[(top)](#bruce-2412)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2412)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 440.34 | 0.0022709786 | 550 | 446.79 | 0.0022381705 | 542 |
| **FRA** | 119.00 | 0.008403362 | 189.28 | 0.005283168 | 1279 | 197.18 | 0.005071552 | 1227.81 |
| **COA** | 181.00 | 0.005524862 | 270.79 | 0.0036928854 | 894 | 279.07 | 0.0035833532 | 867.48 |
| **SCZ** | 106.00 | 0.009433962 | 431.39 | 0.0023181096 | 561 | 439.36 | 0.002276056 | 550.83 |
| **TYS** | 329.00 | 0.0030395137 | 797.72 | 0.0012535682 | 303 | 844.60 | 0.001183993 | 286.18 |
| **TOTAL** | 31.61 | 0.0316373 | 67.48 | 0.014820155 | 3586 | 69.65 | 0.014358379 | 3474.29 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9924602 | 0.8622573 | 0.99296206 | 0.8662482 | 0.72878754 |
| **20.00** | 0.9703768 | 0.74348766 | 0.97215813 | 0.750386 | 0.53113127 |
| **30.00** | 0.9362959 | 0.6410777 | 0.94013774 | 0.65002054 | 0.3870819 |
| **40.00** | 0.8925773 | 0.5527739 | 0.8985499 | 0.5630791 | 0.28210047 |
| **50.00** | 0.8467289 | 0.47663334 | 0.85481656 | 0.48776627 | 0.2055913 |
| **60.00** | 0.7851765 | 0.41098058 | 0.79625076 | 0.42252666 | 0.14983238 |
| **70.00** | 0.72265947 | 0.354371 | 0.736353 | 0.36601296 | 0.10919597 |
| **80.00** | 0.6549265 | 0.305559 | 0.6707741 | 0.3170581 | 0.079580665 |
| **90.00** | 0.58775157 | 0.26347047 | 0.6054915 | 0.274651 | 0.057997398 |
| **100.00** | 0.52106315 | 0.22717935 | 0.53996915 | 0.23791593 | 0.04226778 |
| **110.00** | 0.4596792 | 0.19588706 | 0.4795583 | 0.20609425 | 0.030804234 |
| **120.00** | 0.39869896 | 0.16890505 | 0.41846445 | 0.17852879 | 0.022449743 |
| **130.00** | 0.33744028 | 0.14563961 | 0.3582261 | 0.15465024 | 0.016361093 |
| **140.00** | 0.27485412 | 0.12557882 | 0.2955866 | 0.13396549 | 0.011923761 |
| **150.00** | 0.21890098 | 0.108281255 | 0.23927727 | 0.11604737 | 0.008689889 |
| **160.00** | 0.18242678 | 0.0933663 | 0.20106573 | 0.100525826 | 0.0063330824 |
| **170.00** | 0.14605545 | 0.08050578 | 0.16466841 | 0.08708032 | 0.0046154717 |
| **180.00** | 0.11369809 | 0.069416694 | 0.13104948 | 0.07543317 | 0.0033636983 |
| **190.00** | 0.082815155 | 0.059855055 | 0.09833096 | 0.06534385 | 0.0024514215 |
| **200.00** | 0.052263595 | 0.05161046 | 0.06594599 | 0.056603994 | 0.0017865654 |
| **210.00** | 0.036983047 | 0.044501495 | 0.047163945 | 0.04903311 | 0.0013020267 |
| **220.00** | 0.023613889 | 0.038371738 | 0.031710092 | 0.042474844 | 9.489008E-4 |
| **230.00** | 0.013654522 | 0.03308631 | 0.020197239 | 0.036793757 | 6.915471E-4 |
| **240.00** | 0.009012388 | 0.028528916 | 0.01314539 | 0.031872526 | 5.039909E-4 |
| **250.00** | 0.0054995427 | 0.024599265 | 0.007836531 | 0.02760952 | 3.673023E-4 |
| **260.00** | 0.00461755 | 0.021210896 | 0.0068293717 | 0.023916697 | 2.6768536E-4 |
| **270.00** | 0.0023814116 | 0.018289251 | 0.0026111915 | 0.020717796 | 1.9508575E-4 |
| **280.00** | 0.002156762 | 0.01577004 | 0.0022443268 | 0.017946754 | 1.4217607E-4 |
| **290.00** | 0.0019321125 | 0.013597832 | 0.0018502267 | 0.015546343 | 1.0361615E-4 |
| **300.00** | 0.001707463 | 0.011724831 | 0.0015879668 | 0.013466992 | 7.551416E-5 |
| **310.00** | 0.0014828135 | 0.01010982 | 0.0014877464 | 0.011665758 | 5.503378E-5 |
| **320.00** | 0.0 | 0.008717267 | 1.9628915E-4 | 0.010105442 | 4.0107934E-5 |
| **330.00** | 0.0 | 0.007516527 | 1.7352201E-4 | 0.008753821 | 2.9230163E-5 |
| **340.00** | 0.0 | 0.0064811804 | 1.2569923E-4 | 0.007582982 | 2.1302578E-5 |
| **350.00** | 0.0 | 0.0055884453 | 7.552303E-5 | 0.006568745 | 1.5525055E-5 |
| **360.00** | 0.0 | 0.004818678 | 2.6137166E-5 | 0.0056901635 | 1.1314466E-5 |
| **370.00** | 0.0 | 0.00415494 | 1.59099E-5 | 0.0049290936 | 8.245842E-6 |
| **380.00** | 0.0 | 0.0035826275 | 0.0 | 0.004269819 | 6.009467E-6 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2412)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 503.63 | 0.0019855998 | 481 | 573.80 | 0.0017427781 | 422.11 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 269.28 | 0.0037135622 | 899 | 278.18 | 0.0035947664 | 870.24 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 1473.09 | 6.7884603E-4 | 165 | 2111.95 | 4.734968E-4 | 114.78 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 341.60 | 0.002927417 | 708 | 345.22 | 0.0028967364 | 700.58 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 344.03 | 0.0029067139 | 703 | 347.73 | 0.002875825 | 695.54 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 1251.45 | 7.990724E-4 | 193 | 1414.87 | 7.0677884E-4 | 170.69 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 1198.90 | 8.341009E-4 | 202 | 1229.71 | 8.1320293E-4 | 196.92 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 2701.92 | 3.7010733E-4 | 89 | 2786.46 | 3.5887785E-4 | 86.29 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 251.97 | 0.0039687203 | 961 | 254.74 | 0.0039256006 | 950.56 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 440.34 | 0.0022709786 | 550 | 446.55 | 0.0022394138 | 542.35 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 20367.44 | 4.9097962E-5 | 12 | 21380.38 | 4.677186E-5 | 11.4 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 669.49 | 0.0014936684 | 362 | 683.19 | 0.0014637123 | 354.76 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 4578.65 | 2.1840476E-4 | 52 | 4636.27 | 2.1569058E-4 | 51.35 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 235.78 | 0.004241307 | 1027 | 238.37 | 0.0041951723 | 1015.81 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 243.86 | 0.0041007567 | 993 | 260.03 | 0.003845662 | 931.08 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 1736.41 | 5.759012E-4 | 139 | 2040.35 | 4.9011153E-4 | 118.25 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 189.28 | 0.005283168 | 1279 | 197.01 | 0.005075943 | 1228.86 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 431.39 | 0.0023181096 | 561 | 439.34 | 0.0022761396 | 550.84 |
| **RodgersCreek** | 325.31 | 0.003074 | 890.61 | 0.0011228251 | 272 | 931.13 | 0.001073959 | 260.19 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 20691.67 | 4.832862E-5 | 12 | 21626.93 | 4.623865E-5 | 11.33 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 656.73 | 0.0015226995 | 368 | 665.77 | 0.0015020227 | 363.01 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 797.72 | 0.0012535682 | 303 | 846.25 | 0.0011816896 | 285.64 |
| **Compton** | 2658.16 | 3.762E-4 | 18868.83 | 5.2997457E-5 | 12 | 21056.76 | 4.749069E-5 | 10.6 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 270.79 | 0.0036928854 | 894 | 279.17 | 0.0035819944 | 867.11 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 1050.50 | 9.519245E-4 | 230 | 1082.31 | 9.239504E-4 | 223.25 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 1035.11 | 9.660841E-4 | 234 | 1047.60 | 9.545651E-4 | 231.21 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 340.63 | 0.0029356983 | 710 | 344.39 | 0.00290366 | 702.22 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 234.86 | 0.0042578424 | 1031 | 237.54 | 0.0042098057 | 1019.36 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1331.61 | 7.509678E-4 | 182 | 1350.06 | 7.4071053E-4 | 179.51 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1927.70 | 5.187516E-4 | 125 | 1966.40 | 5.0854415E-4 | 122.55 |
| **TOTAL** | 9.08 | 0.1101451 | 27.20 | 0.03676116 | 8900 | 28.00 | 0.035712115 | 8645.63 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9541836 | 0.69238603 | 0.9564658 | 0.6996877 | 0.33238843 |
| **20.00** | 0.8457945 | 0.47939843 | 0.85265356 | 0.4895629 | 0.110482074 |
| **30.00** | 0.70614195 | 0.3319288 | 0.7173178 | 0.34254116 | 0.036722966 |
| **40.00** | 0.5603299 | 0.22982286 | 0.5740316 | 0.23967184 | 0.012206289 |
| **50.00** | 0.4351196 | 0.15912613 | 0.44948742 | 0.16769545 | 0.004057229 |
| **60.00** | 0.32409775 | 0.11017671 | 0.3386422 | 0.11733444 | 0.001348576 |
| **70.00** | 0.23907734 | 0.07628482 | 0.25186548 | 0.08209747 | 4.4825108E-4 |
| **80.00** | 0.17000428 | 0.052818544 | 0.18140782 | 0.05744259 | 1.4899348E-4 |
| **90.00** | 0.11211539 | 0.036570825 | 0.12191195 | 0.040191878 | 4.952371E-5 |
| **100.00** | 0.07310685 | 0.025321128 | 0.081439614 | 0.028121762 | 1.6461108E-5 |
| **110.00** | 0.04956976 | 0.017531995 | 0.056027886 | 0.019676453 | 5.4714824E-6 |
| **120.00** | 0.0336514 | 0.012138909 | 0.0379415 | 0.013767372 | 1.8186574E-6 |
| **130.00** | 0.02058324 | 0.008404811 | 0.023778088 | 0.009632861 | 6.045007E-7 |
| **140.00** | 0.015260482 | 0.0058193738 | 0.01718072 | 0.0067399945 | 2.0092905E-7 |
| **150.00** | 0.0058178287 | 0.004029253 | 0.0069104545 | 0.0047158916 | 6.678649E-8 |
| **160.00** | 0.0023846382 | 0.0027897987 | 0.0031827246 | 0.0032996514 | 2.2199057E-8 |
| **170.00** | 0.0011408583 | 0.0019316176 | 0.0012062914 | 0.0023087256 | 7.37871E-9 |
| **180.00** | 0.0 | 0.0013374251 | 3.840928E-4 | 0.0016153869 | 2.452598E-9 |
| **190.00** | 0.0 | 9.2601444E-4 | 3.1791438E-4 | 0.0011302663 | 8.152152E-10 |
| **200.00** | 0.0 | 6.411595E-4 | 7.4973024E-5 | 7.908335E-4 | 2.709681E-10 |
| **210.00** | 0.0 | 4.439299E-4 | 5.058434E-5 | 5.533365E-4 | 9.006666E-11 |
| **220.00** | 0.0 | 3.0737085E-4 | 4.9197504E-5 | 3.8716276E-4 | 2.993712E-11 |
| **230.00** | 0.0 | 2.1281929E-4 | 4.7810667E-5 | 2.7089304E-4 | 9.950752E-12 |
| **240.00** | 0.0 | 1.473531E-4 | 4.642383E-5 | 1.8954053E-4 | 3.3075149E-12 |
| **250.00** | 0.0 | 1.0202523E-4 | 4.503699E-5 | 1.3261919E-4 | 1.0993797E-12 |
| **260.00** | 0.0 | 7.064085E-5 | 4.3650154E-5 | 9.279201E-5 | 3.654211E-13 |
| **270.00** | 0.0 | 4.8910737E-5 | 0.0 | 6.492543E-5 | 1.2146175E-13 |

### Moment Release Variability Plots
*[(top)](#bruce-2412)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2412)*

Example rupture plots:

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![example](resources/trigger_within_prev_m6_example_re_rup.png) | ![example](resources/trigger_within_prev_m6.5_example_re_rup.png) |  |
| ![example](resources/trigger_within_prev_m6_example_new_hypo.png) | ![example](resources/trigger_within_prev_m6.5_example_new_hypo.png) |  |

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![hypocenter plot](resources/trigger_within_prev_m6_1yr.png) | ![hypocenter plot](resources/trigger_within_prev_m6.5_1yr.png) | ![hypocenter plot](resources/trigger_within_prev_m7_1yr.png) |
| ![hypocenter plot](resources/trigger_within_prev_m6_10yr.png) | ![hypocenter plot](resources/trigger_within_prev_m6.5_10yr.png) | ![hypocenter plot](resources/trigger_within_prev_m7_10yr.png) |
| ![hypocenter plot](resources/trigger_within_prev_m6_100yr.png) | ![hypocenter plot](resources/trigger_within_prev_m6.5_100yr.png) | ![hypocenter plot](resources/trigger_within_prev_m7_100yr.png) |

## Input File
*[(top)](#bruce-2412)*

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
  tau0_1 = 55
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
  nEq = 2000000
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
  initTauFname = tauMod.in
  initSigmaFname = sigmaMod.in
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
  neighborFname = 
  stressRateFname =  
  slowSlipFname = 
  writePatchFname = 
  DEBUG = 0
  ZBrentUpperBracket = 0
```
