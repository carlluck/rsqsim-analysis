# Bruce 4665
## Metadata
| **Catalog** | Bruce 4665 |
|-----|-----|
| **Author** | Bruce Shaw, 2019/12/18 |
| **Description** | Long run. variable slip speed. fracArea=0 ; variableSpeed s2ddf=.8 ddfmin=.1; b=.007 a=.001 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | Fully Variable |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 18,549,239 events in 631,339 years |
| **Frictional Params** | a=0.001, b=0.007, (b-a)=0.006, ddotEQ=1 |

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
*[(top)](#bruce-4665)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-4665)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
#### Mechanism-Dependent Magnitude-Area Plots
*[(top)](#bruce-4665)*

Here we disaggregate the magnitude-area scaling plots by focal mechanism. Multi-fault ruptures which incorporate multiple faulting styles are included in plot for the dominent fault style so long as no more than 10% of the participating elements are of a different style, otherwise they are listed as 'Unknown'.

| Fault Style | Scatter | 2-D Hist |
|-----|-----|-----|
| **Strike-Slip** | ![MA Scatter](resources/mag_area_STRIKE_SLIP.png) | ![MA Hist](resources/mag_area_STRIKE_SLIP_hist2D.png) |
| **Normal** | ![MA Scatter](resources/mag_area_NORMAL.png) | ![MA Hist](resources/mag_area_NORMAL_hist2D.png) |
| **Reverse** | ![MA Scatter](resources/mag_area_REVERSE.png) | ![MA Hist](resources/mag_area_REVERSE_hist2D.png) |
| **Unknown** | ![MA Scatter](resources/mag_area_UNKNOWN.png) | ![MA Hist](resources/mag_area_UNKNOWN_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-4665)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-4665)*

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
*[(top)](#bruce-4665)*

Here we disaggregate the slip-length scaling plots by focal mechanism. Multi-fault ruptures which incorporate multiple faulting styles are included in plot for the dominent fault style so long as no more than 10% of the participating elements are of a different style, otherwise they are listed as 'Unknown'.

| Fault Style | Scatter | 2-D Hist |
|-----|-----|-----|
| **Strike-Slip** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_STRIKE_SLIP.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_STRIKE_SLIP_hist2D.png) |
| **Normal** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_NORMAL.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_NORMAL_hist2D.png) |
| **Reverse** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_REVERSE.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_REVERSE_hist2D.png) |
| **Unknown** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_UNKNOWN.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_UNKNOWN_hist2D.png) |
### Slip Along Rupture (Dsr) Plots
*[(top)](#bruce-4665)*

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
*[(top)](#bruce-4665)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-4665)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-4665)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-4665)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-4665)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-4665)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-4665)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-4665)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-4665)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-4665)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 3.640493E-4 | 2.2754814E-4 | 8.8297925E-4 | 6.91621E-4 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 2.139588E-4 | 1.9662805E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0016462054 | 0.0013766487 | 0.0012981232 | 0.0012556497 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 9.0054306E-4 | 8.0831704E-4 | 6.833908E-4 | 6.6580216E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.001315687 | 0.0011438977 | 0.0010666007 | 0.001041932 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 0.0010474401 | 7.5193984E-4 | 5.07753E-4 | 4.907986E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.00703669 | 0.0063561527 | 0.0064570853 | 0.006213865 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0013731684 | 0.0013080445 | 0.0012725759 | 0.0012511676 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0011512261 | 0.0010510354 | 0.0010091192 | 9.88271E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 8.925595E-4 | 4.6085083E-4 | 2.3950613E-4 | 2.207568E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0031455138 | 0.0025302353 | 0.0023327896 | 0.0022613206 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0024828801 | 0.0011764617 | 0.0016158681 | 0.001508024 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0043111104 | 0.004168138 | 0.0041642133 | 0.004106783 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.00598446 | 0.004549952 | 0.0042759827 | 0.0041184556 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.004371785 | 0.0042664907 | 0.0042504356 | 0.004188201 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.004612888 | 0.004269382 | 0.0043095136 | 0.0042437306 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.004713481 | 0.004419182 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 3.1934152E-4 | 2.5035485E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0028517197 | 0.00227885 | 0.002107654 | 0.0020542305 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0038193243 | 0.0017484151 | 0.0022689214 | 0.002030146 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0020437855 | 0.0020174698 | 0.0020437855 | 0.0020232666 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0023136293 | 0.0012458496 | 9.516377E-4 | 8.603889E-4 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.0066023855 | 0.006148532 | 0.005934962 | 0.0058321576 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0042296783 | 0.0016993991 | 0.0018745346 | 0.0014840028 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.0074119163 | 0.005841426 | 0.005307456 | 0.0051170727 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.0074119163 | 0.005841426 | 0.005454353 | 0.0052547925 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.0050424025 | 0.0049339267 | 0.0049641635 | 0.0049049533 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.006164888 | 0.0034296683 | 0.004590534 | 0.0044620275 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 3.1455138E-4 | 1.6837302E-4 | 1.8521807E-4 | 1.51791E-4 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0035494808 | 0.0025303438 | 0.0024062383 | 0.002113992 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.004973744 | 0.0048323427 | 0.0049146656 | 0.0048598405 |

### Paleo Open Interval Plots
*[(top)](#bruce-4665)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-4665)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 489.30 | 0.0020437564 | 1280 | 494.03 | 0.002024166 | 1267.72 |
| **FRA** | 119.00 | 0.008403362 | 152.53 | 0.0065560695 | 4106 | 157.45 | 0.006351308 | 3977.73 |
| **COA** | 181.00 | 0.005524862 | 184.27 | 0.0054266825 | 3397 | 191.74 | 0.005215497 | 3264.81 |
| **SCZ** | 106.00 | 0.009433962 | 233.87 | 0.00427584 | 2678 | 242.85 | 0.0041177585 | 2578.98 |
| **TYS** | 329.00 | 0.0030395137 | 606.81 | 0.0016479669 | 1032 | 655.77 | 0.0015249246 | 954.96 |
| **TOTAL** | 31.61 | 0.0316373 | 50.12 | 0.019950895 | 12493 | 51.98 | 0.019237494 | 12046.29 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.98627615 | 0.8191329 | 0.9872641 | 0.8249975 | 0.72878754 |
| **20.00** | 0.9471606 | 0.6709787 | 0.9507599 | 0.68062085 | 0.53113127 |
| **30.00** | 0.89015925 | 0.54962075 | 0.8972266 | 0.5615105 | 0.3870819 |
| **40.00** | 0.81660104 | 0.45021242 | 0.827412 | 0.46324474 | 0.28210047 |
| **50.00** | 0.737627 | 0.3687838 | 0.7519055 | 0.38217574 | 0.2055913 |
| **60.00** | 0.65677476 | 0.30208296 | 0.6741859 | 0.31529403 | 0.14983238 |
| **70.00** | 0.57116526 | 0.24744608 | 0.5918328 | 0.2601168 | 0.10919597 |
| **80.00** | 0.4843829 | 0.20269123 | 0.5071091 | 0.21459569 | 0.079580665 |
| **90.00** | 0.4046322 | 0.16603105 | 0.42831004 | 0.1770409 | 0.057997398 |
| **100.00** | 0.32680312 | 0.1360015 | 0.3507737 | 0.1460583 | 0.04226778 |
| **110.00** | 0.25471085 | 0.111403294 | 0.27774334 | 0.12049773 | 0.030804234 |
| **120.00** | 0.19237526 | 0.09125411 | 0.21391872 | 0.099410325 | 0.022449743 |
| **130.00** | 0.13708681 | 0.07474924 | 0.15682648 | 0.082013264 | 0.016361093 |
| **140.00** | 0.09651485 | 0.06122956 | 0.11349676 | 0.06766074 | 0.011923761 |
| **150.00** | 0.06314215 | 0.050155148 | 0.076870576 | 0.05581994 | 0.008689889 |
| **160.00** | 0.039899837 | 0.04108373 | 0.050600104 | 0.04605131 | 0.0063330824 |
| **170.00** | 0.022253545 | 0.033653036 | 0.029969934 | 0.037992213 | 0.0046154717 |
| **180.00** | 0.011848066 | 0.027566308 | 0.016444197 | 0.031343482 | 0.0033636983 |
| **190.00** | 0.0060304548 | 0.02258047 | 0.008527848 | 0.025858294 | 0.0024514215 |
| **200.00** | 0.0027340828 | 0.018496405 | 0.004448801 | 0.021333028 | 0.0017865654 |
| **210.00** | 6.364138E-4 | 0.015151015 | 0.0011982294 | 0.017599694 | 0.0013020267 |
| **220.00** | 0.0 | 0.012410695 | 5.721845E-4 | 0.014519703 | 9.489008E-4 |
| **230.00** | 0.0 | 0.010166008 | 4.0171595E-4 | 0.011978718 | 6.915471E-4 |
| **240.00** | 0.0 | 0.008327312 | 2.4281381E-4 | 0.009882413 | 5.039909E-4 |
| **250.00** | 0.0 | 0.006821175 | 1.6015643E-4 | 0.008152965 | 3.673023E-4 |
| **260.00** | 0.0 | 0.005587449 | 8.7200744E-5 | 0.006726176 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.0045768633 | 4.4654873E-5 | 0.0055490783 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.003749059 | 8.390782E-6 | 0.0045779757 | 1.4217607E-4 |
| **290.00** | 0.0 | 0.0030709777 | 6.3688867E-6 | 0.0037768183 | 1.0361615E-4 |
| **300.00** | 0.0 | 0.0025155388 | 0.0 | 0.0031158656 | 7.551416E-5 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-4665)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 406.60 | 0.0024594464 | 1241 | 459.48 | 0.0021763719 | 1097.46 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 183.25 | 0.005457044 | 3416 | 190.36 | 0.005253337 | 3288.51 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 2440.05 | 4.0982722E-4 | 60 | 3244.99 | 3.081676E-4 | 44.99 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 235.56 | 0.0042452766 | 2659 | 238.92 | 0.0041854596 | 2621.51 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 232.06 | 0.0043091634 | 2699 | 235.70 | 0.004242657 | 2657.35 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 1133.83 | 8.8197005E-4 | 553 | 1448.05 | 6.9058343E-4 | 433.03 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 939.78 | 0.0010640778 | 666 | 959.85 | 0.0010418345 | 652.05 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 1967.43 | 5.082775E-4 | 318 | 2032.52 | 4.919992E-4 | 307.81 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 169.02 | 0.0059165945 | 3705 | 171.90 | 0.0058174036 | 3642.85 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 489.30 | 0.0020437564 | 1280 | 494.26 | 0.0020232077 | 1267.11 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 7118.23 | 1.4048428E-4 | 88 | 7502.18 | 1.3329458E-4 | 83.52 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 474.25 | 0.002108603 | 1320 | 486.27 | 0.0020564622 | 1287.33 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 1730.13 | 5.779922E-4 | 362 | 1781.91 | 5.6119566E-4 | 351.5 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 203.55 | 0.0049127433 | 3077 | 205.93 | 0.0048560635 | 3041.49 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 215.61 | 0.0046380386 | 2905 | 221.43 | 0.0045161447 | 2828.61 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 2649.88 | 3.77375E-4 | 116 | 3002.76 | 3.3302713E-4 | 95.88 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 152.53 | 0.0065560695 | 4106 | 157.41 | 0.0063527175 | 3978.63 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 233.87 | 0.00427584 | 2678 | 242.85 | 0.004117802 | 2578.99 |
| **RodgersCreek** | 325.31 | 0.003074 | 439.79 | 0.0022738073 | 1421 | 491.47 | 0.0020347245 | 1271.63 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 4166.82 | 2.3999116E-4 | 151 | 4469.53 | 2.2373704E-4 | 140.81 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 428.73 | 0.0023324536 | 1461 | 442.22 | 0.0022613197 | 1416.39 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 606.81 | 0.0016479669 | 1032 | 655.65 | 0.0015252151 | 955.14 |
| **Compton** | 2658.16 | 3.762E-4 | 7131.99 | 1.402134E-4 | 87 | 7524.51 | 1.3289905E-4 | 82.48 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 184.27 | 0.0054266825 | 3397 | 191.52 | 0.00522128 | 3268.43 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 736.65 | 0.0013575036 | 850 | 769.88 | 0.0012988969 | 813.29 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 785.07 | 0.0012737736 | 797 | 798.48 | 0.0012523748 | 783.61 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 240.07 | 0.004165418 | 2609 | 243.45 | 0.004107547 | 2572.73 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 201.13 | 0.0049718367 | 3114 | 203.53 | 0.004913164 | 3077.22 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 988.42 | 0.0010117132 | 633 | 1008.55 | 9.915229E-4 | 620.38 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1461.10 | 6.84415E-4 | 428 | 1499.15 | 6.67043E-4 | 416.93 |
| **TOTAL** | 9.08 | 0.1101451 | 22.62 | 0.04421199 | 27690 | 23.37 | 0.042785242 | 26796.45 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9340699 | 0.6426726 | 0.93788654 | 0.6519076 | 0.33238843 |
| **20.00** | 0.78761643 | 0.41302803 | 0.7981659 | 0.42498356 | 0.110482074 |
| **30.00** | 0.6144115 | 0.26544178 | 0.6303554 | 0.27705002 | 0.036722966 |
| **40.00** | 0.45095387 | 0.17059216 | 0.46914464 | 0.18061101 | 0.012206289 |
| **50.00** | 0.3195034 | 0.1096349 | 0.33722353 | 0.1177417 | 0.004057229 |
| **60.00** | 0.21482997 | 0.07045934 | 0.23049317 | 0.07675671 | 0.001348576 |
| **70.00** | 0.14106126 | 0.04528229 | 0.15374373 | 0.050038286 | 4.4825108E-4 |
| **80.00** | 0.087848194 | 0.029101685 | 0.09745235 | 0.03262034 | 1.4899348E-4 |
| **90.00** | 0.05418338 | 0.018702853 | 0.060923252 | 0.021265449 | 4.952371E-5 |
| **100.00** | 0.030969592 | 0.012019811 | 0.035732128 | 0.013863108 | 1.6461108E-5 |
| **110.00** | 0.015373494 | 0.007724803 | 0.018502709 | 0.009037466 | 5.4714824E-6 |
| **120.00** | 0.006948365 | 0.0049645193 | 0.008746099 | 0.0058915927 | 1.8186574E-6 |
| **130.00** | 0.003863319 | 0.0031905603 | 0.004624589 | 0.0038407743 | 6.045007E-7 |
| **140.00** | 0.0019195317 | 0.0020504855 | 0.0022013825 | 0.00250383 | 2.0092905E-7 |
| **150.00** | 0.0014069767 | 0.0013177908 | 0.0014929603 | 0.0016322659 | 6.678649E-8 |
| **160.00** | 5.976051E-4 | 8.46908E-4 | 6.094354E-4 | 0.0010640866 | 2.2199057E-8 |
| **170.00** | 0.0 | 5.442845E-4 | 2.5881018E-5 | 6.9368613E-4 | 7.37871E-9 |
| **180.00** | 0.0 | 3.4979676E-4 | 1.1217167E-5 | 4.5221928E-4 | 2.452598E-9 |
| **190.00** | 0.0 | 2.2480478E-4 | 8.059058E-6 | 2.9480518E-4 | 8.152152E-10 |
| **200.00** | 0.0 | 1.4447587E-4 | 5.5216706E-6 | 1.9218576E-4 | 2.709681E-10 |
| **210.00** | 0.0 | 9.285068E-5 | 3.6336667E-6 | 1.2528736E-4 | 9.006666E-11 |
| **220.00** | 0.0 | 5.9672584E-5 | 0.0 | 8.167578E-5 | 2.993712E-11 |

### Moment Release Variability Plots
*[(top)](#bruce-4665)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-4665)*

Example rupture plots:

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![example](resources/elastic_rebound_triggering_m6_example_re_rup.png) |  |  |
| ![example](resources/elastic_rebound_triggering_m6_example_new_hypo.png) | ![example](resources/elastic_rebound_triggering_m6.5_example_new_hypo.png) |  |

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_1yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_1yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_1yr.png) |
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_10yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_10yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_10yr.png) |
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_100yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_100yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_100yr.png) |

## Input File
*[(top)](#bruce-4665)*

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
  nEq = 100000000
  KZeroFrac = 0
  KOneFrac =  0
  muPin = 1.0
  tStart = 0
  maxT = 1.0000000000000000159e+100
  maxTransitions = 1.0000000000000000159e+8
  maxWallTime = 170000
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
  state2ddotFactor = .8
  state2ddotMinFactor = .1
```
