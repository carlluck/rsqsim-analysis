# Bruce 4312
## Metadata
| **Catalog** | Bruce 4312 |
|-----|-----|
| **Author** | Bruce Shaw, 2019/07/24 |
| **Description** | same as r2585 but variable slip speed.  fracArea=0 ; variableSpeed s2ddf=.9 ddfmin=.1; b=.008 a=.001 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | Fully Variable |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 319,499 events in 37,632 years |
| **Frictional Params** | a=0.001, b=0.008, (b-a)=0.007, ddotEQ=1 |

* [Metadata](#metadata)
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

## BBP Calculations, LA Basin 500 (m/s) Velocity Model
*[(top)](#bruce-4312)*


### Full Catalog GMPE Comparisons, LA Basin 500 (m/s)
*[(top)](#bruce-4312)*

* [ASK2014](bbp_LA_BASIN_500/gmpe_bbp_comparisons_ASK2014/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-4312)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-4312)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
#### Mechanism-Dependent Magnitude-Area Plots
*[(top)](#bruce-4312)*

Here we disaggregate the magnitude-area scaling plots by focal mechanism. Multi-fault ruptures which incorporate multiple faulting styles are included in plot for the dominent fault style so long as no more than 10% of the participating elements are of a different style, otherwise they are listed as 'Unknown'.

| Fault Style | Scatter | 2-D Hist |
|-----|-----|-----|
| **Strike-Slip** | ![MA Scatter](resources/mag_area_STRIKE_SLIP.png) | ![MA Hist](resources/mag_area_STRIKE_SLIP_hist2D.png) |
| **Normal** | ![MA Scatter](resources/mag_area_NORMAL.png) | ![MA Hist](resources/mag_area_NORMAL_hist2D.png) |
| **Reverse** | ![MA Scatter](resources/mag_area_REVERSE.png) | ![MA Hist](resources/mag_area_REVERSE_hist2D.png) |
| **Unknown** | ![MA Scatter](resources/mag_area_UNKNOWN.png) | ![MA Hist](resources/mag_area_UNKNOWN_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-4312)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-4312)*

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
*[(top)](#bruce-4312)*

Here we disaggregate the slip-length scaling plots by focal mechanism. Multi-fault ruptures which incorporate multiple faulting styles are included in plot for the dominent fault style so long as no more than 10% of the participating elements are of a different style, otherwise they are listed as 'Unknown'.

| Fault Style | Scatter | 2-D Hist |
|-----|-----|-----|
| **Strike-Slip** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_STRIKE_SLIP.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_STRIKE_SLIP_hist2D.png) |
| **Normal** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_NORMAL.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_NORMAL_hist2D.png) |
| **Reverse** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_REVERSE.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_REVERSE_hist2D.png) |
| **Unknown** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_UNKNOWN.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_UNKNOWN_hist2D.png) |
### Slip Along Rupture (Dsr) Plots
*[(top)](#bruce-4312)*

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
*[(top)](#bruce-4312)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-4312)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-4312)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-4312)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-4312)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-4312)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-4312)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-4312)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-4312)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-4312)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0025484131 | 0.0017217885 | 0.0019036339 | 0.0014143451 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 9.211132E-5 | 8.937768E-5 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0011974472 | 0.0010641955 | 0.0010439283 | 0.0010082822 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 3.9914905E-4 | 3.9129413E-4 | 3.6844527E-4 | 3.6470054E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0010132245 | 8.4287213E-4 | 8.290019E-4 | 8.2009326E-4 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 4.2985284E-4 | 3.7891115E-4 | 3.377415E-4 | 3.3310073E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.0044213436 | 0.004158821 | 0.004298528 | 0.004169755 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 8.597057E-4 | 8.172352E-4 | 8.290019E-4 | 8.205511E-4 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 7.061868E-4 | 6.840868E-4 | 6.75483E-4 | 6.686951E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 8.290019E-4 | 4.958093E-4 | 2.1492642E-4 | 1.9465835E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0020571528 | 0.0018736245 | 0.0017194113 | 0.001679098 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0026405244 | 0.0020570257 | 0.0011974472 | 0.001159495 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0028554508 | 0.0028122463 | 0.0028554508 | 0.0028268965 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0030396734 | 0.0028167828 | 0.0030703773 | 0.002985857 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0028554508 | 0.0028268383 | 0.0028554508 | 0.0028268965 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.0033160076 | 0.0031291037 | 0.0031010811 | 0.0030617353 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0035002301 | 0.0031753008 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 1.5351886E-4 | 1.406491E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0016887075 | 0.0015214485 | 0.0013816698 | 0.0013609553 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0027633396 | 0.0021555314 | 0.0016580038 | 0.001612383 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0014430773 | 0.0014263235 | 0.0014430773 | 0.0014286466 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0012281509 | 0.0010040561 | 7.061868E-4 | 6.671035E-4 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.003960787 | 0.0038920247 | 0.003960787 | 0.0038990718 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0053117527 | 0.0032078228 | 0.0027326357 | 0.0023827066 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.0046669734 | 0.003985522 | 0.0035002301 | 0.0033720892 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.0046669734 | 0.003985522 | 0.0038379717 | 0.0037520444 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.0034081188 | 0.003359822 | 0.0034081188 | 0.0033737544 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.003960787 | 0.0024986619 | 0.003377415 | 0.0033338438 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0028247472 | 0.0019541138 | 0.0012588548 | 0.0011634554 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.002701932 | 0.0020896734 | 0.002026449 | 0.001938581 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.0034081188 | 0.0033386678 | 0.0034081188 | 0.0033740376 |

### Paleo Open Interval Plots
*[(top)](#bruce-4312)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-4312)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 693.45 | 0.0014420637 | 47 | 698.78 | 0.0014310724 | 46.62 |
| **FRA** | 119.00 | 0.008403362 | 231.94 | 0.0043115243 | 141 | 236.83 | 0.0042223637 | 138.08 |
| **COA** | 181.00 | 0.005524862 | 265.90 | 0.0037607613 | 122 | 275.21 | 0.0036335278 | 117.82 |
| **SCZ** | 106.00 | 0.009433962 | 325.14 | 0.0030756157 | 100 | 334.06 | 0.0029934437 | 97.3 |
| **TYS** | 329.00 | 0.0030395137 | 853.07 | 0.0011722393 | 38 | 876.61 | 0.0011407554 | 36.97 |
| **TOTAL** | 31.61 | 0.0316373 | 72.64 | 0.013766081 | 448 | 74.66 | 0.013394367 | 435.93 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.99405515 | 0.8713942 | 0.9943104 | 0.87463933 | 0.72878754 |
| **20.00** | 0.9746187 | 0.7593279 | 0.9759873 | 0.76499397 | 0.53113127 |
| **30.00** | 0.9401885 | 0.6616739 | 0.9429488 | 0.6690938 | 0.3870819 |
| **40.00** | 0.9023218 | 0.5765788 | 0.90709835 | 0.58521575 | 0.28210047 |
| **50.00** | 0.87436366 | 0.5024274 | 0.8807856 | 0.51185274 | 0.2055913 |
| **60.00** | 0.82509357 | 0.43781236 | 0.8336541 | 0.44768652 | 0.14983238 |
| **70.00** | 0.7359109 | 0.38150713 | 0.74858105 | 0.39156425 | 0.10919597 |
| **80.00** | 0.6748836 | 0.33244312 | 0.68804276 | 0.3424775 | 0.079580665 |
| **90.00** | 0.6219853 | 0.289689 | 0.63372993 | 0.2995443 | 0.057997398 |
| **100.00** | 0.55874276 | 0.25243333 | 0.5716922 | 0.26199323 | 0.04226778 |
| **110.00** | 0.51632595 | 0.21996893 | 0.5300472 | 0.22914958 | 0.030804234 |
| **120.00** | 0.4438933 | 0.19167966 | 0.45818886 | 0.20042323 | 0.022449743 |
| **130.00** | 0.42055 | 0.16702853 | 0.43544188 | 0.17529805 | 0.016361093 |
| **140.00** | 0.3690268 | 0.1455477 | 0.38186416 | 0.15332256 | 0.011923761 |
| **150.00** | 0.3097523 | 0.12682942 | 0.32545206 | 0.13410194 | 0.008689889 |
| **160.00** | 0.2356862 | 0.110518426 | 0.25301182 | 0.11729084 | 0.0063330824 |
| **170.00** | 0.19919896 | 0.09630512 | 0.21492112 | 0.10258718 | 0.0046154717 |
| **180.00** | 0.17260684 | 0.08391972 | 0.18603073 | 0.08972678 | 0.0033636983 |
| **190.00** | 0.13495852 | 0.07312716 | 0.14529373 | 0.078478575 | 0.0024514215 |
| **200.00** | 0.10420458 | 0.06372258 | 0.11882365 | 0.06864045 | 0.0017865654 |
| **210.00** | 0.093672685 | 0.055527486 | 0.107135855 | 0.060035635 | 0.0013020267 |
| **220.00** | 0.069120094 | 0.04838633 | 0.079179235 | 0.052509528 | 9.489008E-4 |
| **230.00** | 0.04507962 | 0.04216357 | 0.049545635 | 0.0459269 | 6.915471E-4 |
| **240.00** | 0.037323333 | 0.03674109 | 0.04020121 | 0.040169474 | 5.039909E-4 |
| **250.00** | 0.029502958 | 0.03201597 | 0.031107344 | 0.0351338 | 3.673023E-4 |
| **260.00** | 0.022359593 | 0.027898531 | 0.021499438 | 0.030729404 | 2.6768536E-4 |
| **270.00** | 0.015864188 | 0.024310619 | 0.016607283 | 0.026877146 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.021184133 | 0.0024776806 | 0.02350781 | 1.4217607E-4 |
| **290.00** | 0.0 | 0.01845973 | 9.4777945E-4 | 0.020560855 | 1.0361615E-4 |
| **300.00** | 0.0 | 0.016085703 | 9.0306526E-4 | 0.017983332 | 7.551416E-5 |
| **310.00** | 0.0 | 0.014016988 | 7.9579366E-4 | 0.01572893 | 5.503378E-5 |
| **320.00** | 0.0 | 0.012214322 | 3.7810474E-4 | 0.01375714 | 4.0107934E-5 |
| **330.00** | 0.0 | 0.01064349 | 2.0302502E-4 | 0.012032536 | 2.9230163E-5 |
| **340.00** | 0.0 | 0.009274675 | 1.7814046E-4 | 0.0105241295 | 2.1302578E-5 |
| **350.00** | 0.0 | 0.008081898 | 1.5325591E-4 | 0.009204818 | 1.5525055E-5 |
| **360.00** | 0.0 | 0.0070425193 | 1.2837135E-4 | 0.008050895 | 1.1314466E-5 |
| **370.00** | 0.0 | 0.0061368104 | 0.0 | 0.00704163 | 8.245842E-6 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-4312)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 339.44 | 0.0029460185 | 96 | 362.58 | 0.0027580115 | 89.9 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 259.47 | 0.0038540035 | 125 | 265.47 | 0.0037668915 | 122.14 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 2713.20 | 3.6856814E-4 | 11 | 3273.93 | 3.0544365E-4 | 9.08 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 347.97 | 0.002873811 | 93 | 351.64 | 0.0028438033 | 92.01 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 322.37 | 0.0031019815 | 101 | 325.38 | 0.0030733268 | 99.91 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 514.98 | 0.0019418093 | 62 | 679.72 | 0.0014711999 | 46.46 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 1235.66 | 8.092852E-4 | 27 | 1248.02 | 8.012693E-4 | 26.71 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 3033.61 | 3.296402E-4 | 11 | 3053.73 | 3.2746806E-4 | 10.91 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 255.68 | 0.0039111674 | 128 | 258.91 | 0.003862279 | 126.38 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 693.45 | 0.0014420637 | 47 | 699.99 | 0.0014285836 | 46.57 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 10004.97 | 9.995028E-5 | 3 | 10151.08 | 9.851171E-5 | 2.94 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 720.98 | 0.0013870085 | 45 | 732.76 | 0.0013646944 | 44.28 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 2367.10 | 4.224574E-4 | 13 | 2387.15 | 4.1891044E-4 | 12.89 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 295.19 | 0.0033876263 | 111 | 298.09 | 0.0033546467 | 109.9 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 289.92 | 0.0034492195 | 113 | 296.35 | 0.0033743803 | 110.56 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 779.17 | 0.0012834128 | 41 | 849.44 | 0.0011772475 | 37.68 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 231.94 | 0.0043115243 | 141 | 237.30 | 0.004214145 | 137.83 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 325.14 | 0.0030756157 | 100 | 333.54 | 0.002998126 | 97.45 |
| **RodgersCreek** | 325.31 | 0.003074 | 605.56 | 0.0016513749 | 54 | 620.96 | 0.001610408 | 52.58 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 4060.51 | 2.4627446E-4 | 8 | 4312.52 | 2.3188286E-4 | 7.45 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 583.30 | 0.0017143968 | 56 | 596.83 | 0.0016755268 | 54.74 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 853.07 | 0.0011722393 | 38 | 881.12 | 0.0011349207 | 36.79 |
| **Compton** | 2658.16 | 3.762E-4 | 6193.03 | 1.6147176E-4 | 3 | 6369.08 | 1.5700854E-4 | 2.89 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 265.90 | 0.0037607613 | 122 | 275.59 | 0.0036285294 | 117.71 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 949.27 | 0.0010534404 | 34 | 976.19 | 0.0010243953 | 33.04 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 1160.62 | 8.616051E-4 | 27 | 1172.30 | 8.5302576E-4 | 26.72 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 347.97 | 0.002873811 | 93 | 351.25 | 0.0028469472 | 92.14 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 295.19 | 0.0033876263 | 111 | 298.50 | 0.0033500476 | 109.76 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1495.59 | 6.68633E-4 | 22 | 1511.75 | 6.614855E-4 | 21.72 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 2667.79 | 3.7484238E-4 | 12 | 2687.63 | 3.7207437E-4 | 11.89 |
| **TOTAL** | 9.08 | 0.1101451 | 30.98 | 0.03227483 | 1049 | 32.06 | 0.03119541 | 1013.95 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9640706 | 0.7241561 | 0.9660854 | 0.73201513 | 0.33238843 |
| **20.00** | 0.8649722 | 0.5244021 | 0.87254 | 0.5358462 | 0.110482074 |
| **30.00** | 0.7426198 | 0.37974894 | 0.7561009 | 0.3922475 | 0.036722966 |
| **40.00** | 0.62826693 | 0.27499753 | 0.64498925 | 0.2871311 | 0.012206289 |
| **50.00** | 0.5228663 | 0.19914113 | 0.5421708 | 0.2101843 | 0.004057229 |
| **60.00** | 0.41715974 | 0.14420927 | 0.4346022 | 0.1538581 | 0.001348576 |
| **70.00** | 0.32398793 | 0.10443002 | 0.33950236 | 0.11262645 | 4.4825108E-4 |
| **80.00** | 0.24963093 | 0.07562364 | 0.26224458 | 0.082444265 | 1.4899348E-4 |
| **90.00** | 0.18932877 | 0.054763317 | 0.20184863 | 0.06035045 | 4.952371E-5 |
| **100.00** | 0.1331906 | 0.03965719 | 0.14473711 | 0.044177443 | 1.6461108E-5 |
| **110.00** | 0.10315117 | 0.028717997 | 0.110720836 | 0.032338556 | 5.4714824E-6 |
| **120.00** | 0.064508975 | 0.020796312 | 0.06934982 | 0.023672312 | 1.8186574E-6 |
| **130.00** | 0.04395867 | 0.015059777 | 0.0458746 | 0.017328491 | 6.045007E-7 |
| **140.00** | 0.02736015 | 0.010905629 | 0.02890244 | 0.012684718 | 2.0092905E-7 |
| **150.00** | 0.016025158 | 0.007897378 | 0.014710758 | 0.009285405 | 6.678649E-8 |
| **160.00** | 0.014821953 | 0.0057189343 | 0.0141127845 | 0.006797057 | 2.2199057E-8 |
| **170.00** | 0.01361875 | 0.004141401 | 0.012443802 | 0.0049755485 | 7.37871E-9 |
| **180.00** | 0.012415546 | 0.002999021 | 0.012171715 | 0.003642177 | 2.452598E-9 |
| **190.00** | 0.010075433 | 0.0021717593 | 0.006507137 | 0.0026661286 | 8.152152E-10 |
| **200.00** | 0.006877854 | 0.0015726928 | 0.006418901 | 0.0019516464 | 2.709681E-10 |
| **210.00** | 0.0 | 0.001138875 | 3.6171015E-4 | 0.0014286347 | 9.006666E-11 |
| **220.00** | 0.0 | 8.247233E-4 | 3.485802E-4 | 0.0010457822 | 2.993712E-11 |
| **230.00** | 0.0 | 5.972284E-4 | 3.354502E-4 | 7.655284E-4 | 9.950752E-12 |
| **240.00** | 0.0 | 4.324866E-4 | 3.2232024E-4 | 5.6037836E-4 | 3.3075149E-12 |
| **250.00** | 0.0 | 3.131878E-4 | 3.0919025E-4 | 4.1020545E-4 | 1.0993797E-12 |
| **260.00** | 0.0 | 2.2679687E-4 | 0.0 | 3.0027662E-4 | 3.654211E-13 |

### Moment Release Variability Plots
*[(top)](#bruce-4312)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-4312)*

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
*[(top)](#bruce-4312)*

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
