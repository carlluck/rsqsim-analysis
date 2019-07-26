# Bruce 4313
## Metadata
| **Catalog** | Bruce 4313 |
|-----|-----|
| **Author** | Bruce Shaw, 2019/07/25 |
| **Description** | same as r2585 but variable slip speed.  fracArea=0 ; variableSpeed s2ddf=.9 ddfmin=.1; b=.007 a=.001 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | Fully Variable |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 346,499 events in 35,778 years |
| **Frictional Params** | a=0.001, b=0.007, (b-a)=0.006, ddotEQ=1 |

* [Metadata](#metadata)
* [BBP Calculations, LA Basin 863 (m/s) Velocity Model](#bbp-calculations-la-basin-863-ms-velocity-model)
  * [Full Catalog GMPE Comparisons, LA Basin 863 (m/s)](#full-catalog-gmpe-comparisons-la-basin-863-ms)
* [BBP Calculations, LA Basin 500 (m/s) Velocity Model](#bbp-calculations-la-basin-500-ms-velocity-model)
  * [Full Catalog GMPE Comparisons, LA Basin 500 (m/s)](#full-catalog-gmpe-comparisons-la-basin-500-ms)
* [Plots](#plots)
  * [Magnitude-Frequency Plot](#magnitude-frequency-plot)
  * [Magnitude-Area Plots](#magnitude-area-plots)
    * [Mechanism-Dependent Magnitude-Area Plots](#mechanism-dependent-magnitude-area-plots)
  * [Slip-Area Plots](#slip-area-plots)
  * [Slip-Length Plots](#slip-length-plots)
    * [Mechanism-Dependent Slip-Length Plots](#mechanism-dependent-slip-length-plots)
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
*[(top)](#bruce-4313)*


### Full Catalog GMPE Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-4313)*

* [ASK2014](bbp_LA_BASIN_863/gmpe_bbp_comparisons_ASK2014/)

## BBP Calculations, LA Basin 500 (m/s) Velocity Model
*[(top)](#bruce-4313)*


### Full Catalog GMPE Comparisons, LA Basin 500 (m/s)
*[(top)](#bruce-4313)*

* [ASK2014](bbp_LA_BASIN_500/gmpe_bbp_comparisons_ASK2014/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-4313)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-4313)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
#### Mechanism-Dependent Magnitude-Area Plots
*[(top)](#bruce-4313)*

Here we disaggregate the magnitude-area scaling plots by focal mechanism. Multi-fault ruptures which incorporate multiple faulting styles are included in plot for the dominent fault style so long as no more than 10% of the participating elements are of a different style, otherwise they are listed as 'Unknown'.

| Fault Style | Scatter | 2-D Hist |
|-----|-----|-----|
| **Strike-Slip** | ![MA Scatter](resources/mag_area_STRIKE_SLIP.png) | ![MA Hist](resources/mag_area_STRIKE_SLIP_hist2D.png) |
| **Normal** | ![MA Scatter](resources/mag_area_NORMAL.png) | ![MA Hist](resources/mag_area_NORMAL_hist2D.png) |
| **Reverse** | ![MA Scatter](resources/mag_area_REVERSE.png) | ![MA Hist](resources/mag_area_REVERSE_hist2D.png) |
| **Unknown** | ![MA Scatter](resources/mag_area_UNKNOWN.png) | ![MA Hist](resources/mag_area_UNKNOWN_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-4313)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-4313)*

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
#### Mechanism-Dependent Slip-Length Plots
*[(top)](#bruce-4313)*

Here we disaggregate the slip-length scaling plots by focal mechanism. Multi-fault ruptures which incorporate multiple faulting styles are included in plot for the dominent fault style so long as no more than 10% of the participating elements are of a different style, otherwise they are listed as 'Unknown'.

| Fault Style | Scatter | 2-D Hist |
|-----|-----|-----|
| **Strike-Slip** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_STRIKE_SLIP.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_STRIKE_SLIP_hist2D.png) |
| **Normal** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_NORMAL.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_NORMAL_hist2D.png) |
| **Reverse** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_REVERSE.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_REVERSE_hist2D.png) |
| **Unknown** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_UNKNOWN.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_UNKNOWN_hist2D.png) |
### Slip Along Rupture (Dsr) Plots
*[(top)](#bruce-4313)*

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
*[(top)](#bruce-4313)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-4313)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-4313)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-4313)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-4313)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-4313)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-4313)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-4313)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-4313)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-4313)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.004035637 | 0.0025526725 | 0.0024734547 | 0.0021692994 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 9.763637E-5 | 9.2950984E-5 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.001562182 | 0.0013080104 | 0.001074 | 0.0010518488 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 4.556364E-4 | 4.4768216E-4 | 4.2309094E-4 | 4.177751E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0010414546 | 9.53777E-4 | 9.4381825E-4 | 9.3077664E-4 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 4.8818186E-4 | 4.2480283E-4 | 3.905455E-4 | 3.7974882E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.0046540005 | 0.004486132 | 0.0045889094 | 0.0044910866 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0010414546 | 0.0010129205 | 0.0010089092 | 9.949289E-4 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 9.4381825E-4 | 8.468205E-4 | 8.461819E-4 | 8.3136983E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 7.81091E-4 | 4.4828735E-4 | 1.9527275E-4 | 1.894168E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0021154548 | 0.0019244583 | 0.0018225455 | 0.0017729315 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0028314549 | 0.0021949864 | 0.0015947274 | 0.0015526982 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.003417273 | 0.0033520362 | 0.003417273 | 0.003375165 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0039054549 | 0.0034368273 | 0.0037427275 | 0.0035375715 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0033847275 | 0.0033491699 | 0.0033847275 | 0.003344743 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.003775273 | 0.0036568732 | 0.0036776366 | 0.0036235426 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0038729094 | 0.0036507826 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 1.6272729E-4 | 1.4884908E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0018225455 | 0.0016830448 | 0.0015296364 | 0.0015068577 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0027338185 | 0.002147922 | 0.0018876365 | 0.0018199442 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0016923638 | 0.0016716422 | 0.0016923638 | 0.0016754401 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0012692729 | 0.0010938497 | 8.136364E-4 | 7.571825E-4 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.0048167277 | 0.004656629 | 0.004719091 | 0.004639908 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0050770915 | 0.0033576335 | 0.003059273 | 0.0026235057 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.005402546 | 0.0046099406 | 0.0043936367 | 0.0042288476 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.005402546 | 0.0046099406 | 0.0048492732 | 0.0046850503 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.004133273 | 0.0040760655 | 0.004133273 | 0.0040919404 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.004296 | 0.0029797778 | 0.003938 | 0.0038494093 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0033847275 | 0.0022653416 | 0.0016272728 | 0.0014771122 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0035474547 | 0.002637596 | 0.0020829092 | 0.0019942448 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.004133273 | 0.0040363087 | 0.004133273 | 0.0040919404 |

### Paleo Open Interval Plots
*[(top)](#bruce-4313)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-4313)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 594.24 | 0.0016828266 | 52 | 599.88 | 0.0016669931 | 51.48 |
| **FRA** | 119.00 | 0.008403362 | 215.67 | 0.004636691 | 142 | 220.08 | 0.004543713 | 139.14 |
| **COA** | 181.00 | 0.005524862 | 211.21 | 0.0047347285 | 146 | 220.76 | 0.004529767 | 139.62 |
| **SCZ** | 106.00 | 0.009433962 | 266.28 | 0.0037554186 | 115 | 281.15 | 0.0035568804 | 108.82 |
| **TYS** | 329.00 | 0.0030395137 | 631.62 | 0.0015832265 | 49 | 647.62 | 0.0015441076 | 47.76 |
| **TOTAL** | 31.61 | 0.0316373 | 61.02 | 0.016387314 | 504 | 63.10 | 0.015847633 | 487.31 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9907774 | 0.8488497 | 0.9914414 | 0.85344315 | 0.72878754 |
| **20.00** | 0.9676208 | 0.7205458 | 0.96996284 | 0.72836524 | 0.53113127 |
| **30.00** | 0.9315599 | 0.6116351 | 0.9362589 | 0.62161833 | 0.3870819 |
| **40.00** | 0.8679936 | 0.51918626 | 0.87668353 | 0.5305159 | 0.28210047 |
| **50.00** | 0.8187454 | 0.4407111 | 0.82956743 | 0.4527652 | 0.2055913 |
| **60.00** | 0.74227685 | 0.3740975 | 0.7577937 | 0.38640937 | 0.14983238 |
| **70.00** | 0.66820484 | 0.31755254 | 0.68408275 | 0.32977843 | 0.10919597 |
| **80.00** | 0.5784308 | 0.26955438 | 0.5975786 | 0.28144717 | 0.079580665 |
| **90.00** | 0.50181925 | 0.22881116 | 0.52166694 | 0.24019915 | 0.057997398 |
| **100.00** | 0.4351002 | 0.19422628 | 0.45400146 | 0.20499633 | 0.04226778 |
| **110.00** | 0.33698407 | 0.16486892 | 0.35756817 | 0.17495272 | 0.030804234 |
| **120.00** | 0.28076673 | 0.13994893 | 0.29702446 | 0.1493122 | 0.022449743 |
| **130.00** | 0.21295655 | 0.11879561 | 0.23369497 | 0.12742949 | 0.016361093 |
| **140.00** | 0.18994443 | 0.100839615 | 0.20416878 | 0.10875382 | 0.011923761 |
| **150.00** | 0.13270989 | 0.08559768 | 0.14587556 | 0.092815205 | 0.008689889 |
| **160.00** | 0.11439681 | 0.07265956 | 0.12399421 | 0.0792125 | 0.0063330824 |
| **170.00** | 0.08673196 | 0.06167705 | 0.09667784 | 0.06760337 | 0.0046154717 |
| **180.00** | 0.06953029 | 0.052354544 | 0.07666842 | 0.057695635 | 0.0033636983 |
| **190.00** | 0.054325357 | 0.044441137 | 0.06347293 | 0.049239945 | 0.0024514215 |
| **200.00** | 0.031094817 | 0.037723847 | 0.036706552 | 0.042023495 | 0.0017865654 |
| **210.00** | 0.021234602 | 0.032021876 | 0.022610899 | 0.035864666 | 0.0013020267 |
| **220.00** | 0.016986407 | 0.02718176 | 0.020216642 | 0.030608453 | 9.489008E-4 |
| **230.00** | 0.009598591 | 0.023073228 | 0.010803514 | 0.026122576 | 6.915471E-4 |
| **240.00** | 0.0 | 0.019585703 | 0.0019700988 | 0.022294134 | 5.039909E-4 |
| **250.00** | 0.0 | 0.016625319 | 7.107202E-4 | 0.019026777 | 3.673023E-4 |
| **260.00** | 0.0 | 0.014112396 | 3.977877E-4 | 0.016238272 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.011979303 | 3.2038472E-4 | 0.013858442 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.010168628 | 2.3775597E-4 | 0.011827393 | 1.4217607E-4 |
| **290.00** | 0.0 | 0.008631637 | 1.9713276E-4 | 0.010094008 | 1.0361615E-4 |
| **300.00** | 0.0 | 0.0073269624 | 1.8276402E-4 | 0.008614662 | 7.551416E-5 |
| **310.00** | 0.0 | 0.00621949 | 1.6839529E-4 | 0.0073521244 | 5.503378E-5 |
| **320.00** | 0.0 | 0.005279412 | 1.5402655E-4 | 0.0062746205 | 4.0107934E-5 |
| **330.00** | 0.0 | 0.0044814274 | 1.3965782E-4 | 0.005355032 | 2.9230163E-5 |
| **340.00** | 0.0 | 0.0038040583 | 1.252891E-4 | 0.0045702155 | 2.1302578E-5 |
| **350.00** | 0.0 | 0.0032290737 | 0.0 | 0.0039004192 | 1.5525055E-5 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-4313)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 319.34 | 0.0031314692 | 97 | 340.96 | 0.0029329106 | 90.69 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 206.92 | 0.0048326883 | 149 | 213.74 | 0.0046786256 | 144.2 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 2262.05 | 4.420768E-4 | 12 | 2784.74 | 3.5909968E-4 | 9.43 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 296.04 | 0.0033779338 | 104 | 299.41 | 0.0033398834 | 102.83 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 272.25 | 0.0036730932 | 113 | 275.94 | 0.0036239314 | 111.48 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 404.85 | 0.0024700763 | 76 | 464.08 | 0.00215479 | 66.22 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 1058.20 | 9.450008E-4 | 29 | 1075.49 | 9.29811E-4 | 28.54 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 2526.46 | 3.9581073E-4 | 12 | 2616.12 | 3.8224543E-4 | 11.58 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 212.30 | 0.0047104135 | 145 | 216.14 | 0.0046266373 | 142.42 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 594.24 | 0.0016828266 | 52 | 599.88 | 0.001666988 | 51.5 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 9848.97 | 1.0153342E-4 | 3 | 9850.52 | 1.0151745E-4 | 2.97 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 660.84 | 0.0015132262 | 47 | 669.07 | 0.0014946131 | 46.42 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 2051.67 | 4.8740662E-4 | 15 | 2088.11 | 4.7890242E-4 | 14.72 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 242.68 | 0.004120736 | 127 | 245.07 | 0.0040804325 | 125.75 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 250.63 | 0.0039899186 | 123 | 256.64 | 0.0038964676 | 120.11 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 613.34 | 0.0016304257 | 50 | 676.33 | 0.0014785643 | 45.23 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 215.67 | 0.004636691 | 142 | 219.85 | 0.004548614 | 139.3 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 266.28 | 0.0037554186 | 115 | 280.93 | 0.003559567 | 108.93 |
| **RodgersCreek** | 325.31 | 0.003074 | 532.35 | 0.0018784638 | 58 | 550.15 | 0.0018176715 | 56.14 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 5597.38 | 1.7865491E-4 | 6 | 5772.94 | 1.7322188E-4 | 5.81 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 556.81 | 0.0017959392 | 56 | 572.28 | 0.0017473834 | 54.48 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 631.62 | 0.0015832265 | 49 | 645.98 | 0.001548026 | 47.9 |
| **Compton** | 2658.16 | 3.762E-4 | 9848.97 | 1.0153342E-4 | 3 | 9509.56 | 1.0515729E-4 | 2.72 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 211.21 | 0.0047347285 | 146 | 221.75 | 0.004509551 | 139 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 846.56 | 0.0011812509 | 36 | 885.28 | 0.0011295839 | 34.44 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 980.36 | 0.0010200298 | 31 | 990.09 | 0.0010100126 | 30.66 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 293.19 | 0.0034107293 | 105 | 296.93 | 0.0033677672 | 103.69 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 242.68 | 0.004120736 | 127 | 244.99 | 0.0040817843 | 125.79 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1163.42 | 8.595332E-4 | 26 | 1179.77 | 8.4762124E-4 | 25.63 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 2315.73 | 4.3182852E-4 | 13 | 2341.10 | 4.2715037E-4 | 12.87 |
| **TOTAL** | 9.08 | 0.1101451 | 25.81 | 0.038747508 | 1191 | 26.56 | 0.037645645 | 1157.16 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.95048183 | 0.6787686 | 0.95322245 | 0.686289 | 0.33238843 |
| **20.00** | 0.83491474 | 0.46072677 | 0.8434125 | 0.4709926 | 0.110482074 |
| **30.00** | 0.6831028 | 0.31272683 | 0.69561255 | 0.32323703 | 0.036722966 |
| **40.00** | 0.5080832 | 0.21226914 | 0.52259994 | 0.22183402 | 0.012206289 |
| **50.00** | 0.40613535 | 0.14408162 | 0.42267025 | 0.15224226 | 0.004057229 |
| **60.00** | 0.29194468 | 0.09779807 | 0.30456 | 0.10448218 | 0.001348576 |
| **70.00** | 0.23136961 | 0.06638226 | 0.2409474 | 0.071704976 | 4.4825108E-4 |
| **80.00** | 0.15927435 | 0.04505819 | 0.17058155 | 0.049210336 | 1.4899348E-4 |
| **90.00** | 0.09469722 | 0.030584082 | 0.103395335 | 0.033772513 | 4.952371E-5 |
| **100.00** | 0.050510157 | 0.020759514 | 0.057779808 | 0.023177704 | 1.6461108E-5 |
| **110.00** | 0.030007841 | 0.014090905 | 0.033223014 | 0.015906602 | 5.4714824E-6 |
| **120.00** | 0.014759251 | 0.009564463 | 0.017386494 | 0.010916526 | 1.8186574E-6 |
| **130.00** | 0.008265217 | 0.006492057 | 0.007543314 | 0.007491892 | 6.045007E-7 |
| **140.00** | 0.006143032 | 0.004406604 | 0.007246039 | 0.0051416033 | 2.0092905E-7 |
| **150.00** | 0.0 | 0.0029910642 | 0.0020454547 | 0.0035286257 | 6.678649E-8 |
| **160.00** | 0.0 | 0.0020302404 | 7.6922274E-4 | 0.002421657 | 2.2199057E-8 |
| **170.00** | 0.0 | 0.0013780633 | 0.0 | 0.0016619565 | 7.37871E-9 |

### Moment Release Variability Plots
*[(top)](#bruce-4313)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-4313)*

Example rupture plots:

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
|  |  |  |
| ![example](resources/elastic_rebound_triggering_m6_example_new_hypo.png) |  |  |

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_1yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_1yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_1yr.png) |
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_10yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_10yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_10yr.png) |
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_100yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_100yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_100yr.png) |

## Input File
*[(top)](#bruce-4313)*

```
  A_1 = 0.001
  fA = .1
  B_1 = 0.007
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
  variableSlipSpeed = 2
  state2ddotFactor = .9
  state2dotMinFactor = .1
```
