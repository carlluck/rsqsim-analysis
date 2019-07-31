# Bruce 4316
## Metadata
| **Catalog** | Bruce 4316 |
|-----|-----|
| **Author** | Bruce Shaw, 2019/07/26 |
| **Description** | same as r2585 but variable slip speed.  fracArea=0 ; variableSpeed s2ddf=.8 ddfmin=.1; b=.006 a=.001 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | Fully Variable |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 742,499 events in 53,770 years |
| **Frictional Params** | a=0.001, b=0.006, (b-a)=0.005, ddotEQ=1 |

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
*[(top)](#bruce-4316)*


### Full Catalog GMPE Comparisons, LA Basin 500 (m/s)
*[(top)](#bruce-4316)*

* [ASK2014](bbp_LA_BASIN_500/gmpe_bbp_comparisons_ASK2014/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-4316)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-4316)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
#### Mechanism-Dependent Magnitude-Area Plots
*[(top)](#bruce-4316)*

Here we disaggregate the magnitude-area scaling plots by focal mechanism. Multi-fault ruptures which incorporate multiple faulting styles are included in plot for the dominent fault style so long as no more than 10% of the participating elements are of a different style, otherwise they are listed as 'Unknown'.

| Fault Style | Scatter | 2-D Hist |
|-----|-----|-----|
| **Strike-Slip** | ![MA Scatter](resources/mag_area_STRIKE_SLIP.png) | ![MA Hist](resources/mag_area_STRIKE_SLIP_hist2D.png) |
| **Normal** | ![MA Scatter](resources/mag_area_NORMAL.png) | ![MA Hist](resources/mag_area_NORMAL_hist2D.png) |
| **Reverse** | ![MA Scatter](resources/mag_area_REVERSE.png) | ![MA Hist](resources/mag_area_REVERSE_hist2D.png) |
| **Unknown** | ![MA Scatter](resources/mag_area_UNKNOWN.png) | ![MA Hist](resources/mag_area_UNKNOWN_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-4316)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-4316)*

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
*[(top)](#bruce-4316)*

Here we disaggregate the slip-length scaling plots by focal mechanism. Multi-fault ruptures which incorporate multiple faulting styles are included in plot for the dominent fault style so long as no more than 10% of the participating elements are of a different style, otherwise they are listed as 'Unknown'.

| Fault Style | Scatter | 2-D Hist |
|-----|-----|-----|
| **Strike-Slip** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_STRIKE_SLIP.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_STRIKE_SLIP_hist2D.png) |
| **Normal** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_NORMAL.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_NORMAL_hist2D.png) |
| **Reverse** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_REVERSE.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_REVERSE_hist2D.png) |
| **Unknown** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_UNKNOWN.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_UNKNOWN_hist2D.png) |
### Slip Along Rupture (Dsr) Plots
*[(top)](#bruce-4316)*

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
*[(top)](#bruce-4316)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-4316)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-4316)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-4316)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-4316)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-4316)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-4316)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-4316)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-4316)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-4316)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0028939352 | 0.0019638203 | 0.0027502645 | 0.0022456415 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 2.668167E-4 | 2.4876458E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0016624733 | 0.0014185061 | 0.0012930349 | 0.0012417787 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 5.7468214E-4 | 5.53106E-4 | 4.7206035E-4 | 4.667978E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0012930349 | 0.0011577338 | 0.0011698887 | 0.0011357203 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 8.209745E-4 | 6.825136E-4 | 5.7468214E-4 | 5.5460044E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.006218882 | 0.0058127423 | 0.0058083944 | 0.005624475 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0013751322 | 0.0013052266 | 0.0012725105 | 0.0012571709 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0010467425 | 9.914999E-4 | 9.6464506E-4 | 9.516534E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 0.0010262182 | 5.354956E-4 | 2.668167E-4 | 2.4466048E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0025244965 | 0.002254292 | 0.002216631 | 0.0021344179 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.003407044 | 0.0026304373 | 0.0018882414 | 0.0017784556 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.004084348 | 0.004002805 | 0.0040638237 | 0.004020773 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0054594805 | 0.004563004 | 0.0044537866 | 0.0042076986 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0042895917 | 0.0041963086 | 0.00418697 | 0.0041285832 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.004700079 | 0.004490256 | 0.004597457 | 0.0045020985 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0049668956 | 0.004586919 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 2.668167E-4 | 2.1144364E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0020524363 | 0.0019067986 | 0.0018882414 | 0.0018392976 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0034275686 | 0.00262153 | 0.002380826 | 0.0022577755 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0029555082 | 0.0028325296 | 0.002832362 | 0.0027976532 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.001641949 | 0.0013178502 | 0.0010467425 | 9.427546E-4 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.0064241253 | 0.006042382 | 0.005890492 | 0.0057845493 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0058083944 | 0.0038751662 | 0.0037764828 | 0.0030898543 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.006259931 | 0.005257027 | 0.00531581 | 0.005101875 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.006259931 | 0.005257027 | 0.005603151 | 0.0053988383 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.005213188 | 0.005129399 | 0.0051721395 | 0.005117455 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.005438956 | 0.0037055756 | 0.0047411276 | 0.0045976047 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0038791045 | 0.002597277 | 0.0020319119 | 0.0015552798 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0038585803 | 0.0028747902 | 0.002832362 | 0.0025903906 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.005213188 | 0.005080095 | 0.005213188 | 0.0051453784 |

### Paleo Open Interval Plots
*[(top)](#bruce-4316)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-4316)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 352.55 | 0.0028364598 | 138 | 357.00 | 0.0028010923 | 136.23 |
| **FRA** | 119.00 | 0.008403362 | 170.62 | 0.0058610863 | 285 | 175.37 | 0.0057022204 | 277.29 |
| **COA** | 181.00 | 0.005524862 | 182.00 | 0.0054945475 | 267 | 189.79 | 0.0052690683 | 256.04 |
| **SCZ** | 106.00 | 0.009433962 | 224.34 | 0.0044574905 | 217 | 237.26 | 0.0042147962 | 205.21 |
| **TYS** | 329.00 | 0.0030395137 | 541.58 | 0.0018464605 | 89 | 570.67 | 0.0017523352 | 84.46 |
| **TOTAL** | 31.61 | 0.0316373 | 48.77 | 0.020505885 | 996 | 50.64 | 0.019749124 | 959.28 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.98311895 | 0.8145994 | 0.9843218 | 0.8207873 | 0.72878754 |
| **20.00** | 0.9406404 | 0.66357213 | 0.9441427 | 0.67369187 | 0.53113127 |
| **30.00** | 0.8885521 | 0.54054546 | 0.89558005 | 0.5529577 | 0.3870819 |
| **40.00** | 0.8298829 | 0.440328 | 0.8394475 | 0.4538607 | 0.28210047 |
| **50.00** | 0.74221593 | 0.35869092 | 0.75613916 | 0.3725231 | 0.2055913 |
| **60.00** | 0.65516716 | 0.29218942 | 0.6734981 | 0.30576226 | 0.14983238 |
| **70.00** | 0.56610256 | 0.2380173 | 0.5875099 | 0.25096577 | 0.10919597 |
| **80.00** | 0.47747767 | 0.19388875 | 0.49962303 | 0.20598954 | 0.079580665 |
| **90.00** | 0.40891773 | 0.15794165 | 0.43166095 | 0.1690736 | 0.057997398 |
| **100.00** | 0.3170063 | 0.12865917 | 0.34036222 | 0.13877347 | 0.04226778 |
| **110.00** | 0.24120672 | 0.104805686 | 0.26477492 | 0.11390351 | 0.030804234 |
| **120.00** | 0.20262346 | 0.085374646 | 0.2224299 | 0.093490556 | 0.022449743 |
| **130.00** | 0.13469025 | 0.06954613 | 0.1533568 | 0.07673586 | 0.016361093 |
| **140.00** | 0.09297606 | 0.05665224 | 0.10901781 | 0.062983826 | 0.011923761 |
| **150.00** | 0.052184775 | 0.04614888 | 0.06416973 | 0.051696323 | 0.008689889 |
| **160.00** | 0.031808376 | 0.03759285 | 0.038066626 | 0.042431686 | 0.0063330824 |
| **170.00** | 0.026389668 | 0.030623112 | 0.032275144 | 0.034827393 | 0.0046154717 |
| **180.00** | 0.012603089 | 0.024945568 | 0.01617814 | 0.028585881 | 0.0033636983 |
| **190.00** | 0.0 | 0.020320645 | 0.0023374525 | 0.023462929 | 0.0024514215 |
| **200.00** | 0.0 | 0.016553184 | 0.0018076574 | 0.019258074 | 0.0017865654 |
| **210.00** | 0.0 | 0.0134842135 | 0.0015613057 | 0.015806785 | 0.0013020267 |
| **220.00** | 0.0 | 0.010984233 | 0.0013514138 | 0.012974008 | 9.489008E-4 |
| **230.00** | 0.0 | 0.008947749 | 7.305107E-4 | 0.010648902 | 6.915471E-4 |
| **240.00** | 0.0 | 0.007288831 | 3.7352534E-4 | 0.008740484 | 5.039909E-4 |
| **250.00** | 0.0 | 0.005937477 | 2.9641108E-4 | 0.007174078 | 3.673023E-4 |
| **260.00** | 0.0 | 0.004836665 | 2.224022E-4 | 0.005888392 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.0039399443 | 1.8034881E-4 | 0.004833118 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.0032094764 | 1.3829544E-4 | 0.003966962 | 1.4217607E-4 |
| **290.00** | 0.0 | 0.0026144374 | 8.706794E-5 | 0.003256032 | 1.0361615E-4 |
| **300.00** | 0.0 | 0.0021297191 | 0.0 | 0.00267251 | 7.551416E-5 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-4316)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 263.91 | 0.0037891897 | 185 | 282.76 | 0.0035365617 | 172.63 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 177.98 | 0.0056184847 | 273 | 184.68 | 0.0054146643 | 263.11 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 2328.15 | 4.2952594E-4 | 21 | 3192.50 | 3.1323452E-4 | 15.01 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 240.23 | 0.004162682 | 203 | 243.22 | 0.0041114883 | 200.48 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 218.08 | 0.004585436 | 224 | 222.14 | 0.00450173 | 219.92 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 363.67 | 0.0027497087 | 134 | 444.88 | 0.0022478192 | 109.4 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 858.29 | 0.0011651053 | 56 | 880.54 | 0.0011356653 | 54.59 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 1764.17 | 5.668385E-4 | 28 | 1828.33 | 5.4694776E-4 | 27.02 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 170.62 | 0.0058610863 | 285 | 173.66 | 0.005758361 | 279.99 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 352.55 | 0.0028364598 | 138 | 356.74 | 0.0028031329 | 136.37 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 8051.07 | 1.2420713E-4 | 5 | 8211.02 | 1.2178748E-4 | 4.91 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 532.61 | 0.0018775602 | 92 | 547.92 | 0.0018250758 | 89.45 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 1770.85 | 5.647016E-4 | 27 | 1817.54 | 5.501946E-4 | 26.32 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 193.27 | 0.0051741903 | 252 | 195.04 | 0.005127199 | 249.7 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 201.29 | 0.004968047 | 242 | 210.99 | 0.0047395816 | 230.89 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 495.50 | 0.0020181553 | 99 | 639.88 | 0.0015627975 | 75.72 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 170.62 | 0.0058610863 | 285 | 175.68 | 0.005692064 | 276.81 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 224.34 | 0.0044574905 | 217 | 237.95 | 0.0042025805 | 204.62 |
| **RodgersCreek** | 325.31 | 0.003074 | 420.00 | 0.0023809301 | 116 | 442.21 | 0.0022613439 | 110.14 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 3858.95 | 2.5913754E-4 | 13 | 4138.73 | 2.4162018E-4 | 12.17 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 452.82 | 0.0022083938 | 108 | 470.80 | 0.0021240625 | 103.89 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 541.58 | 0.0018464605 | 89 | 571.14 | 0.001750873 | 84.43 |
| **Compton** | 2658.16 | 3.762E-4 | 9359.57 | 1.0684255E-4 | 4 | 9405.87 | 1.0631654E-4 | 3.9 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 182.00 | 0.0054945475 | 267 | 189.56 | 0.0052754134 | 256.38 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 712.59 | 0.0014033376 | 69 | 753.63 | 0.0013269045 | 65.23 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 791.64 | 0.0012631929 | 62 | 802.63 | 0.0012459035 | 61.07 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 246.33 | 0.0040596453 | 198 | 248.74 | 0.004020338 | 196.05 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 193.27 | 0.0051741903 | 252 | 195.39 | 0.005117897 | 249.23 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1038.32 | 9.6309173E-4 | 47 | 1053.20 | 9.49488E-4 | 46.32 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 2083.20 | 4.8003046E-4 | 23 | 2104.64 | 4.7514046E-4 | 22.75 |
| **TOTAL** | 9.08 | 0.1101451 | 19.89 | 0.050268583 | 2446 | 20.67 | 0.048379738 | 2354.1 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.91779506 | 0.6049038 | 0.92247885 | 0.6164381 | 0.33238843 |
| **20.00** | 0.7453651 | 0.36590862 | 0.7582598 | 0.3799959 | 0.110482074 |
| **30.00** | 0.57226765 | 0.22133951 | 0.58970577 | 0.23424396 | 0.036722966 |
| **40.00** | 0.39902604 | 0.13388911 | 0.42182478 | 0.1443969 | 0.012206289 |
| **50.00** | 0.2728142 | 0.08099003 | 0.2948319 | 0.08901175 | 0.004057229 |
| **60.00** | 0.17066692 | 0.048991177 | 0.18783775 | 0.054870233 | 0.001348576 |
| **70.00** | 0.109225795 | 0.02963495 | 0.12050989 | 0.0338241 | 4.4825108E-4 |
| **80.00** | 0.063442044 | 0.017926294 | 0.07300924 | 0.020850465 | 1.4899348E-4 |
| **90.00** | 0.03333376 | 0.010843683 | 0.039393652 | 0.012853021 | 4.952371E-5 |
| **100.00** | 0.025884653 | 0.0065593855 | 0.028670391 | 0.007923092 | 1.6461108E-5 |
| **110.00** | 0.0139241405 | 0.003967797 | 0.014440432 | 0.0048840954 | 5.4714824E-6 |
| **120.00** | 0.007438061 | 0.0024001356 | 0.0064302757 | 0.0030107426 | 1.8186574E-6 |
| **130.00** | 0.0 | 0.0014518511 | 0.0015788786 | 0.0018559364 | 6.045007E-7 |
| **140.00** | 0.0 | 8.7823026E-4 | 6.0168742E-5 | 0.00114407 | 2.0092905E-7 |
| **150.00** | 0.0 | 5.3124485E-4 | 4.1452764E-5 | 7.0524827E-4 | 6.678649E-8 |
| **160.00** | 0.0 | 3.21352E-4 | 0.0 | 4.347419E-4 | 2.2199057E-8 |

### Moment Release Variability Plots
*[(top)](#bruce-4316)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-4316)*

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
*[(top)](#bruce-4316)*

```
  A_1 = 0.001
  fA = .1
  B_1 = 0.006
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
  state2ddotFactor = .8
  state2dotMinFactor = .1
```
