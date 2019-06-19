# Bruce 2194
## Metadata
| **Catalog** | Bruce 2194 |
|-----|-----|
| **Author** | Bruce Shaw, 2017/07/05 |
| **Description** | Catalog with decent large event scaling and distribution of sizes while not using any of the enhanced frictional weakening terms. |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.34 km^2 |
| **Length** | 3,665,999 events in 159,579 years |
| **Frictional Params** | a=0.001, b=0.005, (b-a)=0.004, ddotEQ=1 |

* [Metadata](#metadata)
* [Hazard Comparisons](#hazard-comparisons)
* [Multi-Fault Rupture Comparisons](multi_fault/)
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
*[(top)](#bruce-2194)*

* [PGA](hazard_pga/)
* [0.2s SA](hazard_sa_0.2s/)
* [1.0s SA](hazard_sa_1.0s/)
* [10.0s SA](hazard_sa_10.0s/)
* [5.0s SA](hazard_sa_5.0s/)

## Multi-Fault Rupture Comparisons
*[(top)](#bruce-2194)*

[Multi-Fault Rupture Comparisons here](multi_fault/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2194)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2194)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2194)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2194)*

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
*[(top)](#bruce-2194)*

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
*[(top)](#bruce-2194)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2194)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2194)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2194)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2194)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2194)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2194)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2194)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2194)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2194)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0017279472 | 0.0012068207 | 0.0 | 0.0 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 2.4592507E-4 | 2.252245E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0016761734 | 0.001276063 | 0.0015143807 | 0.0013410379 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 0.001054889 | 8.814625E-4 | 8.08964E-4 | 7.5268425E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.001999759 | 0.0013205934 | 0.0012619839 | 0.0011136299 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 6.924732E-4 | 5.4019573E-4 | 5.63039E-4 | 5.2710366E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.019214513 | 0.00951722 | 0.0057662954 | 0.005161883 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0022845143 | 0.0018584298 | 0.0018767965 | 0.001767783 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0010678325 | 9.419055E-4 | 0.001145493 | 0.0010401411 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 0.0018056077 | 0.0011382826 | 0.0 | 0.0 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0024657224 | 0.0020591086 | 0.0 | 0.0 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0028928553 | 0.0021280705 | 0.0 | 0.0 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.012833405 | 0.008198313 | 0.0 | 0.0 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0038765555 | 0.00279019 | 0.0 | 0.0 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.012490405 | 0.008896029 | 0.0 | 0.0 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.012794575 | 0.008435451 | 0.0 | 0.0 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0066723353 | 0.0045991973 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 3.3652902E-4 | 2.6015652E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0074295253 | 0.0045109782 | 0.0 | 0.0 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.005190313 | 0.0029633392 | 0.0 | 0.0 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.008186716 | 0.006027313 | 0.0043101604 | 0.0040555126 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0019350419 | 0.0010883982 | 0.0 | 0.0 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.0094487 | 0.007987877 | 0.009552247 | 0.008796882 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0041289525 | 0.002346478 | 0.00381831 | 0.002263007 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.007927847 | 0.0060197953 | 0.0054103513 | 0.0050805914 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.007927847 | 0.0060197953 | 0.0054944837 | 0.005104662 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.0061028246 | 0.0057215034 | 0.006154598 | 0.0059580537 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.005591559 | 0.0038016192 | 0.0055009555 | 0.0043209363 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0046855197 | 0.0030475457 | 0.0023039295 | 0.0013026844 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.005319747 | 0.0028648726 | 0.0023298163 | 0.0021998703 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.007733696 | 0.0063811936 | 0.006342278 | 0.0061438526 |

### Paleo Open Interval Plots
*[(top)](#bruce-2194)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2194)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 237.58 | 0.004209056 | 651 | 250.93 | 0.003985225 | 616.35 |
| **FRA** | 119.00 | 0.008403362 | 173.08 | 0.0057777213 | 891 | 193.11 | 0.00517851 | 798.69 |
| **COA** | 181.00 | 0.005524862 | 184.51 | 0.0054197283 | 836 | 196.65 | 0.005085076 | 784.38 |
| **SCZ** | 106.00 | 0.009433962 | 1787.66 | 5.5939157E-4 | 50 | 1980.72 | 5.048661E-4 | 45.12 |
| **TYS** | 329.00 | 0.0030395137 | 1166.27 | 8.574331E-4 | 133 | 1201.07 | 8.325903E-4 | 129.14 |
| **TOTAL** | 31.61 | 0.0316373 | 60.38 | 0.016562862 | 2559 | 65.17 | 0.015343344 | 2370.6 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9902591 | 0.84736085 | 0.9917275 | 0.85775787 | 0.72878754 |
| **20.00** | 0.9616991 | 0.71802044 | 0.96683866 | 0.7357485 | 0.53113127 |
| **30.00** | 0.91927505 | 0.6084224 | 0.92913115 | 0.6310941 | 0.3870819 |
| **40.00** | 0.8730163 | 0.51555336 | 0.8886418 | 0.5413259 | 0.28210047 |
| **50.00** | 0.8134238 | 0.43685976 | 0.83488023 | 0.46432656 | 0.2055913 |
| **60.00** | 0.75013334 | 0.37017787 | 0.7773297 | 0.39827976 | 0.14983238 |
| **70.00** | 0.6874984 | 0.3136742 | 0.7198085 | 0.3416276 | 0.10919597 |
| **80.00** | 0.62335634 | 0.26579526 | 0.6584667 | 0.29303375 | 0.079580665 |
| **90.00** | 0.5584712 | 0.22522451 | 0.5972833 | 0.251352 | 0.057997398 |
| **100.00** | 0.49303034 | 0.19084643 | 0.53442043 | 0.21559915 | 0.04226778 |
| **110.00** | 0.42136428 | 0.1617158 | 0.4641075 | 0.18493187 | 0.030804234 |
| **120.00** | 0.36308298 | 0.13703164 | 0.40516862 | 0.15862677 | 0.022449743 |
| **130.00** | 0.30376157 | 0.11611525 | 0.34525388 | 0.13606335 | 0.016361093 |
| **140.00** | 0.26090366 | 0.09839152 | 0.29856524 | 0.11670941 | 0.011923761 |
| **150.00** | 0.22385857 | 0.08337312 | 0.2575165 | 0.100108415 | 0.008689889 |
| **160.00** | 0.18363276 | 0.07064712 | 0.21370098 | 0.085868776 | 0.0063330824 |
| **170.00** | 0.15348834 | 0.05986361 | 0.18096471 | 0.07365462 | 0.0046154717 |
| **180.00** | 0.13256277 | 0.05072608 | 0.15651794 | 0.06317783 | 0.0033636983 |
| **190.00** | 0.10461989 | 0.042983294 | 0.12601681 | 0.05419128 | 0.0024514215 |
| **200.00** | 0.084357604 | 0.03642236 | 0.10261381 | 0.046482995 | 0.0017865654 |
| **210.00** | 0.07191212 | 0.030862885 | 0.08827726 | 0.039871156 | 0.0013020267 |
| **220.00** | 0.05240778 | 0.026152 | 0.066715986 | 0.034199797 | 9.489008E-4 |
| **230.00** | 0.03772646 | 0.022160182 | 0.049481224 | 0.029335143 | 6.915471E-4 |
| **240.00** | 0.029965851 | 0.01877767 | 0.039178234 | 0.025162451 | 5.039909E-4 |
| **250.00** | 0.017794838 | 0.015911464 | 0.02636479 | 0.021583289 | 3.673023E-4 |
| **260.00** | 0.010122764 | 0.013482751 | 0.016110752 | 0.018513236 | 2.6768536E-4 |
| **270.00** | 0.0056143296 | 0.011424756 | 0.009319786 | 0.015879873 | 1.9508575E-4 |
| **280.00** | 0.005168203 | 0.009680891 | 0.0077649085 | 0.013621086 | 1.4217607E-4 |
| **290.00** | 0.004722076 | 0.008203208 | 0.006217244 | 0.0116835935 | 1.0361615E-4 |
| **300.00** | 0.004275949 | 0.006951078 | 0.0055169538 | 0.010021694 | 7.551416E-5 |
| **310.00** | 0.0037076434 | 0.0058900714 | 0.0032323606 | 0.008596187 | 5.503378E-5 |
| **320.00** | 0.0030798654 | 0.004991016 | 0.0027864415 | 0.007373447 | 4.0107934E-5 |
| **330.00** | 0.0024520871 | 0.0042291917 | 0.0025934468 | 0.006324632 | 2.9230163E-5 |
| **340.00** | 0.0 | 0.0035836515 | 3.9544026E-4 | 0.005425003 | 2.1302578E-5 |
| **350.00** | 0.0 | 0.0030366462 | 3.1233655E-4 | 0.004653339 | 1.5525055E-5 |
| **360.00** | 0.0 | 0.002573135 | 2.2003076E-4 | 0.003991438 | 1.1314466E-5 |
| **370.00** | 0.0 | 0.002180374 | 1.525758E-4 | 0.0034236873 | 8.245842E-6 |
| **380.00** | 0.0 | 0.0018475635 | 1.4240651E-4 | 0.0029366948 | 6.009467E-6 |
| **390.00** | 0.0 | 0.0015655531 | 1.163905E-4 | 0.0025189728 | 4.379625E-6 |
| **400.00** | 0.0 | 0.0013265884 | 8.3177816E-5 | 0.0021606688 | 3.1918162E-6 |
| **410.00** | 0.0 | 0.0011240991 | 7.774489E-5 | 0.0018533306 | 2.3261557E-6 |
| **420.00** | 0.0 | 9.525176E-4 | 7.231196E-5 | 0.001589709 | 1.6952735E-6 |
| **430.00** | 0.0 | 8.0712617E-4 | 6.687903E-5 | 0.0013635854 | 1.2354942E-6 |
| **440.00** | 0.0 | 6.839271E-4 | 6.14461E-5 | 0.001169626 | 9.004128E-7 |
| **450.00** | 0.0 | 5.7953305E-4 | 5.423531E-5 | 0.001003256 | 6.5620964E-7 |
| **460.00** | 0.0 | 4.9107365E-4 | 4.6185538E-5 | 8.605507E-4 | 4.782374E-7 |
| **470.00** | 0.0 | 4.1611659E-4 | 3.8135768E-5 | 7.381441E-4 | 3.4853346E-7 |
| **480.00** | 0.0 | 3.526009E-4 | 0.0 | 6.331489E-4 | 2.5400686E-7 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2194)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 251.55 | 0.003975418 | 614 | 360.14 | 0.002776668 | 428.62 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 172.91 | 0.0057832072 | 892 | 190.46 | 0.005250556 | 809.87 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 429.10 | 0.0023304343 | 360 | 455.25 | 0.002196582 | 339.32 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 20874.66 | 4.7904978E-5 | 5 | 22360.89 | 4.4720935E-5 | 4.71 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 788.31 | 0.0012685285 | 195 | 892.62 | 0.0011202999 | 172.3 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 9353.43 | 1.0691262E-4 | 15 | 13053.75 | 7.6606324E-5 | 10.32 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 104.69 | 0.009551744 | 1476 | 113.56 | 0.008806062 | 1360.79 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 237.58 | 0.004209056 | 651 | 251.12 | 0.0039821556 | 615.89 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 138.59 | 0.00721578 | 1114 | 188.21 | 0.005313302 | 820.1 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 1591.46 | 6.2835385E-4 | 96 | 1694.63 | 5.9010007E-4 | 90.11 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 158.57 | 0.0063062822 | 974 | 163.68 | 0.0061093685 | 943.58 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 986.15 | 0.0010140442 | 157 | 1063.61 | 9.401952E-4 | 145.51 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 433.51 | 0.0023067389 | 356 | 768.35 | 0.0013014877 | 201.12 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 173.08 | 0.0057777213 | 891 | 194.03 | 0.0051537286 | 794.86 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 1787.66 | 5.5939157E-4 | 50 | 1990.10 | 5.0248794E-4 | 44.92 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 3997.10 | 2.5018153E-4 | 38 | 4294.44 | 2.3285947E-4 | 35.43 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 154518.62 | 0.0 | 0 | ∞ | 0.0 | 0 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 1166.27 | 8.574331E-4 | 133 | 1197.96 | 8.347554E-4 | 129.5 |
| **Compton** | 2658.16 | 3.762E-4 | 2031.77 | 4.921827E-4 | 74 | 2470.55 | 4.0476743E-4 | 61.01 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 184.51 | 0.0054197283 | 836 | 196.79 | 0.005081481 | 783.84 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 659.54 | 0.0015162062 | 234 | 743.85 | 0.0013443556 | 207.55 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 577.55 | 0.00173145 | 267 | 599.36 | 0.0016684392 | 257.25 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 162.58 | 0.006150732 | 950 | 168.15 | 0.0059472197 | 918.6 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 909.68 | 0.001099283 | 168 | 967.64 | 0.001033439 | 157.96 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1028.00 | 9.727622E-4 | 150 | 1157.57 | 8.6387637E-4 | 133.22 |
| **TOTAL** | 10.14 | 0.0985812 | 18.54 | 0.05393483 | 8332 | 20.87 | 0.047915064 | 7402.14 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9168705 | 0.58312815 | 0.9306178 | 0.6193092 | 0.3731361 |
| **20.00** | 0.73163235 | 0.34003845 | 0.7692239 | 0.38354388 | 0.13923056 |
| **30.00** | 0.5366042 | 0.19828598 | 0.5916753 | 0.23753226 | 0.051951952 |
| **40.00** | 0.38011315 | 0.11562614 | 0.44110355 | 0.1471059 | 0.01938515 |
| **50.00** | 0.25394142 | 0.067424856 | 0.31137383 | 0.091104046 | 0.0072332993 |
| **60.00** | 0.1542843 | 0.039317332 | 0.20427184 | 0.05642157 | 0.0026990052 |
| **70.00** | 0.09230896 | 0.022927044 | 0.1350012 | 0.0349424 | 0.0010070964 |
| **80.00** | 0.055179432 | 0.013369405 | 0.08553734 | 0.021640148 | 3.7578403E-4 |
| **90.00** | 0.033621613 | 0.0077960766 | 0.052955687 | 0.013401943 | 1.4021859E-4 |
| **100.00** | 0.01936744 | 0.0045461114 | 0.03173144 | 0.008299947 | 5.232062E-5 |
| **110.00** | 0.008165314 | 0.0026509657 | 0.01587057 | 0.0051402333 | 1.9522713E-5 |
| **120.00** | 0.0030506542 | 0.0015458527 | 0.008242274 | 0.0031833937 | 7.284629E-6 |
| **130.00** | 9.031721E-4 | 9.0143026E-4 | 0.004017967 | 0.0019715051 | 2.7181584E-6 |
| **140.00** | 0.0 | 5.2564935E-4 | 0.001580622 | 0.0012209712 | 1.014243E-6 |
| **150.00** | 0.0 | 3.0652093E-4 | 9.5940946E-4 | 7.5615867E-4 | 3.7845072E-7 |
| **160.00** | 0.0 | 1.7874099E-4 | 2.622629E-4 | 4.6829603E-4 | 1.4121363E-7 |
| **170.00** | 0.0 | 1.042289E-4 | 2.55153E-4 | 2.9002005E-4 | 5.2691906E-8 |
| **180.00** | 0.0 | 6.0778806E-5 | 1.3019165E-4 | 1.7961208E-4 | 1.9661252E-8 |
| **190.00** | 0.0 | 3.5441833E-5 | 2.270471E-5 | 1.11235415E-4 | 7.3363235E-9 |
| **200.00** | 0.0 | 2.066713E-5 | 0.0 | 6.8889116E-5 | 2.7374474E-9 |

### Moment Release Variability Plots
*[(top)](#bruce-2194)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2194)*

Example rupture plots:

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![example](resources/elastic_rebound_triggering_m6_example_re_rup.png) |  |  |
| ![example](resources/elastic_rebound_triggering_m6_example_new_hypo.png) | ![example](resources/elastic_rebound_triggering_m6.5_example_new_hypo.png) | ![example](resources/elastic_rebound_triggering_m7_example_new_hypo.png) |

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_1yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_1yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_1yr.png) |
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_10yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_10yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_10yr.png) |
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_100yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_100yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_100yr.png) |

## Input File
*[(top)](#bruce-2194)*

```
  A_1 = 0.001
  fA = .1
  B_1 = 0.005
  muSlipAmp_1 = 0
  muSlipInvDist_1 = 00
  cohesion = 00
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
  writeTransitions = 0
  minDtWrite = 0
  minDtWriteCoseismic = 0
  minDtWriteInterseismic = 0
  minMagWrite = 0
  writeStiffness = 0
  stressRateSpecification = 2
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
  tauDotFname =  tauDotMod.in
  sigmaDotFname =  sigmaDotMod.in
  KZeroFname = zfault_Deepen_KZero.in
  pinnedFname =  
  neighborFname = 
  stressRateFname =  
  slowSlipFname = 
  writePatchFname = 
  DEBUG = 0
  ZBrentUpperBracket = 0
```
