# Bruce 4320
## Metadata
| **Catalog** | Bruce 4320 |
|-----|-----|
| **Author** | Bruce Shaw, 2019/07/28 |
| **Description** | variable slip speed.  fracArea=0.8 ; variableSpeed s2ddf=.8 ddfmin=.1; b=.010 a=.003 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | Fully Variable |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 743,622 events in 51,325 years |
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
*[(top)](#bruce-4320)*


### Full Catalog GMPE Comparisons, LA Basin 500 (m/s)
*[(top)](#bruce-4320)*

* [ASK2014](bbp_LA_BASIN_500/gmpe_bbp_comparisons_ASK2014/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-4320)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-4320)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
#### Mechanism-Dependent Magnitude-Area Plots
*[(top)](#bruce-4320)*

Here we disaggregate the magnitude-area scaling plots by focal mechanism. Multi-fault ruptures which incorporate multiple faulting styles are included in plot for the dominent fault style so long as no more than 10% of the participating elements are of a different style, otherwise they are listed as 'Unknown'.

| Fault Style | Scatter | 2-D Hist |
|-----|-----|-----|
| **Strike-Slip** | ![MA Scatter](resources/mag_area_STRIKE_SLIP.png) | ![MA Hist](resources/mag_area_STRIKE_SLIP_hist2D.png) |
| **Normal** | ![MA Scatter](resources/mag_area_NORMAL.png) | ![MA Hist](resources/mag_area_NORMAL_hist2D.png) |
| **Reverse** | ![MA Scatter](resources/mag_area_REVERSE.png) | ![MA Hist](resources/mag_area_REVERSE_hist2D.png) |
| **Unknown** | ![MA Scatter](resources/mag_area_UNKNOWN.png) | ![MA Hist](resources/mag_area_UNKNOWN_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-4320)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-4320)*

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
*[(top)](#bruce-4320)*

Here we disaggregate the slip-length scaling plots by focal mechanism. Multi-fault ruptures which incorporate multiple faulting styles are included in plot for the dominent fault style so long as no more than 10% of the participating elements are of a different style, otherwise they are listed as 'Unknown'.

| Fault Style | Scatter | 2-D Hist |
|-----|-----|-----|
| **Strike-Slip** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_STRIKE_SLIP.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_STRIKE_SLIP_hist2D.png) |
| **Normal** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_NORMAL.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_NORMAL_hist2D.png) |
| **Reverse** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_REVERSE.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_REVERSE_hist2D.png) |
| **Unknown** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_UNKNOWN.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_UNKNOWN_hist2D.png) |
### Slip Along Rupture (Dsr) Plots
*[(top)](#bruce-4320)*

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
*[(top)](#bruce-4320)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-4320)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-4320)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-4320)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-4320)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-4320)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-4320)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-4320)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-4320)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-4320)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.003024128 | 0.0016095903 | 0.0023544997 | 0.001825071 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 1.7280731E-4 | 1.64338E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0015336649 | 0.001295714 | 0.0013392566 | 0.0012855973 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 5.832247E-4 | 5.6273025E-4 | 5.1842193E-4 | 5.120825E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0012312521 | 0.001092724 | 0.0010584448 | 0.0010388648 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 6.2642654E-4 | 5.5098545E-4 | 4.536192E-4 | 4.4017332E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.005832247 | 0.005535567 | 0.005767444 | 0.0056429394 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0012312521 | 0.0011742703 | 0.0012096512 | 0.0011877136 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0011664494 | 0.0010888237 | 9.072384E-4 | 8.860881E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 0.0011448484 | 5.5223546E-4 | 2.5921097E-4 | 2.2353095E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0025921096 | 0.0022953697 | 0.0021168897 | 0.0020516806 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0036073527 | 0.0026728408 | 0.0020736877 | 0.001947105 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.00354255 | 0.003456109 | 0.0034993482 | 0.0034628212 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0066746827 | 0.0051051453 | 0.0057242424 | 0.005268386 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0034993482 | 0.003463489 | 0.0034993482 | 0.0034636757 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.0040177703 | 0.0038267646 | 0.003801761 | 0.003737104 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0044497885 | 0.004144733 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 1.512064E-4 | 1.4093237E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0018576786 | 0.0017630619 | 0.0016632704 | 0.0016414219 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0037369581 | 0.0027297172 | 0.0031105317 | 0.002809064 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0017496741 | 0.0017280497 | 0.0017496741 | 0.0017321773 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0014040595 | 0.0011849757 | 8.856375E-4 | 7.957124E-4 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.0057026413 | 0.005435911 | 0.0053570266 | 0.0052643167 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.006307467 | 0.003649434 | 0.0036073527 | 0.002981851 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.007020297 | 0.005487012 | 0.004536192 | 0.0042610937 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.007020297 | 0.005487012 | 0.0049466095 | 0.0047325264 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.004536192 | 0.0044754255 | 0.004536192 | 0.0044896225 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.0065018754 | 0.0038229444 | 0.004773802 | 0.0045125433 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0038233618 | 0.0025401171 | 0.0019224813 | 0.0016910145 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0036937564 | 0.0027785143 | 0.002311298 | 0.002192563 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.004557793 | 0.0044604633 | 0.004536192 | 0.004490028 |

### Paleo Open Interval Plots
*[(top)](#bruce-4320)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-4320)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 571.26 | 0.001750528 | 81 | 576.96 | 0.0017332331 | 80.2 |
| **FRA** | 119.00 | 0.008403362 | 172.93 | 0.0057828343 | 268 | 177.01 | 0.0056494 | 261.83 |
| **COA** | 181.00 | 0.005524862 | 206.90 | 0.00483315 | 223 | 219.84 | 0.0045487755 | 209.88 |
| **SCZ** | 106.00 | 0.009433962 | 175.08 | 0.005711632 | 265 | 190.65 | 0.005245152 | 243.38 |
| **TYS** | 329.00 | 0.0030395137 | 532.28 | 0.0018787023 | 87 | 549.10 | 0.0018211569 | 84.34 |
| **TOTAL** | 31.61 | 0.0316373 | 50.13 | 0.019949462 | 924 | 52.61 | 0.019008031 | 880.28 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.98540366 | 0.8191446 | 0.9867035 | 0.82689273 | 0.72878754 |
| **20.00** | 0.9479374 | 0.6709979 | 0.9525368 | 0.6837516 | 0.53113127 |
| **30.00** | 0.889469 | 0.54964435 | 0.89842755 | 0.5653892 | 0.3870819 |
| **40.00** | 0.8184943 | 0.4502382 | 0.8312583 | 0.4675162 | 0.28210047 |
| **50.00** | 0.74299914 | 0.3688102 | 0.7609757 | 0.38658574 | 0.2055913 |
| **60.00** | 0.6609751 | 0.3021089 | 0.6833664 | 0.31966493 | 0.14983238 |
| **70.00** | 0.58707803 | 0.24747089 | 0.61195886 | 0.2643286 | 0.10919597 |
| **80.00** | 0.51892996 | 0.20271444 | 0.54645926 | 0.21857141 | 0.079580665 |
| **90.00** | 0.41134074 | 0.16605245 | 0.44573596 | 0.1807351 | 0.057997398 |
| **100.00** | 0.3466334 | 0.13602097 | 0.3805678 | 0.14944854 | 0.04226778 |
| **110.00** | 0.27836087 | 0.11142085 | 0.3137187 | 0.12357791 | 0.030804234 |
| **120.00** | 0.20960239 | 0.09126979 | 0.24244615 | 0.102185674 | 0.022449743 |
| **130.00** | 0.15380056 | 0.07476316 | 0.1846913 | 0.08449659 | 0.016361093 |
| **140.00** | 0.09826638 | 0.06124184 | 0.12852529 | 0.069869615 | 0.011923761 |
| **150.00** | 0.06592597 | 0.050165925 | 0.087418534 | 0.057774674 | 0.008689889 |
| **160.00** | 0.04177099 | 0.04109315 | 0.057897594 | 0.047773458 | 0.0063330824 |
| **170.00** | 0.030748723 | 0.03366123 | 0.041198302 | 0.039503526 | 0.0046154717 |
| **180.00** | 0.026595937 | 0.027573416 | 0.033110876 | 0.03266518 | 0.0033636983 |
| **190.00** | 0.0083699515 | 0.022586616 | 0.009596723 | 0.027010597 | 0.0024514215 |
| **200.00** | 0.0064306026 | 0.018501705 | 0.006790284 | 0.022334866 | 0.0017865654 |
| **210.00** | 0.0 | 0.015155572 | 0.0041143284 | 0.018468538 | 0.0013020267 |
| **220.00** | 0.0 | 0.012414605 | 8.825876E-4 | 0.0152715 | 9.489008E-4 |
| **230.00** | 0.0 | 0.010169357 | 5.039837E-4 | 0.012627892 | 6.915471E-4 |
| **240.00** | 0.0 | 0.008330175 | 4.8619913E-4 | 0.010441912 | 5.039909E-4 |
| **250.00** | 0.0 | 0.0068236175 | 4.6841454E-4 | 0.008634341 | 3.673023E-4 |
| **260.00** | 0.0 | 0.00558953 | 4.3321014E-4 | 0.0071396735 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.0045786332 | 3.361007E-4 | 0.005903744 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.003750563 | 2.3899126E-4 | 0.004881763 | 1.4217607E-4 |
| **290.00** | 0.0 | 0.0030722534 | 1.4188181E-4 | 0.0040366943 | 1.0361615E-4 |
| **300.00** | 0.0 | 0.0025166199 | 0.0 | 0.0033379132 | 7.551416E-5 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-4320)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 275.02 | 0.003636138 | 168 | 296.66 | 0.003370854 | 155.74 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 202.15 | 0.0049467725 | 229 | 211.27 | 0.004733368 | 218.94 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 3628.80 | 2.7557314E-4 | 12 | 4591.72 | 2.1778341E-4 | 9.27 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 285.64 | 0.0035009673 | 162 | 288.41 | 0.0034672988 | 160.44 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 262.78 | 0.0038053992 | 176 | 267.15 | 0.003743248 | 173.12 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 415.82 | 0.0024048837 | 109 | 535.87 | 0.001866127 | 84.26 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 943.71 | 0.001059651 | 49 | 957.88 | 0.001043977 | 48.29 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 2218.36 | 4.5078265E-4 | 21 | 2274.53 | 4.3965108E-4 | 20.38 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 187.26 | 0.0053402586 | 247 | 190.62 | 0.0052459547 | 242.64 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 571.26 | 0.001750528 | 81 | 575.50 | 0.001737609 | 80.36 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 8418.44 | 1.1878683E-4 | 5 | 8634.47 | 1.15814844E-4 | 4.85 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 600.63 | 0.0016649055 | 77 | 607.56 | 0.0016459296 | 76.12 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 2031.64 | 4.922125E-4 | 23 | 2075.03 | 4.8192072E-4 | 22.54 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 219.11 | 0.0045640203 | 210 | 221.06 | 0.0045236214 | 208.15 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 202.62 | 0.0049352567 | 227 | 214.36 | 0.004665065 | 214.58 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 522.78 | 0.0019128581 | 89 | 596.41 | 0.0016767045 | 77.99 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 172.93 | 0.0057828343 | 268 | 177.02 | 0.0056491937 | 261.81 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 175.08 | 0.005711632 | 265 | 190.29 | 0.0052552307 | 243.78 |
| **RodgersCreek** | 325.31 | 0.003074 | 322.78 | 0.0030981232 | 144 | 359.71 | 0.0027799904 | 129.07 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 3853.42 | 2.5950978E-4 | 12 | 4275.99 | 2.338638E-4 | 10.14 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 470.03 | 0.0021275184 | 98 | 485.34 | 0.0020604213 | 94.93 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 532.28 | 0.0018787023 | 87 | 548.94 | 0.0018216943 | 84.34 |
| **Compton** | 2658.16 | 3.762E-4 | 9321.26 | 1.0728161E-4 | 3 | 9636.15 | 1.0377587E-4 | 2.9 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 206.90 | 0.00483315 | 223 | 219.70 | 0.004551629 | 210.04 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 714.08 | 0.001400413 | 65 | 749.41 | 0.0013343883 | 61.94 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 845.47 | 0.0011827671 | 55 | 858.48 | 0.001164849 | 54.11 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 285.64 | 0.0035009673 | 162 | 288.59 | 0.0034650934 | 160.33 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 219.11 | 0.0045640203 | 210 | 221.27 | 0.0045193247 | 207.94 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1091.30 | 9.163346E-4 | 42 | 1112.24 | 8.9908496E-4 | 41.21 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1891.19 | 5.2876846E-4 | 24 | 1909.28 | 5.237573E-4 | 23.72 |
| **TOTAL** | 9.08 | 0.1101451 | 21.20 | 0.047161132 | 2183 | 22.23 | 0.04497648 | 2081.62 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9227915 | 0.623996 | 0.9289055 | 0.6377781 | 0.33238843 |
| **20.00** | 0.77264005 | 0.389371 | 0.7873578 | 0.40676093 | 0.110482074 |
| **30.00** | 0.60524136 | 0.24296594 | 0.6280974 | 0.25942323 | 0.036722966 |
| **40.00** | 0.42035216 | 0.15160978 | 0.44737497 | 0.16545446 | 0.012206289 |
| **50.00** | 0.29009235 | 0.09460389 | 0.31494245 | 0.105523236 | 0.004057229 |
| **60.00** | 0.20944093 | 0.059032448 | 0.2279964 | 0.06730042 | 0.001348576 |
| **70.00** | 0.13744284 | 0.036836013 | 0.15258037 | 0.04292273 | 4.4825108E-4 |
| **80.00** | 0.09830769 | 0.022985524 | 0.10878987 | 0.02737518 | 1.4899348E-4 |
| **90.00** | 0.05849195 | 0.014342874 | 0.06570586 | 0.01745929 | 4.952371E-5 |
| **100.00** | 0.038938 | 0.008949896 | 0.04327703 | 0.011135154 | 1.6461108E-5 |
| **110.00** | 0.022518307 | 0.0055846996 | 0.025475308 | 0.0071017575 | 5.4714824E-6 |
| **120.00** | 0.006324411 | 0.00348483 | 0.007385062 | 0.004529346 | 1.8186574E-6 |
| **130.00** | 0.0032976335 | 0.00217452 | 0.0036224907 | 0.0028887177 | 6.045007E-7 |
| **140.00** | 0.0 | 0.0013568918 | 5.7983346E-4 | 0.001842361 | 2.0092905E-7 |
| **150.00** | 0.0 | 8.4669504E-4 | 4.6873267E-4 | 0.0011750176 | 6.678649E-8 |
| **160.00** | 0.0 | 5.283343E-4 | 4.0539767E-4 | 7.4940047E-4 | 2.2199057E-8 |
| **170.00** | 0.0 | 3.296785E-4 | 2.3853041E-4 | 4.7795122E-4 | 7.37871E-9 |
| **180.00** | 0.0 | 2.0571805E-4 | 0.0 | 3.0482686E-4 | 2.452598E-9 |

### Moment Release Variability Plots
*[(top)](#bruce-4320)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-4320)*

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
*[(top)](#bruce-4320)*

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
  receiverElementAreaFrac = 0.7
  receiverElementIntTol = 1.0e-4
  receiverElementSubdivisionMax = 4
  tgfDist1 = 3
  tgfDist1 = 10
  variableSlipSpeed = 2
  state2ddotFactor = .8
  state2dotMinFactor = .1
```
