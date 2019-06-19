# Bruce 3013
## Metadata
| **Catalog** | Bruce 3013 |
|-----|-----|
| **Author** | Bruce Shaw, 2019/01/13 |
| **Description** | New const dip fault smoothing.  smoothF=1e6.  V=1.  fracArea=0.99.  b=.01 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 999,999 events in 150,137 years |
| **Frictional Params** | a=0.001, b=0.01, (b-a)=0.009, ddotEQ=1 |

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
*[(top)](#bruce-3013)*


### Full Catalog GMPE Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-3013)*

* [ASK2014](bbp_LA_BASIN_863/gmpe_bbp_comparisons_ASK2014/)
* [NGAWest_2014_NoIdr](bbp_LA_BASIN_863/gmpe_bbp_comparisons_NGAWest_2014_NoIdr/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-3013)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-3013)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-3013)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-3013)*

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
*[(top)](#bruce-3013)*

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
*[(top)](#bruce-3013)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-3013)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-3013)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-3013)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-3013)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-3013)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-3013)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-3013)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-3013)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-3013)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0035010143 | 0.0024789644 | 0.0025706266 | 0.0021508513 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 2.6877865E-4 | 2.5237026E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0012267333 | 0.0010104569 | 0.0012267333 | 0.0011818117 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 5.926914E-4 | 5.7173404E-4 | 5.926914E-4 | 5.867645E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 7.925524E-4 | 7.240141E-4 | 7.925524E-4 | 7.843437E-4 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 6.685008E-4 | 5.920608E-4 | 5.720161E-4 | 5.580136E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.0053824647 | 0.0049371915 | 0.0052790884 | 0.0048165596 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0012267333 | 0.0011816929 | 0.0012129499 | 0.0011902491 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0012474086 | 0.0011469984 | 0.0010613311 | 0.0010271927 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 1.3094344E-4 | 1.0472103E-4 | 0.0 | 0.0 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0017160483 | 0.0015333026 | 0.0016609143 | 0.0016199903 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.001984827 | 0.0017432391 | 0.0018952341 | 0.0017957271 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.004603696 | 0.0044984105 | 0.004603696 | 0.004545353 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0031081839 | 0.0029144823 | 0.003101292 | 0.0030637947 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0046312627 | 0.0045711063 | 0.0046312627 | 0.0045743114 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.0047070724 | 0.0045921463 | 0.00465883 | 0.004587442 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.00438316 | 0.0041993237 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 2.8945392E-4 | 2.7000345E-4 | 1.5161873E-4 | 1.4296536E-4 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0022880645 | 0.002167378 | 0.0021709045 | 0.0021161751 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0022742809 | 0.0019778672 | 0.0019710434 | 0.0018995566 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0021364456 | 0.002012566 | 0.0021364456 | 0.002113672 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0017918576 | 0.001438355 | 0.0017780742 | 0.0012739787 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.004259108 | 0.004061344 | 0.004259108 | 0.0042144456 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.002267389 | 0.0018738158 | 0.0021157705 | 0.0016926138 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.005899347 | 0.005219806 | 0.0058786715 | 0.0056707747 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.005899347 | 0.005219806 | 0.0058717798 | 0.0056592585 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.0045003197 | 0.004402913 | 0.0045003197 | 0.0044524637 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.005706378 | 0.0035934714 | 0.00442451 | 0.003912846 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0022604973 | 0.0020172563 | 0.0022604973 | 0.0022041975 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0024603584 | 0.002090463 | 0.0024534666 | 0.0023601642 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.0045209946 | 0.00437587 | 0.0045003197 | 0.004443235 |

### Paleo Open Interval Plots
*[(top)](#bruce-3013)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-3013)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 468.92 | 0.0021325771 | 310 | 473.61 | 0.0021114585 | 306.94 |
| **FRA** | 119.00 | 0.008403362 | 145100.81 | 0.0 | 0 | ∞ | 0.0 | 0 |
| **COA** | 181.00 | 0.005524862 | 170.14 | 0.005877389 | 853 | 176.37 | 0.0056698145 | 822.88 |
| **SCZ** | 106.00 | 0.009433962 | 322.34 | 0.0031023477 | 450 | 326.13 | 0.003066269 | 444.76 |
| **TYS** | 329.00 | 0.0030395137 | 528.94 | 0.0018905854 | 275 | 559.47 | 0.0017874023 | 260 |
| **TOTAL** | 31.61 | 0.0316373 | 76.83 | 0.013015671 | 1888 | 79.09 | 0.012643606 | 1834.05 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.99521685 | 0.8779578 | 0.9954479 | 0.8812305 | 0.72878754 |
| **20.00** | 0.97631586 | 0.77080995 | 0.9774526 | 0.77656716 | 0.53113127 |
| **30.00** | 0.95236945 | 0.6767387 | 0.9548842 | 0.6843347 | 0.3870819 |
| **40.00** | 0.9203499 | 0.59414804 | 0.92457616 | 0.6030566 | 0.28210047 |
| **50.00** | 0.886015 | 0.5216369 | 0.8918615 | 0.53143185 | 0.2055913 |
| **60.00** | 0.83483964 | 0.4579752 | 0.8427649 | 0.46831396 | 0.14983238 |
| **70.00** | 0.77771324 | 0.40208292 | 0.7882527 | 0.41269252 | 0.10919597 |
| **80.00** | 0.7293709 | 0.35301185 | 0.74214244 | 0.36367723 | 0.079580665 |
| **90.00** | 0.66114175 | 0.30992952 | 0.67638135 | 0.32048348 | 0.057997398 |
| **100.00** | 0.59635633 | 0.27210507 | 0.6152532 | 0.2824198 | 0.04226778 |
| **110.00** | 0.5352527 | 0.23889677 | 0.5554378 | 0.24887694 | 0.030804234 |
| **120.00** | 0.47833344 | 0.2097413 | 0.5004258 | 0.21931796 | 0.022449743 |
| **130.00** | 0.4121184 | 0.18414402 | 0.4347723 | 0.19326967 | 0.016361093 |
| **140.00** | 0.3484356 | 0.16167068 | 0.37191927 | 0.17031513 | 0.011923761 |
| **150.00** | 0.28839222 | 0.14194004 | 0.3112628 | 0.15008688 | 0.008689889 |
| **160.00** | 0.21857028 | 0.124617375 | 0.2409373 | 0.13226114 | 0.0063330824 |
| **170.00** | 0.1289619 | 0.1094088 | 0.15336221 | 0.11655255 | 0.0046154717 |
| **180.00** | 0.06314728 | 0.09605631 | 0.08579627 | 0.10270966 | 0.0033636983 |
| **190.00** | 0.030210923 | 0.0843334 | 0.05003539 | 0.09051088 | 0.0024514215 |
| **200.00** | 0.005166675 | 0.074041165 | 0.02270603 | 0.07976095 | 0.0017865654 |
| **210.00** | 0.0 | 0.06500502 | 0.016683124 | 0.07028778 | 0.0013020267 |
| **220.00** | 0.0 | 0.057071667 | 0.014050217 | 0.061939735 | 9.489008E-4 |
| **230.00** | 0.0 | 0.050106518 | 0.011789716 | 0.054583184 | 6.915471E-4 |
| **240.00** | 0.0 | 0.043991413 | 0.010272683 | 0.048100363 | 5.039909E-4 |
| **250.00** | 0.0 | 0.038622603 | 0.008237159 | 0.042387508 | 3.673023E-4 |
| **260.00** | 0.0 | 0.03390902 | 0.0063464683 | 0.037353165 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.02977069 | 0.0049195285 | 0.032916747 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.02613741 | 0.0038717694 | 0.029007241 | 1.4217607E-4 |
| **290.00** | 0.0 | 0.022947544 | 0.002833659 | 0.025562067 | 1.0361615E-4 |
| **300.00** | 0.0 | 0.020146975 | 0.0015514164 | 0.022526072 | 7.551416E-5 |
| **310.00** | 0.0 | 0.017688196 | 7.522849E-4 | 0.019850662 | 5.503378E-5 |
| **320.00** | 0.0 | 0.01552949 | 3.9149908E-4 | 0.017493008 | 4.0107934E-5 |
| **330.00** | 0.0 | 0.013634237 | 2.5233225E-4 | 0.015415372 | 2.9230163E-5 |
| **340.00** | 0.0 | 0.011970285 | 1.7631627E-4 | 0.0135844955 | 2.1302578E-5 |
| **350.00** | 0.0 | 0.010509406 | 1.11579735E-4 | 0.011971072 | 1.5525055E-5 |
| **360.00** | 0.0 | 0.009226816 | 3.0175339E-5 | 0.010549273 | 1.1314466E-5 |
| **370.00** | 0.0 | 0.0081007555 | 0.0 | 0.009296342 | 8.245842E-6 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-3013)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 472.74 | 0.0021153481 | 307 | 592.51 | 0.0016877331 | 244.8 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 170.34 | 0.005870491 | 852 | 177.03 | 0.0056488365 | 819.82 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 1071.46 | 9.333087E-4 | 135 | 1441.28 | 6.9382985E-4 | 99.85 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 216.00 | 0.0046296436 | 672 | 218.64 | 0.0045737587 | 663.89 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 214.72 | 0.004657242 | 676 | 218.00 | 0.004587213 | 665.84 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 388.25 | 0.002575629 | 373 | 464.19 | 0.0021543058 | 312.05 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 1260.76 | 7.931697E-4 | 115 | 1271.99 | 7.861701E-4 | 113.96 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 1753.46 | 5.703011E-4 | 83 | 1797.52 | 5.5632077E-4 | 80.98 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 234.96 | 0.004256114 | 618 | 237.36 | 0.0042129774 | 611.69 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 468.92 | 0.0021325771 | 310 | 473.84 | 0.002110423 | 306.79 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 6732.13 | 1.4854138E-4 | 21 | 6966.92 | 1.4353539E-4 | 20.29 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 460.43 | 0.0021718717 | 315 | 471.95 | 0.0021188857 | 307.32 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 561.50 | 0.0017809289 | 258 | 883.11 | 0.0011323579 | 163.53 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 221.99 | 0.0045046345 | 653 | 224.86 | 0.0044472446 | 644.68 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 225.92 | 0.0044262884 | 642 | 256.79 | 0.0038941896 | 564.86 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 442.38 | 0.002260519 | 328 | 453.70 | 0.0022041127 | 319.83 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 145100.81 | 0.0 | 0 | ∞ | 0.0 | 0 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 322.34 | 0.0031023477 | 450 | 326.45 | 0.0030632857 | 444.31 |
| **RodgersCreek** | 325.31 | 0.003074 | 506.30 | 0.001975101 | 286 | 525.21 | 0.0019040016 | 275.69 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 145100.81 | 0.0 | 0 | ∞ | 0.0 | 0 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 600.79 | 0.0016644623 | 241 | 615.18 | 0.0016255492 | 235.34 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 528.94 | 0.0018905854 | 275 | 557.99 | 0.001792132 | 260.72 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 170.14 | 0.005877389 | 853 | 176.37 | 0.0056700176 | 822.9 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 818.47 | 0.0012217907 | 178 | 847.54 | 0.0011798891 | 171.9 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 820.07 | 0.0012194113 | 177 | 837.50 | 0.0011940359 | 173.32 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 217.29 | 0.0046020453 | 668 | 220.17 | 0.004541881 | 659.27 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 221.99 | 0.0045046345 | 653 | 224.24 | 0.0044594896 | 646.43 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 941.27 | 0.001062394 | 154 | 975.42 | 0.0010251944 | 148.61 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1690.25 | 5.9162854E-4 | 86 | 1706.73 | 5.859159E-4 | 85.17 |
| **TOTAL** | 9.11 | 0.1097689 | 21.97 | 0.045515653 | 6605 | 23.05 | 0.04339223 | 6296.89 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9260324 | 0.6343487 | 0.93208426 | 0.64796257 | 0.33364123 |
| **20.00** | 0.77107173 | 0.40239823 | 0.7866901 | 0.41985554 | 0.11131647 |
| **30.00** | 0.6038042 | 0.2552608 | 0.626369 | 0.27205068 | 0.037139766 |
| **40.00** | 0.45188728 | 0.16192433 | 0.47732854 | 0.17627865 | 0.012391358 |
| **50.00** | 0.3136139 | 0.10271648 | 0.34026343 | 0.114221975 | 0.004134268 |
| **60.00** | 0.20527317 | 0.06515807 | 0.22609477 | 0.074011564 | 0.0013793623 |
| **70.00** | 0.14549513 | 0.041332934 | 0.16038072 | 0.047956727 | 4.6021215E-4 |
| **80.00** | 0.09140615 | 0.02621949 | 0.10305446 | 0.031074164 | 1.5354574E-4 |
| **90.00** | 0.051479604 | 0.0166323 | 0.05920206 | 0.020134896 | 5.1229195E-5 |
| **100.00** | 0.028692802 | 0.010550677 | 0.03400012 | 0.0130466595 | 1.7092172E-5 |
| **110.00** | 0.018242907 | 0.0066928077 | 0.021469679 | 0.008453747 | 5.702653E-6 |
| **120.00** | 0.010151761 | 0.0042455737 | 0.012262377 | 0.005477712 | 1.9026403E-6 |
| **130.00** | 0.0083344905 | 0.002693174 | 0.010265078 | 0.0035493525 | 6.347993E-7 |
| **140.00** | 0.0052673146 | 0.0017084113 | 0.006326058 | 0.0022998478 | 2.1179521E-7 |
| **150.00** | 0.0017491454 | 0.0010837284 | 0.0022435007 | 0.0014902153 | 7.066362E-8 |
| **160.00** | 0.0012015273 | 6.874617E-4 | 0.001913144 | 9.6560374E-4 | 2.3576296E-8 |
| **170.00** | 0.0 | 4.360904E-4 | 3.758284E-5 | 6.2567514E-4 | 7.866025E-9 |
| **180.00** | 0.0 | 2.7663336E-4 | 1.39050235E-5 | 4.0541406E-4 | 2.6244302E-9 |
| **190.00** | 0.0 | 1.7548201E-4 | 0.0 | 2.6269315E-4 | 8.756182E-10 |

### Moment Release Variability Plots
*[(top)](#bruce-3013)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-3013)*

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
*[(top)](#bruce-3013)*

```
  A_1 = 0.001
  fA = .1
  B_1 = 0.010
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
  nEq = 1000000
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
  receiverElementAreaFrac = 0.99
  receiverElementIntTol = 1.0e-4
  receiverElementSubdivisionMax = 4
  tgfDist1 = 3
  tgfDist1 = 10
  nDunQuadOrders = 5
```
