# Bruce 2413
## Metadata
| **Catalog** | Bruce 2413 |
|-----|-----|
| **Author** | Bruce Shaw, 2017/12/22 |
| **Description** | factorNormal=2.0;  100ky reference time; 85ky spinup; sqrt(slipRate) |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 1,999,999 events in 209,234 years |
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
*[(top)](#bruce-2413)*


### Full Catalog GMPE Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-2413)*

* [BSSA2014](bbp_LA_BASIN_863/gmpe_bbp_comparisons_BSSA2014/)
* [NGAWest_2014_NoIdr](bbp_LA_BASIN_863/gmpe_bbp_comparisons_NGAWest_2014_NoIdr/)

### Full Catalog RotD100/RotD50 Ratios, LA Basin 863 (m/s)
*[(top)](#bruce-2413)*

[Full Catalog RotD100/RotD50 Ratios Plotted Here](bbp_LA_BASIN_863/catalog_rotd_ratio_comparisons/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2413)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2413)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2413)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2413)*

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
*[(top)](#bruce-2413)*

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
*[(top)](#bruce-2413)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2413)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2413)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2413)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2413)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2413)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2413)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2413)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2413)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2413)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0011800395 | 6.2119134E-4 | 8.0791087E-4 | 7.036844E-4 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 8.8135734E-5 | 7.881801E-5 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0011506609 | 9.1867405E-4 | 0.0010282502 | 9.885097E-4 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 6.7081087E-4 | 5.842579E-4 | 5.777787E-4 | 5.5981823E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0011261788 | 8.8835217E-4 | 7.491537E-4 | 7.342453E-4 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 4.8474653E-4 | 3.7572967E-4 | 3.3295722E-4 | 3.189663E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.006032401 | 0.0048972582 | 0.0041766544 | 0.004103347 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0010772145 | 9.9302E-4 | 0.0010331466 | 0.0010187873 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 6.1205373E-4 | 5.745626E-4 | 5.826751E-4 | 5.760303E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 1.6647861E-4 | 1.02287704E-4 | 3.4275006E-5 | 3.2603042E-5 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0014542396 | 0.0013206844 | 0.0014444467 | 0.0014288543 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0014395503 | 0.0010607113 | 0.0010821109 | 0.0010559787 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.003158197 | 0.0030755808 | 0.0031141292 | 0.0030810465 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0022180825 | 0.0019321862 | 0.0021299468 | 0.002086168 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0031484042 | 0.0030872836 | 0.003123922 | 0.003088237 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.003329572 | 0.003115901 | 0.0031288185 | 0.0030793762 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0034470866 | 0.0031062716 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 2.3502862E-4 | 1.7112262E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.002781172 | 0.0021760922 | 0.0012779682 | 0.0012457831 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0013612075 | 0.001025013 | 0.0010184573 | 9.865302E-4 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0027273113 | 0.0024617047 | 0.0024580078 | 0.002417741 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0010968002 | 6.841884E-4 | 2.986822E-4 | 2.8453194E-4 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.0039514187 | 0.003828067 | 0.0039269365 | 0.0038871015 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.002883997 | 0.0016902584 | 0.0013269325 | 0.0011921292 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.004685883 | 0.003844175 | 0.0037457687 | 0.0036511042 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.004685883 | 0.003844175 | 0.0038094223 | 0.0036908065 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.0040836222 | 0.0039878567 | 0.004068933 | 0.0040195077 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.00440189 | 0.0032218646 | 0.0037898365 | 0.0035561305 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 7.491537E-4 | 4.8661345E-4 | 6.1695016E-4 | 5.0749653E-4 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0024971792 | 0.0015117079 | 0.001209418 | 0.00114462 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.0041570687 | 0.0040187296 | 0.0040738294 | 0.004023501 |

### Paleo Open Interval Plots
*[(top)](#bruce-2413)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2413)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 403.39 | 0.0024789926 | 507 | 410.99 | 0.0024331785 | 497.64 |
| **FRA** | 119.00 | 0.008403362 | 231.86 | 0.0043130317 | 880 | 237.07 | 0.0042181276 | 860.64 |
| **COA** | 181.00 | 0.005524862 | 264.08 | 0.0037867352 | 773 | 271.73 | 0.0036801773 | 751.24 |
| **SCZ** | 106.00 | 0.009433962 | 469.82 | 0.0021284851 | 435 | 479.46 | 0.0020856634 | 426.24 |
| **TYS** | 329.00 | 0.0030395137 | 910.32 | 0.0010985179 | 224 | 945.99 | 0.001057098 | 215.55 |
| **TOTAL** | 31.61 | 0.0316373 | 72.48 | 0.013796132 | 2817 | 74.26 | 0.013466085 | 2749.59 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9943012 | 0.8711324 | 0.9946243 | 0.8740123 | 0.72878754 |
| **20.00** | 0.97514075 | 0.7588716 | 0.97627944 | 0.7638975 | 0.53113127 |
| **30.00** | 0.94399476 | 0.6610777 | 0.946561 | 0.66765577 | 0.3870819 |
| **40.00** | 0.9013165 | 0.57588613 | 0.9055325 | 0.58353937 | 0.28210047 |
| **50.00** | 0.85830295 | 0.5016731 | 0.8640634 | 0.51002055 | 0.2055913 |
| **60.00** | 0.80976695 | 0.43702367 | 0.81697744 | 0.4457642 | 0.14983238 |
| **70.00** | 0.75099385 | 0.38070548 | 0.7596964 | 0.3896034 | 0.10919597 |
| **80.00** | 0.6971601 | 0.33164486 | 0.7073861 | 0.34051815 | 0.079580665 |
| **90.00** | 0.63938487 | 0.28890657 | 0.65115 | 0.29761705 | 0.057997398 |
| **100.00** | 0.57376814 | 0.25167587 | 0.587098 | 0.26012096 | 0.04226778 |
| **110.00** | 0.51431227 | 0.219243 | 0.52840483 | 0.22734891 | 0.030804234 |
| **120.00** | 0.43800715 | 0.19098969 | 0.45315215 | 0.19870575 | 0.022449743 |
| **130.00** | 0.3869651 | 0.1663773 | 0.40208083 | 0.17367126 | 0.016361093 |
| **140.00** | 0.33668905 | 0.14493665 | 0.35139543 | 0.15179081 | 0.011923761 |
| **150.00** | 0.2916104 | 0.12625901 | 0.30604085 | 0.13266703 | 0.008689889 |
| **160.00** | 0.24686393 | 0.10998832 | 0.2604646 | 0.11595262 | 0.0063330824 |
| **170.00** | 0.20457947 | 0.095814385 | 0.21745753 | 0.10134401 | 0.0046154717 |
| **180.00** | 0.16466339 | 0.083467014 | 0.17823377 | 0.08857591 | 0.0033636983 |
| **190.00** | 0.12253686 | 0.07271082 | 0.13429525 | 0.077416435 | 0.0024514215 |
| **200.00** | 0.10776514 | 0.063340746 | 0.11864213 | 0.06766291 | 0.0017865654 |
| **210.00** | 0.08064082 | 0.055178177 | 0.090243496 | 0.059138216 | 0.0013020267 |
| **220.00** | 0.0522435 | 0.0480675 | 0.060985 | 0.051687527 | 9.489008E-4 |
| **230.00** | 0.03298522 | 0.041873153 | 0.04018672 | 0.045175534 | 6.915471E-4 |
| **240.00** | 0.018885167 | 0.03647706 | 0.024636976 | 0.039483972 | 5.039909E-4 |
| **250.00** | 0.008122332 | 0.03177635 | 0.012697835 | 0.034509476 | 3.673023E-4 |
| **260.00** | 0.004886807 | 0.027681407 | 0.007918158 | 0.030161705 | 2.6768536E-4 |
| **270.00** | 0.0027443725 | 0.02411417 | 0.0039088186 | 0.026361702 | 1.9508575E-4 |
| **280.00** | 0.0022638226 | 0.021006634 | 0.0029946095 | 0.023040451 | 1.4217607E-4 |
| **290.00** | 0.0017832726 | 0.01829956 | 0.0025770979 | 0.020137636 | 1.0361615E-4 |
| **300.00** | 0.0 | 0.015941339 | 8.1854756E-4 | 0.017600542 | 7.551416E-5 |
| **310.00** | 0.0 | 0.013887016 | 7.0442987E-4 | 0.01538309 | 5.503378E-5 |
| **320.00** | 0.0 | 0.0120974295 | 4.427887E-4 | 0.0134450095 | 4.0107934E-5 |
| **330.00** | 0.0 | 0.010538463 | 2.9771082E-4 | 0.011751103 | 2.9230163E-5 |
| **340.00** | 0.0 | 0.009180396 | 2.212838E-4 | 0.010270609 | 2.1302578E-5 |
| **350.00** | 0.0 | 0.0079973405 | 9.299101E-5 | 0.008976638 | 1.5525055E-5 |
| **360.00** | 0.0 | 0.006966742 | 6.314231E-5 | 0.007845691 | 1.1314466E-5 |
| **370.00** | 0.0 | 0.0060689547 | 4.3166445E-5 | 0.006857231 | 8.245842E-6 |
| **380.00** | 0.0 | 0.005286863 | 0.0 | 0.0059933043 | 6.009467E-6 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2413)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 516.11 | 0.0019375752 | 395 | 589.92 | 0.0016951561 | 345.6 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 262.38 | 0.0038112607 | 778 | 270.99 | 0.0036901056 | 753.29 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 1253.82 | 7.9756405E-4 | 163 | 1914.45 | 5.22343E-4 | 106.4 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 320.56 | 0.003119561 | 637 | 324.13 | 0.0030851723 | 629.97 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 319.55 | 0.0031293707 | 639 | 324.60 | 0.0030806982 | 629.04 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 1235.06 | 8.0968003E-4 | 165 | 1419.78 | 7.043343E-4 | 143.49 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 1309.33 | 7.6374656E-4 | 155 | 1330.21 | 7.517628E-4 | 152.53 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 3009.32 | 3.3230145E-4 | 68 | 3169.89 | 3.1546823E-4 | 64.57 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 254.61 | 0.003927615 | 802 | 257.13 | 0.0038890243 | 794.12 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 403.39 | 0.0024789926 | 507 | 410.55 | 0.002435766 | 498.15 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 11919.93 | 8.389308E-5 | 17 | 14098.97 | 7.092717E-5 | 14.42 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 780.81 | 0.0012807173 | 261 | 798.87 | 0.0012517655 | 254.98 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 5877.19 | 1.7014943E-4 | 34 | 5966.12 | 1.6761299E-4 | 33.49 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 246.27 | 0.0040606074 | 829 | 249.24 | 0.004012256 | 819.1 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 258.11 | 0.003874251 | 791 | 274.31 | 0.003645565 | 744.33 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 1631.15 | 6.1306264E-4 | 126 | 1998.85 | 5.002883E-4 | 102.44 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 231.86 | 0.0043130317 | 880 | 237.13 | 0.004217044 | 860.43 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 469.82 | 0.0021284851 | 435 | 479.61 | 0.0020850326 | 426.14 |
| **RodgersCreek** | 325.31 | 0.003074 | 979.98 | 0.001020425 | 208 | 1014.93 | 9.852854E-4 | 200.85 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 20490.65 | 4.880274E-5 | 10 | 21883.55 | 4.5696415E-5 | 9.4 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 690.95 | 0.0014472842 | 295 | 698.15 | 0.0014323642 | 291.95 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 910.32 | 0.0010985179 | 224 | 945.92 | 0.0010571708 | 215.57 |
| **Compton** | 2658.16 | 3.762E-4 | 14543.12 | 6.8761045E-5 | 13 | 18041.03 | 5.5429202E-5 | 10.32 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 264.08 | 0.0037867352 | 773 | 271.64 | 0.0036813617 | 751.48 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 900.05 | 0.0011110448 | 227 | 959.78 | 0.0010419097 | 212.9 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 977.04 | 0.0010235014 | 209 | 990.07 | 0.0010100247 | 206.24 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 320.05 | 0.0031244657 | 638 | 323.77 | 0.003088606 | 630.67 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 246.27 | 0.0040606074 | 829 | 249.09 | 0.0040146555 | 819.63 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1699.57 | 5.883846E-4 | 120 | 1724.33 | 5.799349E-4 | 118.28 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1734.04 | 5.7668815E-4 | 118 | 1786.31 | 5.5981276E-4 | 114.52 |
| **TOTAL** | 9.08 | 0.1101451 | 27.67 | 0.036146257 | 7379 | 28.45 | 0.035154548 | 7176.56 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.95724154 | 0.69665664 | 0.9593425 | 0.7035999 | 0.33238843 |
| **20.00** | 0.84804004 | 0.48533052 | 0.85425764 | 0.49505275 | 0.110482074 |
| **30.00** | 0.714324 | 0.33810872 | 0.7242626 | 0.34831902 | 0.036722966 |
| **40.00** | 0.5662219 | 0.2355457 | 0.57897025 | 0.24507722 | 0.012206289 |
| **50.00** | 0.4413782 | 0.16409448 | 0.45444033 | 0.1724363 | 0.004057229 |
| **60.00** | 0.33012864 | 0.114317514 | 0.34360912 | 0.12132615 | 0.001348576 |
| **70.00** | 0.24271046 | 0.07964006 | 0.25511447 | 0.08536506 | 4.4825108E-4 |
| **80.00** | 0.1795623 | 0.055481777 | 0.1896383 | 0.06006284 | 1.4899348E-4 |
| **90.00** | 0.13815838 | 0.03865175 | 0.14653444 | 0.042260207 | 4.952371E-5 |
| **100.00** | 0.094266385 | 0.026927 | 0.10186043 | 0.029734274 | 1.6461108E-5 |
| **110.00** | 0.05807311 | 0.018758874 | 0.06318313 | 0.020921031 | 5.4714824E-6 |
| **120.00** | 0.042679183 | 0.013068494 | 0.046391167 | 0.014720034 | 1.8186574E-6 |
| **130.00** | 0.024122432 | 0.009104254 | 0.027213292 | 0.010357014 | 6.045007E-7 |
| **140.00** | 0.014536185 | 0.006342539 | 0.01643537 | 0.007287193 | 2.0092905E-7 |
| **150.00** | 0.010141885 | 0.004418572 | 0.011560043 | 0.005127268 | 6.678649E-8 |
| **160.00** | 0.0072426023 | 0.0030782276 | 0.007936236 | 0.003607545 | 2.2199057E-8 |
| **170.00** | 0.003351288 | 0.0021444678 | 0.0040119085 | 0.002538268 | 7.37871E-9 |
| **180.00** | 0.0022259618 | 0.0014939578 | 0.0025928367 | 0.001785925 | 2.452598E-9 |
| **190.00** | 0.0 | 0.0010407757 | 3.9020577E-4 | 0.0012565766 | 8.152152E-10 |
| **200.00** | 0.0 | 7.2506326E-4 | 1.9969566E-4 | 8.841271E-4 | 2.709681E-10 |
| **210.00** | 0.0 | 5.0512014E-4 | 4.0864703E-5 | 6.220717E-4 | 9.006666E-11 |
| **220.00** | 0.0 | 3.5189535E-4 | 0.0 | 4.3768954E-4 | 2.993712E-11 |

### Moment Release Variability Plots
*[(top)](#bruce-2413)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2413)*

Example rupture plots:

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
|  |  |  |
| ![example](resources/trigger_within_prev_m6_example_new_hypo.png) | ![example](resources/trigger_within_prev_m6.5_example_new_hypo.png) | ![example](resources/trigger_within_prev_m7_example_new_hypo.png) |

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![hypocenter plot](resources/trigger_within_prev_m6_1yr.png) | ![hypocenter plot](resources/trigger_within_prev_m6.5_1yr.png) | ![hypocenter plot](resources/trigger_within_prev_m7_1yr.png) |
| ![hypocenter plot](resources/trigger_within_prev_m6_10yr.png) | ![hypocenter plot](resources/trigger_within_prev_m6.5_10yr.png) | ![hypocenter plot](resources/trigger_within_prev_m7_10yr.png) |
| ![hypocenter plot](resources/trigger_within_prev_m6_100yr.png) | ![hypocenter plot](resources/trigger_within_prev_m6.5_100yr.png) | ![hypocenter plot](resources/trigger_within_prev_m7_100yr.png) |

## Input File
*[(top)](#bruce-2413)*

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
