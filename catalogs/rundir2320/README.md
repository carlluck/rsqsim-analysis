# Bruce 2320
## Metadata
| **Catalog** | Bruce 2320 |
|-----|-----|
| **Author** | Bruce Shaw, 2017/10/17 |
| **Description** | Backslip loading, less refined geometry, projection fix (but all
faults surface breaking), same as rundir2310 but less resolved |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 9,999,999 events in 320,117 years |
| **Frictional Params** | a=0.001, b=0.01, (b-a)=0.009, ddotEQ=1 |

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
*[(top)](#bruce-2320)*


### Single Event Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-2320)*

* [Event 6195527, M7.52](bbp_LA_BASIN_863/event_6195527/)

### Full Catalog GMPE Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-2320)*

* [BSSA2014](bbp_LA_BASIN_863/gmpe_bbp_comparisons_BSSA2014/)
* [NGAWest_2014_NoIdr](bbp_LA_BASIN_863/gmpe_bbp_comparisons_NGAWest_2014_NoIdr/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2320)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2320)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2320)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2320)*

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
*[(top)](#bruce-2320)*

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
*[(top)](#bruce-2320)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2320)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2320)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2320)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2320)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2320)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2320)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2320)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2320)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2320)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.002681622 | 0.001704406 | 0.0022151151 | 0.002003217 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 7.933793E-5 | 7.843365E-5 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 7.4260304E-4 | 6.6276034E-4 | 7.172149E-4 | 7.016792E-4 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 4.2525132E-4 | 4.0434662E-4 | 4.2525132E-4 | 4.1709992E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 8.092469E-4 | 7.140456E-4 | 8.028999E-4 | 7.829647E-4 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 5.077628E-4 | 4.5076464E-4 | 3.9668966E-4 | 3.9007145E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.0047824904 | 0.004394826 | 0.0046460293 | 0.0045696986 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 9.901375E-4 | 9.301041E-4 | 9.615758E-4 | 9.483421E-4 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 9.996579E-4 | 9.400745E-4 | 8.885848E-4 | 8.707136E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 9.742698E-4 | 7.1760465E-4 | 8.5684966E-4 | 8.32931E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0015899321 | 0.0014461997 | 0.0015296354 | 0.0014976906 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0017486081 | 0.0015695348 | 0.0016216673 | 0.0015928053 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0031766908 | 0.0030629248 | 0.003129088 | 0.0030927754 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0033766225 | 0.002948103 | 0.0032909375 | 0.0031867756 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0031449557 | 0.0030551988 | 0.0031132204 | 0.0030783424 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.0036146361 | 0.0032837787 | 0.003589248 | 0.0035208338 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0033480609 | 0.0031211122 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 8.8858484E-5 | 8.4989806E-5 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0011012105 | 9.999793E-4 | 0.0010250461 | 0.0010053937 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0019612338 | 0.0016132097 | 0.0018120784 | 0.0017611298 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0019929688 | 0.0018600886 | 0.0018565076 | 0.001831884 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0015867586 | 0.0011538741 | 0.0013709594 | 0.0012974521 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.004227125 | 0.0041459836 | 0.0042080837 | 0.004163962 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0030878324 | 0.0021045152 | 0.003195732 | 0.0029436497 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.0041858694 | 0.0032318344 | 0.0034273986 | 0.0033380603 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.0041858694 | 0.0032318344 | 0.003884385 | 0.003766036 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.0042049102 | 0.004080487 | 0.0041636545 | 0.004118739 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.004369933 | 0.0030719778 | 0.0039986316 | 0.003875537 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0023896585 | 0.0020395909 | 0.0021579918 | 0.0021049338 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.002551508 | 0.0017859505 | 0.00201201 | 0.0019363009 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.004576212 | 0.0042251768 | 0.0043096365 | 0.004252718 |

### Paleo Open Interval Plots
*[(top)](#bruce-2320)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2320)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 538.75 | 0.0018561349 | 584 | 546.33 | 0.0018303886 | 575.89 |
| **FRA** | 119.00 | 0.008403362 | 217.35 | 0.0046008443 | 1450 | 220.54 | 0.0045342934 | 1429.03 |
| **COA** | 181.00 | 0.005524862 | 273.10 | 0.0036617266 | 1154 | 281.25 | 0.0035555298 | 1120.54 |
| **SCZ** | 106.00 | 0.009433962 | 303.51 | 0.0032947331 | 1037 | 313.63 | 0.0031884564 | 1003.57 |
| **TYS** | 329.00 | 0.0030395137 | 611.92 | 0.0016342021 | 514 | 622.99 | 0.0016051516 | 504.85 |
| **TOTAL** | 31.61 | 0.0316373 | 67.18 | 0.0148846395 | 4690 | 68.66 | 0.0145646045 | 4589.17 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9922769 | 0.8617015 | 0.99263865 | 0.8644636 | 0.72878754 |
| **20.00** | 0.96931785 | 0.7425294 | 0.9705294 | 0.74729735 | 0.53113127 |
| **30.00** | 0.93773234 | 0.6398387 | 0.94008315 | 0.6460114 | 0.3870819 |
| **40.00** | 0.8910616 | 0.55134994 | 0.89505756 | 0.5584534 | 0.28210047 |
| **50.00** | 0.8453316 | 0.47509906 | 0.8508108 | 0.4827626 | 0.2055913 |
| **60.00** | 0.78256744 | 0.40939355 | 0.78986245 | 0.4173307 | 0.14983238 |
| **70.00** | 0.72226274 | 0.35277504 | 0.73119324 | 0.36076725 | 0.10919597 |
| **80.00** | 0.6585308 | 0.30398676 | 0.6685911 | 0.31187016 | 0.079580665 |
| **90.00** | 0.5888937 | 0.26194584 | 0.60081625 | 0.2696004 | 0.057997398 |
| **100.00** | 0.52497953 | 0.22571911 | 0.5371687 | 0.23305975 | 0.04226778 |
| **110.00** | 0.46447125 | 0.19450249 | 0.4773976 | 0.20147167 | 0.030804234 |
| **120.00** | 0.40641478 | 0.16760308 | 0.41963258 | 0.17416494 | 0.022449743 |
| **130.00** | 0.3570039 | 0.14442381 | 0.36940444 | 0.15055925 | 0.016361093 |
| **140.00** | 0.30549106 | 0.124450214 | 0.31764558 | 0.130153 | 0.011923761 |
| **150.00** | 0.25405967 | 0.10723893 | 0.26622948 | 0.11251253 | 0.008689889 |
| **160.00** | 0.2124843 | 0.09240795 | 0.22347562 | 0.09726299 | 0.0063330824 |
| **170.00** | 0.17612046 | 0.079628065 | 0.18615478 | 0.084080316 | 0.0046154717 |
| **180.00** | 0.14488152 | 0.06861562 | 0.154546 | 0.07268438 | 0.0033636983 |
| **190.00** | 0.11205529 | 0.05912618 | 0.12076684 | 0.062833 | 0.0024514215 |
| **200.00** | 0.0957494 | 0.050949115 | 0.10350388 | 0.054316845 | 0.0017865654 |
| **210.00** | 0.069790386 | 0.04390293 | 0.076330155 | 0.046954937 | 0.0013020267 |
| **220.00** | 0.044662658 | 0.037831217 | 0.050256826 | 0.040590834 | 9.489008E-4 |
| **230.00** | 0.029673066 | 0.032599214 | 0.034207683 | 0.0350893 | 6.915471E-4 |
| **240.00** | 0.015464922 | 0.028090792 | 0.018851532 | 0.030333424 | 5.039909E-4 |
| **250.00** | 0.010304836 | 0.024205877 | 0.012121538 | 0.026222141 | 3.673023E-4 |
| **260.00** | 0.0055809403 | 0.02085824 | 0.0067304233 | 0.022668088 | 2.6768536E-4 |
| **270.00** | 0.0016232252 | 0.017973576 | 0.00235128 | 0.019595739 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.015487856 | 8.0575154E-4 | 0.016939802 | 1.4217607E-4 |
| **290.00** | 0.0 | 0.013345908 | 6.442431E-4 | 0.014643843 | 1.0361615E-4 |
| **300.00** | 0.0 | 0.011500189 | 5.0344697E-4 | 0.01265907 | 7.551416E-5 |
| **310.00** | 0.0 | 0.0099097295 | 3.0669227E-4 | 0.010943306 | 5.503378E-5 |
| **320.00** | 0.0 | 0.008539229 | 2.0298378E-4 | 0.00946009 | 4.0107934E-5 |
| **330.00** | 0.0 | 0.007358266 | 1.8265373E-4 | 0.0081779035 | 2.9230163E-5 |
| **340.00** | 0.0 | 0.0063406285 | 9.926753E-5 | 0.0070695 | 2.1302578E-5 |
| **350.00** | 0.0 | 0.005463729 | 5.5271015E-5 | 0.0061113257 | 1.5525055E-5 |
| **360.00** | 0.0 | 0.0047081034 | 2.5324647E-5 | 0.0052830186 | 1.1314466E-5 |
| **370.00** | 0.0 | 0.0040569794 | 0.0 | 0.0045669777 | 8.245842E-6 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2320)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 337.46 | 0.0029633238 | 934 | 351.16 | 0.002847666 | 897.56 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 257.46 | 0.0038840345 | 1224 | 265.46 | 0.0037670403 | 1187.15 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 1357.83 | 7.364678E-4 | 232 | 1507.50 | 6.633503E-4 | 208.85 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 320.88 | 0.0031163911 | 982 | 324.37 | 0.0030828544 | 971.42 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 278.57 | 0.0035897268 | 1131 | 283.94 | 0.0035218745 | 1109.61 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 451.31 | 0.0022157496 | 698 | 499.05 | 0.0020038069 | 631.08 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 1309.28 | 7.6378E-4 | 241 | 1330.88 | 7.513836E-4 | 237.09 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 2531.22 | 3.9506648E-4 | 125 | 2572.39 | 3.8874385E-4 | 122.97 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 237.87 | 0.0042039463 | 1325 | 240.44 | 0.0041589886 | 1310.82 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 538.75 | 0.0018561349 | 584 | 546.16 | 0.0018309746 | 576.08 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 12563.98 | 7.95926E-5 | 25 | 12723.68 | 7.8593584E-5 | 24.69 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 975.86 | 0.0010247369 | 323 | 995.04 | 0.0010049861 | 316.78 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 2377.45 | 4.2061933E-4 | 133 | 2407.55 | 4.153606E-4 | 131.34 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 234.16 | 0.0042706253 | 1346 | 237.32 | 0.0042136633 | 1328.02 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 211.94 | 0.0047183265 | 1487 | 218.70 | 0.0045724306 | 1441.03 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 463.85 | 0.0021558611 | 680 | 475.75 | 0.0021019282 | 662.96 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 217.35 | 0.0046008443 | 1450 | 220.45 | 0.004536178 | 1429.58 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 303.51 | 0.0032947331 | 1037 | 313.63 | 0.0031884213 | 1003.56 |
| **RodgersCreek** | 325.31 | 0.003074 | 551.41 | 0.0018135377 | 571 | 567.20 | 0.0017630329 | 555.08 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 1160.00 | 8.6206634E-4 | 272 | 1194.05 | 8.37488E-4 | 264.25 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 653.35 | 0.0015305688 | 482 | 667.10 | 0.0014990353 | 472.08 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 611.92 | 0.0016342021 | 514 | 623.38 | 0.001604162 | 504.57 |
| **Compton** | 2658.16 | 3.762E-4 | 9614.53 | 1.0400926E-4 | 33 | 9925.61 | 1.0074948E-4 | 31.93 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 273.10 | 0.0036617266 | 1154 | 281.00 | 0.003558679 | 1121.51 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 1334.35 | 7.4942777E-4 | 236 | 1364.29 | 7.329831E-4 | 230.81 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 1039.05 | 9.6242054E-4 | 303 | 1052.64 | 9.499961E-4 | 299.08 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 319.40 | 0.0031309118 | 987 | 323.47 | 0.0030914354 | 974.56 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 239.32 | 0.004178545 | 1317 | 242.10 | 0.00413057 | 1301.87 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1133.31 | 8.8237174E-4 | 278 | 1158.84 | 8.6292933E-4 | 271.87 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 2353.68 | 4.2486584E-4 | 134 | 2403.82 | 4.1600392E-4 | 131.2 |
| **TOTAL** | 9.08 | 0.1101451 | 31.27 | 0.031974684 | 10075 | 31.99 | 0.03125527 | 9848.34 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9641107 | 0.7263329 | 0.96552145 | 0.73157704 | 0.33238843 |
| **20.00** | 0.87865895 | 0.52755946 | 0.8829925 | 0.535205 | 0.110482074 |
| **30.00** | 0.75755394 | 0.38318378 | 0.76533437 | 0.39154372 | 0.036722966 |
| **40.00** | 0.6362561 | 0.27831897 | 0.6459838 | 0.2864444 | 0.012206289 |
| **50.00** | 0.51923335 | 0.20215222 | 0.5310677 | 0.20955615 | 0.004057229 |
| **60.00** | 0.40359995 | 0.1468298 | 0.41667217 | 0.15330647 | 0.001348576 |
| **70.00** | 0.30680823 | 0.10664731 | 0.31901622 | 0.1121555 | 4.4825108E-4 |
| **80.00** | 0.2307164 | 0.07746145 | 0.24239157 | 0.08205039 | 1.4899348E-4 |
| **90.00** | 0.16906 | 0.0562628 | 0.17885143 | 0.060026184 | 4.952371E-5 |
| **100.00** | 0.12617917 | 0.040865522 | 0.13402829 | 0.043913778 | 1.6461108E-5 |
| **110.00** | 0.091231056 | 0.029681971 | 0.096998364 | 0.032126315 | 5.4714824E-6 |
| **120.00** | 0.06404755 | 0.02155899 | 0.0688171 | 0.023502875 | 1.8186574E-6 |
| **130.00** | 0.04736025 | 0.015659004 | 0.05135426 | 0.017194163 | 6.045007E-7 |
| **140.00** | 0.032741856 | 0.011373649 | 0.035784207 | 0.012578856 | 2.0092905E-7 |
| **150.00** | 0.0167254 | 0.008261056 | 0.019442774 | 0.009202402 | 6.678649E-8 |
| **160.00** | 0.008799252 | 0.006000276 | 0.010776406 | 0.0067322664 | 2.2199057E-8 |
| **170.00** | 0.0052085826 | 0.004358198 | 0.0061210277 | 0.004925172 | 7.37871E-9 |
| **180.00** | 0.0030634566 | 0.0031655026 | 0.0036874488 | 0.0036031427 | 2.452598E-9 |
| **190.00** | 0.0017666605 | 0.0022992087 | 0.0021640756 | 0.0026359765 | 8.152152E-10 |
| **200.00** | 0.0013371411 | 0.0016699908 | 0.0013436974 | 0.00192842 | 2.709681E-10 |
| **210.00** | 0.0011162157 | 0.0012129692 | 0.0010521236 | 0.0014107878 | 9.006666E-11 |
| **220.00** | 8.952903E-4 | 8.810194E-4 | 7.914397E-4 | 0.0010321001 | 2.993712E-11 |
| **230.00** | 0.0 | 6.3991337E-4 | 4.653268E-4 | 7.550607E-4 | 9.950752E-12 |
| **240.00** | 0.0 | 4.6479012E-4 | 0.0 | 5.523851E-4 | 3.3075149E-12 |

### Moment Release Variability Plots
*[(top)](#bruce-2320)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2320)*

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
*[(top)](#bruce-2320)*

```
  A_1 = 0.001
  fA = .1
  B_1 = 0.01
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
  neighborFname = 
  stressRateFname =  
  slowSlipFname = 
  writePatchFname = 
  DEBUG = 0
  ZBrentUpperBracket = 0
```
