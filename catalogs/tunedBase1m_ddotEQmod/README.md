# JG Tune Base Mod Vel
## Metadata
| **Catalog** | JG Tune Base Mod Vel |
|-----|-----|
| **Author** | Jacqui Gilchrist, 2017/11/26 |
| **Description** | New version of tuneBase1m, with patch-specific slip velocities. |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | Patch Variable, range=[0.007585216 4.999275], mean=0.995433 |
| **Average Element Area** | 0.90 km^2 |
| **Length** | 37,538,999 events in 112,714 years |
| **Frictional Params** | a=0.01, b=0.015, (b-a)=0.005, ddotEQ=1 |

* [Metadata](#metadata)
* [Extreme Event Examples](extreme_events/)
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

## Extreme Event Examples
*[(top)](#jg-tune-base-mod-vel)*

[Extreme Event Examples Here](extreme_events/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#jg-tune-base-mod-vel)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#jg-tune-base-mod-vel)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
#### Mechanism-Dependent Magnitude-Area Plots
*[(top)](#jg-tune-base-mod-vel)*

Here we disaggregate the magnitude-area scaling plots by focal mechanism. Multi-fault ruptures which incorporate multiple faulting styles are included in plot for the dominent fault style so long as no more than 10% of the participating elements are of a different style, otherwise they are listed as 'Unknown'.

| Fault Style | Scatter | 2-D Hist |
|-----|-----|-----|
| **Strike-Slip** | ![MA Scatter](resources/mag_area_STRIKE_SLIP.png) | ![MA Hist](resources/mag_area_STRIKE_SLIP_hist2D.png) |
| **Normal** | ![MA Scatter](resources/mag_area_NORMAL.png) | ![MA Hist](resources/mag_area_NORMAL_hist2D.png) |
| **Reverse** | ![MA Scatter](resources/mag_area_REVERSE.png) | ![MA Hist](resources/mag_area_REVERSE_hist2D.png) |
| **Unknown** | ![MA Scatter](resources/mag_area_UNKNOWN.png) | ![MA Hist](resources/mag_area_UNKNOWN_hist2D.png) |
### Slip-Area Plots
*[(top)](#jg-tune-base-mod-vel)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#jg-tune-base-mod-vel)*

These plots compute average slip-length scaling at mid-seismogenic depth. We define mid-seismogenic depth to be no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. Average slip is computed across all elements in this mid-seismogenic region, including any which did not slip, along the full length of the rupture.

We define the rupture length, which also determines the region at mid-seismogenic depth across which we compute average slip, multiple ways in order to test sensitivity:

* **Full Mapped Subsection Length:** Average slip in the mid-seismogenic zone across the whole length of each mapped subsection
* **Full Slipped Length:** Average slip in the mid-seismogenic zone across the section of fault that slipped (regardless of if that slip was in the mid-seismgenic zone or not)
* **Mid-Seismogenic Slipped Length:** Average slip in the mid-seismogenic zone across the section of fault that slipped in that mid-seismogenic zone (including any holes with no slip)
* **Surface Slipped Length:** Average slip in the mid-seismogenic zone across the section of fault that had surface slip

The average value is plotted in a thick gray line, and UCERF3 Scaling Relationships in colored lines (assuming a down dip width of 12 km).

| Lengh Algorithm | Scatter | 2-D Hist |
|-----|-----|-----|
| **Full Mapped Subsection Length** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_FULL_SUBSECTION_LEN.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_FULL_SUBSECTION_LEN_hist2D.png) |
| **Full Slipped Length** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_hist2D.png) |
| **Mid-Seismogenic Slipped Length** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_MID_SLIPPED_LEN.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_MID_SLIPPED_LEN_hist2D.png) |
| **Surface Slipped Length** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SURF_SLIP_LEN.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SURF_SLIP_LEN_hist2D.png) |
#### Mechanism-Dependent Slip-Length Plots
*[(top)](#jg-tune-base-mod-vel)*

Here we disaggregate the slip-length scaling plots by focal mechanism. Multi-fault ruptures which incorporate multiple faulting styles are included in plot for the dominent fault style so long as no more than 10% of the participating elements are of a different style, otherwise they are listed as 'Unknown'.

| Fault Style | Scatter | 2-D Hist |
|-----|-----|-----|
| **Strike-Slip** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_STRIKE_SLIP.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_STRIKE_SLIP_hist2D.png) |
| **Normal** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_NORMAL.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_NORMAL_hist2D.png) |
| **Reverse** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_REVERSE.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_REVERSE_hist2D.png) |
| **Unknown** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_UNKNOWN.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_UNKNOWN_hist2D.png) |
### Slip Along Rupture (Dsr) Plots
*[(top)](#jg-tune-base-mod-vel)*

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
*[(top)](#jg-tune-base-mod-vel)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#jg-tune-base-mod-vel)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#jg-tune-base-mod-vel)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#jg-tune-base-mod-vel)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#jg-tune-base-mod-vel)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#jg-tune-base-mod-vel)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#jg-tune-base-mod-vel)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#jg-tune-base-mod-vel)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#jg-tune-base-mod-vel)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#jg-tune-base-mod-vel)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0025716438 | 0.001472557 | 0.0 | 0.0 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 6.591578E-4 | 5.3316937E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.005626051 | 0.0024271428 | 0.005579632 | 0.0030907595 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 4.3634392E-4 | 3.2146304E-4 | 0.0 | 0.0 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0014761422 | 9.598115E-4 | 9.0053957E-4 | 8.7649556E-4 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 7.055774E-4 | 5.335559E-4 | 0.0 | 0.0 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.01827074 | 0.008568669 | 0.0055981996 | 0.0047796965 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 9.0053957E-4 | 6.868144E-4 | 5.570348E-4 | 5.5146444E-4 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 9.6552697E-4 | 8.1999565E-4 | 0.0 | 0.0 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 0.0035371708 | 0.0010631471 | 0.0 | 0.0 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.003323641 | 0.0025284102 | 0.0 | 0.0 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.009116802 | 0.0052273893 | 0.008615471 | 0.0054255854 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.00405707 | 0.0028790908 | 0.0021538679 | 0.0021312998 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0067586885 | 0.0051371264 | 0.00555178 | 0.0052398182 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0035650225 | 0.002765333 | 0.0022838425 | 0.0022608966 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.004901906 | 0.0039276984 | 0.004019934 | 0.0039739013 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0057931617 | 0.00475219 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 5.1061524E-4 | 3.2569995E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0013275995 | 9.829542E-4 | 7.055774E-4 | 6.974062E-4 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0048554866 | 0.003002028 | 0.0 | 0.0 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.003732133 | 0.0027100423 | 0.0025066566 | 0.0024562383 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0031379627 | 0.0018946693 | 0.0 | 0.0 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.006294493 | 0.0052678217 | 0.004883338 | 0.004824135 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0052918303 | 0.002739803 | 0.0 | 0.0 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.0048740543 | 0.0036379336 | 0.0 | 0.0 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.0048740543 | 0.0036379336 | 0.0 | 0.0 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.0061180987 | 0.005159169 | 0.004706944 | 0.004641349 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.0068793795 | 0.0033705453 | 0.005356818 | 0.0042176875 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.003964231 | 0.0024044598 | 0.0 | 0.0 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0028130256 | 8.76229E-4 | 0.0 | 0.0 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.011669879 | 0.0076901987 | 0.0085226325 | 0.008019483 |

### Paleo Open Interval Plots
*[(top)](#jg-tune-base-mod-vel)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#jg-tune-base-mod-vel)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 398.37 | 0.002510237 | 270 | 406.80 | 0.0024582208 | 264.39 |
| **FRA** | 119.00 | 0.008403362 | 107713.20 | 0.0 | 0 | ∞ | 0.0 | 0 |
| **COA** | 181.00 | 0.005524862 | 251.13 | 0.0039820177 | 428 | 255.25 | 0.00391771 | 421.07 |
| **SCZ** | 106.00 | 0.009433962 | 179.61 | 0.005567726 | 600 | 190.71 | 0.005243452 | 565.08 |
| **TYS** | 329.00 | 0.0030395137 | 116.15 | 0.008609306 | 928 | 184.44 | 0.0054219556 | 584.15 |
| **TOTAL** | 31.61 | 0.0316373 | 48.39 | 0.02066419 | 2226 | 58.75 | 0.017022109 | 1833.23 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.98763627 | 0.81331086 | 0.9909667 | 0.8434783 | 0.72878754 |
| **20.00** | 0.95745456 | 0.6614745 | 0.9683032 | 0.71145564 | 0.53113127 |
| **30.00** | 0.9017612 | 0.5379844 | 0.9247536 | 0.6000974 | 0.3870819 |
| **40.00** | 0.8264281 | 0.43754852 | 0.86608624 | 0.50616914 | 0.28210047 |
| **50.00** | 0.74641824 | 0.35586298 | 0.80309093 | 0.4269427 | 0.2055913 |
| **60.00** | 0.64871603 | 0.2894272 | 0.7252039 | 0.3601169 | 0.14983238 |
| **70.00** | 0.56220055 | 0.23539428 | 0.6539094 | 0.3037508 | 0.10919597 |
| **80.00** | 0.46662325 | 0.19144872 | 0.571976 | 0.2562072 | 0.079580665 |
| **90.00** | 0.3723 | 0.15570731 | 0.48708004 | 0.21610522 | 0.057997398 |
| **100.00** | 0.30228695 | 0.12663844 | 0.42748097 | 0.18228006 | 0.04226778 |
| **110.00** | 0.24252483 | 0.102996424 | 0.36616024 | 0.15374929 | 0.030804234 |
| **120.00** | 0.17162251 | 0.08376811 | 0.29445845 | 0.12968418 | 0.022449743 |
| **130.00** | 0.13255896 | 0.06812951 | 0.24212977 | 0.109385796 | 0.016361093 |
| **140.00** | 0.09745315 | 0.055410467 | 0.19557686 | 0.09226455 | 0.011923761 |
| **150.00** | 0.07502468 | 0.045065932 | 0.15730797 | 0.07782315 | 0.008689889 |
| **160.00** | 0.051374044 | 0.03665261 | 0.12091751 | 0.06564213 | 0.0063330824 |
| **170.00** | 0.032732535 | 0.029809967 | 0.08823325 | 0.055367716 | 0.0046154717 |
| **180.00** | 0.01846836 | 0.024244769 | 0.06259981 | 0.04670147 | 0.0033636983 |
| **190.00** | 0.0134936925 | 0.019718533 | 0.043172322 | 0.039391674 | 0.0024514215 |
| **200.00** | 0.00592352 | 0.016037297 | 0.029689875 | 0.033226024 | 0.0017865654 |
| **210.00** | 0.0030932026 | 0.013043307 | 0.01667616 | 0.02802543 | 0.0013020267 |
| **220.00** | 0.0 | 0.010608262 | 0.008017276 | 0.023638843 | 9.489008E-4 |
| **230.00** | 0.0 | 0.008627815 | 0.0039034837 | 0.01993885 | 6.915471E-4 |
| **240.00** | 0.0 | 0.0070170956 | 0.003195209 | 0.016817989 | 5.039909E-4 |
| **250.00** | 0.0 | 0.0057070795 | 0.0025018337 | 0.014185608 | 3.673023E-4 |
| **260.00** | 0.0 | 0.0046416298 | 0.0016853475 | 0.011965252 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.003775088 | 6.9400267E-4 | 0.010092432 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.0030703198 | 4.8040482E-4 | 0.008512747 | 1.4217607E-4 |
| **290.00** | 0.0 | 0.0024971245 | 1.9842705E-4 | 0.0071803173 | 1.0361615E-4 |
| **300.00** | 0.0 | 0.0020309384 | 1.1486455E-4 | 0.006056442 | 7.551416E-5 |
| **310.00** | 0.0 | 0.0016517842 | 9.102167E-5 | 0.0051084775 | 5.503378E-5 |
| **320.00** | 0.0 | 0.001343414 | 6.3541185E-5 | 0.0043088896 | 4.0107934E-5 |
| **330.00** | 0.0 | 0.0010926131 | 0.0 | 0.0036344551 | 2.9230163E-5 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#jg-tune-base-mod-vel)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 329.32 | 0.0030365714 | 327 | 352.47 | 0.0028370959 | 305.54 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 252.31 | 0.0039633666 | 426 | 256.49 | 0.003898853 | 419.07 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 3180.67 | 3.143995E-4 | 34 | 3510.01 | 2.8489926E-4 | 30.71 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 436.62 | 0.0022902994 | 246 | 441.07 | 0.00226723 | 243.51 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 248.92 | 0.0040172758 | 433 | 251.59 | 0.0039746934 | 428.41 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 1164.17 | 8.589827E-4 | 92 | 1183.31 | 8.450846E-4 | 90.5 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 1141.45 | 8.760767E-4 | 94 | 1165.51 | 8.5799553E-4 | 92.07 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 1912.89 | 5.227692E-4 | 56 | 1941.33 | 5.151105E-4 | 55.16 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 204.81 | 0.004882654 | 526 | 207.41 | 0.0048213652 | 519.41 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 398.37 | 0.002510237 | 270 | 406.74 | 0.0024585647 | 264.44 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 1425.90 | 7.0131186E-4 | 75 | 1440.85 | 6.9403334E-4 | 74.22 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 344.44 | 0.0029032468 | 313 | 523.34 | 0.0019108015 | 205.43 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 117.29 | 0.008525525 | 918 | 124.75 | 0.008016246 | 863.19 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 186.84 | 0.005352281 | 577 | 237.88 | 0.004203772 | 453.09 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 462.10 | 0.0021640249 | 230 | 487.58 | 0.0020509493 | 217.98 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 107713.20 | 0.0 | 0 | ∞ | 0.0 | 0 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 179.61 | 0.005567726 | 600 | 190.36 | 0.005253075 | 566.08 |
| **RodgersCreek** | 325.31 | 0.003074 | 270.09 | 0.003702416 | 399 | 313.52 | 0.0031896126 | 343.6 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 340.10 | 0.002940269 | 317 | 1853.10 | 5.3963676E-4 | 57.58 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 323.02 | 0.0030958024 | 334 | 356.47 | 0.0028052893 | 302.64 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 116.15 | 0.008609306 | 928 | 184.56 | 0.0054183947 | 583.75 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 251.13 | 0.0039820177 | 428 | 255.49 | 0.003914089 | 420.65 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 179.40 | 0.005574048 | 601 | 323.76 | 0.0030886696 | 332.16 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 1716.35 | 5.826305E-4 | 62 | 1732.44 | 5.772197E-4 | 61.42 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 463.87 | 0.0021557908 | 232 | 469.37 | 0.0021305087 | 229.27 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 212.57 | 0.0047043795 | 507 | 215.56 | 0.0046389992 | 499.95 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1316.99 | 7.59307E-4 | 82 | 1342.18 | 7.450583E-4 | 80.48 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 5420.17 | 1.8449589E-4 | 20 | 5464.00 | 1.8301596E-4 | 19.82 |
| **TOTAL** | 9.13 | 0.1094837 | 13.77 | 0.07263239 | 7824 | 16.49 | 0.060649708 | 6532.28 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.8596039 | 0.4836838 | 0.8916279 | 0.5452575 | 0.33459413 |
| **20.00** | 0.6238004 | 0.23395002 | 0.69513005 | 0.29730576 | 0.111953236 |
| **30.00** | 0.39605162 | 0.11315784 | 0.48828197 | 0.1621082 | 0.037458897 |
| **40.00** | 0.22996154 | 0.054732613 | 0.3220229 | 0.088390715 | 0.012533528 |
| **50.00** | 0.1227208 | 0.026473278 | 0.1983559 | 0.048195705 | 0.004193645 |
| **60.00** | 0.060376 | 0.012804696 | 0.113626584 | 0.02627907 | 0.001403169 |
| **70.00** | 0.027242143 | 0.006193424 | 0.05844658 | 0.014328861 | 4.6949214E-4 |
| **80.00** | 0.010065734 | 0.002995659 | 0.028078381 | 0.007812919 | 1.5708932E-4 |
| **90.00** | 0.004165026 | 0.0014489518 | 0.014390654 | 0.004260053 | 5.2561165E-5 |
| **100.00** | 0.0022996527 | 7.008345E-4 | 0.007915737 | 0.0023228258 | 1.7586659E-5 |
| **110.00** | 0.0019596163 | 3.389823E-4 | 0.0044836258 | 0.0012665383 | 5.884393E-6 |
| **120.00** | 0.0017012244 | 1.6396024E-4 | 0.0024509516 | 6.905895E-4 | 1.9688835E-6 |
| **130.00** | 0.0014428325 | 7.930492E-5 | 0.0015965147 | 3.765491E-4 | 6.5877686E-7 |
| **140.00** | 0.0 | 3.8358503E-5 | 2.7340046E-5 | 2.0531623E-4 | 2.2042288E-7 |
| **150.00** | 0.0 | 1.8553386E-5 | 0.0 | 1.1195022E-4 | 7.3752204E-8 |

### Moment Release Variability Plots
*[(top)](#jg-tune-base-mod-vel)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#jg-tune-base-mod-vel)*

Example rupture plots:

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![example](resources/elastic_rebound_triggering_m6_example_re_rup.png) | ![example](resources/elastic_rebound_triggering_m6.5_example_re_rup.png) |  |
| ![example](resources/elastic_rebound_triggering_m6_example_new_hypo.png) | ![example](resources/elastic_rebound_triggering_m6.5_example_new_hypo.png) |  |

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_1yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_1yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_1yr.png) |
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_10yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_10yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_10yr.png) |
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_100yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_100yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_100yr.png) |

## Input File
*[(top)](#jg-tune-base-mod-vel)*

```
  A_1 = 0.01
  fA = 0.1
  B_1 = 0.015
  Dc_1 = 1.0000000000000000818e-05
  mu0_1 = 0.6
  ddotStar_1 = 9.9999999999999995475e-07
  ddotAB_1 = 9.9999999999999995475e-07
  alpha_1 = 0.25
  theta0_1 = 200000000
  tau0_1 = 60
  sigma0_1 = 100
  sigmaFracPin = 0.1
  maxThetaPin = 10000000000
  ddotEQ_1 = 1
  ddotEQFname = ddotEQ_mod.txt
  stressOvershootFactor = 0.10000000000000000555
  lameLambda = 30000
  lameMu = 30000
  slowSlip_1 = 0
  nEq = 3e20
  tStart = 55651082300705.9921875
  maxT = 6.0381475e+13
  faultFname = UCERF3.D3.1.1km.tri.2.flt
  outFnameInfix = tuneBase1m
  writeTau = 2
  writeSigma = 2
  writeSlip = 0
  writeSlipSpeed = 0
  writeState = 0
  writeTheta = 2
  writePED = 1
  writeTransitions = 1
  minDtWrite = 3.15e10
  minDtWriteCoseismic = 0
  minDtWriteInterseismic = 0
  minMagWrite = 7.5
  writeStiffness = 0
  stressRateSpecification = 1
  dMu3 = 0.0010000000000000000208
  initTauFname = initTau.txt
  initSigmaFname = initSigma.txt
  initThetaFname = initTheta.txt
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
  pinnedFname = tuneBase1m.pin 
  neighborFname = neighbors.12
  stressRateFname = 
  slowSlipFname = 
  writePatchFname = 
  DEBUG = 1
  ZBrentUpperBracket = 0
  ZBrentTol = 9.9999999999999995475e-07
  lowSigmaAction = 0
  KZeroFrac = 0.0
  KZeroFname = UCERF3.D3.1.1km.tri.2.KZero0.8
  slipInState1 = 1
  resetStressingRates = 1
```
