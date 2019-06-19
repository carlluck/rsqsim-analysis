# Bruce 3032
## Metadata
| **Catalog** | Bruce 3032 |
|-----|-----|
| **Author** | Bruce Shaw, 2019/01/19 |
| **Description** | SmoothF=1e5.   Unconnected discontinuities. V=1.  fracArea=0.99. b=.011 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 999,999 events in 73,987 years |
| **Frictional Params** | a=0.001, b=0.011, (b-a)=0.01, ddotEQ=1 |

* [Metadata](#metadata)
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

## BBP Calculations, LA Basin 863 (m/s) Velocity Model
*[(top)](#bruce-3032)*


### Full Catalog GMPE Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-3032)*

* [ASK2014](bbp_LA_BASIN_863/gmpe_bbp_comparisons_ASK2014/)
* [NGAWest_2014_NoIdr](bbp_LA_BASIN_863/gmpe_bbp_comparisons_NGAWest_2014_NoIdr/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-3032)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-3032)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-3032)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-3032)*

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
*[(top)](#bruce-3032)*

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
*[(top)](#bruce-3032)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-3032)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-3032)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-3032)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-3032)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-3032)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-3032)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-3032)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-3032)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-3032)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.005002678 | 0.0030597593 | 0.003146612 | 0.0027043154 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 2.1750774E-4 | 2.1307693E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0024795884 | 0.0018237323 | 0.0018850671 | 0.0017635444 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 4.49516E-4 | 4.3295143E-4 | 4.49516E-4 | 4.4502085E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0014790527 | 0.0011972244 | 0.0012035428 | 0.0011767874 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 6.6702376E-4 | 6.0036936E-4 | 5.365191E-4 | 5.225026E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.005640701 | 0.0053605232 | 0.0055826986 | 0.0054809945 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0010295367 | 9.952442E-4 | 9.860351E-4 | 9.6566166E-4 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 8.99032E-4 | 8.4293843E-4 | 7.5402687E-4 | 7.3774124E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 1.3050465E-4 | 9.470305E-5 | 0.0 | 0.0 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0014500517 | 0.0013036897 | 0.0014210506 | 0.0013903131 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0017545625 | 0.0015438191 | 0.0015370548 | 0.0014564887 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.004234151 | 0.004147985 | 0.0042051496 | 0.004145244 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0034946245 | 0.003184743 | 0.003451123 | 0.00335965 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.004292153 | 0.004240312 | 0.004292153 | 0.0042359945 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.0046111643 | 0.0044718534 | 0.0044806595 | 0.0044179177 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.003712132 | 0.0035715692 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 2.4650877E-4 | 2.3450374E-4 | 1.3050465E-4 | 1.2736037E-4 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.002131576 | 0.002026765 | 0.0020010713 | 0.0019576368 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0022330794 | 0.0019409726 | 0.0019430692 | 0.0018704097 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.004524161 | 0.004010453 | 0.004118147 | 0.0038931472 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0043066535 | 0.0024702486 | 0.002610093 | 0.0021367087 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.010222864 | 0.008543938 | 0.0082942955 | 0.007832528 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0065832343 | 0.0033190278 | 0.004466159 | 0.0032705155 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.011034893 | 0.0071973926 | 0.0073227608 | 0.006735428 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.011034893 | 0.0071973926 | 0.007859279 | 0.0072039687 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.006597735 | 0.006281973 | 0.0063947276 | 0.006243832 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.0076272716 | 0.005745849 | 0.0073517617 | 0.006541544 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0027260971 | 0.0024715627 | 0.0024215863 | 0.002316687 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0018850671 | 0.0016043963 | 0.0018850671 | 0.0018484177 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.011020392 | 0.009213961 | 0.008859815 | 0.0083633335 |

### Paleo Open Interval Plots
*[(top)](#bruce-3032)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-3032)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 245.53 | 0.004072828 | 281 | 259.19 | 0.003858167 | 266.23 |
| **FRA** | 119.00 | 0.008403362 | 179.02 | 0.0055858167 | 385 | 182.51 | 0.0054791514 | 377.58 |
| **COA** | 181.00 | 0.005524862 | 144.26 | 0.006931779 | 478 | 154.94 | 0.0064539835 | 445.06 |
| **SCZ** | 106.00 | 0.009433962 | 289.95 | 0.003448907 | 238 | 297.68 | 0.0033593155 | 231.81 |
| **TYS** | 329.00 | 0.0030395137 | 628.39 | 0.0015913586 | 109 | 666.09 | 0.0015012884 | 102.87 |
| **TOTAL** | 31.61 | 0.0316373 | 46.23 | 0.021632645 | 1491 | 48.39 | 0.02066408 | 1424.26 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.98640203 | 0.8054723 | 0.98737997 | 0.81331176 | 0.72878754 |
| **20.00** | 0.9365749 | 0.64878565 | 0.9417107 | 0.661476 | 0.53113127 |
| **30.00** | 0.87713367 | 0.5225789 | 0.887608 | 0.5379862 | 0.3870819 |
| **40.00** | 0.7926494 | 0.42092282 | 0.8092825 | 0.4375505 | 0.28210047 |
| **50.00** | 0.70904285 | 0.33904168 | 0.73057413 | 0.35586494 | 0.2055913 |
| **60.00** | 0.6125712 | 0.27308866 | 0.6394921 | 0.28942916 | 0.14983238 |
| **70.00** | 0.51568127 | 0.21996537 | 0.5450719 | 0.23539612 | 0.10919597 |
| **80.00** | 0.41721708 | 0.17717601 | 0.44840232 | 0.19145043 | 0.079580665 |
| **90.00** | 0.31662336 | 0.14271037 | 0.34757942 | 0.15570888 | 0.057997398 |
| **100.00** | 0.23261346 | 0.11494925 | 0.26269832 | 0.12663986 | 0.04226778 |
| **110.00** | 0.18668094 | 0.09258844 | 0.21296608 | 0.10299769 | 0.030804234 |
| **120.00** | 0.13046798 | 0.07457742 | 0.15314628 | 0.08376923 | 0.022449743 |
| **130.00** | 0.09043441 | 0.06007005 | 0.10947263 | 0.0681305 | 0.016361093 |
| **140.00** | 0.057619035 | 0.048384763 | 0.07332909 | 0.055411335 | 0.011923761 |
| **150.00** | 0.038431104 | 0.038972586 | 0.049163137 | 0.04506669 | 0.008689889 |
| **160.00** | 0.032924663 | 0.031391338 | 0.04062786 | 0.03665327 | 0.0063330824 |
| **170.00** | 0.019878535 | 0.025284855 | 0.02376871 | 0.029810533 | 0.0046154717 |
| **180.00** | 0.012947629 | 0.02036625 | 0.013848923 | 0.024245257 | 0.0033636983 |
| **190.00** | 0.004583593 | 0.01640445 | 0.004733774 | 0.019718952 | 0.0024514215 |
| **200.00** | 0.0 | 0.01321333 | 0.0014568956 | 0.016037656 | 0.0017865654 |
| **210.00** | 0.0 | 0.010642972 | 8.144159E-4 | 0.013043613 | 0.0013020267 |
| **220.00** | 0.0 | 0.008572619 | 5.7309907E-4 | 0.010608524 | 9.489008E-4 |
| **230.00** | 0.0 | 0.006905007 | 2.5003363E-4 | 0.008628037 | 6.915471E-4 |
| **240.00** | 0.0 | 0.0055617923 | 1.3678738E-4 | 0.007017284 | 5.039909E-4 |
| **250.00** | 0.0 | 0.0044798697 | 9.742205E-5 | 0.0057072393 | 3.673023E-4 |
| **260.00** | 0.0 | 0.003608411 | 7.6703494E-5 | 0.004641765 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.002906475 | 0.0 | 0.003775202 | 1.9508575E-4 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-3032)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 224.12 | 0.004461806 | 308 | 306.03 | 0.003267703 | 225.33 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 127.20 | 0.007861829 | 542 | 138.70 | 0.007209588 | 497.05 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 530.24 | 0.0018859446 | 130 | 539.69 | 0.0018529168 | 127.71 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 233.55 | 0.0042817798 | 296 | 236.57 | 0.004227087 | 292.2 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 222.97 | 0.0044849827 | 310 | 226.03 | 0.0044242432 | 305.78 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 318.13 | 0.0031434011 | 217 | 369.34 | 0.0027075394 | 187.01 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 817.78 | 0.0012228301 | 84 | 842.36 | 0.0011871404 | 81.55 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 1865.20 | 5.361352E-4 | 37 | 1910.20 | 5.235058E-4 | 36.14 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 120.70 | 0.008285199 | 572 | 127.80 | 0.007824955 | 540.27 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 245.53 | 0.004072828 | 281 | 259.90 | 0.0038475632 | 265.45 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 6803.70 | 1.4697887E-4 | 9 | 6944.46 | 1.439997E-4 | 8.81 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 503.78 | 0.0019849928 | 137 | 515.02 | 0.0019416872 | 134.02 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 383.67 | 0.002606383 | 180 | 469.18 | 0.0021313836 | 147.02 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 112.85 | 0.008860991 | 611 | 119.61 | 0.008360577 | 576.52 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 135.87 | 0.0073601906 | 507 | 152.81 | 0.00654414 | 450.72 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 412.01 | 0.0024271063 | 168 | 430.93 | 0.0023205725 | 160.66 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 179.02 | 0.0055858167 | 385 | 182.38 | 0.0054831975 | 377.92 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 289.95 | 0.003448907 | 238 | 297.40 | 0.0033624792 | 232.03 |
| **RodgersCreek** | 325.31 | 0.003074 | 515.91 | 0.0019383151 | 134 | 536.13 | 0.0018652192 | 128.92 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 68963.06 | 0.0 | 0 | ∞ | 0.0 | 0 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 700.83 | 0.0014268878 | 98 | 716.29 | 0.0013960758 | 95.8 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 628.39 | 0.0015913586 | 109 | 665.57 | 0.0015024749 | 102.95 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 144.26 | 0.006931779 | 478 | 155.13 | 0.0064462074 | 444.5 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 557.68 | 0.0017931507 | 124 | 584.24 | 0.001711612 | 118.37 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 1006.86 | 9.931856E-4 | 68 | 1025.81 | 9.7483717E-4 | 66.75 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 237.57 | 0.004209207 | 291 | 241.14 | 0.00414695 | 286.68 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 154.49 | 0.006472895 | 446 | 158.66 | 0.006302798 | 434.3 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1334.96 | 7.4908574E-4 | 52 | 1360.77 | 7.348772E-4 | 50.97 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 2180.12 | 4.58691E-4 | 31 | 2202.87 | 4.5395346E-4 | 30.67 |
| **TOTAL** | 9.11 | 0.1097689 | 15.09 | 0.06625668 | 4569 | 16.03 | 0.062400103 | 4303.04 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.8635982 | 0.5155264 | 0.87825274 | 0.5357964 | 0.33364123 |
| **20.00** | 0.6114967 | 0.26576746 | 0.6421394 | 0.28707778 | 0.11131647 |
| **30.00** | 0.39426726 | 0.13701014 | 0.4267985 | 0.15381524 | 0.037139766 |
| **40.00** | 0.20648603 | 0.07063234 | 0.23709637 | 0.08241366 | 0.012391358 |
| **50.00** | 0.09935731 | 0.036412835 | 0.12045661 | 0.04415694 | 0.004134268 |
| **60.00** | 0.05115059 | 0.018771777 | 0.065142006 | 0.023659129 | 0.0013793623 |
| **70.00** | 0.021974258 | 0.009677347 | 0.028704569 | 0.0126764765 | 4.6021215E-4 |
| **80.00** | 0.010326036 | 0.0049889274 | 0.013194319 | 0.0067920107 | 1.5354574E-4 |
| **90.00** | 0.0030782088 | 0.0025719237 | 0.0040353057 | 0.0036391348 | 5.1229195E-5 |
| **100.00** | 0.0 | 0.0013258946 | 4.6622157E-4 | 0.0019498353 | 1.7092172E-5 |
| **110.00** | 0.0 | 6.835336E-4 | 1.803974E-4 | 0.0010447147 | 5.702653E-6 |
| **120.00** | 0.0 | 3.5237963E-4 | 2.5132746E-5 | 5.5975444E-4 | 1.9026403E-6 |
| **130.00** | 0.0 | 1.81661E-4 | 0.0 | 2.999144E-4 | 6.347993E-7 |

### Moment Release Variability Plots
*[(top)](#bruce-3032)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-3032)*

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
*[(top)](#bruce-3032)*

```
  A_1 = 0.001
  fA = .1
  B_1 = 0.011
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
  nEq = 1000000
  KZeroFrac = 0
  KOneFrac =  0
  muPin = 1.0
  tStart = 0
  maxT = 1.0000000000000000159e+100
  maxTransitions = 1.0000000000000000159e+8
  maxWallTime = 85000
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
  receiverElementAreaFrac = 0.99
  receiverElementIntTol = 1.0e-4
  receiverElementSubdivisionMax = 4
  tgfDist1 = 3
  tgfDist1 = 10
  nDunQuadOrders = 5
```
