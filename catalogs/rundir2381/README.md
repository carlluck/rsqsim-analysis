# Bruce 2381
## Metadata
| **Catalog** | Bruce 2381 |
|-----|-----|
| **Author** | Bruce Shaw, 2017/12/22 |
| **Description** | fracCreep=0.5 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 3,321,499 events in 472,840 years |
| **Frictional Params** | a=0.001, b=0.008, (b-a)=0.007, ddotEQ=1 |

* [Metadata](#metadata)
* [Hazard Comparisons](#hazard-comparisons)
* [Hazard Clustering Comparisons](#hazard-clustering-comparisons)
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
*[(top)](#bruce-2381)*

* [PGA](hazard_pga/)
* [0.2s SA](hazard_sa_0.2s/)
* [1.0s SA](hazard_sa_1.0s/)
* [10.0s SA](hazard_sa_10.0s/)
* [5.0s SA](hazard_sa_5.0s/)

## Hazard Clustering Comparisons
*[(top)](#bruce-2381)*

* [PGA](hazard_clustering_pga/)

## BBP Calculations, LA Basin 863 (m/s) Velocity Model
*[(top)](#bruce-2381)*


### Full Catalog GMPE Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-2381)*

* [BSSA2014](bbp_LA_BASIN_863/gmpe_bbp_comparisons_BSSA2014/)
* [NGAWest_2014_NoIdr](bbp_LA_BASIN_863/gmpe_bbp_comparisons_NGAWest_2014_NoIdr/)

### Full Catalog RotD100/RotD50 Ratios, LA Basin 863 (m/s)
*[(top)](#bruce-2381)*

[Full Catalog RotD100/RotD50 Ratios Plotted Here](bbp_LA_BASIN_863/catalog_rotd_ratio_comparisons/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2381)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2381)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2381)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2381)*

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
*[(top)](#bruce-2381)*

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
*[(top)](#bruce-2381)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2381)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2381)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2381)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2381)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2381)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2381)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2381)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2381)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2381)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.002244967 | 0.0014235564 | 0.0015372679 | 0.0013207195 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 1.3469801E-4 | 1.3078189E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0014132601 | 0.0011126905 | 9.108152E-4 | 8.899352E-4 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 6.670759E-4 | 6.0744944E-4 | 5.5803463E-4 | 5.445568E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0011438641 | 9.5307006E-4 | 9.215055E-4 | 8.8952464E-4 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 6.5852364E-4 | 5.226248E-4 | 3.8698956E-4 | 3.737634E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.0049752747 | 0.0048032114 | 0.0049111326 | 0.004827817 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0011588306 | 0.0011060494 | 0.00113745 | 0.001120881 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 8.124642E-4 | 7.6068257E-4 | 7.803933E-4 | 7.69115E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 0.0013683608 | 7.862295E-4 | 6.136243E-4 | 5.883303E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0019499141 | 0.0016522479 | 0.0015971337 | 0.0015659065 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0023860792 | 0.0016455723 | 0.0013384279 | 0.0012786762 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.003686022 | 0.0036253806 | 0.003656089 | 0.003615547 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.004620356 | 0.0035983962 | 0.003115159 | 0.0029927867 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0036389846 | 0.00359245 | 0.0036304323 | 0.003593068 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.003645399 | 0.0035561512 | 0.0036218802 | 0.0035776186 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0039340374 | 0.003740952 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 2.3304895E-4 | 1.9545719E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0020546792 | 0.0017595526 | 0.0016056859 | 0.001563435 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0018045258 | 0.0014043496 | 0.001441055 | 0.0013624768 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0020653696 | 0.0020151027 | 0.0020546792 | 0.0020332728 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.002114545 | 0.0015031496 | 0.0012486293 | 0.0011512827 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.005821948 | 0.0055877846 | 0.005719321 | 0.0056301286 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.003151506 | 0.0019552922 | 0.0017639026 | 0.0015002891 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.0057984293 | 0.0043272325 | 0.0031921293 | 0.0031395056 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.0057984293 | 0.0043272325 | 0.0032092337 | 0.0031456202 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.004735811 | 0.0046602534 | 0.004722983 | 0.004674624 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.0047807107 | 0.0031713028 | 0.0042440565 | 0.0040670326 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0010455132 | 6.351939E-4 | 6.606617E-4 | 5.5248954E-4 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.002685408 | 0.0017006943 | 0.0015629246 | 0.0014225763 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.0047272593 | 0.004619313 | 0.004720845 | 0.0046715746 |

### Paleo Open Interval Plots
*[(top)](#bruce-2381)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2381)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 486.47 | 0.0020556308 | 961 | 491.62 | 0.0020340898 | 950.92 |
| **FRA** | 119.00 | 0.008403362 | 203.09 | 0.00492381 | 2303 | 206.48 | 0.0048430585 | 2265.21 |
| **COA** | 181.00 | 0.005524862 | 311.86 | 0.0032065352 | 1500 | 317.62 | 0.0031483723 | 1472.79 |
| **SCZ** | 106.00 | 0.009433962 | 321.08 | 0.0031145117 | 1457 | 333.92 | 0.0029946952 | 1400.95 |
| **TYS** | 329.00 | 0.0030395137 | 756.57 | 0.0013217557 | 618 | 791.80 | 0.0012629397 | 590.43 |
| **TOTAL** | 31.61 | 0.0316373 | 68.47 | 0.014605763 | 6831 | 70.09 | 0.014267859 | 6672.97 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.99308115 | 0.8641079 | 0.99340653 | 0.8670327 | 0.72878754 |
| **20.00** | 0.97320545 | 0.74668247 | 0.9744481 | 0.7517457 | 0.53113127 |
| **30.00** | 0.9403874 | 0.6452142 | 0.9429814 | 0.6517881 | 0.3870819 |
| **40.00** | 0.8966136 | 0.5575347 | 0.9008955 | 0.5651216 | 0.28210047 |
| **50.00** | 0.8433199 | 0.48177016 | 0.8494506 | 0.48997888 | 0.2055913 |
| **60.00** | 0.7861653 | 0.4163014 | 0.79427236 | 0.42482772 | 0.14983238 |
| **70.00** | 0.7265762 | 0.35972932 | 0.7364597 | 0.3683395 | 0.10919597 |
| **80.00** | 0.6713654 | 0.31084496 | 0.6823772 | 0.3193624 | 0.079580665 |
| **90.00** | 0.60232717 | 0.26860356 | 0.61485285 | 0.27689764 | 0.057997398 |
| **100.00** | 0.5385883 | 0.23210247 | 0.5523919 | 0.24007931 | 0.04226778 |
| **110.00** | 0.47339728 | 0.20056158 | 0.487965 | 0.20815662 | 0.030804234 |
| **120.00** | 0.41483325 | 0.17330685 | 0.4301606 | 0.18047859 | 0.022449743 |
| **130.00** | 0.3614521 | 0.14975582 | 0.37671947 | 0.15648083 | 0.016361093 |
| **140.00** | 0.3015771 | 0.12940519 | 0.31679878 | 0.135674 | 0.011923761 |
| **150.00** | 0.2481998 | 0.11182004 | 0.26305494 | 0.1176338 | 0.008689889 |
| **160.00** | 0.20718424 | 0.09662458 | 0.22148907 | 0.10199235 | 0.0063330824 |
| **170.00** | 0.16618927 | 0.08349407 | 0.17898512 | 0.088430695 | 0.0046154717 |
| **180.00** | 0.12884936 | 0.07214788 | 0.14099973 | 0.07667231 | 0.0033636983 |
| **190.00** | 0.09046631 | 0.062343553 | 0.10139822 | 0.066477396 | 0.0024514215 |
| **200.00** | 0.058309603 | 0.053871557 | 0.06740559 | 0.057638075 | 0.0017865654 |
| **210.00** | 0.032146957 | 0.04655084 | 0.039246522 | 0.049974095 | 0.0013020267 |
| **220.00** | 0.017536566 | 0.040224947 | 0.022673879 | 0.043329176 | 9.489008E-4 |
| **230.00** | 0.0069246315 | 0.034758694 | 0.010274209 | 0.037567813 | 6.915471E-4 |
| **240.00** | 0.001454781 | 0.030035263 | 0.0032833829 | 0.03257252 | 5.039909E-4 |
| **250.00** | 0.0 | 0.025953708 | 0.0016583456 | 0.02824144 | 3.673023E-4 |
| **260.00** | 0.0 | 0.022426805 | 0.0013501634 | 0.024486253 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.019379178 | 0.0010793777 | 0.021230381 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.016745701 | 7.606771E-4 | 0.018407434 | 1.4217607E-4 |
| **290.00** | 0.0 | 0.014470093 | 4.4546652E-4 | 0.015959848 | 1.0361615E-4 |
| **300.00** | 0.0 | 0.012503722 | 2.2579051E-4 | 0.01383771 | 7.551416E-5 |
| **310.00** | 0.0 | 0.010804565 | 1.6490607E-4 | 0.011997746 | 5.503378E-5 |
| **320.00** | 0.0 | 0.0093363095 | 6.5086E-5 | 0.010402438 | 4.0107934E-5 |
| **330.00** | 0.0 | 0.008067579 | 3.68444E-5 | 0.009019255 | 2.9230163E-5 |
| **340.00** | 0.0 | 0.0069712587 | 1.8428695E-5 | 0.007819989 | 2.1302578E-5 |
| **350.00** | 0.0 | 0.0060239197 | 0.0 | 0.0067801857 | 1.5525055E-5 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2381)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 535.72 | 0.0018666406 | 873 | 577.95 | 0.0017302511 | 809.11 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 311.66 | 0.0032086745 | 1501 | 318.01 | 0.0031445546 | 1470.94 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 2109.96 | 4.739435E-4 | 222 | 2686.56 | 3.7222335E-4 | 174.23 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 275.42 | 0.003630865 | 1698 | 278.28 | 0.0035935347 | 1680.52 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 276.07 | 0.0036223067 | 1694 | 279.50 | 0.0035777625 | 1673.14 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 649.91 | 0.0015386638 | 719 | 758.07 | 0.0013191429 | 616.31 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 1088.34 | 9.1882923E-4 | 429 | 1118.36 | 8.941626E-4 | 417.49 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 2582.48 | 3.872247E-4 | 181 | 2671.95 | 3.7425893E-4 | 174.96 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 174.61 | 0.0057271114 | 2679 | 177.43 | 0.0056359866 | 2636.38 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 486.47 | 0.0020556308 | 961 | 491.90 | 0.0020329354 | 950.39 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 7396.01 | 1.3520804E-4 | 64 | 7693.09 | 1.2998674E-4 | 61.53 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 622.71 | 0.0016058732 | 751 | 639.55 | 0.0015636107 | 731.25 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 1430.96 | 6.9883064E-4 | 327 | 1476.92 | 6.770847E-4 | 316.8 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 211.84 | 0.004720612 | 2208 | 214.06 | 0.0046716495 | 2185.1 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 221.69 | 0.0045107696 | 2109 | 233.26 | 0.0042870063 | 2004.38 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 1512.27 | 6.612555E-4 | 309 | 1805.93 | 5.537327E-4 | 258.71 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 203.09 | 0.00492381 | 2303 | 206.45 | 0.0048438134 | 2265.59 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 321.08 | 0.0031145117 | 1457 | 334.53 | 0.0029892253 | 1398.43 |
| **RodgersCreek** | 325.31 | 0.003074 | 693.98 | 0.0014409707 | 674 | 733.87 | 0.0013626476 | 637.32 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 1643.54 | 6.084435E-4 | 284 | 1746.40 | 5.7260523E-4 | 267.28 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 625.74 | 0.0015981033 | 747 | 638.11 | 0.0015671188 | 732.49 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 756.57 | 0.0013217557 | 618 | 791.97 | 0.0012626767 | 590.39 |
| **Compton** | 2658.16 | 3.762E-4 | 8033.60 | 1.2447724E-4 | 59 | 8360.42 | 1.1961124E-4 | 56.71 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 311.86 | 0.0032065352 | 1500 | 317.80 | 0.0031466647 | 1471.97 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 1109.07 | 9.016548E-4 | 421 | 1132.43 | 8.830585E-4 | 412.3 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 882.18 | 0.001133553 | 530 | 894.94 | 0.0011173962 | 522.45 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 274.12 | 0.0036479817 | 1706 | 276.96 | 0.0036105833 | 1688.5 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 211.74 | 0.0047227507 | 2209 | 213.89 | 0.004675369 | 2186.83 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1282.46 | 7.7974924E-4 | 365 | 1302.02 | 7.680385E-4 | 359.51 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1795.33 | 5.569999E-4 | 261 | 1838.19 | 5.4401206E-4 | 254.87 |
| **TOTAL** | 9.08 | 0.1101451 | 27.31 | 0.036612462 | 17125 | 28.07 | 0.035619665 | 16660.14 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9546303 | 0.6934164 | 0.95674276 | 0.7003349 | 0.33238843 |
| **20.00** | 0.84635264 | 0.4808263 | 0.85293704 | 0.49046895 | 0.110482074 |
| **30.00** | 0.7047271 | 0.33341283 | 0.71568376 | 0.3434925 | 0.036722966 |
| **40.00** | 0.5591485 | 0.23119393 | 0.5728725 | 0.24055979 | 0.012206289 |
| **50.00** | 0.43321693 | 0.16031365 | 0.44833022 | 0.16847241 | 0.004057229 |
| **60.00** | 0.32444522 | 0.111164115 | 0.33912903 | 0.117987104 | 0.001348576 |
| **70.00** | 0.23753127 | 0.07708302 | 0.25143713 | 0.082630485 | 4.4825108E-4 |
| **80.00** | 0.16683036 | 0.05345063 | 0.178393 | 0.05786901 | 1.4899348E-4 |
| **90.00** | 0.11793135 | 0.037063543 | 0.12705658 | 0.040527686 | 4.952371E-5 |
| **100.00** | 0.07612111 | 0.025700469 | 0.08361928 | 0.028382951 | 1.6461108E-5 |
| **110.00** | 0.046574052 | 0.017821126 | 0.05229851 | 0.019877572 | 5.4714824E-6 |
| **120.00** | 0.029017376 | 0.01235746 | 0.033404514 | 0.013920956 | 1.8186574E-6 |
| **130.00** | 0.017435396 | 0.008568866 | 0.020622434 | 0.0097493315 | 6.045007E-7 |
| **140.00** | 0.0098692905 | 0.005941792 | 0.011843869 | 0.006827797 | 2.0092905E-7 |
| **150.00** | 0.0050743995 | 0.004120136 | 0.0063537634 | 0.0047817444 | 6.678649E-8 |
| **160.00** | 0.0029832076 | 0.0028569698 | 0.0035913552 | 0.0033488222 | 2.2199057E-8 |
| **170.00** | 8.406924E-4 | 0.0019810698 | 0.0011412059 | 0.002345297 | 7.37871E-9 |
| **180.00** | 6.223574E-4 | 0.0013737063 | 5.644188E-4 | 0.0016424933 | 2.452598E-9 |
| **190.00** | 4.6619188E-4 | 9.525504E-4 | 4.5963944E-4 | 0.0011502954 | 8.152152E-10 |
| **200.00** | 0.0 | 6.6051405E-4 | 1.7194163E-5 | 8.05592E-4 | 2.709681E-10 |
| **210.00** | 0.0 | 4.580113E-4 | 0.0 | 5.6418416E-4 | 9.006666E-11 |

### Moment Release Variability Plots
*[(top)](#bruce-2381)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2381)*

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
*[(top)](#bruce-2381)*

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
