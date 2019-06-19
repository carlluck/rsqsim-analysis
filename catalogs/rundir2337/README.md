# Bruce 2337
## Metadata
| **Catalog** | Bruce 2337 |
|-----|-----|
| **Author** | Bruce Shaw, 2017/10/20 |
| **Description** | Larger slip velocity (2.0 m/s), backslipFromStress loading |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 2.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 358,999 events in 59,520 years |
| **Frictional Params** | a=0.001, b=0.008, (b-a)=0.007, ddotEQ=2.0 |

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
*[(top)](#bruce-2337)*


### Single Event Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-2337)*

* [Event 203769, M7.70](bbp_LA_BASIN_863/event_203769/)

### Full Catalog GMPE Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-2337)*

* [BSSA2014](bbp_LA_BASIN_863/gmpe_bbp_comparisons_BSSA2014/)
* [NGAWest_2014_NoIdr](bbp_LA_BASIN_863/gmpe_bbp_comparisons_NGAWest_2014_NoIdr/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2337)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2337)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2337)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2337)*

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
*[(top)](#bruce-2337)*

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
*[(top)](#bruce-2337)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2337)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2337)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2337)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2337)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2337)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2337)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2337)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2337)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2337)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 8.8759046E-4 | 5.538179E-4 | 7.7664165E-4 | 6.5812824E-4 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 1.8491468E-4 | 1.5759135E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0014793174 | 0.0011091925 | 8.3211606E-4 | 8.1952504E-4 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 6.472014E-4 | 5.955469E-4 | 5.5474404E-4 | 5.462994E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0010725051 | 9.1488066E-4 | 8.3211606E-4 | 8.076093E-4 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 5.91727E-4 | 4.7242097E-4 | 4.068123E-4 | 3.9636286E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.0047153244 | 0.004484403 | 0.004585884 | 0.004493007 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0010725051 | 0.0010374809 | 0.0010725051 | 0.0010608964 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 7.2116725E-4 | 6.8921014E-4 | 7.2116725E-4 | 7.138051E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 0.0 | 0.0 | 0.0 | 0.0 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0019600957 | 0.0016651272 | 0.0015532833 | 0.0015289438 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0020340616 | 0.0014247977 | 0.0012944028 | 0.0012285443 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0034948876 | 0.0034519276 | 0.003476396 | 0.0034414183 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0047153244 | 0.003581523 | 0.0032544984 | 0.003090458 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.003476396 | 0.003435266 | 0.003476396 | 0.003441435 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.003476396 | 0.0033943534 | 0.003476396 | 0.0034350562 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.003513379 | 0.0034549606 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 1.4793174E-4 | 1.0010489E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0015347919 | 0.0014460144 | 0.001497809 | 0.0014788558 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0016272492 | 0.001259775 | 0.0013313857 | 0.0012566866 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.002052553 | 0.001992807 | 0.0019970785 | 0.0019766984 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0018491468 | 0.0011831805 | 8.136246E-4 | 7.264854E-4 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.0044009695 | 0.0042575696 | 0.004382478 | 0.004329338 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0024963482 | 0.0015877114 | 0.0014793174 | 0.0012558879 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.0054180003 | 0.004076994 | 0.0030326007 | 0.0029875445 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.0054180003 | 0.004076994 | 0.0030326007 | 0.002979793 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.0043639867 | 0.00429935 | 0.0043639867 | 0.00432006 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.004493427 | 0.002917286 | 0.0040496318 | 0.0039018118 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 5.3625257E-4 | 3.1766732E-4 | 3.1435495E-4 | 2.6708754E-4 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0025888055 | 0.0016967074 | 0.0015532833 | 0.0013334074 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.0043639867 | 0.004270117 | 0.0043639867 | 0.0043193623 |

### Paleo Open Interval Plots
*[(top)](#bruce-2337)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2337)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 501.71 | 0.00199318 | 108 | 507.26 | 0.001971386 | 106.82 |
| **FRA** | 119.00 | 0.008403362 | 219.33 | 0.0045592496 | 246 | 223.20 | 0.0044803605 | 241.72 |
| **COA** | 181.00 | 0.005524862 | 330.56 | 0.0030251516 | 164 | 335.96 | 0.0029765142 | 161.37 |
| **SCZ** | 106.00 | 0.009433962 | 306.72 | 0.0032603382 | 176 | 323.23 | 0.0030938115 | 167.05 |
| **TYS** | 329.00 | 0.0030395137 | 785.44 | 0.001273175 | 68 | 824.12 | 0.0012134195 | 64.81 |
| **TOTAL** | 31.61 | 0.0316373 | 71.06 | 0.014073066 | 761 | 72.99 | 0.01370091 | 740.83 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.994003 | 0.8687233 | 0.9943028 | 0.8719623 | 0.72878754 |
| **20.00** | 0.9729971 | 0.7546801 | 0.9744032 | 0.7603182 | 0.53113127 |
| **30.00** | 0.9452879 | 0.6556082 | 0.94767815 | 0.6629688 | 0.3870819 |
| **40.00** | 0.90956336 | 0.56954205 | 0.91334856 | 0.5780838 | 0.28210047 |
| **50.00** | 0.8586192 | 0.49477443 | 0.8644836 | 0.5040673 | 0.2055913 |
| **60.00** | 0.7991489 | 0.42982206 | 0.8072767 | 0.4395277 | 0.14983238 |
| **70.00** | 0.72961706 | 0.3733964 | 0.7403719 | 0.38325158 | 0.10919597 |
| **80.00** | 0.6567477 | 0.32437813 | 0.67107564 | 0.33418092 | 0.079580665 |
| **90.00** | 0.60541594 | 0.28179485 | 0.62022245 | 0.29139316 | 0.057997398 |
| **100.00** | 0.554795 | 0.24480173 | 0.57196265 | 0.25408384 | 0.04226778 |
| **110.00** | 0.48944885 | 0.21266495 | 0.50635284 | 0.22155154 | 0.030804234 |
| **120.00** | 0.44398355 | 0.184747 | 0.46057507 | 0.19318458 | 0.022449743 |
| **130.00** | 0.39239427 | 0.160494 | 0.41027892 | 0.16844967 | 0.016361093 |
| **140.00** | 0.3365938 | 0.13942488 | 0.3513276 | 0.14688176 | 0.011923761 |
| **150.00** | 0.28078988 | 0.12112163 | 0.29746103 | 0.12807536 | 0.008689889 |
| **160.00** | 0.23819487 | 0.105221175 | 0.25582793 | 0.11167689 | 0.0063330824 |
| **170.00** | 0.1968834 | 0.09140808 | 0.21072713 | 0.09737803 | 0.0046154717 |
| **180.00** | 0.15682586 | 0.079408325 | 0.17054622 | 0.084909976 | 0.0033636983 |
| **190.00** | 0.13374895 | 0.06898386 | 0.14546937 | 0.0740383 | 0.0024514215 |
| **200.00** | 0.108600646 | 0.059927884 | 0.11918988 | 0.0645586 | 0.0017865654 |
| **210.00** | 0.09199305 | 0.052060746 | 0.10222849 | 0.056292668 | 0.0013020267 |
| **220.00** | 0.05938864 | 0.04522638 | 0.0675354 | 0.049085084 | 9.489008E-4 |
| **230.00** | 0.037445754 | 0.03928921 | 0.041786555 | 0.04280034 | 6.915471E-4 |
| **240.00** | 0.009005924 | 0.03413145 | 0.011555132 | 0.037320286 | 5.039909E-4 |
| **250.00** | 0.0 | 0.029650785 | 0.0018896492 | 0.032541882 | 3.673023E-4 |
| **260.00** | 0.0 | 0.025758326 | 0.001063342 | 0.028375292 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.022376856 | 8.384281E-4 | 0.024742186 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.019439295 | 7.221301E-4 | 0.021574253 | 1.4217607E-4 |
| **290.00** | 0.0 | 0.016887369 | 4.5445169E-4 | 0.018811936 | 1.0361615E-4 |
| **300.00** | 0.0 | 0.014670449 | 2.2983871E-4 | 0.016403299 | 7.551416E-5 |
| **310.00** | 0.0 | 0.012744561 | 9.4076044E-5 | 0.014303057 | 5.503378E-5 |
| **320.00** | 0.0 | 0.011071497 | 0.0 | 0.012471727 | 4.0107934E-5 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2337)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 641.48 | 0.0015589034 | 84 | 687.13 | 0.0014553296 | 78.41 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 330.56 | 0.0030251516 | 164 | 336.81 | 0.0029690762 | 160.96 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 1852.90 | 5.396954E-4 | 29 | 2353.74 | 4.24856E-4 | 22.88 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 287.91 | 0.003473279 | 188 | 290.84 | 0.0034383757 | 186.11 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 287.91 | 0.003473279 | 188 | 291.39 | 0.00343186 | 185.77 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 1298.90 | 7.698843E-4 | 42 | 1529.16 | 6.539545E-4 | 35.4 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 1197.31 | 8.352023E-4 | 45 | 1219.91 | 8.1973406E-4 | 44.16 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 2385.40 | 4.1921675E-4 | 22 | 2448.71 | 4.0837767E-4 | 21.4 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 228.52 | 0.004375896 | 236 | 230.81 | 0.004332499 | 233.66 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 501.71 | 0.00199318 | 108 | 506.16 | 0.001975673 | 107.04 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 54078.99 | 0.0 | 0 | ∞ | 0.0 | 0 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 674.20 | 0.00148325 | 81 | 683.58 | 0.0014628809 | 79.89 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 2023.12 | 4.9428554E-4 | 27 | 2094.05 | 4.7754459E-4 | 26.09 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 228.67 | 0.004373158 | 236 | 230.97 | 0.0043296097 | 233.63 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 241.00 | 0.0041493294 | 223 | 250.12 | 0.003998102 | 214.9 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 3161.80 | 3.1627508E-4 | 17 | 3710.69 | 2.6949166E-4 | 14.26 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 219.33 | 0.0045592496 | 246 | 223.14 | 0.0044814837 | 241.78 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 306.72 | 0.0032603382 | 176 | 323.85 | 0.0030878615 | 166.71 |
| **RodgersCreek** | 325.31 | 0.003074 | 749.68 | 0.0013338993 | 72 | 793.77 | 0.0012598054 | 67.88 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 54078.99 | 0.0 | 0 | ∞ | 0.0 | 0 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 648.31 | 0.0015424825 | 84 | 658.29 | 0.0015190896 | 82.72 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 785.44 | 0.001273175 | 68 | 822.23 | 0.0012162064 | 64.96 |
| **Compton** | 2658.16 | 3.762E-4 | 54078.99 | 0.0 | 0 | ∞ | 0.0 | 0 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 330.56 | 0.0030251516 | 164 | 336.13 | 0.0029750415 | 161.3 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 1197.31 | 8.352023E-4 | 45 | 1215.27 | 8.2286214E-4 | 44.34 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 927.79 | 0.0010778315 | 58 | 937.11 | 0.0010671129 | 57.37 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 287.91 | 0.003473279 | 188 | 290.83 | 0.003438439 | 186.07 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 228.67 | 0.004373158 | 236 | 231.03 | 0.004328491 | 233.55 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1383.29 | 7.2291505E-4 | 39 | 1396.46 | 7.160971E-4 | 38.62 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1804.26 | 5.542439E-4 | 30 | 1837.17 | 5.4431544E-4 | 29.46 |
| **TOTAL** | 9.08 | 0.1101451 | 32.28 | 0.030979387 | 1676 | 33.09 | 0.030219791 | 1634.93 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9659307 | 0.7335982 | 0.9675644 | 0.7391918 | 0.33238843 |
| **20.00** | 0.87511027 | 0.5381663 | 0.8798415 | 0.5464045 | 0.110482074 |
| **30.00** | 0.7619949 | 0.39479777 | 0.7712416 | 0.40389767 | 0.036722966 |
| **40.00** | 0.6516272 | 0.28962293 | 0.6638157 | 0.29855782 | 0.012206289 |
| **50.00** | 0.5324529 | 0.21246685 | 0.5463298 | 0.22069149 | 0.004057229 |
| **60.00** | 0.43252146 | 0.15586528 | 0.44550937 | 0.16313332 | 0.001348576 |
| **70.00** | 0.3334257 | 0.11434249 | 0.34634167 | 0.12058681 | 4.4825108E-4 |
| **80.00** | 0.25773302 | 0.08388144 | 0.26939785 | 0.08913678 | 1.4899348E-4 |
| **90.00** | 0.2093815 | 0.06153527 | 0.2214673 | 0.06588917 | 4.952371E-5 |
| **100.00** | 0.16886452 | 0.04514216 | 0.1776613 | 0.048704732 | 1.6461108E-5 |
| **110.00** | 0.122751415 | 0.033116207 | 0.12886845 | 0.036002137 | 5.4714824E-6 |
| **120.00** | 0.089419775 | 0.024293987 | 0.09409344 | 0.026612483 | 1.8186574E-6 |
| **130.00** | 0.05920165 | 0.017822023 | 0.06283819 | 0.019671729 | 6.045007E-7 |
| **140.00** | 0.04226595 | 0.013074204 | 0.044782072 | 0.01454118 | 2.0092905E-7 |
| **150.00** | 0.026999054 | 0.0095912125 | 0.02888163 | 0.01074872 | 6.678649E-8 |
| **160.00** | 0.020255934 | 0.0070360955 | 0.022597926 | 0.007945365 | 2.2199057E-8 |
| **170.00** | 0.012847213 | 0.005161667 | 0.01270893 | 0.005873149 | 7.37871E-9 |
| **180.00** | 0.0050386293 | 0.0037865893 | 0.0069943997 | 0.004341383 | 2.452598E-9 |
| **190.00** | 0.0 | 0.002777835 | 7.6102343E-4 | 0.0032091145 | 8.152152E-10 |
| **200.00** | 0.0 | 0.0020378146 | 5.372199E-4 | 0.002372151 | 2.709681E-10 |
| **210.00** | 0.0 | 0.001494937 | 1.1726297E-4 | 0.0017534745 | 9.006666E-11 |
| **220.00** | 0.0 | 0.0010966831 | 9.337657E-5 | 0.0012961539 | 2.993712E-11 |
| **230.00** | 0.0 | 8.045247E-4 | 6.949017E-5 | 9.581063E-4 | 9.950752E-12 |
| **240.00** | 0.0 | 5.901978E-4 | 4.5603767E-5 | 7.0822425E-4 | 3.3075149E-12 |
| **250.00** | 0.0 | 4.3296802E-4 | 0.0 | 5.2351353E-4 | 1.0993797E-12 |

### Moment Release Variability Plots
*[(top)](#bruce-2337)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2337)*

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
*[(top)](#bruce-2337)*

```
  A_1 = 0.001
  fA = .1
  B_1 = 0.008
  muSlipAmp_1 = 0
  muSlipInvDist_1 = 00
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
  ddotEQ_1 = 2.0
  ddotEQFname = 
  stressOvershootFactor = 0.10000000000000000555
  lameLambda = 30000
  lameMu = 30000
  slowSlip_1 = 0
  nEq = 100000000
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
  neighborFname = 
  stressRateFname =  
  slowSlipFname = 
  writePatchFname = 
  DEBUG = 0
  ZBrentUpperBracket = 0
```
