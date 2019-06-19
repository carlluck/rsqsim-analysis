# Bruce 2142
## Metadata
| **Catalog** | Bruce 2142 |
|-----|-----|
| **Author** | Bruce Shaw, 2017/06/16 |
| **Description** | Old projection; slip weakening; stress loaded; no creep correction |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.34 km^2 |
| **Length** | 7,863,999 events in 75,724 years |
| **Frictional Params** | a=0.005, b=0.006, (b-a)=0.001, ddotEQ=1 |

* [Metadata](#metadata)
* [Hazard Comparisons](#hazard-comparisons)
* [Multi-Fault Rupture Comparisons](multi_fault/)
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

## Hazard Comparisons
*[(top)](#bruce-2142)*

* [PGA](hazard_pga/)
* [PGA, BSSA2014](hazard_pga_gmpeBSSA2014/)
* [0.2s SA](hazard_sa_0.2s/)
* [1.0s SA](hazard_sa_1.0s/)
* [10.0s SA](hazard_sa_10.0s/)
* [2.0s SA](hazard_sa_2.0s/)
* [5.0s SA](hazard_sa_5.0s/)

## Multi-Fault Rupture Comparisons
*[(top)](#bruce-2142)*

[Multi-Fault Rupture Comparisons here](multi_fault/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2142)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2142)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2142)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2142)*

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
*[(top)](#bruce-2142)*

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
*[(top)](#bruce-2142)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2142)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2142)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2142)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2142)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2142)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2142)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2142)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2142)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2142)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0017826126 | 0.0013945015 | 0.0 | 0.0 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 1.8392035E-4 | 1.7833636E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0011318176 | 9.724359E-4 | 0.0010186358 | 9.879733E-4 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 7.2153367E-4 | 6.535366E-4 | 6.366474E-4 | 6.1541353E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0014289196 | 0.0011428182 | 0.0011176699 | 0.0010473555 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 5.234656E-4 | 4.586196E-4 | 4.385793E-4 | 4.3020557E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.013157379 | 0.007964544 | 0.0052346564 | 0.0046895067 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0014996582 | 0.0013714243 | 0.0013864764 | 0.0013451551 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 8.630109E-4 | 7.9895876E-4 | 9.620449E-4 | 9.1907335E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 0.0014713628 | 0.0010587646 | 0.0 | 0.0 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0017543172 | 0.0015928535 | 0.0 | 0.0 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0018533512 | 0.001607493 | 0.0 | 0.0 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0065786894 | 0.005334819 | 0.0 | 0.0 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0028295438 | 0.0022523953 | 0.0 | 0.0 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.007271928 | 0.006084042 | 0.0 | 0.0 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.007979314 | 0.005860741 | 0.0 | 0.0 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0031832368 | 0.0028678405 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 3.5369297E-4 | 2.8393618E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0042018727 | 0.0031353717 | 0.0 | 0.0 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0035086344 | 0.0023392634 | 0.0 | 0.0 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.004484827 | 0.003832604 | 0.0032964186 | 0.0031863684 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0015703968 | 0.0011094149 | 0.0 | 0.0 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.006507951 | 0.0059385994 | 0.006493803 | 0.0063246954 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0026173282 | 0.0018136745 | 0.0023343738 | 0.0017295841 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.004994145 | 0.0042570545 | 0.004498975 | 0.004362882 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.004994145 | 0.0042570545 | 0.004498975 | 0.004347367 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.004739486 | 0.004614895 | 0.004739486 | 0.0046896357 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.0033671572 | 0.0027529916 | 0.003480339 | 0.0031877514 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0034661912 | 0.002511403 | 0.0019099421 | 0.0012327657 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0034520435 | 0.002482924 | 0.001966533 | 0.0019153347 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.005361986 | 0.0048452048 | 0.004796077 | 0.0047384314 |

### Paleo Open Interval Plots
*[(top)](#bruce-2142)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2142)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 306.00 | 0.0032679334 | 230 | 315.77 | 0.0031668453 | 222.88 |
| **FRA** | 119.00 | 0.008403362 | 189.87 | 0.0052667754 | 370 | 212.14 | 0.004713962 | 331.25 |
| **COA** | 181.00 | 0.005524862 | 222.34 | 0.004497624 | 318 | 229.04 | 0.004365987 | 308.7 |
| **SCZ** | 106.00 | 0.009433962 | 2001.03 | 4.9974164E-4 | 21 | 2237.79 | 4.4686897E-4 | 18.47 |
| **TYS** | 329.00 | 0.0030395137 | 1085.13 | 9.215483E-4 | 64 | 1117.57 | 8.947974E-4 | 62.16 |
| **TOTAL** | 31.61 | 0.0316373 | 70.41 | 0.014202276 | 1002 | 74.93 | 0.013346272 | 941.61 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.99302316 | 0.8676015 | 0.99384564 | 0.8750601 | 0.72878754 |
| **20.00** | 0.97337687 | 0.7527324 | 0.97644186 | 0.7657302 | 0.53113127 |
| **30.00** | 0.9465737 | 0.65307176 | 0.95212287 | 0.6700599 | 0.3870819 |
| **40.00** | 0.90355045 | 0.56660604 | 0.9137576 | 0.5863427 | 0.28210047 |
| **50.00** | 0.86807626 | 0.49158826 | 0.8819943 | 0.5130851 | 0.2055913 |
| **60.00** | 0.81688166 | 0.4265027 | 0.8353889 | 0.4489803 | 0.14983238 |
| **70.00** | 0.76009554 | 0.3700344 | 0.7833419 | 0.39288473 | 0.10919597 |
| **80.00** | 0.69404775 | 0.3210424 | 0.718425 | 0.34379777 | 0.079580665 |
| **90.00** | 0.6158713 | 0.27853686 | 0.64822626 | 0.30084372 | 0.057997398 |
| **100.00** | 0.5714304 | 0.24165902 | 0.60359657 | 0.2632563 | 0.04226778 |
| **110.00** | 0.5074568 | 0.20966372 | 0.5439281 | 0.2303651 | 0.030804234 |
| **120.00** | 0.44859 | 0.18190455 | 0.48847562 | 0.20158331 | 0.022449743 |
| **130.00** | 0.3909198 | 0.15782067 | 0.43133593 | 0.1763975 | 0.016361093 |
| **140.00** | 0.3390677 | 0.13692546 | 0.38090548 | 0.15435842 | 0.011923761 |
| **150.00** | 0.27370757 | 0.11879673 | 0.31296292 | 0.13507289 | 0.008689889 |
| **160.00** | 0.23172845 | 0.103068225 | 0.26785347 | 0.1181969 | 0.0063330824 |
| **170.00** | 0.17165093 | 0.089422144 | 0.20948441 | 0.10342939 | 0.0046154717 |
| **180.00** | 0.13684793 | 0.077582784 | 0.1691698 | 0.09050693 | 0.0033636983 |
| **190.00** | 0.11336461 | 0.067310944 | 0.14044733 | 0.07919901 | 0.0024514215 |
| **200.00** | 0.08808503 | 0.058399078 | 0.109116904 | 0.06930389 | 0.0017865654 |
| **210.00** | 0.07210126 | 0.050667126 | 0.09133483 | 0.060645066 | 0.0013020267 |
| **220.00** | 0.048210323 | 0.043958876 | 0.06349096 | 0.05306808 | 9.489008E-4 |
| **230.00** | 0.02552501 | 0.03813879 | 0.038946237 | 0.04643776 | 6.915471E-4 |
| **240.00** | 0.021332469 | 0.03308927 | 0.031354155 | 0.040635828 | 5.039909E-4 |
| **250.00** | 0.004546422 | 0.0287083 | 0.015018649 | 0.035558794 | 3.673023E-4 |
| **260.00** | 0.0 | 0.024907364 | 0.008542322 | 0.031116081 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.021609666 | 0.0055572977 | 0.027228441 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.01874858 | 0.004926944 | 0.023826523 | 1.4217607E-4 |
| **290.00** | 0.0 | 0.016266296 | 0.0034655528 | 0.020849638 | 1.0361615E-4 |
| **300.00** | 0.0 | 0.0141126625 | 0.002189012 | 0.018244687 | 7.551416E-5 |
| **310.00** | 0.0 | 0.012244168 | 0.0018223291 | 0.015965197 | 5.503378E-5 |
| **320.00** | 0.0 | 0.010623058 | 0.0015586102 | 0.013970507 | 4.0107934E-5 |
| **330.00** | 0.0 | 0.0092165815 | 0.0015340006 | 0.012225034 | 2.9230163E-5 |
| **340.00** | 0.0 | 0.00799632 | 0.0012024645 | 0.010697639 | 2.1302578E-5 |
| **350.00** | 0.0 | 0.0069376193 | 8.737554E-4 | 0.009361077 | 1.5525055E-5 |
| **360.00** | 0.0 | 0.006019089 | 7.7198696E-4 | 0.0081915045 | 1.1314466E-5 |
| **370.00** | 0.0 | 0.0052221706 | 6.8580307E-4 | 0.0071680592 | 8.245842E-6 |
| **380.00** | 0.0 | 0.0045307633 | 4.572771E-4 | 0.006272482 | 6.009467E-6 |
| **390.00** | 0.0 | 0.003930897 | 1.5939277E-4 | 0.005488799 | 4.379625E-6 |
| **400.00** | 0.0 | 0.003410452 | 1.2736628E-4 | 0.004803029 | 3.1918162E-6 |
| **410.00** | 0.0 | 0.0029589133 | 9.533977E-5 | 0.004202939 | 2.3261557E-6 |
| **420.00** | 0.0 | 0.0025671576 | 6.331326E-5 | 0.0036778243 | 1.6952735E-6 |
| **430.00** | 0.0 | 0.0022272698 | 0.0 | 0.0032183172 | 1.2354942E-6 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2142)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 414.03 | 0.0024152973 | 170 | 501.90 | 0.001992432 | 140.27 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 223.75 | 0.0044692475 | 316 | 232.25 | 0.0043056807 | 304.41 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 509.88 | 0.0019612536 | 139 | 524.06 | 0.001908168 | 135.22 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 11086.86 | 9.019685E-5 | 3 | 14270.17 | 7.0076254E-5 | 2.37 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 900.03 | 0.0011110718 | 79 | 958.84 | 0.0010429223 | 74.19 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 12932.70 | 7.7323384E-5 | 4 | 14616.94 | 6.8413785E-5 | 3.02 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 154.02 | 0.0064928196 | 459 | 158.19 | 0.006321568 | 446.92 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 306.00 | 0.0032679334 | 230 | 315.95 | 0.0031650588 | 222.78 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 215.14 | 0.00464819 | 327 | 261.79 | 0.0038198954 | 268.53 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 2028.33 | 4.930158E-4 | 35 | 2081.60 | 4.8040043E-4 | 34.13 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 209.71 | 0.0047685974 | 337 | 211.95 | 0.004718022 | 333.43 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 845.31 | 0.0011830021 | 83 | 903.49 | 0.0011068169 | 77.53 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 523.43 | 0.0019104803 | 135 | 809.35 | 0.0012355569 | 86.8 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 189.87 | 0.0052667754 | 370 | 211.93 | 0.004718538 | 331.58 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 2001.03 | 4.9974164E-4 | 21 | 2258.19 | 4.4283294E-4 | 18.4 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 4743.48 | 2.1081576E-4 | 15 | 4854.06 | 2.060131E-4 | 14.65 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 70682.77 | 0.0 | 0 | ∞ | 0.0 | 0 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 1085.13 | 9.215483E-4 | 64 | 1118.34 | 8.9417864E-4 | 62.08 |
| **Compton** | 2658.16 | 3.762E-4 | 2277.78 | 4.390242E-4 | 31 | 2646.87 | 3.778052E-4 | 26.7 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 222.34 | 0.004497624 | 318 | 229.39 | 0.0043593734 | 308.19 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 984.66 | 0.0010155749 | 72 | 1015.08 | 9.851427E-4 | 69.73 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 729.49 | 0.0013708211 | 96 | 745.96 | 0.0013405499 | 93.89 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 210.96 | 0.004740213 | 335 | 213.32 | 0.0046878313 | 331.3 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1071.18 | 9.335495E-4 | 66 | 1093.51 | 9.144889E-4 | 64.63 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1444.23 | 6.9240964E-4 | 49 | 1505.85 | 6.640786E-4 | 46.91 |
| **TOTAL** | 10.14 | 0.0985812 | 25.24 | 0.039611924 | 2798 | 26.94 | 0.03712629 | 2622.42 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9471199 | 0.6729265 | 0.9534046 | 0.68986255 | 0.3731361 |
| **20.00** | 0.84023565 | 0.45283002 | 0.8543442 | 0.4759103 | 0.13923056 |
| **30.00** | 0.6977485 | 0.3047213 | 0.7220135 | 0.3283127 | 0.051951952 |
| **40.00** | 0.55543745 | 0.20505503 | 0.5874626 | 0.22649063 | 0.01938515 |
| **50.00** | 0.4240187 | 0.13798696 | 0.45940498 | 0.1562474 | 0.0072332993 |
| **60.00** | 0.31464955 | 0.09285507 | 0.34872106 | 0.107789226 | 0.0026990052 |
| **70.00** | 0.22466943 | 0.062484633 | 0.25467667 | 0.07435975 | 0.0010070964 |
| **80.00** | 0.15814884 | 0.042047564 | 0.18465964 | 0.051298007 | 3.7578403E-4 |
| **90.00** | 0.10972376 | 0.028294917 | 0.13408118 | 0.035388574 | 1.4021859E-4 |
| **100.00** | 0.074756466 | 0.019040398 | 0.09135261 | 0.02441325 | 5.232062E-5 |
| **110.00** | 0.043375455 | 0.012812789 | 0.05306903 | 0.016841786 | 1.9522713E-5 |
| **120.00** | 0.027412798 | 0.008622064 | 0.033921137 | 0.011618517 | 7.284629E-6 |
| **130.00** | 0.013261885 | 0.0058020153 | 0.015103765 | 0.00801518 | 2.7181584E-6 |
| **140.00** | 0.0042361245 | 0.0039043294 | 0.0064546186 | 0.0055293725 | 1.014243E-6 |
| **150.00** | 0.0 | 0.0026273266 | 0.0020002816 | 0.0038145068 | 3.7845072E-7 |
| **160.00** | 0.0 | 0.0017679976 | 0.0016958808 | 0.0026314855 | 1.4121363E-7 |
| **170.00** | 0.0 | 0.0011897323 | 7.4357184E-4 | 0.0018153632 | 5.2691906E-8 |
| **180.00** | 0.0 | 8.0060237E-4 | 2.2095747E-4 | 0.0012523511 | 1.9661252E-8 |
| **190.00** | 0.0 | 5.3874654E-4 | 1.1477377E-4 | 8.6395006E-4 | 7.3363235E-9 |
| **200.00** | 0.0 | 3.6253678E-4 | 8.582275E-5 | 5.960068E-4 | 2.7374474E-9 |
| **210.00** | 0.0 | 2.439606E-4 | 0.0 | 4.1116276E-4 | 1.0214405E-9 |

### Moment Release Variability Plots
*[(top)](#bruce-2142)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2142)*

Example rupture plots:

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![example](resources/trigger_within_prev_m6_example_re_rup.png) |  |  |
| ![example](resources/trigger_within_prev_m6_example_new_hypo.png) | ![example](resources/trigger_within_prev_m6.5_example_new_hypo.png) |  |

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![hypocenter plot](resources/trigger_within_prev_m6_1yr.png) | ![hypocenter plot](resources/trigger_within_prev_m6.5_1yr.png) | ![hypocenter plot](resources/trigger_within_prev_m7_1yr.png) |
| ![hypocenter plot](resources/trigger_within_prev_m6_10yr.png) | ![hypocenter plot](resources/trigger_within_prev_m6.5_10yr.png) | ![hypocenter plot](resources/trigger_within_prev_m7_10yr.png) |
| ![hypocenter plot](resources/trigger_within_prev_m6_100yr.png) | ![hypocenter plot](resources/trigger_within_prev_m6.5_100yr.png) | ![hypocenter plot](resources/trigger_within_prev_m7_100yr.png) |

## Input File
*[(top)](#bruce-2142)*

```
  A_1 = 0.005
  fA = .1
  B_1 = 0.006
  muSlipAmp_1 = .1
  muSlipInvDist_1 = 1.0
  cohesion = 2.0
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
  writeTransitions = 0
  minDtWrite = 0
  minDtWriteCoseismic = 0
  minDtWriteInterseismic = 0
  minMagWrite = 0
  writeStiffness = 0
  stressRateSpecification = 2
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
  tauDotFname =  tauDotMod.in
  sigmaDotFname =  sigmaDotMod.in
  KZeroFname = zfault_Deepen_KZero.in
  pinnedFname =  
  neighborFname = 
  stressRateFname =  
  slowSlipFname = 
  writePatchFname = 
  DEBUG = 0
  ZBrentUpperBracket = 0
```
