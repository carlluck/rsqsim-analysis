# Bruce 3014
## Metadata
| **Catalog** | Bruce 3014 |
|-----|-----|
| **Author** | Bruce Shaw, 2019/01/13 |
| **Description** | New const dip fault smoothing.  smoothF=1e6.  V=1.  fracArea=0.99.  b=.013 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 999,999 events in 171,939 years |
| **Frictional Params** | a=0.001, b=0.013, (b-a)=0.012, ddotEQ=1 |

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
*[(top)](#bruce-3014)*


### Full Catalog GMPE Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-3014)*

* [ASK2014](bbp_LA_BASIN_863/gmpe_bbp_comparisons_ASK2014/)
* [NGAWest_2014_NoIdr](bbp_LA_BASIN_863/gmpe_bbp_comparisons_NGAWest_2014_NoIdr/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-3014)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-3014)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-3014)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-3014)*

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
*[(top)](#bruce-3014)*

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
*[(top)](#bruce-3014)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-3014)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-3014)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-3014)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-3014)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-3014)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-3014)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-3014)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-3014)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-3014)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.002516498 | 0.0019278302 | 0.0019472903 | 0.0017088775 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 1.737582E-4 | 1.6670754E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 9.346993E-4 | 7.9047715E-4 | 9.346993E-4 | 9.155178E-4 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 4.43383E-4 | 4.3451507E-4 | 4.43383E-4 | 4.3894918E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 6.111496E-4 | 5.663062E-4 | 6.111496E-4 | 6.050381E-4 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 5.751996E-4 | 5.110589E-4 | 4.97308E-4 | 4.7591492E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.0040024305 | 0.003767977 | 0.0039125555 | 0.0037357442 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 9.167243E-4 | 8.9145935E-4 | 8.86766E-4 | 8.752343E-4 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 9.706493E-4 | 9.0388535E-4 | 8.68791E-4 | 8.4297376E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 7.189995E-5 | 6.802157E-5 | 5.9916624E-6 | 5.931746E-6 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0013001907 | 0.0011872782 | 0.001258249 | 0.0012409107 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0014799406 | 0.0013405677 | 0.001366099 | 0.0013361853 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0035350807 | 0.0034565395 | 0.0035350807 | 0.0034993314 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0023846817 | 0.0022736448 | 0.0023726984 | 0.002348019 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0035350807 | 0.0034975542 | 0.0035350807 | 0.0034996674 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.003600989 | 0.0035086991 | 0.003547064 | 0.0035081366 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0031815728 | 0.0031036558 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 2.0970819E-4 | 1.9932303E-4 | 8.9874935E-5 | 8.750091E-5 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.001863407 | 0.0017237702 | 0.0016776655 | 0.0016343454 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0018214653 | 0.0016163414 | 0.0015578322 | 0.0015293455 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0015758072 | 0.0015132729 | 0.0015758072 | 0.0015600218 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0013361407 | 0.0011129959 | 0.0013181657 | 0.0010485087 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.003229506 | 0.0031175143 | 0.003229506 | 0.0031963384 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0016776655 | 0.0014317532 | 0.0015758072 | 0.0013929937 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.0044098636 | 0.0040047257 | 0.0043978803 | 0.004327612 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.0044098636 | 0.0040047257 | 0.0043978803 | 0.004324272 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.003427231 | 0.0033761037 | 0.003427231 | 0.0033910316 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.006339179 | 0.003375509 | 0.003972472 | 0.0035924031 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0016297322 | 0.0015020678 | 0.0016297322 | 0.0016096154 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.001845432 | 0.0016099153 | 0.001845432 | 0.0018114785 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.0034212393 | 0.0033322372 | 0.0034152477 | 0.0033790679 |

### Paleo Open Interval Plots
*[(top)](#bruce-3014)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-3014)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 634.08 | 0.0015770884 | 263 | 639.49 | 0.0015637485 | 260.76 |
| **FRA** | 119.00 | 0.008403362 | 166898.59 | 0.0 | 0 | ∞ | 0.0 | 0 |
| **COA** | 181.00 | 0.005524862 | 227.36 | 0.004398321 | 734 | 231.04 | 0.004328233 | 722.31 |
| **SCZ** | 106.00 | 0.009433962 | 421.84 | 0.002370572 | 396 | 426.24 | 0.0023461226 | 391.87 |
| **TYS** | 329.00 | 0.0030395137 | 732.50 | 0.0013651889 | 228 | 749.87 | 0.001333573 | 222.72 |
| **TOTAL** | 31.61 | 0.0316373 | 102.87 | 0.009720677 | 1621 | 104.39 | 0.009579863 | 1597.53 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9972562 | 0.90736836 | 0.99731994 | 0.90864694 | 0.72878754 |
| **20.00** | 0.98855793 | 0.82331735 | 0.98886997 | 0.8256393 | 0.53113127 |
| **30.00** | 0.97598076 | 0.74705213 | 0.976606 | 0.75021464 | 0.3870819 |
| **40.00** | 0.9577121 | 0.6778515 | 0.9590086 | 0.68168026 | 0.28210047 |
| **50.00** | 0.9302833 | 0.615061 | 0.93212515 | 0.6194067 | 0.2055913 |
| **60.00** | 0.8954628 | 0.5580869 | 0.89825606 | 0.56282204 | 0.14983238 |
| **70.00** | 0.8591715 | 0.5063904 | 0.8630461 | 0.51140654 | 0.10919597 |
| **80.00** | 0.8290472 | 0.45948264 | 0.833258 | 0.46468797 | 0.079580665 |
| **90.00** | 0.79086524 | 0.41692 | 0.796185 | 0.42223734 | 0.057997398 |
| **100.00** | 0.75159985 | 0.37830004 | 0.75764203 | 0.38366467 | 0.04226778 |
| **110.00** | 0.71125543 | 0.3432575 | 0.71789914 | 0.34861574 | 0.030804234 |
| **120.00** | 0.6565127 | 0.311461 | 0.6642247 | 0.31676862 | 0.022449743 |
| **130.00** | 0.6158779 | 0.28260985 | 0.624235 | 0.28783086 | 0.016361093 |
| **140.00** | 0.5721118 | 0.25643125 | 0.5807755 | 0.26153663 | 0.011923761 |
| **150.00** | 0.51549435 | 0.2326776 | 0.52541775 | 0.23764446 | 0.008689889 |
| **160.00** | 0.47041762 | 0.2111243 | 0.48117542 | 0.21593492 | 0.0063330824 |
| **170.00** | 0.4255822 | 0.19156751 | 0.43689492 | 0.19620861 | 0.0046154717 |
| **180.00** | 0.39719862 | 0.1738223 | 0.4085965 | 0.17828436 | 0.0033636983 |
| **190.00** | 0.35043716 | 0.15772085 | 0.3613525 | 0.16199754 | 0.0024514215 |
| **200.00** | 0.2978183 | 0.14311092 | 0.30888218 | 0.14719857 | 0.0017865654 |
| **210.00** | 0.25775602 | 0.12985432 | 0.2693944 | 0.13375154 | 0.0013020267 |
| **220.00** | 0.18110554 | 0.1178257 | 0.19291821 | 0.121532924 | 9.489008E-4 |
| **230.00** | 0.11700542 | 0.10691132 | 0.12889883 | 0.110430524 | 6.915471E-4 |
| **240.00** | 0.07316191 | 0.097007945 | 0.08428273 | 0.10034236 | 5.039909E-4 |
| **250.00** | 0.021148166 | 0.08802194 | 0.031494882 | 0.09117578 | 3.673023E-4 |
| **260.00** | 0.009859805 | 0.07986833 | 0.019198822 | 0.0828466 | 2.6768536E-4 |
| **270.00** | 0.003173714 | 0.072469994 | 0.010063926 | 0.07527831 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.065756984 | 0.007757262 | 0.06840141 | 1.4217607E-4 |
| **290.00** | 0.0 | 0.059665807 | 0.0070568393 | 0.062152732 | 1.0361615E-4 |
| **300.00** | 0.0 | 0.054138865 | 0.006482571 | 0.05647489 | 7.551416E-5 |
| **310.00** | 0.0 | 0.049123894 | 0.006120567 | 0.05131574 | 5.503378E-5 |
| **320.00** | 0.0 | 0.044573467 | 0.005441493 | 0.04662789 | 4.0107934E-5 |
| **330.00** | 0.0 | 0.040444557 | 0.0047289543 | 0.04236829 | 2.9230163E-5 |
| **340.00** | 0.0 | 0.03669811 | 0.0040426813 | 0.038497817 | 2.1302578E-5 |
| **350.00** | 0.0 | 0.033298705 | 0.0031013151 | 0.034980927 | 1.5525055E-5 |
| **360.00** | 0.0 | 0.03021419 | 0.0027057384 | 0.031785313 | 1.1314466E-5 |
| **370.00** | 0.0 | 0.027415402 | 0.0020418048 | 0.028881628 | 8.245842E-6 |
| **380.00** | 0.0 | 0.024875868 | 0.001258572 | 0.026243202 | 6.009467E-6 |
| **390.00** | 0.0 | 0.022571577 | 9.6015295E-4 | 0.023845807 | 4.379625E-6 |
| **400.00** | 0.0 | 0.020480735 | 6.931526E-4 | 0.021667419 | 3.1918162E-6 |
| **410.00** | 0.0 | 0.018583572 | 6.257017E-4 | 0.019688034 | 2.3261557E-6 |
| **420.00** | 0.0 | 0.016862145 | 5.720798E-4 | 0.017889474 | 1.6952735E-6 |
| **430.00** | 0.0 | 0.015300176 | 5.4190983E-4 | 0.016255217 | 1.2354942E-6 |
| **440.00** | 0.0 | 0.013882896 | 4.1980043E-4 | 0.014770253 | 9.004128E-7 |
| **450.00** | 0.0 | 0.012596901 | 4.0671192E-4 | 0.013420945 | 6.5620964E-7 |
| **460.00** | 0.0 | 0.01143003 | 3.9048496E-4 | 0.012194901 | 4.782374E-7 |
| **470.00** | 0.0 | 0.010371247 | 2.6641955E-4 | 0.01108086 | 3.4853346E-7 |
| **480.00** | 0.0 | 0.0094105415 | 0.0 | 0.01006859 | 2.5400686E-7 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-3014)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 635.07 | 0.0015746212 | 263 | 714.04 | 0.0014004838 | 233.85 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 227.36 | 0.004398321 | 734 | 231.24 | 0.0043244553 | 721.69 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 1295.05 | 7.721685E-4 | 128 | 1665.64 | 6.0036936E-4 | 99.45 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 283.02 | 0.0035333107 | 590 | 285.93 | 0.0034973677 | 583.97 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 282.06 | 0.0035453085 | 592 | 285.27 | 0.0035054716 | 585.35 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 512.03 | 0.0019530158 | 325 | 584.68 | 0.0017103408 | 284.63 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 1636.72 | 6.109771E-4 | 102 | 1652.84 | 6.050183E-4 | 100.98 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 1992.73 | 5.0182483E-4 | 83 | 2087.21 | 4.7910868E-4 | 79.25 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 309.73 | 0.0032286176 | 539 | 312.79 | 0.0031970774 | 533.72 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 634.08 | 0.0015770884 | 263 | 640.88 | 0.0015603484 | 260.21 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 10590.86 | 9.442104E-5 | 15 | 10784.49 | 9.2725786E-5 | 14.74 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 597.38 | 0.001673964 | 280 | 613.32 | 0.0016304634 | 272.71 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 760.06 | 0.0013156782 | 219 | 1070.07 | 9.3451526E-4 | 155.24 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 293.02 | 0.0034127922 | 570 | 296.28 | 0.003375197 | 563.71 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 260.51 | 0.0038386416 | 641 | 282.52 | 0.0035396202 | 591.08 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 613.98 | 0.0016287112 | 272 | 622.76 | 0.001605746 | 268.13 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 166898.59 | 0.0 | 0 | ∞ | 0.0 | 0 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 421.84 | 0.002370572 | 396 | 426.37 | 0.0023453776 | 391.79 |
| **RodgersCreek** | 325.31 | 0.003074 | 640.61 | 0.0015610132 | 260 | 653.05 | 0.0015312847 | 255.05 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 166898.59 | 0.0 | 0 | ∞ | 0.0 | 0 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 794.37 | 0.0012588613 | 210 | 805.48 | 0.0012415015 | 207.11 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 732.50 | 0.0013651889 | 228 | 749.52 | 0.0013341925 | 222.82 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 227.36 | 0.004398321 | 734 | 231.09 | 0.0043273894 | 722.15 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 1072.66 | 9.322589E-4 | 156 | 1092.91 | 9.14985E-4 | 153.08 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 1120.08 | 8.927928E-4 | 149 | 1136.59 | 8.7982323E-4 | 146.85 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 283.02 | 0.0035333107 | 590 | 286.05 | 0.0034958706 | 583.72 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 291.99 | 0.0034247881 | 572 | 295.26 | 0.0033868921 | 565.65 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1152.24 | 8.6787465E-4 | 145 | 1187.88 | 8.418384E-4 | 140.68 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 2249.55 | 4.4453304E-4 | 74 | 2269.13 | 4.4069823E-4 | 73.35 |
| **TOTAL** | 9.11 | 0.1097689 | 28.66 | 0.034892634 | 5824 | 29.69 | 0.033679504 | 5621.52 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.95548546 | 0.7054451 | 0.9581623 | 0.7140552 | 0.33364123 |
| **20.00** | 0.8544285 | 0.49765277 | 0.8621086 | 0.50987476 | 0.11131647 |
| **30.00** | 0.73131096 | 0.3510667 | 0.74375093 | 0.36407873 | 0.037139766 |
| **40.00** | 0.59441245 | 0.24765828 | 0.61195695 | 0.2599723 | 0.012391358 |
| **50.00** | 0.47007254 | 0.17470932 | 0.48740855 | 0.18563455 | 0.004134268 |
| **60.00** | 0.36417004 | 0.12324783 | 0.3839342 | 0.13255331 | 0.0013793623 |
| **70.00** | 0.2740183 | 0.08694457 | 0.29326838 | 0.09465038 | 4.6021215E-4 |
| **80.00** | 0.20927149 | 0.061334625 | 0.2270265 | 0.067585595 | 1.5354574E-4 |
| **90.00** | 0.1514808 | 0.043268207 | 0.1666864 | 0.04825984 | 5.1229195E-5 |
| **100.00** | 0.10590566 | 0.030523345 | 0.11760392 | 0.03446019 | 1.7092172E-5 |
| **110.00** | 0.07622112 | 0.021532545 | 0.08465312 | 0.024606476 | 5.702653E-6 |
| **120.00** | 0.049558762 | 0.015190028 | 0.055823408 | 0.017570382 | 1.9026403E-6 |
| **130.00** | 0.036585405 | 0.0107157305 | 0.039709922 | 0.012546222 | 6.347993E-7 |
| **140.00** | 0.023067843 | 0.007559359 | 0.026807394 | 0.0089586945 | 2.1179521E-7 |
| **150.00** | 0.014365482 | 0.005332713 | 0.017561462 | 0.006397002 | 7.066362E-8 |
| **160.00** | 0.009985561 | 0.003761936 | 0.011968347 | 0.004567812 | 2.3576296E-8 |
| **170.00** | 0.00824273 | 0.0026538393 | 0.009778362 | 0.00326167 | 7.866025E-9 |
| **180.00** | 0.0039726216 | 0.0018721379 | 0.004690718 | 0.0023290124 | 2.6244302E-9 |
| **190.00** | 0.0030585856 | 0.0013206905 | 0.0029891247 | 0.0016630433 | 8.756182E-10 |
| **200.00** | 0.002441403 | 9.316746E-4 | 0.0025235966 | 0.0011875046 | 2.9214234E-10 |
| **210.00** | 0.0018191956 | 6.572453E-4 | 0.0019013861 | 8.479438E-4 | 9.7470726E-11 |
| **220.00** | 0.0 | 4.6365045E-4 | 8.136959E-5 | 6.0547865E-4 | 3.2520254E-11 |
| **230.00** | 0.0 | 3.2707994E-4 | 5.958018E-5 | 4.3234517E-4 | 1.0850098E-11 |
| **240.00** | 0.0 | 2.3073693E-4 | 0.0 | 3.087183E-4 | 3.6200402E-12 |

### Moment Release Variability Plots
*[(top)](#bruce-3014)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-3014)*

Example rupture plots:

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
|  |  |  |
| ![example](resources/trigger_within_prev_m6_example_new_hypo.png) | ![example](resources/trigger_within_prev_m6.5_example_new_hypo.png) |  |

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![hypocenter plot](resources/trigger_within_prev_m6_1yr.png) | ![hypocenter plot](resources/trigger_within_prev_m6.5_1yr.png) | ![hypocenter plot](resources/trigger_within_prev_m7_1yr.png) |
| ![hypocenter plot](resources/trigger_within_prev_m6_10yr.png) | ![hypocenter plot](resources/trigger_within_prev_m6.5_10yr.png) | ![hypocenter plot](resources/trigger_within_prev_m7_10yr.png) |
| ![hypocenter plot](resources/trigger_within_prev_m6_100yr.png) | ![hypocenter plot](resources/trigger_within_prev_m6.5_100yr.png) | ![hypocenter plot](resources/trigger_within_prev_m7_100yr.png) |

## Input File
*[(top)](#bruce-3014)*

```
  A_1 = 0.001
  fA = .1
  B_1 = 0.013
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
