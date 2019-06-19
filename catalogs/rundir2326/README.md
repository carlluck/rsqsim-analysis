# Bruce 2326
## Metadata
| **Catalog** | Bruce 2326 |
|-----|-----|
| **Author** | Bruce Shaw, 2017/10/23 |
| **Description** | reference_1: a=.001 b=.008  Veq=1.0  sigmaN=100. backslipFromStress |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 1,016,999 events in 161,366 years |
| **Frictional Params** | a=0.001, b=0.008, (b-a)=0.007, ddotEQ=1 |

* [Metadata](#metadata)
* [Hazard Comparisons](#hazard-comparisons)
* [Multi-Fault Rupture Comparisons](multi_fault/)
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

## Hazard Comparisons
*[(top)](#bruce-2326)*

* [PGA](hazard_pga/)
* [0.2s SA](hazard_sa_0.2s/)
* [1.0s SA](hazard_sa_1.0s/)
* [10.0s SA](hazard_sa_10.0s/)
* [5.0s SA](hazard_sa_5.0s/)

## Multi-Fault Rupture Comparisons
*[(top)](#bruce-2326)*

[Multi-Fault Rupture Comparisons here](multi_fault/)

## BBP Calculations, LA Basin 863 (m/s) Velocity Model
*[(top)](#bruce-2326)*


### Full Catalog GMPE Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-2326)*

* [BSSA2014](bbp_LA_BASIN_863/gmpe_bbp_comparisons_BSSA2014/)
* [NGAWest_2014_NoIdr](bbp_LA_BASIN_863/gmpe_bbp_comparisons_NGAWest_2014_NoIdr/)

### Full Catalog RotD100/RotD50 Ratios, LA Basin 863 (m/s)
*[(top)](#bruce-2326)*

[Full Catalog RotD100/RotD50 Ratios Plotted Here](bbp_LA_BASIN_863/catalog_rotd_ratio_comparisons/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2326)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2326)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2326)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2326)*

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
*[(top)](#bruce-2326)*

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
*[(top)](#bruce-2326)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2326)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2326)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2326)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2326)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2326)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2326)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2326)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2326)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2326)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0010050863 | 6.028176E-4 | 7.280433E-4 | 6.084532E-4 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 1.2241436E-4 | 1.0699469E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0015334011 | 0.0011518002 | 9.084435E-4 | 8.874781E-4 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 6.50729E-4 | 5.922629E-4 | 5.476432E-4 | 5.356456E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0011017293 | 9.4263E-4 | 9.148863E-4 | 8.821833E-4 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 5.7341467E-4 | 4.560703E-4 | 3.865717E-4 | 3.7650697E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.0047612744 | 0.0045944597 | 0.004690403 | 0.0046064835 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0011726008 | 0.0011130366 | 0.0011275008 | 0.0011131496 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 7.4737193E-4 | 7.072686E-4 | 7.344862E-4 | 7.2657113E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 0.0 | 0.0 | 0.0 | 0.0 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0018426584 | 0.0016068036 | 0.0016687011 | 0.0016346787 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0021776871 | 0.0014644818 | 0.0012692437 | 0.0012018614 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0036015597 | 0.0035642332 | 0.0036015597 | 0.0035652935 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0046581887 | 0.0036096107 | 0.0030410306 | 0.0029169398 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0036144452 | 0.0035681562 | 0.0036080023 | 0.003570243 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.0035951168 | 0.0035106458 | 0.003588674 | 0.0035433525 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0038850454 | 0.0037095128 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 1.4818582E-4 | 1.1196854E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0016622583 | 0.0015222196 | 0.0015720582 | 0.001546301 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0017846726 | 0.0013310737 | 0.0013916581 | 0.0013111203 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.002055273 | 0.0020085808 | 0.00204883 | 0.0020280967 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0019586298 | 0.0011903441 | 7.6670054E-4 | 7.001678E-4 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.004452017 | 0.0043111504 | 0.004452017 | 0.004400482 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0024354015 | 0.0014972109 | 0.0015978296 | 0.0013327972 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.0057921326 | 0.0042784554 | 0.0031763308 | 0.0031261002 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.0057921326 | 0.0042784554 | 0.0031956593 | 0.0031305877 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.0045357747 | 0.004459773 | 0.004522889 | 0.004476663 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.0047290605 | 0.003006701 | 0.0043038316 | 0.004128042 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 5.4120034E-4 | 3.2492325E-4 | 3.672431E-4 | 3.0613467E-4 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0026286875 | 0.0016906774 | 0.0015011868 | 0.0012992823 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.004529332 | 0.0044361716 | 0.004529332 | 0.0044808974 |

### Paleo Open Interval Plots
*[(top)](#bruce-2326)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2326)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 487.26 | 0.0020523123 | 318 | 492.37 | 0.0020310106 | 314.7 |
| **FRA** | 119.00 | 0.008403362 | 214.61 | 0.0046595847 | 724 | 217.78 | 0.004591888 | 713.44 |
| **COA** | 181.00 | 0.005524862 | 313.62 | 0.0031885684 | 495 | 319.07 | 0.003134087 | 486.54 |
| **SCZ** | 106.00 | 0.009433962 | 328.72 | 0.0030421063 | 472 | 342.80 | 0.0029171444 | 452.62 |
| **TYS** | 329.00 | 0.0030395137 | 816.01 | 0.0012254744 | 191 | 851.28 | 0.0011747029 | 183.06 |
| **TOTAL** | 31.61 | 0.0316373 | 70.59 | 0.014165653 | 2199 | 72.31 | 0.013829761 | 2146.87 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9925807 | 0.8679193 | 0.9929351 | 0.8708395 | 0.72878754 |
| **20.00** | 0.9720816 | 0.7532839 | 0.97343475 | 0.7583614 | 0.53113127 |
| **30.00** | 0.9421134 | 0.6537897 | 0.9446078 | 0.66041106 | 0.3870819 |
| **40.00** | 0.9069486 | 0.5674367 | 0.9108787 | 0.575112 | 0.28210047 |
| **50.00** | 0.8574664 | 0.49248925 | 0.8634163 | 0.50083023 | 0.2055913 |
| **60.00** | 0.80607045 | 0.42744094 | 0.81376004 | 0.43614274 | 0.14983238 |
| **70.00** | 0.74873626 | 0.37098423 | 0.75792295 | 0.37981033 | 0.10919597 |
| **80.00** | 0.68495363 | 0.32198438 | 0.6968251 | 0.33075383 | 0.079580665 |
| **90.00** | 0.61083186 | 0.27945647 | 0.6252044 | 0.2880335 | 0.057997398 |
| **100.00** | 0.545404 | 0.24254566 | 0.56057894 | 0.25083092 | 0.04226778 |
| **110.00** | 0.47613886 | 0.21051006 | 0.4924717 | 0.21843347 | 0.030804234 |
| **120.00** | 0.42146793 | 0.18270575 | 0.4388799 | 0.19022049 | 0.022449743 |
| **130.00** | 0.36832088 | 0.15857385 | 0.38523 | 0.16565152 | 0.016361093 |
| **140.00** | 0.30850145 | 0.1376293 | 0.32683516 | 0.14425588 | 0.011923761 |
| **150.00** | 0.25906682 | 0.119451135 | 0.27671832 | 0.12562372 | 0.008689889 |
| **160.00** | 0.2073686 | 0.10367394 | 0.22385766 | 0.10939809 | 0.0063330824 |
| **170.00** | 0.15912752 | 0.08998062 | 0.1738021 | 0.095268175 | 0.0046154717 |
| **180.00** | 0.1324904 | 0.07809592 | 0.14563525 | 0.08296329 | 0.0033636983 |
| **190.00** | 0.09799495 | 0.06778096 | 0.1095253 | 0.07224771 | 0.0024514215 |
| **200.00** | 0.069203794 | 0.0588284 | 0.079390794 | 0.06291615 | 0.0017865654 |
| **210.00** | 0.053308517 | 0.051058304 | 0.060660742 | 0.05478987 | 0.0013020267 |
| **220.00** | 0.03193891 | 0.04431449 | 0.03753026 | 0.047713183 | 9.489008E-4 |
| **230.00** | 0.016165307 | 0.0384614 | 0.018910322 | 0.041550525 | 6.915471E-4 |
| **240.00** | 0.007986021 | 0.03338139 | 0.010121083 | 0.036183838 | 5.039909E-4 |
| **250.00** | 0.0 | 0.028972354 | 0.0018845471 | 0.031510312 | 3.673023E-4 |
| **260.00** | 0.0 | 0.025145667 | 0.0013788847 | 0.027440425 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.021824408 | 9.7418664E-4 | 0.023896204 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.018941825 | 6.6234276E-4 | 0.020809758 | 1.4217607E-4 |
| **290.00** | 0.0 | 0.016439976 | 4.1196102E-4 | 0.01812196 | 1.0361615E-4 |
| **300.00** | 0.0 | 0.014268573 | 2.1941448E-4 | 0.015781317 | 7.551416E-5 |
| **310.00** | 0.0 | 0.01238397 | 1.4114928E-4 | 0.0137429945 | 5.503378E-5 |
| **320.00** | 0.0 | 0.010748287 | 4.144213E-5 | 0.011967942 | 4.0107934E-5 |
| **330.00** | 0.0 | 0.009328646 | 3.420339E-5 | 0.010422156 | 2.9230163E-5 |
| **340.00** | 0.0 | 0.0080965115 | 2.6964648E-5 | 0.009076025 | 2.1302578E-5 |
| **350.00** | 0.0 | 0.007027119 | 0.0 | 0.007903761 | 1.5525055E-5 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2326)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 594.37 | 0.0016824637 | 260 | 643.62 | 0.0015537199 | 240.1 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 312.99 | 0.003195023 | 496 | 319.23 | 0.0031324949 | 486.28 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 2270.12 | 4.4050603E-4 | 68 | 2786.40 | 3.5888542E-4 | 55.23 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 277.22 | 0.0036072035 | 560 | 280.17 | 0.003569274 | 554.1 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 278.72 | 0.0035878445 | 557 | 282.22 | 0.0035433192 | 550.1 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 1375.62 | 7.269452E-4 | 113 | 1649.56 | 6.062235E-4 | 94 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 1091.47 | 9.161967E-4 | 142 | 1126.09 | 8.8802987E-4 | 137.65 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 2598.97 | 3.847672E-4 | 60 | 2663.12 | 3.7549908E-4 | 58.55 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 225.53 | 0.004434017 | 689 | 227.97 | 0.004386551 | 681.57 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 487.26 | 0.0020523123 | 318 | 491.29 | 0.0020354644 | 315.37 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 155210.54 | 0.0 | 0 | ∞ | 0.0 | 0 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 634.00 | 0.001577293 | 244 | 644.48 | 0.0015516448 | 239.99 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 1957.58 | 5.10834E-4 | 79 | 2033.45 | 4.91776E-4 | 76.09 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 221.03 | 0.004524244 | 703 | 223.45 | 0.0044752867 | 695.36 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 223.90 | 0.0044662408 | 694 | 234.20 | 0.0042699343 | 663.52 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 2732.66 | 3.659435E-4 | 57 | 3249.03 | 3.0778404E-4 | 47.65 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 214.61 | 0.0046595847 | 724 | 217.78 | 0.004591794 | 713.47 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 328.72 | 0.0030421063 | 472 | 342.56 | 0.0029191745 | 452.92 |
| **RodgersCreek** | 325.31 | 0.003074 | 718.70 | 0.0013913936 | 216 | 761.97 | 0.0013123817 | 203.69 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 155210.54 | 0.0 | 0 | ∞ | 0.0 | 0 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 599.98 | 0.0016667187 | 259 | 611.98 | 0.0016340435 | 253.89 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 816.01 | 0.0012254744 | 191 | 851.48 | 0.0011744204 | 183.04 |
| **Compton** | 2658.16 | 3.762E-4 | 155210.54 | 0.0 | 0 | ∞ | 0.0 | 0 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 313.62 | 0.0031885684 | 495 | 319.30 | 0.0031318364 | 486.19 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 1076.20 | 9.2919235E-4 | 144 | 1110.21 | 9.007327E-4 | 139.61 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 882.89 | 0.00113265 | 176 | 895.11 | 0.0011171859 | 173.6 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 277.72 | 0.0036007506 | 559 | 280.85 | 0.0035605617 | 552.74 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 221.35 | 0.0045177992 | 702 | 223.58 | 0.004472632 | 694.97 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1354.79 | 7.381213E-4 | 114 | 1368.84 | 7.305437E-4 | 112.81 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1833.12 | 5.455167E-4 | 85 | 1870.61 | 5.345836E-4 | 83.29 |
| **TOTAL** | 9.08 | 0.1101451 | 30.83 | 0.03243664 | 5034 | 31.62 | 0.031630266 | 4908.88 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9624187 | 0.7229853 | 0.9640429 | 0.7288388 | 0.33238843 |
| **20.00** | 0.87109333 | 0.52270776 | 0.876151 | 0.531206 | 0.110482074 |
| **30.00** | 0.7532213 | 0.37791002 | 0.7622617 | 0.38716358 | 0.036722966 |
| **40.00** | 0.62339985 | 0.2732234 | 0.6359653 | 0.28217986 | 0.012206289 |
| **50.00** | 0.51349866 | 0.1975365 | 0.5269951 | 0.20566364 | 0.004057229 |
| **60.00** | 0.40342355 | 0.14281599 | 0.41737562 | 0.14989564 | 0.001348576 |
| **70.00** | 0.310921 | 0.10325386 | 0.32433748 | 0.10924976 | 4.4825108E-4 |
| **80.00** | 0.2343725 | 0.074651025 | 0.24753422 | 0.07962547 | 1.4899348E-4 |
| **90.00** | 0.17064483 | 0.053971592 | 0.18183403 | 0.058034133 | 4.952371E-5 |
| **100.00** | 0.116346106 | 0.03902067 | 0.12626633 | 0.04229753 | 1.6461108E-5 |
| **110.00** | 0.07209854 | 0.02821137 | 0.07938997 | 0.030828083 | 5.4714824E-6 |
| **120.00** | 0.048296608 | 0.020396406 | 0.053912546 | 0.022468703 | 1.8186574E-6 |
| **130.00** | 0.0341527 | 0.014746302 | 0.038064364 | 0.016376063 | 6.045007E-7 |
| **140.00** | 0.02252296 | 0.01066136 | 0.026215062 | 0.011935511 | 2.0092905E-7 |
| **150.00** | 0.013782014 | 0.007708006 | 0.01619757 | 0.008699064 | 6.678649E-8 |
| **160.00** | 0.010278196 | 0.0055727754 | 0.012439119 | 0.0063402154 | 2.2199057E-8 |
| **170.00** | 0.006902874 | 0.0040290346 | 0.007897242 | 0.0046209954 | 7.37871E-9 |
| **180.00** | 0.002433247 | 0.0029129328 | 0.0024218643 | 0.0033679607 | 2.452598E-9 |
| **190.00** | 0.0018939854 | 0.0021060077 | 0.00155264 | 0.0024547006 | 8.152152E-10 |
| **200.00** | 0.001354724 | 0.0015226125 | 0.0015031759 | 0.0017890811 | 2.709681E-10 |
| **210.00** | 0.0 | 0.0011008265 | 4.4829075E-4 | 0.0013039517 | 9.006666E-11 |
| **220.00** | 0.0 | 7.958814E-4 | 3.7570702E-4 | 9.503707E-4 | 2.993712E-11 |
| **230.00** | 0.0 | 5.7541055E-4 | 7.347058E-5 | 6.9266703E-4 | 9.950752E-12 |
| **240.00** | 0.0 | 4.1601338E-4 | 0.0 | 5.0484267E-4 | 3.3075149E-12 |

### Moment Release Variability Plots
*[(top)](#bruce-2326)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2326)*

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
*[(top)](#bruce-2326)*

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
  nEq = 100000000
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
  neighborFname = 
  stressRateFname =  
  slowSlipFname = 
  writePatchFname = 
  DEBUG = 0
  ZBrentUpperBracket = 0
```
