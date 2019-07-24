# UseIT 600k Mod Params
## Metadata
| **Catalog** | UseIT 600k Mod Params |
|-----|-----|
| **Author** | UseIT FAST Interns, 2019/07/07 |
| **Description** | a=.006 b=.018, all else 2585 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 2,154,999 events in 584,509 years |
| **Frictional Params** | a=0.006, b=0.018, (b-a)=0.012, ddotEQ=1 |

* [Metadata](#metadata)
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

## Plots
### Magnitude-Frequency Plot
*[(top)](#useit-600k-mod-params)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#useit-600k-mod-params)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
#### Mechanism-Dependent Magnitude-Area Plots
*[(top)](#useit-600k-mod-params)*

Here we disaggregate the magnitude-area scaling plots by focal mechanism. Multi-fault ruptures which incorporate multiple faulting styles are included in plot for the dominent fault style so long as no more than 10% of the participating elements are of a different style, otherwise they are listed as 'Unknown'.

| Fault Style | Scatter | 2-D Hist |
|-----|-----|-----|
| **Strike-Slip** | ![MA Scatter](resources/mag_area_STRIKE_SLIP.png) | ![MA Hist](resources/mag_area_STRIKE_SLIP_hist2D.png) |
| **Normal** | ![MA Scatter](resources/mag_area_NORMAL.png) | ![MA Hist](resources/mag_area_NORMAL_hist2D.png) |
| **Reverse** | ![MA Scatter](resources/mag_area_REVERSE.png) | ![MA Hist](resources/mag_area_REVERSE_hist2D.png) |
| **Unknown** | ![MA Scatter](resources/mag_area_UNKNOWN.png) | ![MA Hist](resources/mag_area_UNKNOWN_hist2D.png) |
### Slip-Area Plots
*[(top)](#useit-600k-mod-params)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#useit-600k-mod-params)*

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
*[(top)](#useit-600k-mod-params)*

Here we disaggregate the slip-length scaling plots by focal mechanism. Multi-fault ruptures which incorporate multiple faulting styles are included in plot for the dominent fault style so long as no more than 10% of the participating elements are of a different style, otherwise they are listed as 'Unknown'.

| Fault Style | Scatter | 2-D Hist |
|-----|-----|-----|
| **Strike-Slip** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_STRIKE_SLIP.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_STRIKE_SLIP_hist2D.png) |
| **Normal** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_NORMAL.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_NORMAL_hist2D.png) |
| **Reverse** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_REVERSE.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_REVERSE_hist2D.png) |
| **Unknown** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_UNKNOWN.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_UNKNOWN_hist2D.png) |
### Slip Along Rupture (Dsr) Plots
*[(top)](#useit-600k-mod-params)*

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
*[(top)](#useit-600k-mod-params)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#useit-600k-mod-params)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#useit-600k-mod-params)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#useit-600k-mod-params)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#useit-600k-mod-params)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#useit-600k-mod-params)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#useit-600k-mod-params)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#useit-600k-mod-params)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#useit-600k-mod-params)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#useit-600k-mod-params)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0028390363 | 0.0018229344 | 0.0018811851 | 0.0017738469 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 1.1735834E-4 | 1.131685E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0010631285 | 9.1674307E-4 | 7.472965E-4 | 7.3590514E-4 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 3.5207503E-4 | 3.4763422E-4 | 3.5034918E-4 | 3.4659758E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 8.26686E-4 | 7.114946E-4 | 6.592777E-4 | 6.507723E-4 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 5.2293495E-4 | 4.3147503E-4 | 2.882183E-4 | 2.8462592E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.0040264265 | 0.0037057025 | 0.003767548 | 0.003710775 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 7.2140864E-4 | 7.031692E-4 | 7.024242E-4 | 6.950543E-4 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 6.109537E-4 | 5.7019026E-4 | 5.401935E-4 | 5.34523E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 6.7481044E-4 | 4.1971265E-4 | 1.4669793E-4 | 1.4333239E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.001397945 | 0.0012665489 | 0.001202923 | 0.0011887779 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.002176307 | 0.001757813 | 0.0010786612 | 0.0010615343 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0024351855 | 0.0023641242 | 0.0023834098 | 0.0023585332 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0034482642 | 0.0029065302 | 0.0026043197 | 0.0025401711 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0024248303 | 0.0023744914 | 0.0023868615 | 0.0023626664 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.0026388369 | 0.0024650772 | 0.002442089 | 0.002415371 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0027372106 | 0.0025281766 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 1.4842379E-4 | 1.347879E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.001410026 | 0.0012815649 | 0.0011804869 | 0.0011661449 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0019847366 | 0.0015694352 | 0.0012546987 | 0.0012374982 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0013858639 | 0.0013651508 | 0.0013703312 | 0.0013564852 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 9.11253E-4 | 7.978907E-4 | 5.9024343E-4 | 5.736488E-4 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.005307013 | 0.0044776904 | 0.0038383082 | 0.003791431 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.003727853 | 0.0025441234 | 0.0019778332 | 0.0018850281 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.0037571928 | 0.0032412338 | 0.002428282 | 0.0023956313 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.0037571928 | 0.0032412338 | 0.0025836094 | 0.002549473 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.0030047186 | 0.0029525242 | 0.0029857343 | 0.0029553336 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.0035155725 | 0.0021920737 | 0.002868376 | 0.0027985966 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0024144752 | 0.0017455657 | 0.001056225 | 0.001018372 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0024023943 | 0.001841543 | 0.0016102254 | 0.0015737984 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.0029926377 | 0.0029224788 | 0.0029771049 | 0.0029472678 |

### Paleo Open Interval Plots
*[(top)](#useit-600k-mod-params)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#useit-600k-mod-params)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 730.23 | 0.0013694274 | 794 | 737.68 | 0.0013556039 | 785.98 |
| **FRA** | 119.00 | 0.008403362 | 262.02 | 0.0038165515 | 2212 | 265.85 | 0.0037615094 | 2180.09 |
| **COA** | 181.00 | 0.005524862 | 392.97 | 0.0025446918 | 1475 | 399.14 | 0.002505407 | 1452.22 |
| **SCZ** | 106.00 | 0.009433962 | 384.02 | 0.0026040075 | 1509 | 393.78 | 0.0025395022 | 1471.61 |
| **TYS** | 329.00 | 0.0030395137 | 938.93 | 0.0010650475 | 617 | 954.56 | 0.0010476026 | 606.9 |
| **TOTAL** | 31.61 | 0.0316373 | 87.71 | 0.011401844 | 6607 | 89.16 | 0.011215922 | 6499.26 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9953638 | 0.8922415 | 0.9955062 | 0.89390194 | 0.72878754 |
| **20.00** | 0.9825006 | 0.7960949 | 0.98306453 | 0.79906064 | 0.53113127 |
| **30.00** | 0.9614437 | 0.7103089 | 0.96260464 | 0.71428186 | 0.3870819 |
| **40.00** | 0.93484324 | 0.63376707 | 0.9367815 | 0.6384979 | 0.28210047 |
| **50.00** | 0.902527 | 0.5654733 | 0.90539306 | 0.57075447 | 0.2055913 |
| **60.00** | 0.86375386 | 0.5045387 | 0.8676654 | 0.51019853 | 0.14983238 |
| **70.00** | 0.8197922 | 0.4501704 | 0.8247277 | 0.45606744 | 0.10919597 |
| **80.00** | 0.7746559 | 0.4016607 | 0.7807742 | 0.40767956 | 0.079580665 |
| **90.00** | 0.7299886 | 0.35837835 | 0.7369818 | 0.36442554 | 0.057997398 |
| **100.00** | 0.6764014 | 0.31976005 | 0.68448925 | 0.3257607 | 0.04226778 |
| **110.00** | 0.6274546 | 0.28530318 | 0.6363628 | 0.2911981 | 0.030804234 |
| **120.00** | 0.5740502 | 0.25455934 | 0.5838791 | 0.26030254 | 0.022449743 |
| **130.00** | 0.5230777 | 0.22712842 | 0.5334159 | 0.23268494 | 0.016361093 |
| **140.00** | 0.47434297 | 0.2026534 | 0.4850261 | 0.20799752 | 0.011923761 |
| **150.00** | 0.42503315 | 0.18081577 | 0.436107 | 0.18592937 | 0.008689889 |
| **160.00** | 0.37969345 | 0.16133134 | 0.39072523 | 0.16620262 | 0.0063330824 |
| **170.00** | 0.32997945 | 0.14394651 | 0.3411977 | 0.14856885 | 0.0046154717 |
| **180.00** | 0.29471532 | 0.12843505 | 0.3056027 | 0.13280597 | 0.0033636983 |
| **190.00** | 0.25816935 | 0.114595085 | 0.26884976 | 0.11871552 | 0.0024514215 |
| **200.00** | 0.220329 | 0.102246486 | 0.23056847 | 0.10612003 | 0.0017865654 |
| **210.00** | 0.19035357 | 0.09122856 | 0.20022102 | 0.0948609 | 0.0013020267 |
| **220.00** | 0.16500896 | 0.081397906 | 0.1741173 | 0.08479634 | 9.489008E-4 |
| **230.00** | 0.13833407 | 0.07262659 | 0.14673945 | 0.07579961 | 6.915471E-4 |
| **240.00** | 0.12204884 | 0.064800456 | 0.12985003 | 0.06775741 | 5.039909E-4 |
| **250.00** | 0.10233417 | 0.05781766 | 0.10967563 | 0.06056848 | 3.673023E-4 |
| **260.00** | 0.08235565 | 0.051587313 | 0.0887972 | 0.05414228 | 2.6768536E-4 |
| **270.00** | 0.06762423 | 0.046028342 | 0.07322627 | 0.04839789 | 1.9508575E-4 |
| **280.00** | 0.05273406 | 0.041068397 | 0.057027105 | 0.043262966 | 1.4217607E-4 |
| **290.00** | 0.04205768 | 0.036642928 | 0.046110105 | 0.03867285 | 1.0361615E-4 |
| **300.00** | 0.031023435 | 0.032694343 | 0.03441717 | 0.034569733 | 7.551416E-5 |
| **310.00** | 0.019049363 | 0.029171249 | 0.021736875 | 0.030901952 | 5.503378E-5 |
| **320.00** | 0.0128009375 | 0.026027799 | 0.015068514 | 0.027623313 | 4.0107934E-5 |
| **330.00** | 0.0068126926 | 0.023223083 | 0.008272005 | 0.024692532 | 2.9230163E-5 |
| **340.00** | 0.002979956 | 0.020720597 | 0.0038280052 | 0.022072703 | 2.1302578E-5 |
| **350.00** | 0.0012427696 | 0.018487778 | 0.0016740522 | 0.01973083 | 1.5525055E-5 |
| **360.00** | 0.0010298971 | 0.016495563 | 0.0014597252 | 0.017637428 | 1.1314466E-5 |
| **370.00** | 8.1702456E-4 | 0.014718025 | 0.0011922749 | 0.01576613 | 8.245842E-6 |
| **380.00** | 0.0 | 0.013132033 | 4.021627E-4 | 0.014093374 | 6.009467E-6 |
| **390.00** | 0.0 | 0.011716945 | 3.505129E-4 | 0.012598094 | 4.379625E-6 |
| **400.00** | 0.0 | 0.010454345 | 2.9999556E-4 | 0.01126146 | 3.1918162E-6 |
| **410.00** | 0.0 | 0.0093278 | 2.3676766E-4 | 0.010066641 | 2.3261557E-6 |
| **420.00** | 0.0 | 0.008322651 | 1.7328434E-4 | 0.00899859 | 1.6952735E-6 |
| **430.00** | 0.0 | 0.007425814 | 1.18909426E-4 | 0.008043856 | 1.2354942E-6 |
| **440.00** | 0.0 | 0.0066256193 | 9.306035E-5 | 0.007190419 | 9.004128E-7 |
| **450.00** | 0.0 | 0.0059116525 | 7.985616E-5 | 0.006427529 | 6.5620964E-7 |
| **460.00** | 0.0 | 0.005274622 | 7.574243E-5 | 0.0057455804 | 4.782374E-7 |
| **470.00** | 0.0 | 0.0047062365 | 6.127282E-5 | 0.0051359856 | 3.4853346E-7 |
| **480.00** | 0.0 | 0.0041990997 | 4.6725934E-5 | 0.0045910673 | 2.5400686E-7 |
| **490.00** | 0.0 | 0.0037466108 | 3.8138798E-5 | 0.0041039637 | 1.8511703E-7 |
| **500.00** | 0.0 | 0.0033428818 | 0.0 | 0.003668541 | 1.3491099E-7 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#useit-600k-mod-params)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 492.25 | 0.0020314865 | 1177 | 502.68 | 0.0019893374 | 1152.53 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 387.20 | 0.0025826723 | 1497 | 392.33 | 0.0025488697 | 1477.42 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 4386.57 | 2.2796867E-4 | 132 | 4846.14 | 2.0634974E-4 | 119.53 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 418.41 | 0.0023900068 | 1384 | 422.84 | 0.0023649489 | 1369.5 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 409.24 | 0.0024435788 | 1415 | 413.78 | 0.0024167367 | 1399.46 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 531.56 | 0.0018812685 | 1090 | 563.46 | 0.0017747335 | 1028.2 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 1532.56 | 6.525032E-4 | 378 | 1552.49 | 6.441257E-4 | 373.12 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 3487.90 | 2.8670515E-4 | 167 | 3529.91 | 2.8329372E-4 | 165.01 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 261.47 | 0.0038245267 | 2216 | 264.77 | 0.003776931 | 2188.43 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 730.23 | 0.0013694274 | 794 | 738.43 | 0.0013542267 | 785.18 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 12391.82 | 8.069842E-5 | 47 | 12620.82 | 7.923417E-5 | 46.13 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 846.43 | 0.0011814296 | 684 | 856.36 | 0.0011677316 | 676.05 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 2845.44 | 3.5143958E-4 | 203 | 2876.74 | 3.476154E-4 | 200.8 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 336.03 | 0.002975909 | 1725 | 339.46 | 0.0029458688 | 1707.56 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 336.62 | 0.0029707307 | 1722 | 343.57 | 0.0029106215 | 1687.14 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 945.95 | 0.0010571346 | 612 | 981.31 | 0.001019043 | 589.87 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 262.02 | 0.0038165515 | 2212 | 265.71 | 0.003763529 | 2181.26 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 384.02 | 0.0026040075 | 1509 | 393.60 | 0.0025406808 | 1472.31 |
| **RodgersCreek** | 325.31 | 0.003074 | 797.30 | 0.0012542326 | 727 | 808.02 | 0.0012375979 | 717.35 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 6793.50 | 1.4719958E-4 | 85 | 6917.44 | 1.4456216E-4 | 83.48 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 830.96 | 0.0012034285 | 697 | 840.56 | 0.0011896879 | 689.02 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 938.93 | 0.0010650475 | 617 | 954.15 | 0.0010480518 | 607.17 |
| **Compton** | 2658.16 | 3.762E-4 | 15000.62 | 6.666391E-5 | 39 | 15244.93 | 6.559558E-5 | 38.35 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 392.97 | 0.0025446918 | 1475 | 398.63 | 0.0025085837 | 1454.06 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 1309.87 | 7.634348E-4 | 442 | 1329.32 | 7.522653E-4 | 435.52 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 1421.19 | 7.0363673E-4 | 408 | 1436.90 | 6.95942E-4 | 403.52 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 419.01 | 0.0023865507 | 1382 | 423.25 | 0.0023626632 | 1368.14 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 335.06 | 0.0029845398 | 1730 | 338.53 | 0.002953967 | 1712.27 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1849.04 | 5.4082193E-4 | 313 | 1871.17 | 5.344257E-4 | 309.3 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 2852.40 | 3.5058183E-4 | 203 | 2884.08 | 3.4673145E-4 | 200.74 |
| **TOTAL** | 9.08 | 0.1101451 | 35.56 | 0.028119717 | 16293 | 36.08 | 0.02771441 | 16058.14 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9701144 | 0.7548795 | 0.9708668 | 0.75794524 | 0.33238843 |
| **20.00** | 0.9004737 | 0.56984305 | 0.9027781 | 0.574481 | 0.110482074 |
| **30.00** | 0.80122554 | 0.43016282 | 0.8055236 | 0.4354252 | 0.036722966 |
| **40.00** | 0.69592744 | 0.3247211 | 0.7019639 | 0.33002844 | 0.012206289 |
| **50.00** | 0.59264076 | 0.2451253 | 0.59949183 | 0.2501435 | 0.004057229 |
| **60.00** | 0.4906691 | 0.18504006 | 0.4983261 | 0.18959509 | 0.001348576 |
| **70.00** | 0.40139765 | 0.13968295 | 0.40922344 | 0.1437027 | 4.4825108E-4 |
| **80.00** | 0.32131195 | 0.10544379 | 0.32931226 | 0.10891878 | 1.4899348E-4 |
| **90.00** | 0.2520685 | 0.079597354 | 0.2598009 | 0.082554474 | 4.952371E-5 |
| **100.00** | 0.19200622 | 0.06008641 | 0.19908048 | 0.06257177 | 1.6461108E-5 |
| **110.00** | 0.15025969 | 0.045358 | 0.156179 | 0.047425978 | 5.4714824E-6 |
| **120.00** | 0.111039504 | 0.03423982 | 0.11613029 | 0.035946295 | 1.8186574E-6 |
| **130.00** | 0.081254125 | 0.02584694 | 0.0855057 | 0.027245326 | 6.045007E-7 |
| **140.00** | 0.05582573 | 0.019511323 | 0.059138313 | 0.020650465 | 2.0092905E-7 |
| **150.00** | 0.0405577 | 0.014728699 | 0.043049503 | 0.015651923 | 6.678649E-8 |
| **160.00** | 0.02821462 | 0.011118392 | 0.030055821 | 0.011863301 | 2.2199057E-8 |
| **170.00** | 0.020420628 | 0.008393046 | 0.022003941 | 0.008991732 | 7.37871E-9 |
| **180.00** | 0.015166929 | 0.0063357386 | 0.01624235 | 0.006815241 | 2.452598E-9 |
| **190.00** | 0.010844551 | 0.004782719 | 0.011729064 | 0.0051655797 | 8.152152E-10 |
| **200.00** | 0.0075132884 | 0.0036103765 | 0.008218354 | 0.0039152266 | 2.709681E-10 |
| **210.00** | 0.004837517 | 0.002725399 | 0.0052383295 | 0.0029675276 | 9.006666E-11 |
| **220.00** | 0.0025715171 | 0.002057348 | 0.0028745704 | 0.0022492234 | 2.993712E-11 |
| **230.00** | 0.001273865 | 0.0015530498 | 0.0011592131 | 0.0017047883 | 9.950752E-12 |
| **240.00** | 9.056393E-4 | 0.0011723654 | 0.0010391508 | 0.0012921363 | 3.3075149E-12 |
| **250.00** | 7.8023365E-4 | 8.8499463E-4 | 5.74541E-4 | 9.793686E-4 | 1.0993797E-12 |
| **260.00** | 6.644348E-4 | 6.680643E-4 | 5.439339E-4 | 7.4230775E-4 | 3.654211E-13 |
| **270.00** | 5.4863596E-4 | 5.0430803E-4 | 4.9507455E-4 | 5.626287E-4 | 1.2146175E-13 |
| **280.00** | 0.0 | 3.8069178E-4 | 0.0 | 4.2644172E-4 | 4.037248E-14 |

### Moment Release Variability Plots
*[(top)](#useit-600k-mod-params)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#useit-600k-mod-params)*

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
*[(top)](#useit-600k-mod-params)*

```
  A_1 = 0.006
  fA = .005
  B_1 = 0.018
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
  nEq = 1e20
  KZeroFrac = 0
  KOneFrac =  0
  muPin = 1.0
  tStart = 0
  maxT = 63113904000000
  maxTransitions = 1.0000000000000000159e+8
  faultFname = zfault_Deepen.in
  outFnameInfix = planA 
  writeTau = 0
  writeSigma = 0
  writeSlip = 0
  writeSlipSpeed = 0
  writeState = 0
  writeTheta = 0
  writePED = 1
  writeTransitions = 0
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
