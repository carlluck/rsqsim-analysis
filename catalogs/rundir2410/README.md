# Bruce 2410
## Metadata
| **Catalog** | Bruce 2410 |
|-----|-----|
| **Author** | Bruce Shaw, 2017/12/22 |
| **Description** | factorNormal=2.0;  50ky reference time; 212ky spinup |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 302,499 events in 38,131 years |
| **Frictional Params** | a=0.001, b=0.008, (b-a)=0.007, ddotEQ=1 |

* [Metadata](#metadata)
* [BBP Calculations, LA Basin 863 (m/s) Velocity Model](#bbp-calculations-la-basin-863-ms-velocity-model)
  * [Full Catalog GMPE Comparisons, LA Basin 863 (m/s)](#full-catalog-gmpe-comparisons-la-basin-863-ms)
  * [Full Catalog RotD100/RotD50 Ratios, LA Basin 863 (m/s)](bbp_LA_BASIN_863/catalog_rotd_ratio_comparisons/)
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
*[(top)](#bruce-2410)*


### Full Catalog GMPE Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-2410)*

* [BSSA2014](bbp_LA_BASIN_863/gmpe_bbp_comparisons_BSSA2014/)
* [NGAWest_2014_NoIdr](bbp_LA_BASIN_863/gmpe_bbp_comparisons_NGAWest_2014_NoIdr/)

### Full Catalog RotD100/RotD50 Ratios, LA Basin 863 (m/s)
*[(top)](#bruce-2410)*

[Full Catalog RotD100/RotD50 Ratios Plotted Here](bbp_LA_BASIN_863/catalog_rotd_ratio_comparisons/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2410)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2410)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2410)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2410)*

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
*[(top)](#bruce-2410)*

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
*[(top)](#bruce-2410)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2410)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2410)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2410)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2410)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2410)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2410)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2410)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2410)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2410)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0013450887 | 6.782842E-4 | 8.2539534E-4 | 7.598562E-4 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 9.171059E-5 | 7.166998E-5 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0013145185 | 0.0010311803 | 8.8653574E-4 | 8.650679E-4 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 5.8083376E-4 | 5.403649E-4 | 4.8912317E-4 | 4.8028643E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 8.8653574E-4 | 8.032328E-4 | 7.9482514E-4 | 7.779135E-4 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 5.1969336E-4 | 4.3551065E-4 | 3.3627218E-4 | 3.294405E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.005594346 | 0.0051092855 | 0.0050440826 | 0.0049055805 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0010393867 | 9.781629E-4 | 0.0010088165 | 9.97189E-4 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 8.2539534E-4 | 7.067265E-4 | 7.0311455E-4 | 6.9594424E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 2.4456158E-4 | 1.5165469E-4 | 6.1140396E-5 | 5.2343647E-5 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0019870629 | 0.0016811903 | 0.0016507907 | 0.0016247298 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.002017633 | 0.0013320761 | 0.0015896503 | 0.0014742353 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0032098708 | 0.0031712712 | 0.0032098708 | 0.003177772 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0034238622 | 0.0028087732 | 0.0027207476 | 0.002660389 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0032098708 | 0.0031738388 | 0.0032098708 | 0.003177772 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.0032098708 | 0.0031385773 | 0.0032098708 | 0.0031753394 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0034850026 | 0.0033293169 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 9.171059E-5 | 7.913842E-5 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0018036417 | 0.0016498505 | 0.0016507907 | 0.0016104433 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0015896503 | 0.0012334652 | 0.0014062291 | 0.0013057997 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0021399138 | 0.0020724172 | 0.0021093437 | 0.0020880462 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0014979397 | 9.194819E-4 | 5.1969336E-4 | 4.7836598E-4 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.0048606615 | 0.0046799965 | 0.0048606615 | 0.00480289 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0029958794 | 0.001784223 | 0.0017730715 | 0.0014188683 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.005686057 | 0.004251024 | 0.0031793006 | 0.0031220117 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.005686057 | 0.004251024 | 0.0031793006 | 0.0031183462 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.004493819 | 0.004429667 | 0.004493819 | 0.0044480786 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.0048606615 | 0.0031341563 | 0.0039129853 | 0.003747831 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 4.2798277E-4 | 2.6275075E-4 | 4.2798277E-4 | 3.7013105E-4 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.002476186 | 0.0015649348 | 0.0014979397 | 0.001359363 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.004493819 | 0.004395854 | 0.004493819 | 0.004447214 |

### Paleo Open Interval Plots
*[(top)](#bruce-2410)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2410)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 480.03 | 0.0020832235 | 69 | 484.81 | 0.0020626835 | 68.32 |
| **FRA** | 119.00 | 0.008403362 | 189.45 | 0.0052785617 | 172 | 195.36 | 0.005118717 | 166.81 |
| **COA** | 181.00 | 0.005524862 | 315.28 | 0.0031717638 | 104 | 321.06 | 0.003114656 | 102.13 |
| **SCZ** | 106.00 | 0.009433962 | 364.05 | 0.002746872 | 89 | 371.83 | 0.0026893944 | 87.14 |
| **TYS** | 329.00 | 0.0030395137 | 566.76 | 0.001764415 | 57 | 678.17 | 0.0014745669 | 47.47 |
| **TOTAL** | 31.61 | 0.0316373 | 66.62 | 0.015011463 | 491 | 69.40 | 0.0144101335 | 471.35 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.98982936 | 0.8606093 | 0.99052894 | 0.8658 | 0.72878754 |
| **20.00** | 0.9682338 | 0.7406484 | 0.97116834 | 0.74960965 | 0.53113127 |
| **30.00** | 0.933377 | 0.6374089 | 0.9388437 | 0.649012 | 0.3870819 |
| **40.00** | 0.8878078 | 0.54856 | 0.89673567 | 0.5619146 | 0.28210047 |
| **50.00** | 0.8378476 | 0.47209588 | 0.8487143 | 0.4865057 | 0.2055913 |
| **60.00** | 0.7839912 | 0.4062901 | 0.7972289 | 0.42121664 | 0.14983238 |
| **70.00** | 0.7195234 | 0.34965706 | 0.7344105 | 0.36468935 | 0.10919597 |
| **80.00** | 0.65897465 | 0.30091813 | 0.6779842 | 0.31574804 | 0.079580665 |
| **90.00** | 0.5949661 | 0.25897294 | 0.61664784 | 0.27337465 | 0.057997398 |
| **100.00** | 0.5102919 | 0.22287452 | 0.53231484 | 0.23668778 | 0.04226778 |
| **110.00** | 0.46146476 | 0.19180788 | 0.48524708 | 0.20492429 | 0.030804234 |
| **120.00** | 0.4060508 | 0.16507165 | 0.43085787 | 0.17742345 | 0.022449743 |
| **130.00** | 0.35530335 | 0.1420622 | 0.37834486 | 0.15361322 | 0.016361093 |
| **140.00** | 0.31714424 | 0.12226006 | 0.3405302 | 0.13299833 | 0.011923761 |
| **150.00** | 0.27990645 | 0.10521814 | 0.30032837 | 0.11514995 | 0.008689889 |
| **160.00** | 0.24587385 | 0.09055171 | 0.26343033 | 0.09969683 | 0.0063330824 |
| **170.00** | 0.21928678 | 0.077929646 | 0.23197469 | 0.08631752 | 0.0046154717 |
| **180.00** | 0.16486952 | 0.06706698 | 0.1780438 | 0.074733704 | 0.0033636983 |
| **190.00** | 0.10904887 | 0.057718467 | 0.12128129 | 0.06470444 | 0.0024514215 |
| **200.00** | 0.092257984 | 0.04967305 | 0.09962123 | 0.056021105 | 0.0017865654 |
| **210.00** | 0.06805563 | 0.042749092 | 0.06936901 | 0.048503075 | 0.0013020267 |
| **220.00** | 0.05014797 | 0.036790267 | 0.054964542 | 0.04199396 | 9.489008E-4 |
| **230.00** | 0.03373699 | 0.031662047 | 0.032596335 | 0.03635837 | 6.915471E-4 |
| **240.00** | 0.016333321 | 0.02724865 | 0.021197978 | 0.03147908 | 5.039909E-4 |
| **250.00** | 0.0 | 0.023450444 | 0.0049557425 | 0.027254587 | 3.673023E-4 |
| **260.00** | 0.0 | 0.020181669 | 0.003947534 | 0.02359702 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.017368533 | 0.0014166834 | 0.0204303 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.0149475215 | 5.354556E-4 | 0.017688554 | 1.4217607E-4 |
| **290.00** | 0.0 | 0.012863976 | 3.278179E-4 | 0.01531475 | 1.0361615E-4 |
| **300.00** | 0.0 | 0.011070858 | 2.4711178E-4 | 0.013259511 | 7.551416E-5 |
| **310.00** | 0.0 | 0.009527683 | 0.0 | 0.011480085 | 5.503378E-5 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2410)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 499.64 | 0.002001441 | 65 | 565.75 | 0.0017675649 | 57.21 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 315.28 | 0.0031717638 | 104 | 322.43 | 0.0031014031 | 101.7 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 1895.78 | 5.274865E-4 | 18 | 2485.21 | 4.023798E-4 | 13.55 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 312.53 | 0.003199714 | 105 | 315.78 | 0.0031667857 | 103.91 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 312.53 | 0.003199714 | 105 | 315.50 | 0.003169568 | 104 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 1211.84 | 8.2518975E-4 | 27 | 1317.01 | 7.59295E-4 | 24.87 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 1194.67 | 8.37048E-4 | 27 | 1225.36 | 8.1608765E-4 | 26.31 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 2946.33 | 3.394053E-4 | 11 | 3024.32 | 3.3065234E-4 | 10.71 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 206.63 | 0.004839505 | 159 | 209.40 | 0.004775659 | 156.89 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 480.03 | 0.0020832235 | 69 | 485.38 | 0.0020602325 | 68.24 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 32711.60 | 0.0 | 0 | ∞ | 0.0 | 0 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 607.27 | 0.0016467241 | 54 | 623.38 | 0.0016041577 | 52.63 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 3411.08 | 2.931625E-4 | 9 | 3466.64 | 2.8846363E-4 | 8.86 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 221.88 | 0.0045068422 | 147 | 224.27 | 0.004458929 | 145.42 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 239.87 | 0.0041688946 | 137 | 254.06 | 0.0039360337 | 129.32 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 2416.79 | 4.1377114E-4 | 14 | 2749.73 | 3.6367212E-4 | 12.19 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 189.45 | 0.0052785617 | 172 | 195.45 | 0.00511634 | 166.72 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 364.05 | 0.002746872 | 89 | 372.10 | 0.0026874526 | 87.05 |
| **RodgersCreek** | 325.31 | 0.003074 | 707.84 | 0.0014127494 | 46 | 756.65 | 0.0013216077 | 42.93 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 11078.67 | 9.026351E-5 | 3 | 12696.07 | 7.876455E-5 | 2.56 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 598.94 | 0.0016696048 | 54 | 609.33 | 0.0016411479 | 53.06 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 566.76 | 0.001764415 | 57 | 676.91 | 0.0014773002 | 47.49 |
| **Compton** | 2658.16 | 3.762E-4 | 32711.60 | 0.0 | 0 | ∞ | 0.0 | 0 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 315.28 | 0.0031717638 | 104 | 320.62 | 0.0031189753 | 102.26 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 1109.34 | 9.014363E-4 | 29 | 1136.47 | 8.799161E-4 | 28.3 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 996.27 | 0.0010037434 | 33 | 1007.66 | 9.923965E-4 | 32.63 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 312.53 | 0.003199714 | 105 | 315.62 | 0.0031683205 | 103.95 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 221.88 | 0.0045068422 | 147 | 223.88 | 0.0044667185 | 145.69 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1423.28 | 7.0260157E-4 | 23 | 1440.97 | 6.9397874E-4 | 22.73 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1951.90 | 5.1232136E-4 | 16 | 1991.73 | 5.0207495E-4 | 15.7 |
| **TOTAL** | 9.08 | 0.1101451 | 28.34 | 0.03528463 | 1154 | 29.34 | 0.03408593 | 1114.82 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.95497656 | 0.7026852 | 0.9569389 | 0.711159 | 0.33238843 |
| **20.00** | 0.84997964 | 0.49376646 | 0.85636646 | 0.5057471 | 0.110482074 |
| **30.00** | 0.73548716 | 0.34696236 | 0.74827766 | 0.35966656 | 0.036722966 |
| **40.00** | 0.59893215 | 0.24380532 | 0.61675954 | 0.2557801 | 0.012206289 |
| **50.00** | 0.47517294 | 0.17131838 | 0.4947944 | 0.18190031 | 0.004057229 |
| **60.00** | 0.35323557 | 0.12038289 | 0.37487286 | 0.12936004 | 0.001348576 |
| **70.00** | 0.24564493 | 0.08459128 | 0.27064028 | 0.09199555 | 4.4825108E-4 |
| **80.00** | 0.18938813 | 0.059441034 | 0.21006238 | 0.06542346 | 1.4899348E-4 |
| **90.00** | 0.1412078 | 0.041768335 | 0.15873796 | 0.04652648 | 4.952371E-5 |
| **100.00** | 0.109276645 | 0.02934999 | 0.1226107 | 0.033087723 | 1.6461108E-5 |
| **110.00** | 0.07221416 | 0.020623803 | 0.08352778 | 0.02353063 | 5.4714824E-6 |
| **120.00** | 0.03837877 | 0.0144920405 | 0.046555758 | 0.016734019 | 1.8186574E-6 |
| **130.00** | 0.021604024 | 0.010183342 | 0.02598973 | 0.011900548 | 6.045007E-7 |
| **140.00** | 0.014367221 | 0.0071556834 | 0.016146988 | 0.008463182 | 2.0092905E-7 |
| **150.00** | 0.00894283 | 0.005028193 | 0.010810281 | 0.006018667 | 6.678649E-8 |
| **160.00** | 0.0 | 0.0035332367 | 6.2837556E-4 | 0.004280229 | 2.2199057E-8 |
| **170.00** | 0.0 | 0.002482753 | 5.12836E-4 | 0.0030439233 | 7.37871E-9 |
| **180.00** | 0.0 | 0.0017445937 | 1.0171402E-4 | 0.0021647133 | 2.452598E-9 |
| **190.00** | 0.0 | 0.0012259001 | 7.695042E-5 | 0.0015394553 | 8.152152E-10 |
| **200.00** | 0.0 | 8.6142187E-4 | 0.0 | 0.0010947974 | 2.709681E-10 |

### Moment Release Variability Plots
*[(top)](#bruce-2410)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2410)*

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
*[(top)](#bruce-2410)*

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
  initTauFname = tauMod.in
  initSigmaFname = sigmaMod.in
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
  neighborFname = 
  stressRateFname =  
  slowSlipFname = 
  writePatchFname = 
  DEBUG = 0
  ZBrentUpperBracket = 0
```
