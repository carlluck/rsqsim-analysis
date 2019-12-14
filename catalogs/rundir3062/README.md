# Bruce 3062
## Metadata
| **Catalog** | Bruce 3062 |
|-----|-----|
| **Author** | Bruce Shaw, 2019/02/08 |
| **Description** | SmoothF=1e5. Connected discontinuities. V=1. fracArea=0.99. b=.011 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.34 km^2 |
| **Length** | 999,999 events in 128,688 years |
| **Frictional Params** | a=0.001, b=0.011, (b-a)=0.01, ddotEQ=1 |

* [Metadata](#metadata)
* [BBP Calculations, LA Basin 863 (m/s) Velocity Model](#bbp-calculations-la-basin-863-ms-velocity-model)
  * [Full Catalog GMPE Comparisons, LA Basin 863 (m/s)](#full-catalog-gmpe-comparisons-la-basin-863-ms)
  * [Rotated Rupture Variability Comparisons, LA Basin 863 (m/s)](#rotated-rupture-variability-comparisons-la-basin-863-ms)
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
*[(top)](#bruce-3062)*


### Full Catalog GMPE Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-3062)*

* [ASK2014](bbp_LA_BASIN_863/gmpe_bbp_comparisons_ASK2014/)
* [NGAWest_2014_NoIdr](bbp_LA_BASIN_863/gmpe_bbp_comparisons_NGAWest_2014_NoIdr/)

### Rotated Rupture Variability Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-3062)*

* [M6.6, Reverse, Dip=45, Ztor=3, Closest Mag](bbp_LA_BASIN_863/rotated_ruptures_m6p6_reverse_filter_closest_mag/)
* [M6.6, Vertical Strike-Slip with Surface Rupture, Closest Mag](bbp_LA_BASIN_863/rotated_ruptures_m6p6_vert_ss_surface_filter_closest_mag/)
* [M7.2, Vertical Strike-Slip with Surface Rupture, Closest Mag](bbp_LA_BASIN_863/rotated_ruptures_m7p2_vert_ss_surface_filter_closest_mag/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-3062)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-3062)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-3062)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-3062)*

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
*[(top)](#bruce-3062)*

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
*[(top)](#bruce-3062)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-3062)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-3062)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-3062)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-3062)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-3062)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-3062)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-3062)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-3062)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-3062)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0030894827 | 0.0025867582 | 0.0024748212 | 0.0021320826 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 1.8601597E-4 | 1.8313756E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.002151315 | 0.0016569006 | 0.0016094425 | 0.0014951476 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 3.8820723E-4 | 3.7668928E-4 | 3.8820723E-4 | 3.8419172E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0014719524 | 0.0012244512 | 0.0011403587 | 0.0010315068 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 6.71275E-4 | 5.965466E-4 | 5.014343E-4 | 4.94985E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.008896416 | 0.0068999776 | 0.006898766 | 0.0062497123 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0010352193 | 0.0010195489 | 0.0010352193 | 0.0010223525 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0010513946 | 9.951956E-4 | 0.001019044 | 9.926888E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 1.2131476E-4 | 9.732469E-5 | 0.0 | 0.0 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0016175301 | 0.001512975 | 0.0015609165 | 0.0015089551 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0016822313 | 0.0015558315 | 0.0015690043 | 0.0015136579 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0034210763 | 0.003375765 | 0.003404901 | 0.003369219 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0034534268 | 0.0030926312 | 0.0030975703 | 0.003007819 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0034129887 | 0.003362325 | 0.003404901 | 0.0033661104 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.003518128 | 0.0034421124 | 0.0034857774 | 0.0034390718 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0034210763 | 0.0033805438 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 2.7498012E-4 | 2.5292148E-4 | 8.896416E-5 | 8.04673E-5 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0022645423 | 0.002139211 | 0.0020461755 | 0.0019729447 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.002013825 | 0.0017953898 | 0.0017711956 | 0.0017233664 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0019733869 | 0.0019462709 | 0.0019652992 | 0.001945518 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0024748212 | 0.0019963968 | 0.0023211557 | 0.0021953743 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.0064539453 | 0.0061970954 | 0.006276017 | 0.006127883 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0025799605 | 0.001548277 | 0.0017064944 | 0.0013718436 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.0050790445 | 0.0041974033 | 0.00457761 | 0.0042385054 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.0050790445 | 0.0041974033 | 0.004723188 | 0.0042325724 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.004415857 | 0.0043575983 | 0.004415857 | 0.004365977 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.0054753395 | 0.004328494 | 0.0049011162 | 0.0045795785 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0027012753 | 0.0024182575 | 0.002660837 | 0.0026135428 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0020542634 | 0.0018179734 | 0.0018358967 | 0.0016346548 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.0043835067 | 0.0043063047 | 0.0043835067 | 0.004337702 |

### Paleo Open Interval Plots
*[(top)](#bruce-3062)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-3062)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 508.26 | 0.0019674988 | 243 | 512.79 | 0.001950103 | 240.81 |
| **FRA** | 119.00 | 0.008403362 | 145.06 | 0.0068937615 | 853 | 160.17 | 0.0062432145 | 772.34 |
| **COA** | 181.00 | 0.005524862 | 226.36 | 0.0044177948 | 547 | 239.68 | 0.0041721766 | 516.25 |
| **SCZ** | 106.00 | 0.009433962 | 316.11 | 0.0031635046 | 391 | 327.48 | 0.003053593 | 377.41 |
| **TYS** | 329.00 | 0.0030395137 | 637.73 | 0.001568074 | 194 | 660.73 | 0.0015134732 | 187.25 |
| **TOTAL** | 31.61 | 0.0316373 | 55.63 | 0.017974328 | 2223 | 59.16 | 0.016903134 | 2090.07 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9902012 | 0.8354847 | 0.99128306 | 0.8444824 | 0.72878754 |
| **20.00** | 0.9600435 | 0.69803464 | 0.9643209 | 0.71315056 | 0.53113127 |
| **30.00** | 0.9167653 | 0.58319724 | 0.9244895 | 0.6022431 | 0.3870819 |
| **40.00** | 0.85712284 | 0.48725235 | 0.87085533 | 0.5085837 | 0.28210047 |
| **50.00** | 0.7817694 | 0.4070919 | 0.8021964 | 0.42949003 | 0.2055913 |
| **60.00** | 0.7008777 | 0.34011903 | 0.72758156 | 0.3626968 | 0.14983238 |
| **70.00** | 0.6201368 | 0.28416422 | 0.6525708 | 0.30629107 | 0.10919597 |
| **80.00** | 0.52833474 | 0.23741485 | 0.566522 | 0.25865743 | 0.079580665 |
| **90.00** | 0.45549423 | 0.19835648 | 0.49607015 | 0.21843165 | 0.057997398 |
| **100.00** | 0.38914195 | 0.1657238 | 0.43228605 | 0.1844617 | 0.04226778 |
| **110.00** | 0.30379936 | 0.13845968 | 0.35139924 | 0.15577465 | 0.030804234 |
| **120.00** | 0.24503884 | 0.11568095 | 0.28903067 | 0.13154896 | 0.022449743 |
| **130.00** | 0.19158807 | 0.09664966 | 0.23341618 | 0.11109079 | 0.016361093 |
| **140.00** | 0.14310032 | 0.08074931 | 0.18311723 | 0.09381422 | 0.011923761 |
| **150.00** | 0.10640124 | 0.06746481 | 0.14398155 | 0.07922446 | 0.008689889 |
| **160.00** | 0.07528388 | 0.056365814 | 0.107121885 | 0.066903666 | 0.0063330824 |
| **170.00** | 0.048163623 | 0.047092773 | 0.07439515 | 0.056498967 | 0.0046154717 |
| **180.00** | 0.035763487 | 0.03934529 | 0.05629 | 0.047712386 | 0.0033636983 |
| **190.00** | 0.026837198 | 0.032872386 | 0.042722926 | 0.04029227 | 0.0024514215 |
| **200.00** | 0.013717963 | 0.027464377 | 0.02344701 | 0.034026116 | 0.0017865654 |
| **210.00** | 0.009258281 | 0.022946065 | 0.017140351 | 0.028734457 | 0.0013020267 |
| **220.00** | 0.0035547488 | 0.019171085 | 0.008020659 | 0.024265744 | 9.489008E-4 |
| **230.00** | 0.0028485884 | 0.016017148 | 0.0057179467 | 0.020491995 | 6.915471E-4 |
| **240.00** | 0.0021424282 | 0.013382082 | 0.0045013954 | 0.017305128 | 5.039909E-4 |
| **250.00** | 0.0 | 0.011180525 | 0.0016954567 | 0.014613877 | 3.673023E-4 |
| **260.00** | 0.0 | 0.009341157 | 0.0013486911 | 0.012341163 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.0078043933 | 0.0011414193 | 0.010421895 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.006520451 | 0.0011069507 | 0.008801107 | 1.4217607E-4 |
| **290.00** | 0.0 | 0.005447737 | 9.721631E-4 | 0.0074323807 | 1.0361615E-4 |
| **300.00** | 0.0 | 0.0045515005 | 1.7351493E-4 | 0.006276515 | 7.551416E-5 |
| **310.00** | 0.0 | 0.003802709 | 1.590463E-4 | 0.0053004064 | 5.503378E-5 |
| **320.00** | 0.0 | 0.003177105 | 7.9127414E-5 | 0.0044761 | 4.0107934E-5 |
| **330.00** | 0.0 | 0.0026544225 | 7.291E-5 | 0.0037799878 | 2.9230163E-5 |
| **340.00** | 0.0 | 0.0022177293 | 6.6692584E-5 | 0.0031921333 | 2.1302578E-5 |
| **350.00** | 0.0 | 0.001852879 | 6.047517E-5 | 0.0026957006 | 1.5525055E-5 |
| **360.00** | 0.0 | 0.001548052 | 0.0 | 0.0022764718 | 1.1314466E-5 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-3062)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 587.92 | 0.001700904 | 211 | 734.08 | 0.0013622404 | 169.04 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 211.99 | 0.0047171693 | 584 | 236.75 | 0.0042238967 | 522.83 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 515.08 | 0.0019414616 | 240 | 590.79 | 0.0016926458 | 209.37 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 293.23 | 0.0034102446 | 421 | 296.24 | 0.003375655 | 416.74 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 285.09 | 0.0035076803 | 433 | 289.06 | 0.0034594543 | 427.05 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 480.29 | 0.0020820843 | 257 | 533.97 | 0.0018727549 | 231.25 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 842.40 | 0.0011870778 | 147 | 942.33 | 0.0010611989 | 131.29 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 2014.50 | 4.9640075E-4 | 62 | 2040.78 | 4.9000955E-4 | 61.17 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 159.49 | 0.006270024 | 776 | 163.45 | 0.006118129 | 757.16 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 508.26 | 0.0019674988 | 243 | 513.33 | 0.0019480778 | 240.6 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 11038.34 | 9.05933E-5 | 11 | 11298.14 | 8.851013E-5 | 10.7 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 487.64 | 0.0020506803 | 253 | 506.53 | 0.0019742139 | 243.58 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 434.34 | 0.0023023668 | 284 | 469.73 | 0.0021289005 | 262.59 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 228.22 | 0.0043818103 | 542 | 230.61 | 0.004336417 | 536.38 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 204.07 | 0.004900176 | 606 | 218.35 | 0.0045797057 | 566.4 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 376.41 | 0.00265665 | 329 | 383.81 | 0.002605469 | 322.67 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 145.06 | 0.0068937615 | 853 | 159.96 | 0.006251687 | 773.42 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 316.11 | 0.0031635046 | 391 | 327.38 | 0.003054589 | 377.52 |
| **RodgersCreek** | 325.31 | 0.003074 | 563.65 | 0.0017741523 | 219 | 580.19 | 0.0017235763 | 212.75 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 123645.30 | 0.0 | 0 | ∞ | 0.0 | 0 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 654.69 | 0.0015274503 | 189 | 671.63 | 0.0014889234 | 184.22 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 637.73 | 0.001568074 | 194 | 660.49 | 0.0015140306 | 187.3 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 226.36 | 0.0044177948 | 547 | 240.04 | 0.0041659707 | 515.51 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 656.16 | 0.0015240106 | 189 | 700.79 | 0.0014269601 | 176.9 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 961.30 | 0.0010402569 | 128 | 972.95 | 0.001027802 | 126.45 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 293.23 | 0.0034102446 | 421 | 296.40 | 0.0033737894 | 416.5 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 226.54 | 0.0044142082 | 546 | 229.06 | 0.0043655783 | 539.98 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 976.68 | 0.001023875 | 126 | 1003.89 | 9.961213E-4 | 122.57 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 2552.41 | 3.917861E-4 | 48 | 2587.09 | 3.8653452E-4 | 47.37 |
| **TOTAL** | 9.11 | 0.1097689 | 24.58 | 0.040691048 | 5032 | 25.58 | 0.03909286 | 4834.39 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9427535 | 0.6657038 | 0.9467132 | 0.67642844 | 0.33364123 |
| **20.00** | 0.8125598 | 0.44316152 | 0.8237467 | 0.45755544 | 0.11131647 |
| **30.00** | 0.66060287 | 0.2950143 | 0.6769684 | 0.30950353 | 0.037139766 |
| **40.00** | 0.4965412 | 0.19639213 | 0.517368 | 0.209357 | 0.012391358 |
| **50.00** | 0.35553864 | 0.13073899 | 0.37715802 | 0.14161502 | 0.004134268 |
| **60.00** | 0.2517834 | 0.087033436 | 0.27060726 | 0.09579243 | 0.0013793623 |
| **70.00** | 0.17289269 | 0.057938486 | 0.19014432 | 0.06479672 | 4.6021215E-4 |
| **80.00** | 0.118188076 | 0.03856987 | 0.13344781 | 0.04383035 | 1.5354574E-4 |
| **90.00** | 0.07324381 | 0.025676107 | 0.083669916 | 0.029648095 | 5.1229195E-5 |
| **100.00** | 0.043680657 | 0.017092682 | 0.050491925 | 0.020054815 | 1.7092172E-5 |
| **110.00** | 0.021032218 | 0.011378663 | 0.027411884 | 0.013565647 | 5.702653E-6 |
| **120.00** | 0.015101434 | 0.007574819 | 0.018854847 | 0.00917619 | 1.9026403E-6 |
| **130.00** | 0.0052886168 | 0.0050425855 | 0.0076654362 | 0.006207036 | 6.347993E-7 |
| **140.00** | 0.0021570504 | 0.0033568682 | 0.002803271 | 0.0041986154 | 2.1179521E-7 |
| **150.00** | 0.0016951336 | 0.0022346799 | 0.0021153123 | 0.002840063 | 7.066362E-8 |
| **160.00** | 0.0 | 0.0014876348 | 0.0010949433 | 0.0019210995 | 2.3576296E-8 |
| **170.00** | 0.0 | 9.903242E-4 | 5.3489857E-5 | 0.0012994863 | 7.866025E-9 |
| **180.00** | 0.0 | 6.592625E-4 | 0.0 | 8.7900955E-4 | 2.6244302E-9 |

### Moment Release Variability Plots
*[(top)](#bruce-3062)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-3062)*

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
*[(top)](#bruce-3062)*

```
  A_1 = 0.001
  fA = .1
  B_1 = 0.011
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
