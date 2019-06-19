# Bruce 2194 Long
## Metadata
| **Catalog** | Bruce 2194 Long |
|-----|-----|
| **Author** | Bruce Shaw (extended by Jacqui Gilchrist), 2017/08/31 |
| **Description** | Catalog with decent large event scaling and distribution of sizes while not using any of the enhanced frictional weakening terms. |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.34 km^2 |
| **Length** | 16,253,499 events in 641,547 years |
| **Frictional Params** | a=0.001, b=0.005, (b-a)=0.004, ddotEQ=1 |

* [Metadata](#metadata)
* [BBP Calculations, LA Basin 863 (m/s) Velocity Model](#bbp-calculations-la-basin-863-ms-velocity-model)
  * [Single Event Comparisons, LA Basin 863 (m/s)](#single-event-comparisons-la-basin-863-ms)
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

## BBP Calculations, LA Basin 863 (m/s) Velocity Model
*[(top)](#bruce-2194-long)*


### Single Event Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-2194-long)*

* [Event 136704, M7.32](bbp_LA_BASIN_863/event_136704/)
* [Event 526885, M7.45](bbp_LA_BASIN_863/event_526885/)

### Full Catalog GMPE Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-2194-long)*

* [BSSA2014](bbp_LA_BASIN_863/gmpe_bbp_comparisons_BSSA2014/)
* [NGAWest_2014_NoIdr](bbp_LA_BASIN_863/gmpe_bbp_comparisons_NGAWest_2014_NoIdr/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2194-long)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2194-long)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2194-long)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2194-long)*

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
*[(top)](#bruce-2194-long)*

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
*[(top)](#bruce-2194-long)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2194-long)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2194-long)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2194-long)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2194-long)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2194-long)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2194-long)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2194-long)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2194-long)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2194-long)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0015604475 | 0.0010845407 | 0.0 | 0.0 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 1.5714476E-4 | 1.449716E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0013907312 | 0.0010053443 | 0.0013231589 | 0.0011086478 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 0.0015195898 | 0.0010242464 | 5.54721E-4 | 5.165137E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0020240245 | 0.0011912378 | 8.234386E-4 | 7.541145E-4 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 5.044347E-4 | 3.6988314E-4 | 3.7714743E-4 | 3.488079E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.016693488 | 0.0070130364 | 0.0022660275 | 0.002099836 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0023964576 | 0.0017333704 | 0.0018213078 | 0.001619807 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 7.872953E-4 | 6.309035E-4 | 8.470103E-4 | 7.086784E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 0.0016877347 | 9.906708E-4 | 0.0 | 0.0 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0020444533 | 0.0016401795 | 0.0 | 0.0 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0016311626 | 0.0011714712 | 0.0 | 0.0 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.014317459 | 0.007805649 | 0.0 | 0.0 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0032183246 | 0.0021042584 | 0.0 | 0.0 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.015092183 | 0.009163655 | 0.0 | 0.0 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.011639712 | 0.0067973575 | 0.0 | 0.0 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0053492077 | 0.003571097 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 2.2000266E-4 | 1.6336981E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.008697962 | 0.005120568 | 0.0 | 0.0 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0039899056 | 0.0021942046 | 0.0 | 0.0 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.009505686 | 0.006690213 | 0.0034304701 | 0.0032724538 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0014363031 | 7.4491877E-4 | 0.0 | 0.0 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.0077786655 | 0.006089799 | 0.008556533 | 0.0071738604 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.002591317 | 0.0015239363 | 0.0026824612 | 0.0015780829 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.0092291115 | 0.006511045 | 0.0040354775 | 0.0038428998 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.0092291115 | 0.006511045 | 0.0040527633 | 0.003846104 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.003774617 | 0.003507333 | 0.0039443336 | 0.0037112155 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.0064272205 | 0.003675435 | 0.004873059 | 0.0034961347 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0031978958 | 0.001958782 | 0.0023225995 | 0.0013422014 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0050003463 | 0.0025655278 | 0.0011628713 | 0.0011209123 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.0060076443 | 0.0045148595 | 0.0048212013 | 0.004536895 |

### Paleo Open Interval Plots
*[(top)](#bruce-2194-long)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2194-long)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 300.59 | 0.003326776 | 2117 | 313.52 | 0.0031896047 | 2029.73 |
| **FRA** | 119.00 | 0.008403362 | 439.12 | 0.0022772953 | 1442 | 473.83 | 0.002110482 | 1336.44 |
| **COA** | 181.00 | 0.005524862 | 247.83 | 0.0040349765 | 2568 | 260.09 | 0.0038448938 | 2447.03 |
| **SCZ** | 106.00 | 0.009433962 | 1813.89 | 5.5130007E-4 | 58 | 2042.31 | 4.896405E-4 | 51.58 |
| **TYS** | 329.00 | 0.0030395137 | 2388.21 | 4.187235E-4 | 265 | 2440.13 | 4.09814E-4 | 259.38 |
| **TOTAL** | 31.61 | 0.0316373 | 98.70 | 0.01013164 | 6447 | 103.97 | 0.009617955 | 6120.11 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9967741 | 0.90364707 | 0.99714875 | 0.90830094 | 0.72878754 |
| **20.00** | 0.98554134 | 0.81657803 | 0.987173 | 0.82501054 | 0.53113127 |
| **30.00** | 0.9677032 | 0.73789835 | 0.97133505 | 0.7493578 | 0.3870819 |
| **40.00** | 0.94459605 | 0.66679966 | 0.95038426 | 0.6806424 | 0.28210047 |
| **50.00** | 0.91838026 | 0.6025516 | 0.9261927 | 0.61822814 | 0.2055913 |
| **60.00** | 0.88511145 | 0.544494 | 0.89523834 | 0.56153715 | 0.14983238 |
| **70.00** | 0.85013664 | 0.49203038 | 0.8627179 | 0.5100447 | 0.10919597 |
| **80.00** | 0.8131216 | 0.44462183 | 0.8276331 | 0.4632741 | 0.079580665 |
| **90.00** | 0.77372515 | 0.4017812 | 0.7901971 | 0.42079228 | 0.057997398 |
| **100.00** | 0.7322776 | 0.3630684 | 0.7503477 | 0.382206 | 0.04226778 |
| **110.00** | 0.6906334 | 0.32808572 | 0.71041983 | 0.34715807 | 0.030804234 |
| **120.00** | 0.6526076 | 0.29647368 | 0.67279065 | 0.31532398 | 0.022449743 |
| **130.00** | 0.6094253 | 0.2679076 | 0.63041323 | 0.28640905 | 0.016361093 |
| **140.00** | 0.57015777 | 0.2420939 | 0.5914577 | 0.2601456 | 0.011923761 |
| **150.00** | 0.5357135 | 0.21876745 | 0.5570374 | 0.2362905 | 0.008689889 |
| **160.00** | 0.5028221 | 0.19768856 | 0.5241347 | 0.21462287 | 0.0063330824 |
| **170.00** | 0.47376692 | 0.1786407 | 0.49424234 | 0.19494215 | 0.0046154717 |
| **180.00** | 0.44015208 | 0.16142814 | 0.46059927 | 0.17706613 | 0.0033636983 |
| **190.00** | 0.40708327 | 0.14587407 | 0.42691883 | 0.16082934 | 0.0024514215 |
| **200.00** | 0.3743582 | 0.13181867 | 0.39357966 | 0.14608143 | 0.0017865654 |
| **210.00** | 0.3444177 | 0.11911756 | 0.3632957 | 0.1326859 | 0.0013020267 |
| **220.00** | 0.31690952 | 0.10764023 | 0.3349114 | 0.12051872 | 9.489008E-4 |
| **230.00** | 0.28510937 | 0.09726878 | 0.30212718 | 0.10946726 | 6.915471E-4 |
| **240.00** | 0.259441 | 0.087896645 | 0.27612594 | 0.09942921 | 5.039909E-4 |
| **250.00** | 0.23643327 | 0.07942755 | 0.25248575 | 0.09031165 | 3.673023E-4 |
| **260.00** | 0.21319193 | 0.071774475 | 0.22833776 | 0.08203015 | 2.6768536E-4 |
| **270.00** | 0.19585809 | 0.064858794 | 0.20975564 | 0.07450806 | 1.9508575E-4 |
| **280.00** | 0.18017675 | 0.05860946 | 0.19320488 | 0.06767574 | 1.4217607E-4 |
| **290.00** | 0.15994322 | 0.052962266 | 0.17267951 | 0.061469935 | 1.0361615E-4 |
| **300.00** | 0.14107125 | 0.047859196 | 0.15277213 | 0.055833198 | 7.551416E-5 |
| **310.00** | 0.12651648 | 0.043247823 | 0.13737474 | 0.050713345 | 5.503378E-5 |
| **320.00** | 0.112795055 | 0.03908077 | 0.12255925 | 0.046062976 | 4.0107934E-5 |
| **330.00** | 0.098339334 | 0.035315223 | 0.107395284 | 0.041839045 | 2.9230163E-5 |
| **340.00** | 0.084434636 | 0.0319125 | 0.09296186 | 0.038002443 | 2.1302578E-5 |
| **350.00** | 0.07542514 | 0.028837634 | 0.0828241 | 0.034517653 | 1.5525055E-5 |
| **360.00** | 0.06552959 | 0.026059045 | 0.07273636 | 0.031352416 | 1.1314466E-5 |
| **370.00** | 0.0579662 | 0.023548178 | 0.064168 | 0.028477428 | 8.245842E-6 |
| **380.00** | 0.0517519 | 0.021279242 | 0.05758899 | 0.025866074 | 6.009467E-6 |
| **390.00** | 0.04142678 | 0.019228926 | 0.046861127 | 0.023494178 | 4.379625E-6 |
| **400.00** | 0.036618486 | 0.017376162 | 0.04135906 | 0.021339783 | 3.1918162E-6 |
| **410.00** | 0.03194098 | 0.015701918 | 0.036241174 | 0.019382944 | 2.3261557E-6 |
| **420.00** | 0.02910377 | 0.014188993 | 0.03242004 | 0.017605547 | 1.6952735E-6 |
| **430.00** | 0.026958853 | 0.012821841 | 0.03025389 | 0.015991135 | 1.2354942E-6 |
| **440.00** | 0.02263347 | 0.011586419 | 0.025973303 | 0.014524762 | 9.004128E-7 |
| **450.00** | 0.019257404 | 0.010470034 | 0.022192711 | 0.013192854 | 6.5620964E-7 |
| **460.00** | 0.01677894 | 0.009461216 | 0.019648885 | 0.011983082 | 4.782374E-7 |
| **470.00** | 0.01216593 | 0.0085496 | 0.014409875 | 0.010884244 | 3.4853346E-7 |
| **480.00** | 0.010773417 | 0.007725821 | 0.012673168 | 0.009886169 | 2.5400686E-7 |
| **490.00** | 0.007395484 | 0.006981415 | 0.009480223 | 0.008979616 | 1.8511703E-7 |
| **500.00** | 0.005300948 | 0.006308736 | 0.006783505 | 0.008156193 | 1.3491099E-7 |
| **510.00** | 0.0031546392 | 0.0057008704 | 0.004114173 | 0.007408278 | 9.832145E-8 |
| **520.00** | 0.0023750174 | 0.005151575 | 0.0032756333 | 0.0067289458 | 7.165545E-8 |
| **530.00** | 0.001711853 | 0.0046552056 | 0.0020706782 | 0.0061119073 | 5.2221598E-8 |
| **540.00** | 0.001500239 | 0.004206663 | 0.0019440304 | 0.005551451 | 3.8058452E-8 |
| **550.00** | 0.0012886251 | 0.0038013386 | 0.0018535877 | 0.005042388 | 2.7736526E-8 |
| **560.00** | 0.0010770111 | 0.0034350685 | 0.0017601483 | 0.0045800055 | 2.0214035E-8 |
| **570.00** | 0.0 | 0.0031040895 | 7.28577E-4 | 0.0041600233 | 1.4731737E-8 |
| **580.00** | 0.0 | 0.0028050016 | 6.333267E-4 | 0.003778553 | 1.0736306E-8 |
| **590.00** | 0.0 | 0.0025347313 | 5.9758616E-4 | 0.0034320632 | 7.824486E-9 |
| **600.00** | 0.0 | 0.0022905027 | 4.3660204E-4 | 0.003117346 | 5.7023883E-9 |
| **610.00** | 0.0 | 0.002069806 | 3.27944E-4 | 0.0028314884 | 4.1558295E-9 |
| **620.00** | 0.0 | 0.0018703741 | 2.6422198E-4 | 0.0025718433 | 3.0287168E-9 |
| **630.00** | 0.0 | 0.0016901582 | 2.1626911E-4 | 0.0023360078 | 2.2072912E-9 |
| **640.00** | 0.0 | 0.0015273064 | 1.812606E-4 | 0.002121798 | 1.6086463E-9 |
| **650.00** | 0.0 | 0.001380146 | 1.5799697E-4 | 0.001927231 | 1.1723614E-9 |
| **660.00** | 0.0 | 0.0012471649 | 1.4704409E-4 | 0.0017505056 | 8.544024E-10 |
| **670.00** | 0.0 | 0.0011269969 | 1.1293249E-4 | 0.0015899859 | 6.2267785E-10 |
| **680.00** | 0.0 | 0.0010184074 | 9.123182E-5 | 0.0014441856 | 4.5379986E-10 |
| **690.00** | 0.0 | 9.2028093E-4 | 7.3521114E-5 | 0.0013117552 | 3.307237E-10 |
| **700.00** | 0.0 | 8.316091E-4 | 4.9209826E-5 | 0.0011914683 | 2.410273E-10 |
| **710.00** | 0.0 | 7.5148116E-4 | 3.5057543E-5 | 0.0010822118 | 1.756577E-10 |
| **720.00** | 0.0 | 6.7907374E-4 | 3.370504E-5 | 9.82974E-4 | 1.2801715E-10 |
| **730.00** | 0.0 | 6.1364303E-4 | 3.235254E-5 | 8.9283613E-4 | 9.32973E-11 |
| **740.00** | 0.0 | 5.5451674E-4 | 3.1000036E-5 | 8.109639E-4 | 6.7993916E-11 |
| **750.00** | 0.0 | 5.010874E-4 | 2.9647532E-5 | 7.3659926E-4 | 4.955312E-11 |
| **760.00** | 0.0 | 4.5280618E-4 | 2.829503E-5 | 6.6905376E-4 | 3.6113695E-11 |
| **770.00** | 0.0 | 4.0917698E-4 | 2.6942527E-5 | 6.077021E-4 | 2.631921E-11 |
| **780.00** | 0.0 | 3.6975156E-4 | 2.5590025E-5 | 5.5197644E-4 | 1.9181113E-11 |
| **790.00** | 0.0 | 3.3412492E-4 | 2.2708782E-5 | 5.013607E-4 | 1.3978957E-11 |
| **800.00** | 0.0 | 3.0193102E-4 | 1.9110013E-5 | 4.5538635E-4 | 1.018769E-11 |
| **810.00** | 0.0 | 2.7283907E-4 | 1.5511245E-5 | 4.1362786E-4 | 7.424662E-12 |
| **820.00** | 0.0 | 2.4655022E-4 | 0.0 | 3.7569855E-4 | 5.411001E-12 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2194-long)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 359.76 | 0.002779614 | 1769 | 522.92 | 0.0019123566 | 1216.84 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 233.04 | 0.0042911903 | 2731 | 251.39 | 0.0039778566 | 2531.58 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 859.73 | 0.0011631593 | 740 | 892.82 | 0.0011200412 | 712.5 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 31393.66 | 3.1853564E-5 | 20 | 32529.21 | 3.0741598E-5 | 19.24 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 1212.02 | 8.2507025E-4 | 524 | 1324.69 | 7.5489434E-4 | 479.47 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 13552.91 | 7.378491E-5 | 43 | 21106.68 | 4.7378362E-5 | 26.55 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 116.89 | 0.008555294 | 5445 | 139.38 | 0.0071746013 | 4565.71 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 300.59 | 0.003326776 | 2117 | 313.30 | 0.0031918169 | 2031.11 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 137.34 | 0.0072810324 | 4634 | 210.37 | 0.004753642 | 3025.75 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 3477.05 | 2.8759986E-4 | 181 | 3660.92 | 2.7315514E-4 | 171.93 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 198.24 | 0.005044454 | 3209 | 219.50 | 0.004555817 | 2898.23 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 1040.61 | 9.609765E-4 | 151 | 1124.15 | 8.89559E-4 | 139.63 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 429.92 | 0.002326027 | 1478 | 743.30 | 0.0013453461 | 854.77 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 439.12 | 0.0022772953 | 1442 | 474.15 | 0.002109047 | 1335.42 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 1813.89 | 5.5130007E-4 | 58 | 2055.43 | 4.8651668E-4 | 51.27 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 4530.46 | 2.2072803E-4 | 140 | 4800.75 | 2.083009E-4 | 132.16 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 636355.92 | 0.0 | 0 | ∞ | 0.0 | 0 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 2388.21 | 4.187235E-4 | 265 | 2441.74 | 4.0954436E-4 | 259.21 |
| **Compton** | 2658.16 | 3.762E-4 | 2182.25 | 4.5824255E-4 | 290 | 2833.70 | 3.5289492E-4 | 223.36 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 247.83 | 0.0040349765 | 2568 | 260.10 | 0.0038446854 | 2446.87 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 753.73 | 0.0013267382 | 842 | 900.58 | 0.0011103911 | 704.84 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 920.14 | 0.0010867872 | 692 | 944.13 | 0.0010591774 | 674.39 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 252.96 | 0.0039531663 | 2515 | 269.63 | 0.003708771 | 2359.52 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1160.63 | 8.616021E-4 | 547 | 1385.46 | 7.2178245E-4 | 457.73 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 985.73 | 0.0010144738 | 645 | 1228.75 | 8.1383204E-4 | 517.57 |
| **TOTAL** | 10.14 | 0.0985812 | 23.54 | 0.0424737 | 27029 | 28.23 | 0.03542574 | 22543.51 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.94574547 | 0.65394175 | 0.9587743 | 0.7016943 | 0.3731361 |
| **20.00** | 0.82544005 | 0.4276398 | 0.8625414 | 0.49237493 | 0.13923056 |
| **30.00** | 0.6857078 | 0.27965152 | 0.7458099 | 0.3454967 | 0.051951952 |
| **40.00** | 0.542032 | 0.1828758 | 0.6193133 | 0.24243307 | 0.01938515 |
| **50.00** | 0.42354718 | 0.11959012 | 0.50995785 | 0.17011392 | 0.0072332993 |
| **60.00** | 0.31835985 | 0.07820497 | 0.40735602 | 0.11936797 | 0.0026990052 |
| **70.00** | 0.23583224 | 0.051141493 | 0.32224327 | 0.08375983 | 0.0010070964 |
| **80.00** | 0.16966695 | 0.033443555 | 0.25037995 | 0.058773797 | 3.7578403E-4 |
| **90.00** | 0.12334967 | 0.021870138 | 0.19448303 | 0.04124124 | 1.4021859E-4 |
| **100.00** | 0.088071845 | 0.014301796 | 0.14816108 | 0.028938744 | 5.232062E-5 |
| **110.00** | 0.061456036 | 0.0093525415 | 0.11505449 | 0.020306153 | 1.9522713E-5 |
| **120.00** | 0.042835552 | 0.0061160172 | 0.08709666 | 0.014248712 | 7.284629E-6 |
| **130.00** | 0.029045073 | 0.0039995187 | 0.066022 | 0.0099982405 | 2.7181584E-6 |
| **140.00** | 0.018820213 | 0.0026154523 | 0.049137052 | 0.007015709 | 1.014243E-6 |
| **150.00** | 0.012736464 | 0.0017103534 | 0.036307875 | 0.004922883 | 3.7845072E-7 |
| **160.00** | 0.008755631 | 0.0011184715 | 0.0266177 | 0.0034543592 | 1.4121363E-7 |
| **170.00** | 0.0064690458 | 7.3141523E-4 | 0.020710293 | 0.0024239041 | 5.2691906E-8 |
| **180.00** | 0.004859779 | 4.7830294E-4 | 0.016106702 | 0.0017008398 | 1.9661252E-8 |
| **190.00** | 0.004356529 | 3.1278224E-4 | 0.01262207 | 0.0011934697 | 7.3363235E-9 |
| **200.00** | 0.003910651 | 2.0454137E-4 | 0.009305742 | 8.374509E-4 | 2.7374474E-9 |
| **210.00** | 0.002335424 | 1.3375813E-4 | 0.006384532 | 5.8763457E-4 | 1.0214405E-9 |
| **220.00** | 0.0013983673 | 8.747003E-5 | 0.00431975 | 4.1233984E-4 | 3.8113632E-10 |
| **230.00** | 7.335698E-4 | 5.7200305E-5 | 0.0025288237 | 2.8933652E-4 | 1.4221573E-10 |
| **240.00** | 6.285568E-4 | 3.7405665E-5 | 0.0019127302 | 2.030258E-4 | 5.3065826E-11 |
| **250.00** | 5.2354386E-4 | 2.4461126E-5 | 0.0015769212 | 1.4246206E-4 | 1.9800776E-11 |
| **260.00** | 4.185309E-4 | 1.5996151E-5 | 0.0013388852 | 9.996482E-5 | 7.388384E-12 |
| **270.00** | 0.0 | 1.0460551E-5 | 4.914562E-4 | 7.014474E-5 | 2.756873E-12 |
| **280.00** | 0.0 | 6.840591E-6 | 4.575151E-4 | 4.922017E-5 | 1.028689E-12 |
| **290.00** | 0.0 | 4.473348E-6 | 2.3899891E-4 | 3.4537516E-5 | 3.83841E-13 |
| **300.00** | 0.0 | 2.925309E-6 | 1.7022483E-4 | 2.4234778E-5 | 1.4322494E-13 |
| **310.00** | 0.0 | 1.9129816E-6 | 2.6442442E-5 | 1.7005406E-5 | 5.34424E-14 |
| **320.00** | 0.0 | 1.2509785E-6 | 2.4780915E-5 | 1.1932597E-5 | 1.9941288E-14 |
| **330.00** | 0.0 | 8.1806706E-7 | 2.3119386E-5 | 8.373036E-6 | 7.440815E-15 |
| **340.00** | 0.0 | 5.349682E-7 | 2.067936E-5 | 5.8753117E-6 | 2.7764368E-15 |
| **350.00** | 0.0 | 3.4983805E-7 | 1.715037E-5 | 4.122673E-6 | 1.0359888E-15 |
| **360.00** | 0.0 | 2.2877369E-7 | 9.388892E-6 | 2.8928562E-6 | 3.8656487E-16 |
| **370.00** | 0.0 | 1.4960467E-7 | 0.0 | 2.0299008E-6 | 1.4424131E-16 |

### Moment Release Variability Plots
*[(top)](#bruce-2194-long)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2194-long)*

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
*[(top)](#bruce-2194-long)*

```
  A_1 = 0.001
  fA = 0.1
  B_1 = 0.005
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
  outFnameInfix = 
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
  nbuffEQS = 300
  nbuffPED = 500
  nbuffTRANS = 500
  nbuffSnap = 50
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
