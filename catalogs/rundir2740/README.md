# Bruce 2740
## Metadata
| **Catalog** | Bruce 2740 |
|-----|-----|
| **Author** | Bruce Shaw, 2018/06/27 |
| **Description** | FinitePatch fracArea=0.8, 48Hr, all else same as r2585 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 4,677,999 events in 258,089 years |
| **Frictional Params** | a=0.001, b=0.008, (b-a)=0.007, ddotEQ=1 |

* [Metadata](#metadata)
* [Hazard Comparisons](#hazard-comparisons)
* [BBP Calculations, LA Basin 863 (m/s) Velocity Model](#bbp-calculations-la-basin-863-ms-velocity-model)
  * [Single Event Comparisons, LA Basin 863 (m/s)](#single-event-comparisons-la-basin-863-ms)
  * [Full Catalog GMPE Comparisons, LA Basin 863 (m/s)](#full-catalog-gmpe-comparisons-la-basin-863-ms)
  * [Source/Site Ground Motion Comparisons, LA Basin 863 (m/s)](bbp_LA_BASIN_863/source_site_comparisons/)
  * [BBP Part B Analysis, LA Basin 863 (m/s)](bbp_LA_BASIN_863/bbp_part_b_filter_closest_mag)
  * [Rotated Rupture Variability Comparisons, LA Basin 863 (m/s)](#rotated-rupture-variability-comparisons-la-basin-863-ms)
  * [Scenario Spatial Distribution Plots, LA Basin 863 (m/s)](#scenario-spatial-distribution-plots-la-basin-863-ms)
* [BBP Calculations, LA Basin 500 (m/s) Velocity Model](#bbp-calculations-la-basin-500-ms-velocity-model)
  * [Rotated Rupture Variability Comparisons, LA Basin 500 (m/s)](#rotated-rupture-variability-comparisons-la-basin-500-ms)
  * [Scenario Spatial Distribution Plots, LA Basin 500 (m/s)](#scenario-spatial-distribution-plots-la-basin-500-ms)
* [BBP PartB Summary](bbp_part_b_summary/)
* [BBP Velocity Model Comparisons](bbp_vm_rot_rup_compare/)
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

## Hazard Comparisons
*[(top)](#bruce-2740)*

* [PGA](hazard_pga/)
* [0.2s SA](hazard_sa_0.2s/)
* [1.0s SA](hazard_sa_1.0s/)
* [10.0s SA](hazard_sa_10.0s/)
* [2.0s SA](hazard_sa_2.0s/)
* [5.0s SA](hazard_sa_5.0s/)

## BBP Calculations, LA Basin 863 (m/s) Velocity Model
*[(top)](#bruce-2740)*


### Single Event Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-2740)*

* [Event 385955, M7.49](bbp_LA_BASIN_863/event_385955/)

### Full Catalog GMPE Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-2740)*

* [ASK2014](bbp_LA_BASIN_863/gmpe_bbp_comparisons_ASK2014/)
* [ASK2014, Focal Mechanism: Normal](bbp_LA_BASIN_863/gmpe_bbp_comparisons_ASK2014_mech_normal/)
* [ASK2014, Focal Mechanism: Reverse](bbp_LA_BASIN_863/gmpe_bbp_comparisons_ASK2014_mech_reverse/)
* [ASK2014, Focal Mechanism: Vertical Strike-Slip](bbp_LA_BASIN_863/gmpe_bbp_comparisons_ASK2014_mech_vert_ss/)
* [NGAWest_2014_NoIdr](bbp_LA_BASIN_863/gmpe_bbp_comparisons_NGAWest_2014_NoIdr/)

### Source/Site Ground Motion Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-2740)*

[Source/Site Ground Motion Comparisons here](bbp_LA_BASIN_863/source_site_comparisons/)

### BBP Part B Analysis, LA Basin 863 (m/s)
*[(top)](#bruce-2740)*

[BBP Part B Analysis Here, Closest Mag](bbp_LA_BASIN_863/bbp_part_b_filter_closest_mag)

### Rotated Rupture Variability Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-2740)*

* [M6.6, Reverse, Dip=45, Ztor=3, Closest Mag](bbp_LA_BASIN_863/rotated_ruptures_m6p6_reverse_filter_closest_mag/)
* [M6.6, Vertical Strike-Slip with Surface Rupture, Closest Mag](bbp_LA_BASIN_863/rotated_ruptures_m6p6_vert_ss_surface_filter_closest_mag/)
* [M7.2, Reverse, Dip=45, Closest Mag](bbp_LA_BASIN_863/rotated_ruptures_m7p2_reverse_filter_closest_mag/)
* [M7.2, Vertical Strike-Slip with Surface Rupture, Closest Mag](bbp_LA_BASIN_863/rotated_ruptures_m7p2_vert_ss_surface_filter_closest_mag/)
* [M7.6, Reverse, Dip=45, Closest Mag](bbp_LA_BASIN_863/rotated_ruptures_m7p6_reverse_filter_closest_mag/)
* [M7.6, Vertical Strike-Slip with Surface Rupture, Closest Mag](bbp_LA_BASIN_863/rotated_ruptures_m7p6_vert_ss_surface_filter_closest_mag/)

### Scenario Spatial Distribution Plots, LA Basin 863 (m/s)
*[(top)](#bruce-2740)*


## BBP Calculations, LA Basin 500 (m/s) Velocity Model
*[(top)](#bruce-2740)*


### Rotated Rupture Variability Comparisons, LA Basin 500 (m/s)
*[(top)](#bruce-2740)*

* [M6.6, Reverse, Dip=45, Ztor=3, Closest Mag](bbp_LA_BASIN_500/rotated_ruptures_m6p6_reverse_filter_closest_mag/)
* [M6.6, Vertical Strike-Slip with Surface Rupture, Closest Mag](bbp_LA_BASIN_500/rotated_ruptures_m6p6_vert_ss_surface_filter_closest_mag/)
* [M7.2, Reverse, Dip=45, Closest Mag](bbp_LA_BASIN_500/rotated_ruptures_m7p2_reverse_filter_closest_mag/)
* [M7.2, Vertical Strike-Slip with Surface Rupture, Closest Mag](bbp_LA_BASIN_500/rotated_ruptures_m7p2_vert_ss_surface_filter_closest_mag/)
* [M7.6, Reverse, Dip=45, Closest Mag](bbp_LA_BASIN_500/rotated_ruptures_m7p6_reverse_filter_closest_mag/)
* [M7.6, Vertical Strike-Slip with Surface Rupture, Closest Mag](bbp_LA_BASIN_500/rotated_ruptures_m7p6_vert_ss_surface_filter_closest_mag/)

### Scenario Spatial Distribution Plots, LA Basin 500 (m/s)
*[(top)](#bruce-2740)*


## BBP PartB Summary
*[(top)](#bruce-2740)*

[BBP PartB Summary Here](bbp_part_b_summary/)

## BBP Velocity Model Comparisons
*[(top)](#bruce-2740)*

[BBP Velocity Model Comparisons Here](bbp_vm_rot_rup_compare/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2740)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2740)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
#### Mechanism-Dependent Magnitude-Area Plots
*[(top)](#bruce-2740)*

Here we disaggregate the magnitude-area scaling plots by focal mechanism. Multi-fault ruptures which incorporate multiple faulting styles are included in plot for the dominent fault style so long as no more than 10% of the participating elements are of a different style, otherwise they are listed as 'Unknown'.

| Fault Style | Scatter | 2-D Hist |
|-----|-----|-----|
| **Strike-Slip** | ![MA Scatter](resources/mag_area_STRIKE_SLIP.png) | ![MA Hist](resources/mag_area_STRIKE_SLIP_hist2D.png) |
| **Normal** | ![MA Scatter](resources/mag_area_NORMAL.png) | ![MA Hist](resources/mag_area_NORMAL_hist2D.png) |
| **Reverse** | ![MA Scatter](resources/mag_area_REVERSE.png) | ![MA Hist](resources/mag_area_REVERSE_hist2D.png) |
| **Unknown** | ![MA Scatter](resources/mag_area_UNKNOWN.png) | ![MA Hist](resources/mag_area_UNKNOWN_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2740)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2740)*

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
*[(top)](#bruce-2740)*

Here we disaggregate the slip-length scaling plots by focal mechanism. Multi-fault ruptures which incorporate multiple faulting styles are included in plot for the dominent fault style so long as no more than 10% of the participating elements are of a different style, otherwise they are listed as 'Unknown'.

| Fault Style | Scatter | 2-D Hist |
|-----|-----|-----|
| **Strike-Slip** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_STRIKE_SLIP.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_STRIKE_SLIP_hist2D.png) |
| **Normal** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_NORMAL.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_NORMAL_hist2D.png) |
| **Reverse** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_REVERSE.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_REVERSE_hist2D.png) |
| **Unknown** | ![Slip Length Scatter](resources/slip_len_MID_SEIS_SLIPPED_LEN_UNKNOWN.png) | ![Slip Length Hist](resources/slip_len_MID_SEIS_SLIPPED_LEN_UNKNOWN_hist2D.png) |
### Slip Along Rupture (Dsr) Plots
*[(top)](#bruce-2740)*

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
*[(top)](#bruce-2740)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2740)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2740)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2740)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2740)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2740)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2740)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2740)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2740)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2740)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.003596331 | 0.001810786 | 0.0026043758 | 0.0018582306 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 2.5688077E-4 | 2.3764835E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.002300071 | 0.0018573642 | 0.0017230773 | 0.0016103102 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 8.4573054E-4 | 7.999483E-4 | 8.1411446E-4 | 7.965173E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.001655893 | 0.0014308693 | 0.0014661965 | 0.0013992382 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 9.247708E-4 | 7.492245E-4 | 6.75794E-4 | 6.3347275E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.008318985 | 0.007818622 | 0.008149048 | 0.0077789617 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0015649968 | 0.0015112865 | 0.0015452367 | 0.0015197681 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0013950602 | 0.0012823347 | 0.0012211717 | 0.001189936 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 0.0011460835 | 5.72401E-4 | 3.596331E-4 | 2.8761252E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.002999577 | 0.0025994226 | 0.0027268883 | 0.0026489908 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.004710798 | 0.0030992334 | 0.0028968249 | 0.0026057523 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.004932111 | 0.0048665404 | 0.004924207 | 0.0048641167 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.009816797 | 0.0069517265 | 0.007674807 | 0.0067054676 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.004928159 | 0.0048641763 | 0.004916303 | 0.004860535 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.004924207 | 0.00483081 | 0.004924207 | 0.004852942 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.005619761 | 0.0052950196 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 2.964009E-4 | 2.5153812E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0028731127 | 0.0026362287 | 0.0025846157 | 0.0024971871 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.005548625 | 0.0034483545 | 0.004197037 | 0.0033248472 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0027703603 | 0.0027204752 | 0.0027664085 | 0.0027373955 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0020155262 | 0.0016241829 | 0.001343684 | 0.0011571171 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.007576007 | 0.0073344056 | 0.0074297823 | 0.007296603 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.007544391 | 0.004254979 | 0.004651518 | 0.0035288264 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.008943403 | 0.0067616045 | 0.005200848 | 0.0049796295 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.008943403 | 0.0067616045 | 0.005643473 | 0.005341886 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.006631476 | 0.006513408 | 0.006623572 | 0.0065500275 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.0073507424 | 0.004313046 | 0.006544532 | 0.0059587616 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0050664796 | 0.003313585 | 0.002307975 | 0.0019398193 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.004592238 | 0.0034681654 | 0.0030232891 | 0.0028009233 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.006623572 | 0.0064432677 | 0.006615668 | 0.006542629 |

### Paleo Open Interval Plots
*[(top)](#bruce-2740)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2740)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 361.44 | 0.0027667258 | 700 | 365.07 | 0.002739164 | 692.98 |
| **FRA** | 119.00 | 0.008403362 | 122.73 | 0.00814769 | 2062 | 127.54 | 0.007840482 | 1984.29 |
| **COA** | 181.00 | 0.005524862 | 181.68 | 0.005504252 | 1393 | 192.80 | 0.005186735 | 1312.67 |
| **SCZ** | 106.00 | 0.009433962 | 130.35 | 0.0076718978 | 1942 | 149.25 | 0.0067000496 | 1695.97 |
| **TYS** | 329.00 | 0.0030395137 | 364.71 | 0.0027418735 | 694 | 397.90 | 0.002513198 | 636.14 |
| **TOTAL** | 31.61 | 0.0316373 | 37.27 | 0.02683274 | 6790 | 40.00 | 0.025002101 | 6326.74 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.97487986 | 0.7646574 | 0.9781364 | 0.7787844 | 0.72878754 |
| **20.00** | 0.9103088 | 0.58470094 | 0.9209441 | 0.60650516 | 0.53113127 |
| **30.00** | 0.81615955 | 0.44709587 | 0.83642536 | 0.4723368 | 0.3870819 |
| **40.00** | 0.70412266 | 0.34187517 | 0.7338995 | 0.36784855 | 0.28210047 |
| **50.00** | 0.58533233 | 0.26141736 | 0.62412345 | 0.2864747 | 0.2055913 |
| **60.00** | 0.46952683 | 0.19989473 | 0.51342297 | 0.22310203 | 0.14983238 |
| **70.00** | 0.3591384 | 0.15285097 | 0.40749893 | 0.17374839 | 0.10919597 |
| **80.00** | 0.26765457 | 0.11687863 | 0.3171543 | 0.13531254 | 0.079580665 |
| **90.00** | 0.19852585 | 0.089372106 | 0.24314098 | 0.1053793 | 0.057997398 |
| **100.00** | 0.13252965 | 0.06833904 | 0.17245215 | 0.08206776 | 0.04226778 |
| **110.00** | 0.08074476 | 0.05225595 | 0.11453451 | 0.06391309 | 0.030804234 |
| **120.00** | 0.049669996 | 0.0399579 | 0.07668749 | 0.04977452 | 0.022449743 |
| **130.00** | 0.023456674 | 0.030554103 | 0.040664457 | 0.03876362 | 0.016361093 |
| **140.00** | 0.007406019 | 0.02336342 | 0.016388658 | 0.030188505 | 0.011923761 |
| **150.00** | 0.0014448689 | 0.017865011 | 0.00500503 | 0.023510337 | 0.008689889 |
| **160.00** | 0.0010301183 | 0.013660613 | 0.0027164908 | 0.018309483 | 0.0063330824 |
| **170.00** | 7.591393E-4 | 0.010445689 | 0.0018190097 | 0.014259141 | 0.0046154717 |
| **180.00** | 0.0 | 0.0079873735 | 7.672648E-4 | 0.011104797 | 0.0033636983 |
| **190.00** | 0.0 | 0.006107604 | 2.6349686E-4 | 0.008648243 | 0.0024514215 |
| **200.00** | 0.0 | 0.0046702246 | 1.6341484E-4 | 0.0067351167 | 0.0017865654 |
| **210.00** | 0.0 | 0.0035711217 | 6.906381E-5 | 0.005245204 | 0.0013020267 |
| **220.00** | 0.0 | 0.0027306846 | 3.7993646E-5 | 0.0040848833 | 9.489008E-4 |
| **230.00** | 0.0 | 0.0020880383 | 1.382239E-5 | 0.0031812433 | 6.915471E-4 |
| **240.00** | 0.0 | 0.0015966338 | 0.0 | 0.0024775027 | 5.039909E-4 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2740)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 215.66 | 0.0046370113 | 1173 | 242.70 | 0.0041203774 | 1042.25 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 177.22 | 0.0056426493 | 1428 | 187.35 | 0.0053375876 | 1350.76 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 2171.84 | 4.6043802E-4 | 117 | 3113.89 | 3.211415E-4 | 81.49 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 203.34 | 0.004917979 | 1244 | 205.62 | 0.004863384 | 1230.19 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 203.01 | 0.0049258918 | 1246 | 206.05 | 0.0048532616 | 1227.6 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 383.59 | 0.0026069712 | 659 | 533.86 | 0.0018731467 | 472.93 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 684.45 | 0.0014610208 | 370 | 710.70 | 0.001407055 | 356.33 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 1473.50 | 6.786566E-4 | 171 | 1570.83 | 6.366052E-4 | 160.31 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 134.56 | 0.0074314987 | 1881 | 137.06 | 0.0072960895 | 1846.69 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 361.44 | 0.0027667258 | 700 | 365.14 | 0.002738659 | 692.9 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 4924.00 | 2.030869E-4 | 51 | 5410.64 | 1.8482086E-4 | 46.08 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 386.66 | 0.002586242 | 654 | 400.22 | 0.0024986074 | 631.84 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 1261.52 | 7.9269765E-4 | 201 | 1340.14 | 7.4619096E-4 | 189.16 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 151.20 | 0.0066138213 | 1674 | 152.89 | 0.0065405127 | 1655.43 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 144.38 | 0.0069261286 | 1752 | 159.93 | 0.006252843 | 1581.75 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 432.17 | 0.0023139068 | 584 | 513.82 | 0.0019462168 | 491.22 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 122.73 | 0.00814769 | 2062 | 127.51 | 0.007842622 | 1984.81 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 130.35 | 0.0076718978 | 1942 | 149.13 | 0.0067056357 | 1697.39 |
| **RodgersCreek** | 325.31 | 0.003074 | 238.19 | 0.004198341 | 1062 | 300.95 | 0.0033227764 | 840.43 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 2687.56 | 3.720841E-4 | 94 | 3457.21 | 2.8925075E-4 | 73.04 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 366.21 | 0.0027307058 | 690 | 377.10 | 0.0026518349 | 670.07 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 364.71 | 0.0027418735 | 694 | 397.59 | 0.002515172 | 636.65 |
| **Compton** | 2658.16 | 3.762E-4 | 6116.43 | 1.634941E-4 | 40 | 6573.06 | 1.5213602E-4 | 37.25 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 181.68 | 0.005504252 | 1393 | 192.72 | 0.0051889974 | 1313.16 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 562.11 | 0.0017790009 | 450 | 604.56 | 0.0016541019 | 418.46 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 648.37 | 0.0015423372 | 390 | 658.60 | 0.0015183839 | 383.95 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 203.22 | 0.00492068 | 1245 | 205.77 | 0.0048597828 | 1229.52 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 151.02 | 0.0066217277 | 1676 | 152.72 | 0.006547758 | 1657.27 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 819.08 | 0.0012208803 | 309 | 840.21 | 0.0011901779 | 301.23 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1232.02 | 8.1167824E-4 | 206 | 1260.80 | 7.9314836E-4 | 201.3 |
| **TOTAL** | 9.08 | 0.1101451 | 16.82 | 0.05943578 | 15040 | 18.14 | 0.05513221 | 13950.86 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.8898187 | 0.5519169 | 0.9029445 | 0.57618755 | 0.33238843 |
| **20.00** | 0.676456 | 0.30461225 | 0.7070543 | 0.3319921 | 0.110482074 |
| **30.00** | 0.4606615 | 0.16812064 | 0.5003214 | 0.1912897 | 0.036722966 |
| **40.00** | 0.2853321 | 0.09278862 | 0.32600722 | 0.11021874 | 0.012206289 |
| **50.00** | 0.169156 | 0.051211607 | 0.20132786 | 0.06350666 | 0.004057229 |
| **60.00** | 0.085163474 | 0.02826455 | 0.109003015 | 0.03659175 | 0.001348576 |
| **70.00** | 0.04825808 | 0.015599683 | 0.06264685 | 0.021083709 | 4.4825108E-4 |
| **80.00** | 0.021914126 | 0.008609729 | 0.03117544 | 0.012148171 | 1.4899348E-4 |
| **90.00** | 0.008875186 | 0.0047518546 | 0.014090044 | 0.0069996244 | 4.952371E-5 |
| **100.00** | 0.0038777897 | 0.0026226288 | 0.0066475165 | 0.004033096 | 1.6461108E-5 |
| **110.00** | 0.0014214921 | 0.0014474731 | 0.0031194477 | 0.0023238198 | 5.4714824E-6 |
| **120.00** | 0.0010388906 | 7.9888484E-4 | 0.0021034507 | 0.0013389561 | 1.8186574E-6 |
| **130.00** | 0.0 | 4.4091803E-4 | 3.783244E-4 | 7.714898E-4 | 6.045007E-7 |
| **140.00** | 0.0 | 2.433501E-4 | 9.721449E-6 | 4.445228E-4 | 2.0092905E-7 |
| **150.00** | 0.0 | 1.3430904E-4 | 0.0 | 2.561285E-4 | 6.678649E-8 |

### Moment Release Variability Plots
*[(top)](#bruce-2740)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2740)*

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
*[(top)](#bruce-2740)*

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
