# Bruce 4317
## Metadata
| **Catalog** | Bruce 4317 |
|-----|-----|
| **Author** | Bruce Shaw, 2019/07/26 |
| **Description** | variable slip speed.  fracArea=0.8 ; variableSpeed s2ddf=.8 ddfmin=.1; b=.008 a=.001 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | Fully Variable |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 643,999 events in 40,473 years |
| **Frictional Params** | a=0.001, b=0.008, (b-a)=0.007, ddotEQ=1 |

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
*[(top)](#bruce-4317)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-4317)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
#### Mechanism-Dependent Magnitude-Area Plots
*[(top)](#bruce-4317)*

Here we disaggregate the magnitude-area scaling plots by focal mechanism. Multi-fault ruptures which incorporate multiple faulting styles are included in plot for the dominent fault style so long as no more than 10% of the participating elements are of a different style, otherwise they are listed as 'Unknown'.

| Fault Style | Scatter | 2-D Hist |
|-----|-----|-----|
| **Strike-Slip** | ![MA Scatter](resources/mag_area_STRIKE_SLIP.png) | ![MA Hist](resources/mag_area_STRIKE_SLIP_hist2D.png) |
| **Normal** | ![MA Scatter](resources/mag_area_NORMAL.png) | ![MA Hist](resources/mag_area_NORMAL_hist2D.png) |
| **Reverse** | ![MA Scatter](resources/mag_area_REVERSE.png) | ![MA Hist](resources/mag_area_REVERSE_hist2D.png) |
| **Unknown** | ![MA Scatter](resources/mag_area_UNKNOWN.png) | ![MA Hist](resources/mag_area_UNKNOWN_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-4317)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-4317)*

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
*[(top)](#bruce-4317)*

Here we disaggregate the slip-length scaling plots by focal mechanism. Multi-fault ruptures which incorporate multiple faulting styles are included in plot for the dominent fault style so long as no more than 10% of the participating elements are of a different style, otherwise they are listed as 'Unknown'.

| Fault Style | Scatter | 2-D Hist |
|-----|-----|-----|
| **Strike-Slip** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_STRIKE_SLIP.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_STRIKE_SLIP_hist2D.png) |
| **Normal** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_NORMAL.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_NORMAL_hist2D.png) |
| **Reverse** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_REVERSE.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_REVERSE_hist2D.png) |
| **Unknown** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_UNKNOWN.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_UNKNOWN_hist2D.png) |
### Slip Along Rupture (Dsr) Plots
*[(top)](#bruce-4317)*

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
*[(top)](#bruce-4317)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-4317)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-4317)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-4317)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-4317)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-4317)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-4317)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-4317)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-4317)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-4317)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0037529455 | 0.0017736497 | 0.0029910693 | 0.002304836 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 1.9752345E-4 | 1.890143E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0016084051 | 0.0013669723 | 0.0013262288 | 0.0012573974 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 7.054409E-4 | 6.6920166E-4 | 5.9257034E-4 | 5.8306917E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0014390994 | 0.0012663217 | 0.001156923 | 0.0011227406 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 6.7722326E-4 | 5.955663E-4 | 5.0791743E-4 | 4.95416E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.0065182736 | 0.006127976 | 0.0065464913 | 0.006360835 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0012133582 | 0.0011819563 | 0.0011851407 | 0.0011681231 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0012980112 | 0.0011961721 | 9.876172E-4 | 9.6348976E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 9.3118194E-4 | 5.755249E-4 | 4.2326452E-4 | 3.456479E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.002567805 | 0.0022445791 | 0.0022009755 | 0.0021231298 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.00417621 | 0.0027964124 | 0.0025395872 | 0.0023012527 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0033861161 | 0.0033299646 | 0.0033861161 | 0.003352255 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.00739302 | 0.005480359 | 0.0064336206 | 0.0058064046 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0033861161 | 0.0033521627 | 0.0033861161 | 0.003352255 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.0034143338 | 0.0033501494 | 0.0033861161 | 0.003352255 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0045712567 | 0.0043234513 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 2.8217636E-4 | 2.4851784E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0021163225 | 0.001954824 | 0.0019187991 | 0.0018524274 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0049098684 | 0.0030924135 | 0.0040351218 | 0.0032804261 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0018341463 | 0.0018106464 | 0.0018341463 | 0.0018158049 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0014390994 | 0.0012071225 | 8.183114E-4 | 7.3911424E-4 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.0059821387 | 0.005815748 | 0.005784615 | 0.0056677135 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0068568853 | 0.0036271866 | 0.004119775 | 0.0032667085 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.007082626 | 0.005366869 | 0.0036682927 | 0.0035755674 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.007082626 | 0.005366869 | 0.004514822 | 0.004233937 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.0047687804 | 0.004690451 | 0.0047405628 | 0.0046891617 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.0059257033 | 0.0037341549 | 0.0046559097 | 0.004435743 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.004204428 | 0.0027939205 | 0.0018341463 | 0.0016287019 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.004006904 | 0.003051346 | 0.0026806754 | 0.0025076773 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.0046841274 | 0.0045811264 | 0.0046841274 | 0.004636346 |

### Paleo Open Interval Plots
*[(top)](#bruce-4317)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-4317)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 544.99 | 0.0018348885 | 65 | 549.89 | 0.0018185554 | 64.41 |
| **FRA** | 119.00 | 0.008403362 | 152.73 | 0.0065476154 | 232 | 157.17 | 0.006362484 | 225.38 |
| **COA** | 181.00 | 0.005524862 | 259.88 | 0.0038479262 | 136 | 269.76 | 0.0037069602 | 130.89 |
| **SCZ** | 106.00 | 0.009433962 | 155.37 | 0.006436385 | 228 | 172.58 | 0.005794544 | 205.2 |
| **TYS** | 329.00 | 0.0030395137 | 422.95 | 0.0023643523 | 84 | 454.55 | 0.0021999832 | 78.22 |
| **TOTAL** | 31.61 | 0.0316373 | 47.59 | 0.021012776 | 745 | 50.30 | 0.019879341 | 704.86 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9826861 | 0.8104807 | 0.9847789 | 0.81971925 | 0.72878754 |
| **20.00** | 0.9414649 | 0.65687895 | 0.9466105 | 0.6719396 | 0.53113127 |
| **30.00** | 0.88676304 | 0.53238773 | 0.8971521 | 0.5508018 | 0.3870819 |
| **40.00** | 0.8128298 | 0.43148994 | 0.82895094 | 0.45150283 | 0.28210047 |
| **50.00** | 0.7301012 | 0.34971428 | 0.7508049 | 0.37010556 | 0.2055913 |
| **60.00** | 0.6423749 | 0.28343666 | 0.66843146 | 0.30338264 | 0.14983238 |
| **70.00** | 0.55600166 | 0.22971995 | 0.5884412 | 0.24868858 | 0.10919597 |
| **80.00** | 0.43710345 | 0.18618359 | 0.47366044 | 0.20385481 | 0.079580665 |
| **90.00** | 0.35309386 | 0.1508982 | 0.39131343 | 0.16710371 | 0.057997398 |
| **100.00** | 0.2549769 | 0.12230007 | 0.29188335 | 0.13697812 | 0.04226778 |
| **110.00** | 0.18637377 | 0.09912185 | 0.2185981 | 0.1122836 | 0.030804234 |
| **120.00** | 0.10488492 | 0.08033635 | 0.13446979 | 0.09204102 | 0.022449743 |
| **130.00** | 0.082235254 | 0.065111056 | 0.10664321 | 0.0754478 | 0.016361093 |
| **140.00** | 0.045446146 | 0.052771255 | 0.06354177 | 0.06184601 | 0.011923761 |
| **150.00** | 0.02302313 | 0.042770084 | 0.037316628 | 0.050696366 | 0.008689889 |
| **160.00** | 0.011598226 | 0.034664325 | 0.019328592 | 0.041556783 | 0.0063330824 |
| **170.00** | 0.0 | 0.028094767 | 0.007472187 | 0.034064896 | 0.0046154717 |
| **180.00** | 0.0 | 0.022770267 | 0.003554933 | 0.02792365 | 0.0033636983 |
| **190.00** | 0.0 | 0.01845486 | 0.0018931145 | 0.022889553 | 0.0024514215 |
| **200.00** | 0.0 | 0.014957309 | 0.0010808643 | 0.018763006 | 0.0017865654 |
| **210.00** | 0.0 | 0.01212261 | 5.886538E-4 | 0.0153803965 | 0.0013020267 |
| **220.00** | 0.0 | 0.009825141 | 5.1738165E-4 | 0.012607607 | 9.489008E-4 |
| **230.00** | 0.0 | 0.007963087 | 4.8559878E-4 | 0.010334698 | 6.915471E-4 |
| **240.00** | 0.0 | 0.0064539285 | 2.703036E-4 | 0.00847155 | 5.039909E-4 |
| **250.00** | 0.0 | 0.0052307844 | 2.2904777E-4 | 0.0069442927 | 3.673023E-4 |
| **260.00** | 0.0 | 0.0042394497 | 1.18524076E-4 | 0.0056923702 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.0034359922 | 0.0 | 0.0046661454 | 1.9508575E-4 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-4317)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 244.09 | 0.0040968456 | 146 | 268.05 | 0.0037306342 | 132.76 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 220.65 | 0.004532002 | 160 | 235.55 | 0.0042453837 | 149.88 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 2132.45 | 4.689439E-4 | 17 | 3144.93 | 3.1797224E-4 | 11.33 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 294.59 | 0.0033945346 | 120 | 297.92 | 0.0033566318 | 118.66 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 294.59 | 0.0033945346 | 120 | 297.84 | 0.003357485 | 118.69 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 334.02 | 0.0029938174 | 106 | 429.34 | 0.0023291612 | 82.29 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 851.03 | 0.0011750517 | 41 | 877.57 | 0.0011395063 | 39.79 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 1958.95 | 5.1047717E-4 | 18 | 2012.70 | 4.968443E-4 | 17.52 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 174.65 | 0.0057256203 | 203 | 177.52 | 0.0056332573 | 199.72 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 544.99 | 0.0018348885 | 65 | 549.80 | 0.0018188282 | 64.42 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 5600.46 | 1.7855692E-4 | 6 | 6002.68 | 1.665922E-4 | 5.58 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 520.94 | 0.0019196242 | 68 | 540.31 | 0.0018507916 | 65.58 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 2319.47 | 4.311323E-4 | 15 | 2357.61 | 4.241582E-4 | 14.74 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 213.10 | 0.0046925526 | 166 | 215.44 | 0.0046416456 | 164.21 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 206.84 | 0.004834751 | 171 | 218.76 | 0.004571132 | 161.68 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 547.72 | 0.0018257372 | 65 | 619.18 | 0.0016150381 | 57.42 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 152.73 | 0.0065476154 | 232 | 157.61 | 0.006344612 | 224.76 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 155.37 | 0.006436385 | 228 | 171.90 | 0.005817262 | 205.97 |
| **RodgersCreek** | 325.31 | 0.003074 | 248.60 | 0.004022589 | 143 | 302.35 | 0.003307401 | 117.46 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 2626.89 | 3.8067793E-4 | 14 | 3147.98 | 3.1766406E-4 | 11.68 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 455.91 | 0.0021934353 | 78 | 472.22 | 0.0021176473 | 75.33 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 422.95 | 0.0023643523 | 84 | 455.38 | 0.0021959757 | 78.01 |
| **Compton** | 2658.16 | 3.762E-4 | 7000.57 | 1.4284553E-4 | 5 | 7201.67 | 1.3885667E-4 | 4.86 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 259.88 | 0.0038479262 | 136 | 269.18 | 0.0037150339 | 131.23 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 708.28 | 0.0014118686 | 50 | 749.16 | 0.0013348212 | 46.99 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 838.51 | 0.0011925859 | 42 | 850.69 | 0.0011755212 | 41.4 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 294.59 | 0.0033945346 | 120 | 298.20 | 0.0033534998 | 118.55 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 210.55 | 0.004749432 | 168 | 212.76 | 0.00470021 | 166.24 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 989.33 | 0.0010107893 | 35 | 1016.20 | 9.840599E-4 | 34.05 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1704.89 | 5.865466E-4 | 21 | 1738.80 | 5.751089E-4 | 20.61 |
| **TOTAL** | 9.08 | 0.1101451 | 19.31 | 0.05179762 | 1835 | 20.69 | 0.048331928 | 1712.29 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9154591 | 0.59572494 | 0.92501384 | 0.6167329 | 0.33238843 |
| **20.00** | 0.74054146 | 0.3548882 | 0.76429635 | 0.38035944 | 0.110482074 |
| **30.00** | 0.525368 | 0.21141575 | 0.5634391 | 0.23458019 | 0.036722966 |
| **40.00** | 0.3593085 | 0.12594564 | 0.40030664 | 0.14467332 | 0.012206289 |
| **50.00** | 0.22568688 | 0.075028956 | 0.2658499 | 0.08922479 | 0.004057229 |
| **60.00** | 0.13964662 | 0.04469662 | 0.17259857 | 0.055027865 | 0.001348576 |
| **70.00** | 0.07102126 | 0.026626892 | 0.0986252 | 0.03393749 | 4.4825108E-4 |
| **80.00** | 0.044379205 | 0.015862303 | 0.059422035 | 0.020930368 | 1.4899348E-4 |
| **90.00** | 0.025337895 | 0.0094495695 | 0.035271443 | 0.012908447 | 4.952371E-5 |
| **100.00** | 0.011916027 | 0.0056293444 | 0.018471349 | 0.007961064 | 1.6461108E-5 |
| **110.00** | 0.003387349 | 0.0033535408 | 0.006682509 | 0.0049098497 | 5.4714824E-6 |
| **120.00** | 0.0 | 0.001997788 | 0.0013950741 | 0.0030280657 | 1.8186574E-6 |
| **130.00** | 0.0 | 0.0011901321 | 9.118247E-4 | 0.0018675077 | 6.045007E-7 |
| **140.00** | 0.0 | 7.0899137E-4 | 4.7070562E-4 | 0.0011517535 | 2.0092905E-7 |
| **150.00** | 0.0 | 4.2236384E-4 | 0.0 | 7.103242E-4 | 6.678649E-8 |

### Moment Release Variability Plots
*[(top)](#bruce-4317)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-4317)*

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
*[(top)](#bruce-4317)*

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
  receiverElementAreaFrac = 0.8
  receiverElementIntTol = 1.0e-4
  receiverElementSubdivisionMax = 4
  tgfDist1 = 3
  tgfDist1 = 10
  variableSlipSpeed = 2
  state2ddotFactor = .8
  state2dotMinFactor = .1
```
