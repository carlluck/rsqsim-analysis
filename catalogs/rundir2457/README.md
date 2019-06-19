# Bruce 2457
## Metadata
| **Catalog** | Bruce 2457 |
|-----|-----|
| **Author** | Bruce Shaw, 2018/01/14 |
| **Description** | new loading;  fCreep=0.25 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 1,499,999 events in 192,787 years |
| **Frictional Params** | a=0.001, b=0.008, (b-a)=0.007, ddotEQ=1 |

* [Metadata](#metadata)
* [Hazard Comparisons](#hazard-comparisons)
* [Extreme Event Examples](extreme_events/)
* [BBP Calculations, LA Basin 863 (m/s) Velocity Model](#bbp-calculations-la-basin-863-ms-velocity-model)
  * [Full Catalog GMPE Comparisons, LA Basin 863 (m/s)](#full-catalog-gmpe-comparisons-la-basin-863-ms)
    * [Points Of Interest, LA Basin 863 (m/s)](#points-of-interest-la-basin-863-ms)
    * [Gridded Sites, LA Basin 863 (m/s)](#gridded-sites-la-basin-863-ms)
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
*[(top)](#bruce-2457)*

* [PGA](hazard_pga/)
* [0.2s SA](hazard_sa_0.2s/)
* [1.0s SA](hazard_sa_1.0s/)
* [10.0s SA](hazard_sa_10.0s/)
* [5.0s SA](hazard_sa_5.0s/)

## Extreme Event Examples
*[(top)](#bruce-2457)*

[Extreme Event Examples Here](extreme_events/)

## BBP Calculations, LA Basin 863 (m/s) Velocity Model
*[(top)](#bruce-2457)*


### Full Catalog GMPE Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-2457)*

#### Points Of Interest, LA Basin 863 (m/s)

* [ASK2014](bbp_LA_BASIN_863/gmpe_bbp_comparisons_ASK2014/)
* [NGAWest_2014_NoIdr](bbp_LA_BASIN_863/gmpe_bbp_comparisons_NGAWest_2014_NoIdr/)

#### Gridded Sites, LA Basin 863 (m/s)

* [ASK2014](bbp_LA_BASIN_863/gmpe_bbp_comparisons_ASK2014_GriddedSites/)
* [NGAWest_2014_NoIdr](bbp_LA_BASIN_863/gmpe_bbp_comparisons_NGAWest_2014_NoIdr_GriddedSites/)

### Full Catalog RotD100/RotD50 Ratios, LA Basin 863 (m/s)
*[(top)](#bruce-2457)*

[Full Catalog RotD100/RotD50 Ratios Plotted Here](bbp_LA_BASIN_863/catalog_rotd_ratio_comparisons/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2457)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2457)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2457)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2457)*

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
*[(top)](#bruce-2457)*

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
*[(top)](#bruce-2457)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2457)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2457)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2457)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2457)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2457)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2457)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2457)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2457)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2457)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0031538724 | 0.0018160172 | 0.002253527 | 0.0019040917 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 1.2785969E-4 | 1.1878646E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0017580708 | 0.0013560368 | 9.749302E-4 | 9.497798E-4 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 7.511757E-4 | 6.5737433E-4 | 5.380762E-4 | 5.20773E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0012519595 | 0.0010177208 | 9.0567284E-4 | 8.7738904E-4 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 7.991231E-4 | 6.069464E-4 | 3.8890657E-4 | 3.7918726E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.0058762184 | 0.005437254 | 0.005663119 | 0.005518575 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0012306495 | 0.0011515954 | 0.0011667197 | 0.0011461254 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0010175501 | 8.7898783E-4 | 8.2576054E-4 | 8.015294E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 3.8357908E-4 | 2.2960556E-4 | 1.0122226E-4 | 8.6666594E-5 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0021789423 | 0.0018452088 | 0.0017900357 | 0.0017433137 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0024240068 | 0.0016710964 | 0.0013638367 | 0.0013039863 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.004086183 | 0.00388197 | 0.0038997207 | 0.0038456297 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.004869323 | 0.0037284505 | 0.003127235 | 0.002998682 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.003979633 | 0.0038403426 | 0.0038730833 | 0.0038224042 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.0038890657 | 0.0037360373 | 0.0038198084 | 0.003764581 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0046295864 | 0.004072617 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 3.4095917E-4 | 2.7382694E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0019818253 | 0.0017122286 | 0.0015609538 | 0.0015201411 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0022801645 | 0.001701136 | 0.0015396439 | 0.0014669289 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0030153578 | 0.0027487816 | 0.0026957085 | 0.0026473776 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.001912568 | 0.0013963764 | 9.855852E-4 | 9.0715056E-4 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.0059987507 | 0.0054354426 | 0.005455347 | 0.0053369785 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0052422476 | 0.0033434802 | 0.0028555333 | 0.002459184 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.0064356048 | 0.0047144317 | 0.0032870597 | 0.0032393355 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.0064356048 | 0.0047144317 | 0.003335007 | 0.0032770396 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.005444692 | 0.0052233306 | 0.0052955225 | 0.005226009 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.0051463526 | 0.00330729 | 0.004064873 | 0.0038894094 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0024240068 | 0.0016719209 | 0.0013851468 | 0.0012134442 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0030952701 | 0.002279758 | 0.0019551879 | 0.001862722 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.005290195 | 0.005103934 | 0.0052529024 | 0.0051915487 |

### Paleo Open Interval Plots
*[(top)](#bruce-2457)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2457)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 373.05 | 0.0026806376 | 504 | 379.54 | 0.0026347523 | 495.39 |
| **FRA** | 119.00 | 0.008403362 | 177.64 | 0.0056292918 | 1057 | 181.74 | 0.0055023124 | 1033.18 |
| **COA** | 181.00 | 0.005524862 | 302.26 | 0.0033084333 | 621 | 307.14 | 0.003255859 | 611.1 |
| **SCZ** | 106.00 | 0.009433962 | 319.67 | 0.003128211 | 587 | 333.59 | 0.002997705 | 562.53 |
| **TYS** | 329.00 | 0.0030395137 | 741.38 | 0.0013488443 | 253 | 771.58 | 0.0012960405 | 243.07 |
| **TOTAL** | 31.61 | 0.0316373 | 62.13 | 0.016094485 | 3021 | 63.76 | 0.015684811 | 2944.12 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.99151236 | 0.85133904 | 0.9919607 | 0.8548339 | 0.72878754 |
| **20.00** | 0.9649738 | 0.7247781 | 0.96670693 | 0.73074096 | 0.53113127 |
| **30.00** | 0.9246221 | 0.61703193 | 0.92847085 | 0.62466216 | 0.3870819 |
| **40.00** | 0.8718619 | 0.52530336 | 0.8776943 | 0.5339824 | 0.28210047 |
| **50.00** | 0.81915253 | 0.44721124 | 0.8264904 | 0.45646623 | 0.2055913 |
| **60.00** | 0.7539923 | 0.38072836 | 0.76335007 | 0.3902028 | 0.14983238 |
| **70.00** | 0.6859879 | 0.32412893 | 0.6980327 | 0.3335586 | 0.10919597 |
| **80.00** | 0.6151049 | 0.2759436 | 0.62853044 | 0.28513718 | 0.079580665 |
| **90.00** | 0.5492586 | 0.23492156 | 0.56412405 | 0.24374492 | 0.057997398 |
| **100.00** | 0.4927475 | 0.19999789 | 0.50836515 | 0.20836142 | 0.04226778 |
| **110.00** | 0.4256697 | 0.170266 | 0.44197318 | 0.1781144 | 0.030804234 |
| **120.00** | 0.36173996 | 0.1449541 | 0.37865517 | 0.15225822 | 0.022449743 |
| **130.00** | 0.30164894 | 0.12340508 | 0.318036 | 0.13015549 | 0.016361093 |
| **140.00** | 0.25294402 | 0.10505956 | 0.2680537 | 0.11126132 | 0.011923761 |
| **150.00** | 0.20212181 | 0.08944131 | 0.21516621 | 0.09510995 | 0.008689889 |
| **160.00** | 0.15967171 | 0.076144874 | 0.17194334 | 0.08130321 | 0.0063330824 |
| **170.00** | 0.11403656 | 0.0648251 | 0.12540632 | 0.06950074 | 0.0046154717 |
| **180.00** | 0.08346745 | 0.055188138 | 0.09337003 | 0.059411585 | 0.0033636983 |
| **190.00** | 0.040992506 | 0.046983816 | 0.049080662 | 0.050787035 | 0.0024514215 |
| **200.00** | 0.009674673 | 0.039999157 | 0.014334927 | 0.04341448 | 0.0017865654 |
| **210.00** | 0.0027249611 | 0.03405284 | 0.005938829 | 0.03711217 | 0.0013020267 |
| **220.00** | 0.0 | 0.028990513 | 0.0026699144 | 0.03172474 | 9.489008E-4 |
| **230.00** | 0.0 | 0.024680756 | 0.002142793 | 0.027119381 | 6.915471E-4 |
| **240.00** | 0.0 | 0.02101169 | 0.0018404769 | 0.023182567 | 5.039909E-4 |
| **250.00** | 0.0 | 0.017888073 | 0.0012150806 | 0.019817244 | 3.673023E-4 |
| **260.00** | 0.0 | 0.0152288135 | 9.573253E-4 | 0.016940452 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.012964884 | 6.502708E-4 | 0.014481272 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.011037511 | 4.6413593E-4 | 0.012379082 | 1.4217607E-4 |
| **290.00** | 0.0 | 0.009396664 | 3.8176525E-4 | 0.010582059 | 1.0361615E-4 |
| **300.00** | 0.0 | 0.007999747 | 3.1568698E-4 | 0.009045903 | 7.551416E-5 |
| **310.00** | 0.0 | 0.0068104966 | 1.3577922E-4 | 0.007732744 | 5.503378E-5 |
| **320.00** | 0.0 | 0.0057980414 | 7.8753284E-5 | 0.0066102115 | 4.0107934E-5 |
| **330.00** | 0.0 | 0.004936099 | 4.830098E-5 | 0.005650633 | 2.9230163E-5 |
| **340.00** | 0.0 | 0.0042022937 | 3.8316994E-5 | 0.0048303525 | 2.1302578E-5 |
| **350.00** | 0.0 | 0.0035775767 | 2.8333008E-5 | 0.004129149 | 1.5525055E-5 |
| **360.00** | 0.0 | 0.0030457305 | 0.0 | 0.0035297365 | 1.1314466E-5 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2457)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 346.06 | 0.0028897095 | 543 | 364.86 | 0.0027407582 | 515.02 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 299.84 | 0.0033351143 | 626 | 304.93 | 0.0032794753 | 615.54 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 3162.41 | 3.1621498E-4 | 59 | 3971.19 | 2.5181388E-4 | 46.83 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 257.75 | 0.0038796924 | 728 | 261.34 | 0.003826382 | 718 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 261.71 | 0.00382099 | 717 | 265.54 | 0.0037659707 | 706.63 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 444.14 | 0.002251517 | 423 | 525.10 | 0.0019044022 | 357.6 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 1104.90 | 9.0505974E-4 | 170 | 1137.48 | 8.791335E-4 | 165.1 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 2567.92 | 3.8942028E-4 | 73 | 2633.12 | 3.797773E-4 | 71.18 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 184.52 | 0.0054195747 | 1018 | 188.21 | 0.005313098 | 997.98 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 373.05 | 0.0026806376 | 504 | 379.82 | 0.0026328242 | 495.01 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 10789.66 | 9.268134E-5 | 18 | 11192.48 | 8.9345696E-5 | 17.14 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 640.48 | 0.0015613341 | 293 | 657.30 | 0.0015213698 | 285.46 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 1594.27 | 6.2724674E-4 | 118 | 1653.38 | 6.048206E-4 | 113.77 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 190.45 | 0.0052506877 | 986 | 192.63 | 0.0051913066 | 974.85 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 224.40 | 0.0044564214 | 837 | 237.97 | 0.0042021456 | 789.04 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 721.77 | 0.00138548 | 260 | 819.60 | 0.0012201017 | 228.67 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 177.64 | 0.0056292918 | 1057 | 181.75 | 0.005502051 | 1033.12 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 319.67 | 0.003128211 | 587 | 333.44 | 0.0029990806 | 562.78 |
| **RodgersCreek** | 325.31 | 0.003074 | 650.39 | 0.0015375338 | 289 | 682.51 | 0.0014651718 | 275.32 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 8991.10 | 1.1122114E-4 | 21 | 10058.51 | 9.941829E-5 | 18.83 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 558.22 | 0.0017914077 | 336 | 572.61 | 0.001746387 | 327.57 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 741.38 | 0.0013488443 | 253 | 772.53 | 0.0012944523 | 242.8 |
| **Compton** | 2658.16 | 3.762E-4 | 12329.68 | 8.1105085E-5 | 15 | 13557.73 | 7.3758645E-5 | 13.59 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 302.26 | 0.0033084333 | 621 | 307.55 | 0.0032514525 | 610.3 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 993.78 | 0.0010062635 | 189 | 1026.90 | 9.738079E-4 | 182.9 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 848.36 | 0.0011787486 | 221 | 864.55 | 0.0011566665 | 216.84 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 255.64 | 0.0039117117 | 734 | 259.42 | 0.0038548254 | 723.33 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 188.92 | 0.005293333 | 994 | 191.40 | 0.0052247904 | 981.1 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1210.67 | 8.2598627E-4 | 155 | 1243.98 | 8.0387306E-4 | 150.84 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1869.78 | 5.348227E-4 | 101 | 1930.53 | 5.179915E-4 | 97.8 |
| **TOTAL** | 9.08 | 0.1101451 | 24.63 | 0.040606283 | 7623 | 25.40 | 0.03937443 | 7391.75 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9452059 | 0.6662683 | 0.9481489 | 0.6745265 | 0.33238843 |
| **20.00** | 0.8148443 | 0.44391346 | 0.8231607 | 0.454986 | 0.110482074 |
| **30.00** | 0.6641259 | 0.2957655 | 0.6777032 | 0.3069001 | 0.036722966 |
| **40.00** | 0.5090973 | 0.19705917 | 0.5253878 | 0.20701227 | 0.012206289 |
| **50.00** | 0.36242324 | 0.13129428 | 0.38090765 | 0.13963526 | 0.004057229 |
| **60.00** | 0.26128736 | 0.08747722 | 0.27805886 | 0.094187684 | 0.001348576 |
| **70.00** | 0.17512167 | 0.0582833 | 0.18957531 | 0.06353209 | 4.4825108E-4 |
| **80.00** | 0.120616555 | 0.038832314 | 0.13147673 | 0.04285408 | 1.4899348E-4 |
| **90.00** | 0.08481781 | 0.025872743 | 0.09295164 | 0.028906213 | 4.952371E-5 |
| **100.00** | 0.050676163 | 0.017238189 | 0.058021095 | 0.019498007 | 1.6461108E-5 |
| **110.00** | 0.033038013 | 0.011485259 | 0.038519323 | 0.013151922 | 5.4714824E-6 |
| **120.00** | 0.021399997 | 0.007652264 | 0.02510771 | 0.008871321 | 1.8186574E-6 |
| **130.00** | 0.014660102 | 0.005098461 | 0.017057262 | 0.005983941 | 6.045007E-7 |
| **140.00** | 0.0078681065 | 0.003396943 | 0.009023941 | 0.004036327 | 2.0092905E-7 |
| **150.00** | 0.0050535486 | 0.0022632754 | 0.0058726645 | 0.0027226093 | 6.678649E-8 |
| **160.00** | 0.0015093483 | 0.0015079487 | 0.0013134218 | 0.0018364722 | 2.2199057E-8 |
| **170.00** | 0.0 | 0.0010046985 | 9.9457066E-5 | 0.0012387492 | 7.37871E-9 |
| **180.00** | 0.0 | 6.6939875E-4 | 5.8195943E-5 | 8.3556917E-4 | 2.452598E-9 |
| **190.00** | 0.0 | 4.459992E-4 | 5.1491046E-5 | 5.6361355E-4 | 8.152152E-10 |
| **200.00** | 0.0 | 2.9715514E-4 | 0.0 | 3.8017228E-4 | 2.709681E-10 |

### Moment Release Variability Plots
*[(top)](#bruce-2457)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2457)*

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
*[(top)](#bruce-2457)*

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
  nEq = 1500000
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
  stressRateSpecification =  1
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
