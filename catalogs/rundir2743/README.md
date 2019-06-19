# Bruce 2743
## Metadata
| **Catalog** | Bruce 2743 |
|-----|-----|
| **Author** | Bruce Shaw, 2018/06/27 |
| **Description** | FinitePatch fracArea=0.8,  b=.007 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 1,036,999 events in 66,051 years |
| **Frictional Params** | a=0.001, b=0.009, (b-a)=0.008, ddotEQ=1 |

* [Metadata](#metadata)
* [BBP Calculations, LA Basin 863 (m/s) Velocity Model](#bbp-calculations-la-basin-863-ms-velocity-model)
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
*[(top)](#bruce-2743)*


### Full Catalog GMPE Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-2743)*

* [ASK2014](bbp_LA_BASIN_863/gmpe_bbp_comparisons_ASK2014/)
* [NGAWest_2014_NoIdr](bbp_LA_BASIN_863/gmpe_bbp_comparisons_NGAWest_2014_NoIdr/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2743)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2743)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2743)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2743)*

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
*[(top)](#bruce-2743)*

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
*[(top)](#bruce-2743)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2743)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2743)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2743)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2743)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2743)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2743)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2743)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2743)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2743)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.003442758 | 0.001747698 | 0.0025410834 | 0.0018685261 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 1.9672903E-4 | 1.8772652E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.002082049 | 0.0016976272 | 0.0013934972 | 0.0013281965 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 7.3773385E-4 | 7.05955E-4 | 7.213398E-4 | 7.102256E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0015082558 | 0.0012637223 | 0.0012787387 | 0.001242238 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 7.3773385E-4 | 6.053413E-4 | 5.082167E-4 | 4.965684E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.007213398 | 0.006818646 | 0.007098639 | 0.0068519996 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0013934972 | 0.0013600747 | 0.0013934972 | 0.0013717439 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0012951328 | 0.001190751 | 0.0010984037 | 0.0010745476 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 0.0010820096 | 5.7991734E-4 | 3.1148762E-4 | 2.5888596E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0025738715 | 0.0022710543 | 0.0023935365 | 0.0023385133 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.004410009 | 0.0028051913 | 0.002491901 | 0.0022977567 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0043116445 | 0.0042385156 | 0.0042788563 | 0.00422965 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.008557713 | 0.0061565214 | 0.006852728 | 0.006172023 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.004246068 | 0.0042008087 | 0.004246068 | 0.0042032255 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.0043116445 | 0.0042081517 | 0.0042788563 | 0.0042280126 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0049182256 | 0.0046245176 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 2.295172E-4 | 1.939041E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.002524689 | 0.0022695062 | 0.0021968074 | 0.0021338984 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0050657727 | 0.0031622907 | 0.0035903046 | 0.0029948428 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0024591128 | 0.0024186359 | 0.0024263246 | 0.0024007626 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0018033495 | 0.0014686065 | 0.0012131623 | 0.0010560314 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.006557634 | 0.00636027 | 0.0064264815 | 0.0063452246 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.006836334 | 0.003884499 | 0.0037870337 | 0.003080818 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.007721614 | 0.005995296 | 0.0046395264 | 0.0044662184 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.007721614 | 0.005995296 | 0.0048690434 | 0.0046881535 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.0058362945 | 0.005743522 | 0.0058362945 | 0.005777368 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.006688787 | 0.003850331 | 0.00573793 | 0.00531207 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.004590344 | 0.0030447813 | 0.0020164726 | 0.001750891 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.004164098 | 0.0031893807 | 0.0029181472 | 0.0026980112 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.0058526886 | 0.0056888075 | 0.0058362945 | 0.005776728 |

### Paleo Open Interval Plots
*[(top)](#bruce-2743)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2743)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 411.16 | 0.0024321408 | 148 | 415.46 | 0.0024069892 | 146.46 |
| **FRA** | 119.00 | 0.008403362 | 140.47 | 0.0071191434 | 434 | 144.73 | 0.006909395 | 421.19 |
| **COA** | 181.00 | 0.005524862 | 207.97 | 0.004808388 | 293 | 216.80 | 0.0046125688 | 280.97 |
| **SCZ** | 106.00 | 0.009433962 | 145.75 | 0.0068610976 | 418 | 161.77 | 0.006181571 | 376.51 |
| **TYS** | 329.00 | 0.0030395137 | 413.55 | 0.0024180852 | 147 | 444.35 | 0.0022505021 | 136.81 |
| **TOTAL** | 31.61 | 0.0316373 | 42.33 | 0.023625538 | 1440 | 44.82 | 0.022311755 | 1359.74 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.98196334 | 0.78957903 | 0.9840559 | 0.8000208 | 0.72878754 |
| **20.00** | 0.9257386 | 0.623435 | 0.9331198 | 0.6400333 | 0.53113127 |
| **30.00** | 0.85045516 | 0.49225122 | 0.8636916 | 0.51203996 | 0.3870819 |
| **40.00** | 0.76180255 | 0.38867122 | 0.78203255 | 0.4096426 | 0.28210047 |
| **50.00** | 0.6678388 | 0.30688664 | 0.69453394 | 0.3277226 | 0.2055913 |
| **60.00** | 0.5688494 | 0.24231125 | 0.60036 | 0.26218492 | 0.14983238 |
| **70.00** | 0.47068918 | 0.19132388 | 0.5046556 | 0.2097534 | 0.10919597 |
| **80.00** | 0.37516758 | 0.15106532 | 0.41356593 | 0.16780707 | 0.079580665 |
| **90.00** | 0.28476518 | 0.119278006 | 0.32176176 | 0.13424915 | 0.057997398 |
| **100.00** | 0.20830944 | 0.09417941 | 0.2415055 | 0.107402116 | 0.04226778 |
| **110.00** | 0.14731975 | 0.074362084 | 0.17783703 | 0.085923925 | 0.030804234 |
| **120.00** | 0.109785914 | 0.058714744 | 0.13395022 | 0.068740934 | 0.022449743 |
| **130.00** | 0.06972647 | 0.046359926 | 0.088379584 | 0.054994173 | 0.016361093 |
| **140.00** | 0.039530136 | 0.036604825 | 0.052229628 | 0.043996483 | 0.011923761 |
| **150.00** | 0.023505695 | 0.028902402 | 0.0325197 | 0.035198104 | 0.008689889 |
| **160.00** | 0.013766956 | 0.02282073 | 0.019675942 | 0.028159214 | 0.0063330824 |
| **170.00** | 0.0 | 0.01801877 | 0.0035938 | 0.022527957 | 0.0046154717 |
| **180.00** | 0.0 | 0.014227242 | 7.703542E-4 | 0.018022835 | 0.0033636983 |
| **190.00** | 0.0 | 0.011233532 | 5.271033E-4 | 0.014418643 | 0.0024514215 |
| **200.00** | 0.0 | 0.008869762 | 3.3435778E-4 | 0.011535214 | 0.0017865654 |
| **210.00** | 0.0 | 0.007003377 | 2.4392133E-4 | 0.009228412 | 0.0013020267 |
| **220.00** | 0.0 | 0.00552972 | 1.3646262E-4 | 0.0073829214 | 9.489008E-4 |
| **230.00** | 0.0 | 0.0043661506 | 1.03529535E-4 | 0.0059064906 | 6.915471E-4 |
| **240.00** | 0.0 | 0.003447421 | 7.030192E-5 | 0.0047253156 | 5.039909E-4 |
| **250.00** | 0.0 | 0.0027220112 | 0.0 | 0.0037803508 | 3.673023E-4 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2743)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 263.37 | 0.0037969376 | 231 | 285.73 | 0.003499833 | 212.87 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 205.16 | 0.0048742564 | 297 | 212.80 | 0.004699199 | 286.23 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 2053.91 | 4.868759E-4 | 30 | 2772.58 | 3.6067527E-4 | 21.96 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 235.37 | 0.004248713 | 259 | 237.57 | 0.0042092367 | 256.57 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 233.55 | 0.004281649 | 261 | 236.15 | 0.004234568 | 258.13 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 394.72 | 0.0025334584 | 155 | 536.70 | 0.0018632555 | 113.72 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 790.83 | 0.0012644882 | 78 | 811.92 | 0.0012316442 | 75.97 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 1921.49 | 5.204295E-4 | 31 | 1968.92 | 5.078929E-4 | 30.26 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 155.77 | 0.0064197225 | 392 | 157.97 | 0.0063304147 | 386.55 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 411.16 | 0.0024321408 | 148 | 415.66 | 0.0024058346 | 146.39 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 5714.79 | 1.7498442E-4 | 10 | 6010.95 | 1.6636304E-4 | 9.51 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 455.71 | 0.002194384 | 134 | 468.63 | 0.002133863 | 130.29 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 1347.92 | 7.418821E-4 | 45 | 1424.29 | 7.0210564E-4 | 42.61 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 171.33 | 0.0058367113 | 356 | 173.15 | 0.005775184 | 352.24 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 161.76 | 0.0061819814 | 377 | 176.61 | 0.0056623314 | 345.35 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 498.54 | 0.0020058388 | 123 | 568.50 | 0.0017589995 | 107.53 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 140.47 | 0.0071191434 | 434 | 144.87 | 0.00690263 | 420.81 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 145.75 | 0.0068610976 | 418 | 161.85 | 0.0061784927 | 376.28 |
| **RodgersCreek** | 325.31 | 0.003074 | 278.86 | 0.0035860573 | 219 | 334.75 | 0.002987262 | 182.42 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 2845.65 | 3.5141376E-4 | 22 | 3598.90 | 2.7786286E-4 | 17.43 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 415.76 | 0.0024052262 | 146 | 425.78 | 0.002348638 | 142.54 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 413.55 | 0.0024180852 | 147 | 444.83 | 0.002248033 | 136.7 |
| **Compton** | 2658.16 | 3.762E-4 | 6429.14 | 1.5554171E-4 | 9 | 6794.67 | 1.471742E-4 | 8.52 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 207.97 | 0.004808388 | 293 | 217.40 | 0.004599747 | 280.09 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 704.76 | 0.0014189207 | 87 | 738.20 | 0.001354641 | 82.7 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 723.79 | 0.0013816215 | 85 | 733.83 | 0.0013627064 | 83.85 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 233.85 | 0.004276304 | 261 | 236.75 | 0.004223814 | 257.73 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 171.33 | 0.0058367113 | 356 | 173.18 | 0.0057743643 | 352.19 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 911.27 | 0.0010973739 | 67 | 933.76 | 0.0010709373 | 65.41 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1367.59 | 7.312158E-4 | 44 | 1391.53 | 7.1863213E-4 | 43.26 |
| **TOTAL** | 9.08 | 0.1101451 | 19.27 | 0.05190413 | 3165 | 20.49 | 0.048800778 | 2975.37 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.91125894 | 0.5950908 | 0.9203898 | 0.6138481 | 0.33238843 |
| **20.00** | 0.7290746 | 0.35413304 | 0.75094634 | 0.37680948 | 0.110482074 |
| **30.00** | 0.5418415 | 0.21074131 | 0.57129693 | 0.2313038 | 0.036722966 |
| **40.00** | 0.37063798 | 0.12541021 | 0.40705892 | 0.14198539 | 0.012206289 |
| **50.00** | 0.24533471 | 0.07463046 | 0.2779743 | 0.087157466 | 0.004057229 |
| **60.00** | 0.14373547 | 0.044411898 | 0.16949232 | 0.053501442 | 0.001348576 |
| **70.00** | 0.08947127 | 0.026429111 | 0.10666093 | 0.03284176 | 4.4825108E-4 |
| **80.00** | 0.059367307 | 0.015727721 | 0.072368175 | 0.020159852 | 1.4899348E-4 |
| **90.00** | 0.033657774 | 0.009359422 | 0.042782895 | 0.012375087 | 4.952371E-5 |
| **100.00** | 0.019562408 | 0.0055697057 | 0.024173815 | 0.0075964234 | 1.6461108E-5 |
| **110.00** | 0.009046132 | 0.0033144804 | 0.011212822 | 0.00466305 | 5.4714824E-6 |
| **120.00** | 0.0051480727 | 0.0019724169 | 0.0063072643 | 0.0028624043 | 1.8186574E-6 |
| **130.00** | 0.0 | 0.001173767 | 0.002473234 | 0.0017570815 | 6.045007E-7 |
| **140.00** | 0.0 | 6.984979E-4 | 0.0014568109 | 0.0010785811 | 2.0092905E-7 |
| **150.00** | 0.0 | 4.156697E-4 | 1.2162193E-4 | 6.6208496E-4 | 6.678649E-8 |
| **160.00** | 0.0 | 2.473612E-4 | 0.0 | 4.064196E-4 | 2.2199057E-8 |

### Moment Release Variability Plots
*[(top)](#bruce-2743)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2743)*

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
*[(top)](#bruce-2743)*

```
  A_1 = 0.001
  fA = .1
  B_1 = 0.009
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
  nEq = 2000000
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
```
