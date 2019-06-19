# Bruce 2667
## Metadata
| **Catalog** | Bruce 2667 |
|-----|-----|
| **Author** | Bruce Shaw, 2018/04/23 |
| **Description** | dx/4, LatCut=37, rateCut=2.0mm/yr, interpolated nearest, like r2666 but larger b=.015 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 0.09 km^2 |
| **Length** | 1,351,999 events in 10,693 years |
| **Frictional Params** | a=0.001, b=0.015, (b-a)=0.014, ddotEQ=1 |

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
  * [Trigger Hypocenter Statistics Within Previous Rupture Area](#trigger-hypocenter-statistics-within-previous-rupture-area)
* [Input File](#input-file)

## BBP Calculations, LA Basin 863 (m/s) Velocity Model
*[(top)](#bruce-2667)*


### Full Catalog GMPE Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-2667)*

* [ASK2014](bbp_LA_BASIN_863/gmpe_bbp_comparisons_ASK2014_GriddedSites/)
* [NGAWest_2014_NoIdr](bbp_LA_BASIN_863/gmpe_bbp_comparisons_NGAWest_2014_NoIdr_GriddedSites/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2667)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2667)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2667)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2667)*

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
*[(top)](#bruce-2667)*

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
*[(top)](#bruce-2667)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2667)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2667)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2667)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2667)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2667)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2667)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2667)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2667)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2667)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0014408964 | 0.0012633746 | 0.0011789153 | 0.0011580507 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 5.239624E-4 | 5.110565E-4 | 5.239624E-4 | 5.1872275E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0011789153 | 0.0010652815 | 0.0010479247 | 0.0010144428 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 5.239624E-4 | 4.4357227E-4 | 3.9297176E-4 | 3.8246138E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.007073492 | 0.00656037 | 0.0066805203 | 0.006494928 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0011789153 | 0.0011607648 | 0.0011789153 | 0.0011671261 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0010479247 | 0.001005963 | 9.169341E-4 | 9.053318E-4 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0055016046 | 0.004234329 | 0.005370614 | 0.0051259827 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0026198118 | 0.002554296 | 0.0026198118 | 0.0025935604 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.001571887 | 0.0013224289 | 0.0010479247 | 9.204424E-4 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.0057635857 | 0.005688396 | 0.005632595 | 0.00557487 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0065495293 | 0.0037719994 | 0.0034057554 | 0.0029387542 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.006287548 | 0.005160125 | 0.0039297175 | 0.003765174 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.006287548 | 0.005160125 | 0.00445368 | 0.0041712685 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.0052396236 | 0.005164282 | 0.0052396236 | 0.0051864977 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.0064185387 | 0.004230249 | 0.005108633 | 0.0049349666 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0034057554 | 0.0025957185 | 0.0017028777 | 0.0016136346 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0030127836 | 0.0024174002 | 0.00222684 | 0.0021672437 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.0055016046 | 0.005291768 | 0.0052396236 | 0.0051872274 |

### Paleo Open Interval Plots
*[(top)](#bruce-2667)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2667)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 375.28 | 0.0026646943 | 20 | 380.89 | 0.002625422 | 19.71 |
| **FRA** | 119.00 | 0.008403362 | 149.52 | 0.0066881347 | 51 | 153.94 | 0.0064959354 | 49.54 |
| **COA** | 181.00 | 0.005524862 | 258.61 | 0.0038667736 | 30 | 268.66 | 0.0037221282 | 28.89 |
| **SCZ** | 106.00 | 0.009433962 | 188.98 | 0.0052917004 | 41 | 202.92 | 0.0049281437 | 38.21 |
| **TOTAL** | 34.97 | 0.028597787 | 53.74 | 0.018608395 | 142 | 55.63 | 0.017977333 | 137.2 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9924099 | 0.8302039 | 0.9929507 | 0.8354596 | 0.75127923 |
| **20.00** | 0.95484304 | 0.6892385 | 0.95719814 | 0.6979927 | 0.5644205 |
| **30.00** | 0.9138246 | 0.57220846 | 0.9188153 | 0.58314466 | 0.4240374 |
| **40.00** | 0.86671126 | 0.47504973 | 0.8729326 | 0.4871938 | 0.3185705 |
| **50.00** | 0.77943814 | 0.39438814 | 0.7920593 | 0.40703073 | 0.2393354 |
| **60.00** | 0.6619848 | 0.32742256 | 0.67823815 | 0.3400577 | 0.17980771 |
| **70.00** | 0.60414565 | 0.2718275 | 0.6138229 | 0.28410447 | 0.1350858 |
| **80.00** | 0.53705716 | 0.22567223 | 0.5556482 | 0.2373578 | 0.10148716 |
| **90.00** | 0.44545907 | 0.18735397 | 0.4670909 | 0.19830284 | 0.076245196 |
| **100.00** | 0.3524765 | 0.155542 | 0.37515435 | 0.165674 | 0.05728143 |
| **110.00** | 0.2963178 | 0.12913157 | 0.32108164 | 0.13841394 | 0.04303435 |
| **120.00** | 0.223187 | 0.10720553 | 0.24483985 | 0.11563925 | 0.032330815 |
| **130.00** | 0.08836119 | 0.08900245 | 0.118493415 | 0.09661192 | 0.02428947 |
| **140.00** | 0.0 | 0.07389018 | 0.027030723 | 0.08071535 | 0.018248174 |
| **150.00** | 0.0 | 0.061343916 | 0.02294536 | 0.06743441 | 0.013709474 |
| **160.00** | 0.0 | 0.05092796 | 0.015031415 | 0.056338724 | 0.0102996435 |
| **170.00** | 0.0 | 0.04228059 | 0.010117861 | 0.047068726 | 0.007737908 |
| **180.00** | 0.0 | 0.03510151 | 0.0014702235 | 0.039324015 | 0.00581333 |
| **190.00** | 0.0 | 0.029141411 | 7.8219036E-4 | 0.032853626 | 0.004367434 |
| **200.00** | 0.0 | 0.024193313 | 6.984846E-4 | 0.027447876 | 0.0032811624 |
| **210.00** | 0.0 | 0.020085381 | 6.147788E-4 | 0.02293159 | 0.0024650693 |
| **220.00** | 0.0 | 0.016674962 | 5.3107296E-4 | 0.019158417 | 0.0018519553 |
| **230.00** | 0.0 | 0.013843618 | 4.4736714E-4 | 0.016006082 | 0.0013913356 |
| **240.00** | 0.0 | 0.011493026 | 3.6366135E-4 | 0.013372435 | 0.0010452815 |
| **250.00** | 0.0 | 0.009541555 | 0.0 | 0.011172129 | 7.852983E-4 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2667)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 297.57 | 0.0033605758 | 26 | 348.73 | 0.002867545 | 22.23 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 220.58 | 0.0045334585 | 35 | 237.32 | 0.004213808 | 32.56 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 451.81 | 0.002213299 | 17 | 465.95 | 0.0021461584 | 16.48 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 258.61 | 0.0038667736 | 30 | 268.27 | 0.0037275713 | 28.95 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 892.76 | 0.0011201191 | 8 | 917.53 | 0.0010898878 | 7.79 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 1936.85 | 5.163033E-4 | 3 | 1994.44 | 5.013934E-4 | 2.91 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 178.00 | 0.0056180335 | 43 | 179.82 | 0.005561223 | 42.55 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 375.28 | 0.0026646943 | 20 | 377.86 | 0.0026464532 | 19.84 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 781.17 | 0.0012801362 | 9 | 792.29 | 0.0012621687 | 8.8 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 808.89 | 0.0012362556 | 9 | 813.98 | 0.001228529 | 8.95 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 1052.71 | 9.499252E-4 | 6 | 1248.03 | 8.0126186E-4 | 5.16 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 190.07 | 0.0052611404 | 40 | 191.72 | 0.0052158562 | 39.62 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 191.18 | 0.005230782 | 40 | 199.51 | 0.0050122933 | 38.34 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 595.50 | 0.0016792541 | 13 | 629.62 | 0.0015882633 | 12.28 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 190.07 | 0.0052611404 | 40 | 191.60 | 0.005219321 | 39.69 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1129.14 | 8.8562985E-4 | 7 | 1138.09 | 8.786677E-4 | 6.93 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 149.52 | 0.0066881347 | 51 | 153.27 | 0.006524244 | 49.75 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 188.98 | 0.0052917004 | 41 | 201.26 | 0.0049686255 | 38.44 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1781.55 | 5.613083E-4 | 4 | 1787.73 | 5.593673E-4 | 3.98 |
| **TOTAL** | 12.04 | 0.0830873 | 28.81 | 0.034709275 | 264 | 29.96 | 0.033375014 | 253.89 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.96378493 | 0.7067398 | 0.96585256 | 0.7162327 | 0.4356688 |
| **20.00** | 0.8586764 | 0.4994811 | 0.8673983 | 0.5129893 | 0.18980728 |
| **30.00** | 0.7319767 | 0.35300314 | 0.74747646 | 0.36741972 | 0.08269311 |
| **40.00** | 0.59575135 | 0.24948137 | 0.6135541 | 0.26315802 | 0.036026806 |
| **50.00** | 0.44433957 | 0.1763184 | 0.46512473 | 0.18848239 | 0.015695754 |
| **60.00** | 0.30512387 | 0.12461123 | 0.32293117 | 0.13499725 | 0.0068381503 |
| **70.00** | 0.20807262 | 0.08806771 | 0.22867218 | 0.09668945 | 0.0029791687 |
| **80.00** | 0.1785812 | 0.062240954 | 0.19709423 | 0.06925214 | 0.0012979307 |
| **90.00** | 0.13407968 | 0.043988157 | 0.14308348 | 0.04960065 | 5.654679E-4 |
| **100.00** | 0.07218822 | 0.031088179 | 0.079019696 | 0.03552561 | 2.463567E-4 |
| **110.00** | 0.031671785 | 0.021971254 | 0.03524262 | 0.025444603 | 1.0732993E-4 |
| **120.00** | 0.0 | 0.015527958 | 0.0041727023 | 0.018224258 | 4.67603E-5 |
| **130.00** | 0.0 | 0.010974226 | 0.0015723307 | 0.013052809 | 2.0372003E-5 |
| **140.00** | 0.0 | 0.0077559217 | 7.0325896E-4 | 0.009348849 | 8.875446E-6 |
| **150.00** | 0.0 | 0.005481418 | 5.9654383E-4 | 0.0066959513 | 3.8667545E-6 |
| **160.00** | 0.0 | 0.0038739361 | 4.8982864E-4 | 0.0047958596 | 1.6846243E-6 |
| **170.00** | 0.0 | 0.0027378649 | 0.0 | 0.0034349514 | 7.339382E-7 |

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2667)*

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
*[(top)](#bruce-2667)*

```
  A_1 = 0.001
  fA = .1
  B_1 = 0.015
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
