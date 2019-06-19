# Bruce 2623
## Metadata
| **Catalog** | Bruce 2623 |
|-----|-----|
| **Author** | Bruce Shaw, 2018/03/08 |
| **Description** | sensitivity test, diff r2585   b=.010 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 2,695,499 events in 324,029 years |
| **Frictional Params** | a=0.001, b=0.01, (b-a)=0.009, ddotEQ=1 |

* [Metadata](#metadata)
* [Hazard Comparisons](#hazard-comparisons)
* [BBP Calculations, LA Basin 863 (m/s) Velocity Model](#bbp-calculations-la-basin-863-ms-velocity-model)
  * [Full Catalog GMPE Comparisons, LA Basin 863 (m/s)](#full-catalog-gmpe-comparisons-la-basin-863-ms)
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
*[(top)](#bruce-2623)*

* [PGA](hazard_pga/)
* [0.2s SA](hazard_sa_0.2s/)
* [1.0s SA](hazard_sa_1.0s/)
* [10.0s SA](hazard_sa_10.0s/)
* [2.0s SA](hazard_sa_2.0s/)
* [5.0s SA](hazard_sa_5.0s/)

## BBP Calculations, LA Basin 863 (m/s) Velocity Model
*[(top)](#bruce-2623)*


### Full Catalog GMPE Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-2623)*

* [NGAWest_2014_NoIdr](bbp_LA_BASIN_863/gmpe_bbp_comparisons_NGAWest_2014_NoIdr/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2623)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2623)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2623)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2623)*

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
*[(top)](#bruce-2623)*

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
*[(top)](#bruce-2623)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2623)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2623)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2623)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2623)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2623)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2623)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2623)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2623)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2623)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0030222787 | 0.0018654967 | 0.0022165468 | 0.0019689433 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 1.3481118E-4 | 1.3029246E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0014264905 | 0.0011772586 | 9.4681344E-4 | 9.2818495E-4 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 5.0789333E-4 | 4.90745E-4 | 4.7654187E-4 | 4.7119355E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0010753544 | 8.923303E-4 | 8.4648887E-4 | 8.314749E-4 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 5.705962E-4 | 4.7527667E-4 | 3.6994697E-4 | 3.6324043E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.005486502 | 0.004927073 | 0.005157312 | 0.0050369645 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 9.844352E-4 | 9.5012435E-4 | 9.499486E-4 | 9.386565E-4 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 8.2454283E-4 | 7.5018575E-4 | 7.2421826E-4 | 7.1466557E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 7.2421826E-4 | 4.225711E-4 | 1.8497348E-4 | 1.7753502E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.001874816 | 0.0016310355 | 0.0015644368 | 0.0015420587 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0024485474 | 0.0018675933 | 0.0012916793 | 0.0012675531 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0031476845 | 0.003085958 | 0.0031131979 | 0.003080496 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0043390393 | 0.0035844545 | 0.0035270369 | 0.003386179 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.00315709 | 0.0030942138 | 0.0031131979 | 0.0030816612 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.0034235772 | 0.0032174273 | 0.0032354684 | 0.0031950357 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0036712536 | 0.0033539352 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 1.9437892E-4 | 1.687686E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0018497349 | 0.0016754898 | 0.001545626 | 0.0015229858 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0023419524 | 0.0018398062 | 0.001636545 | 0.0016001487 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0019782758 | 0.0019398269 | 0.0019563297 | 0.0019339189 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0012571927 | 0.0010567256 | 7.869211E-4 | 7.4769766E-4 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.0063079097 | 0.005359152 | 0.004815581 | 0.004748713 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0050413115 | 0.0030769312 | 0.0026053046 | 0.0023579397 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.005063257 | 0.004174689 | 0.0029564407 | 0.0029048524 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.005063257 | 0.004174689 | 0.0031351438 | 0.0030755855 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.0039973087 | 0.0039356 | 0.003984768 | 0.0039443183 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.0043515796 | 0.0028541104 | 0.0037872538 | 0.0036620223 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0030881166 | 0.0020662374 | 0.0013418415 | 0.0012630855 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0030567653 | 0.0022701363 | 0.001981411 | 0.0019007218 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.0039879032 | 0.0039067515 | 0.0039816326 | 0.003941167 |

### Paleo Open Interval Plots
*[(top)](#bruce-2623)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2623)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 511.59 | 0.0019546836 | 623 | 517.22 | 0.0019334065 | 616.18 |
| **FRA** | 119.00 | 0.008403362 | 192.98 | 0.0051819533 | 1653 | 197.23 | 0.0050701634 | 1617.35 |
| **COA** | 181.00 | 0.005524862 | 324.39 | 0.003082755 | 983 | 331.50 | 0.0030166109 | 961.93 |
| **SCZ** | 106.00 | 0.009433962 | 283.69 | 0.0035250303 | 1125 | 295.35 | 0.0033857946 | 1080.51 |
| **TYS** | 329.00 | 0.0030395137 | 770.45 | 0.0012979447 | 414 | 786.16 | 0.0012720089 | 405.74 |
| **TOTAL** | 31.61 | 0.0316373 | 66.47 | 0.015044102 | 4798 | 68.16 | 0.014670558 | 4678.88 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.99187475 | 0.8603285 | 0.9922892 | 0.86354816 | 0.72878754 |
| **20.00** | 0.97093105 | 0.74016505 | 0.97232825 | 0.74571544 | 0.53113127 |
| **30.00** | 0.9346192 | 0.6367851 | 0.93759924 | 0.64396125 | 0.3870819 |
| **40.00** | 0.8904387 | 0.54784435 | 0.8950776 | 0.55609155 | 0.28210047 |
| **50.00** | 0.8374085 | 0.47132608 | 0.84420097 | 0.48021185 | 0.2055913 |
| **60.00** | 0.77805394 | 0.40549526 | 0.7865778 | 0.41468608 | 0.14983238 |
| **70.00** | 0.71238446 | 0.3488591 | 0.7228391 | 0.3581014 | 0.10919597 |
| **80.00** | 0.6503209 | 0.30013344 | 0.6623012 | 0.3092378 | 0.079580665 |
| **90.00** | 0.5805552 | 0.25821334 | 0.5941061 | 0.26704174 | 0.057997398 |
| **100.00** | 0.51690185 | 0.22214828 | 0.53190607 | 0.23060343 | 0.04226778 |
| **110.00** | 0.45832932 | 0.19112049 | 0.47372618 | 0.19913717 | 0.030804234 |
| **120.00** | 0.40328395 | 0.1644264 | 0.41927367 | 0.17196454 | 0.022449743 |
| **130.00** | 0.35199827 | 0.14146072 | 0.36794537 | 0.14849967 | 0.016361093 |
| **140.00** | 0.294447 | 0.12170268 | 0.31017125 | 0.12823662 | 0.011923761 |
| **150.00** | 0.2560455 | 0.104704276 | 0.27106944 | 0.1107385 | 0.008689889 |
| **160.00** | 0.2071861 | 0.090080075 | 0.22099063 | 0.09562803 | 0.0063330824 |
| **170.00** | 0.16459045 | 0.07749845 | 0.17807408 | 0.08257941 | 0.0046154717 |
| **180.00** | 0.13215464 | 0.06667412 | 0.14423604 | 0.0713113 | 0.0033636983 |
| **190.00** | 0.10296889 | 0.057361647 | 0.11341553 | 0.061580744 | 0.0024514215 |
| **200.00** | 0.0816226 | 0.049349856 | 0.091248274 | 0.053177938 | 0.0017865654 |
| **210.00** | 0.063369595 | 0.04245709 | 0.071267195 | 0.045921713 | 0.0013020267 |
| **220.00** | 0.043906026 | 0.03652704 | 0.050463937 | 0.03965561 | 9.489008E-4 |
| **230.00** | 0.026989795 | 0.031425253 | 0.031917945 | 0.03424453 | 6.915471E-4 |
| **240.00** | 0.011497468 | 0.027036041 | 0.014587447 | 0.029571803 | 5.039909E-4 |
| **250.00** | 0.004520764 | 0.023259874 | 0.006755227 | 0.025536677 | 3.673023E-4 |
| **260.00** | 0.0011978415 | 0.020011133 | 0.002818776 | 0.02205215 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.017216148 | 0.0011650743 | 0.019043095 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.014811542 | 8.792247E-4 | 0.016444629 | 1.4217607E-4 |
| **290.00** | 0.0 | 0.012742791 | 6.317032E-4 | 0.01420073 | 1.0361615E-4 |
| **300.00** | 0.0 | 0.010962985 | 5.1651185E-4 | 0.012263015 | 7.551416E-5 |
| **310.00** | 0.0 | 0.009431769 | 3.6967747E-4 | 0.010589704 | 5.503378E-5 |
| **320.00** | 0.0 | 0.008114419 | 2.7056353E-4 | 0.00914472 | 4.0107934E-5 |
| **330.00** | 0.0 | 0.006981066 | 1.3149569E-4 | 0.007896906 | 2.9230163E-5 |
| **340.00** | 0.0 | 0.00600601 | 8.726142E-5 | 0.006819359 | 2.1302578E-5 |
| **350.00** | 0.0 | 0.005167141 | 6.263885E-5 | 0.0058888453 | 1.5525055E-5 |
| **360.00** | 0.0 | 0.0044454387 | 4.4281078E-5 | 0.0050853016 | 1.1314466E-5 |
| **370.00** | 0.0 | 0.0038245374 | 3.6611695E-5 | 0.004391403 | 8.245842E-6 |
| **380.00** | 0.0 | 0.0032903585 | 3.0368657E-5 | 0.003792188 | 6.009467E-6 |
| **390.00** | 0.0 | 0.002830789 | 2.3874918E-5 | 0.003274737 | 4.379625E-6 |
| **400.00** | 0.0 | 0.0024354085 | 1.5027258E-5 | 0.0028278932 | 3.1918162E-6 |
| **410.00** | 0.0 | 0.002095251 | 0.0 | 0.002442022 | 2.3261557E-6 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2623)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 370.60 | 0.0026982948 | 861 | 386.80 | 0.0025853459 | 824.94 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 318.87 | 0.0031361226 | 1000 | 324.98 | 0.003077079 | 981.18 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 3758.90 | 2.6603535E-4 | 85 | 4504.86 | 2.2198251E-4 | 70.8 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 321.12 | 0.0031141299 | 993 | 324.50 | 0.0030817029 | 982.66 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 309.19 | 0.0032342582 | 1032 | 313.30 | 0.0031918185 | 1018.45 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 450.22 | 0.0022211433 | 707 | 507.11 | 0.001971948 | 627.56 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 1202.82 | 8.313787E-4 | 264 | 1218.11 | 8.209416E-4 | 260.68 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 2708.32 | 3.6923253E-4 | 118 | 2758.56 | 3.625075E-4 | 115.79 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 207.94 | 0.0048090466 | 1534 | 210.93 | 0.0047409767 | 1512.28 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 511.59 | 0.0019546836 | 623 | 517.22 | 0.0019334065 | 616.19 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 8672.41 | 1.1530814E-4 | 37 | 8876.50 | 1.1265701E-4 | 36.16 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 647.43 | 0.0015445594 | 493 | 656.61 | 0.0015229636 | 486.1 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 2157.68 | 4.6346016E-4 | 147 | 2195.05 | 4.5557137E-4 | 144.5 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 251.22 | 0.0039805686 | 1270 | 253.79 | 0.003940223 | 1257.1 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 248.09 | 0.0040307567 | 1286 | 255.79 | 0.003909395 | 1247.31 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 746.02 | 0.0013404451 | 428 | 792.83 | 0.0012612978 | 402.62 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 192.98 | 0.0051819533 | 1653 | 197.32 | 0.0050677825 | 1616.59 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 283.69 | 0.0035250303 | 1125 | 295.41 | 0.0033851152 | 1080.32 |
| **RodgersCreek** | 325.31 | 0.003074 | 611.15 | 0.0016362516 | 522 | 624.49 | 0.0016013093 | 510.83 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 5413.67 | 1.8471773E-4 | 59 | 5571.58 | 1.7948242E-4 | 57.23 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 639.51 | 0.0015636929 | 499 | 648.39 | 0.0015422828 | 492.17 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 770.45 | 0.0012979447 | 414 | 786.19 | 0.0012719647 | 405.72 |
| **Compton** | 2658.16 | 3.762E-4 | 11317.30 | 8.83603E-5 | 28 | 11680.02 | 8.561626E-5 | 27.09 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 324.39 | 0.003082755 | 983 | 331.52 | 0.00301645 | 961.86 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 1026.00 | 9.746617E-4 | 310 | 1046.87 | 9.5522776E-4 | 303.83 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 1049.12 | 9.5318386E-4 | 304 | 1062.93 | 9.4079535E-4 | 300.03 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 320.79 | 0.0031172691 | 994 | 324.07 | 0.003085784 | 983.96 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 250.83 | 0.003986842 | 1272 | 253.47 | 0.003945279 | 1258.74 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1376.30 | 7.265868E-4 | 232 | 1394.47 | 7.1711914E-4 | 228.99 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 2089.24 | 4.7864293E-4 | 152 | 2108.51 | 4.7426773E-4 | 150.61 |
| **TOTAL** | 9.08 | 0.1101451 | 28.58 | 0.034991674 | 11160 | 29.24 | 0.0341985 | 10907.03 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.95753646 | 0.7047468 | 0.95924014 | 0.71035886 | 0.33238843 |
| **20.00** | 0.8571922 | 0.49666798 | 0.8620823 | 0.5046097 | 0.110482074 |
| **30.00** | 0.7232623 | 0.35002515 | 0.73183304 | 0.358454 | 0.036722966 |
| **40.00** | 0.5928338 | 0.2466791 | 0.60355675 | 0.25463095 | 0.012206289 |
| **50.00** | 0.4719861 | 0.17384629 | 0.48418218 | 0.18087935 | 0.004057229 |
| **60.00** | 0.3540112 | 0.12251761 | 0.36607307 | 0.12848926 | 0.001348576 |
| **70.00** | 0.2623631 | 0.086343884 | 0.2741905 | 0.09127348 | 4.4825108E-4 |
| **80.00** | 0.18876573 | 0.060850576 | 0.19951966 | 0.06483693 | 1.4899348E-4 |
| **90.00** | 0.13179298 | 0.042884246 | 0.14079298 | 0.046057485 | 4.952371E-5 |
| **100.00** | 0.091108076 | 0.030222533 | 0.0989553 | 0.032717343 | 1.6461108E-5 |
| **110.00** | 0.06260661 | 0.021299232 | 0.06861784 | 0.023241054 | 5.4714824E-6 |
| **120.00** | 0.04063526 | 0.015010565 | 0.045260362 | 0.016509488 | 1.8186574E-6 |
| **130.00** | 0.027438993 | 0.010578646 | 0.03073414 | 0.011727661 | 6.045007E-7 |
| **140.00** | 0.016884023 | 0.007455267 | 0.01925959 | 0.008330848 | 2.0092905E-7 |
| **150.00** | 0.0130193075 | 0.0052540754 | 0.014481111 | 0.005917892 | 6.678649E-8 |
| **160.00** | 0.0073924027 | 0.0037027926 | 0.008444216 | 0.0042038267 | 2.2199057E-8 |
| **170.00** | 0.005476742 | 0.002609531 | 0.0061843484 | 0.0029862255 | 7.37871E-9 |
| **180.00** | 0.0047757425 | 0.0018390585 | 0.005407434 | 0.0021212918 | 2.452598E-9 |
| **190.00** | 0.001795049 | 0.0012960705 | 0.0019934827 | 0.0015068784 | 8.152152E-10 |
| **200.00** | 0.0015776148 | 9.134015E-4 | 0.0016182167 | 0.0010704244 | 2.709681E-10 |
| **210.00** | 0.0013601808 | 6.437167E-4 | 0.0015038762 | 7.603855E-4 | 9.006666E-11 |
| **220.00** | 0.0 | 4.536573E-4 | 0.0 | 5.4014655E-4 | 2.993712E-11 |

### Moment Release Variability Plots
*[(top)](#bruce-2623)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2623)*

Example rupture plots:

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
|  |  |  |
| ![example](resources/elastic_rebound_triggering_m6_example_new_hypo.png) | ![example](resources/elastic_rebound_triggering_m6.5_example_new_hypo.png) | ![example](resources/elastic_rebound_triggering_m7_example_new_hypo.png) |

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_1yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_1yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_1yr.png) |
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_10yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_10yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_10yr.png) |
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_100yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_100yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_100yr.png) |

## Input File
*[(top)](#bruce-2623)*

```
  A_1 = 0.001
  fA = .1
  B_1 = 0.010
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
