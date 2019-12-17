# Bruce 2665
## Metadata
| **Catalog** | Bruce 2665 |
|-----|-----|
| **Author** | Bruce Shaw, 2018/04/16 |
| **Description** | dx/2, LatCut=37, rateCut=0.2mm/yr, interpolated nearest |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 0.34 km^2 |
| **Length** | 1,684,999 events in 34,557 years |
| **Frictional Params** | a=0.001, b=0.008, (b-a)=0.007, ddotEQ=1 |

* [Metadata](#metadata)
* [BBP Calculations, LA Basin 863 (m/s) Velocity Model](#bbp-calculations-la-basin-863-ms-velocity-model)
  * [Full Catalog GMPE Comparisons, LA Basin 863 (m/s)](#full-catalog-gmpe-comparisons-la-basin-863-ms)
* [BBP Calculations, LA Basin 500 (m/s) Velocity Model](#bbp-calculations-la-basin-500-ms-velocity-model)
  * [Rotated Rupture Variability Comparisons, LA Basin 500 (m/s)](#rotated-rupture-variability-comparisons-la-basin-500-ms)
  * [Scenario Spatial Distribution Plots, LA Basin 500 (m/s)](#scenario-spatial-distribution-plots-la-basin-500-ms)
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
*[(top)](#bruce-2665)*


### Full Catalog GMPE Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-2665)*

* [ASK2014](bbp_LA_BASIN_863/gmpe_bbp_comparisons_ASK2014_GriddedSites/)
* [NGAWest_2014_NoIdr](bbp_LA_BASIN_863/gmpe_bbp_comparisons_NGAWest_2014_NoIdr_GriddedSites/)

## BBP Calculations, LA Basin 500 (m/s) Velocity Model
*[(top)](#bruce-2665)*


### Rotated Rupture Variability Comparisons, LA Basin 500 (m/s)
*[(top)](#bruce-2665)*

* [M7.2, Vertical Strike-Slip with Surface Rupture, Closest Mag](bbp_LA_BASIN_500/rotated_ruptures_m7p2_vert_ss_surface_filter_closest_mag/)

### Scenario Spatial Distribution Plots, LA Basin 500 (m/s)
*[(top)](#bruce-2665)*


## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2665)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2665)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2665)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2665)*

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
*[(top)](#bruce-2665)*

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
*[(top)](#bruce-2665)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2665)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2665)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2665)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2665)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2665)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2665)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2665)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2665)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2665)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 2.7114805E-4 | 2.5162462E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0024064388 | 0.0019340189 | 0.0017624623 | 0.001663627 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 9.4901817E-4 | 8.9534704E-4 | 8.8123116E-4 | 8.6090463E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0014913143 | 0.0013731695 | 0.0014574208 | 0.0014039719 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 0.0010506987 | 8.8657805E-4 | 7.7955064E-4 | 7.339964E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.010168051 | 0.009011885 | 0.0087784175 | 0.008415379 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0017624623 | 0.0016790193 | 0.0017624623 | 0.0017184477 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0012201662 | 0.0011278476 | 0.0011523792 | 0.0011331707 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.008473377 | 0.0059006577 | 0.008270015 | 0.0066942456 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 3.0504155E-4 | 2.6404948E-4 | 0.0 | 0.0 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.003762179 | 0.0035696316 | 0.003694392 | 0.003639054 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0022369714 | 0.0017955599 | 0.0013557402 | 0.001141493 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.008303909 | 0.00801851 | 0.008168335 | 0.007952504 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0070837424 | 0.00410722 | 0.0042027947 | 0.0033089833 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.009286821 | 0.0068983613 | 0.005422961 | 0.0051712333 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.009286821 | 0.0068983613 | 0.005761896 | 0.005442165 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.0075921454 | 0.0074198493 | 0.0075582517 | 0.007454007 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.0070159556 | 0.004818665 | 0.006507553 | 0.0060714823 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.004880665 | 0.0032633406 | 0.0022708648 | 0.0019420207 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0048128776 | 0.0035105508 | 0.0029148415 | 0.0027101603 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.0077616125 | 0.007480101 | 0.007659932 | 0.007504413 |

### Paleo Open Interval Plots
*[(top)](#bruce-2665)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2665)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 271.08 | 0.0036889317 | 109 | 274.94 | 0.0036372072 | 107.47 |
| **FRA** | 119.00 | 0.008403362 | 103.66 | 0.009646475 | 284 | 110.69 | 0.009034578 | 265.9 |
| **COA** | 181.00 | 0.005524862 | 185.42 | 0.0053931875 | 160 | 193.81 | 0.005159822 | 153.12 |
| **SCZ** | 106.00 | 0.009433962 | 120.54 | 0.00829567 | 244 | 166.86 | 0.0059931763 | 176.1 |
| **TOTAL** | 34.97 | 0.028597787 | 37.04 | 0.026999857 | 797 | 42.12 | 0.02374427 | 701.02 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.97964674 | 0.7633806 | 0.98493934 | 0.78864205 | 0.75127923 |
| **20.00** | 0.9049774 | 0.5827499 | 0.9253099 | 0.6219563 | 0.5644205 |
| **30.00** | 0.8094024 | 0.44485998 | 0.84565026 | 0.49050093 | 0.4240374 |
| **40.00** | 0.67906183 | 0.33959746 | 0.736033 | 0.38682967 | 0.3185705 |
| **50.00** | 0.57031506 | 0.25924212 | 0.6405649 | 0.30507013 | 0.2393354 |
| **60.00** | 0.48939618 | 0.1979004 | 0.56716037 | 0.24059115 | 0.17980771 |
| **70.00** | 0.35005802 | 0.15107332 | 0.44260845 | 0.1897403 | 0.1350858 |
| **80.00** | 0.2658818 | 0.11532644 | 0.35098946 | 0.14963719 | 0.10148716 |
| **90.00** | 0.17655534 | 0.08803797 | 0.2616798 | 0.11801018 | 0.076245196 |
| **100.00** | 0.11366326 | 0.06720648 | 0.19131194 | 0.093067795 | 0.05728143 |
| **110.00** | 0.044889912 | 0.05130412 | 0.11221651 | 0.073397174 | 0.04303435 |
| **120.00** | 0.010195893 | 0.03916457 | 0.055304278 | 0.0578841 | 0.032330815 |
| **130.00** | 0.0 | 0.029897472 | 0.026878916 | 0.045649838 | 0.02428947 |
| **140.00** | 0.0 | 0.02282315 | 0.0072531467 | 0.036001384 | 0.018248174 |
| **150.00** | 0.0 | 0.017422749 | 0.003562745 | 0.028392205 | 0.013709474 |
| **160.00** | 0.0 | 0.013300189 | 0.0019667172 | 0.022391288 | 0.0102996435 |
| **170.00** | 0.0 | 0.010153106 | 0.001029869 | 0.017658712 | 0.007737908 |
| **180.00** | 0.0 | 0.007750684 | 8.3870965E-4 | 0.013926403 | 0.00581333 |
| **190.00** | 0.0 | 0.0059167217 | 4.617253E-4 | 0.010982947 | 0.004367434 |
| **200.00** | 0.0 | 0.0045167105 | 1.1935648E-4 | 0.008661615 | 0.0032811624 |
| **210.00** | 0.0 | 0.0034479692 | 8.913485E-5 | 0.0068309135 | 0.0024650693 |
| **220.00** | 0.0 | 0.0026321127 | 0.0 | 0.0053871456 | 0.0018519553 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2665)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 200.14 | 0.0049965647 | 147 | 236.47 | 0.004228903 | 124.5 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 174.45 | 0.0057323817 | 170 | 184.37 | 0.005423901 | 160.82 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 333.88 | 0.0029950473 | 89 | 360.47 | 0.0027741478 | 81.78 |
| **Compton** | 2658.16 | 3.762E-4 | 6427.91 | 1.5557163E-4 | 5 | 6825.10 | 1.4651798E-4 | 4.64 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 185.42 | 0.0053931875 | 160 | 194.42 | 0.00514341 | 152.57 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 698.86 | 0.0014309075 | 43 | 726.36 | 0.0013767207 | 41.28 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 1287.54 | 7.766747E-4 | 23 | 1377.55 | 7.2592427E-4 | 21.51 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 122.28 | 0.008177931 | 241 | 125.49 | 0.007968762 | 234.82 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 271.08 | 0.0036889317 | 109 | 274.63 | 0.0036412985 | 107.59 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 4285.27 | 2.3335744E-4 | 7 | 4616.38 | 2.1661985E-4 | 6.34 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 575.53 | 0.0017375306 | 52 | 606.81 | 0.0016479624 | 49.32 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 565.28 | 0.0017690235 | 52 | 580.55 | 0.0017225058 | 50.64 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 1192.77 | 8.3838706E-4 | 25 | 1289.44 | 7.7553064E-4 | 23.03 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 130.53 | 0.007661128 | 226 | 133.17 | 0.007508927 | 221.53 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 147.58 | 0.006775842 | 200 | 158.59 | 0.006305519 | 186.13 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 405.89 | 0.0024637135 | 72 | 491.90 | 0.0020329326 | 59.2 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 132.29 | 0.0075589796 | 223 | 134.03 | 0.007460749 | 220.07 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 856.46 | 0.0011676033 | 34 | 867.23 | 0.0011530967 | 33.59 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 103.66 | 0.009646475 | 284 | 110.81 | 0.009024237 | 265.64 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 120.54 | 0.00829567 | 244 | 166.79 | 0.0059955274 | 176.01 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1135.20 | 8.809058E-4 | 26 | 1164.06 | 8.590593E-4 | 25.38 |
| **TOTAL** | 11.94 | 0.0837487 | 20.28 | 0.049318835 | 1455 | 22.01 | 0.04543472 | 1340.49 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.92892957 | 0.6106762 | 0.93955106 | 0.63486224 | 0.43279678 |
| **20.00** | 0.7530269 | 0.3729255 | 0.78043044 | 0.4030501 | 0.18731305 |
| **30.00** | 0.55963063 | 0.22773673 | 0.6001026 | 0.2558813 | 0.081068486 |
| **40.00** | 0.37148094 | 0.13907342 | 0.41307884 | 0.16244937 | 0.035086177 |
| **50.00** | 0.2420082 | 0.08492883 | 0.27939245 | 0.10313298 | 0.015185185 |
| **60.00** | 0.1553511 | 0.05186402 | 0.19074173 | 0.06547524 | 0.006572099 |
| **70.00** | 0.080179416 | 0.031672124 | 0.103989124 | 0.041567758 | 0.0028443832 |
| **80.00** | 0.03453793 | 0.019341415 | 0.053053446 | 0.0263898 | 0.0012310399 |
| **90.00** | 0.018606989 | 0.011811342 | 0.028959272 | 0.01675389 | 5.327901E-4 |
| **100.00** | 0.011066314 | 0.007212906 | 0.018880108 | 0.010636412 | 2.3058984E-4 |
| **110.00** | 0.0058563477 | 0.0044047507 | 0.008437793 | 0.0067526563 | 9.979854E-5 |
| **120.00** | 0.0 | 0.0026898764 | 0.00412985 | 0.004287007 | 4.3192485E-5 |
| **130.00** | 0.0 | 0.0016426437 | 8.676768E-4 | 0.002721659 | 1.8693569E-5 |
| **140.00** | 0.0 | 0.0010031235 | 0.0 | 0.0017278785 | 8.0905165E-6 |

### Moment Release Variability Plots
*[(top)](#bruce-2665)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2665)*

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
*[(top)](#bruce-2665)*

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
```
