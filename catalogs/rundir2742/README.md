# Bruce 2742
## Metadata
| **Catalog** | Bruce 2742 |
|-----|-----|
| **Author** | Bruce Shaw, 2018/06/27 |
| **Description** | FinitePatch fracArea=0.85,  all else same as r2585 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 1,046,999 events in 52,890 years |
| **Frictional Params** | a=0.001, b=0.008, (b-a)=0.007, ddotEQ=1 |

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
*[(top)](#bruce-2742)*


### Full Catalog GMPE Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-2742)*

* [ASK2014](bbp_LA_BASIN_863/gmpe_bbp_comparisons_ASK2014/)
* [NGAWest_2014_NoIdr](bbp_LA_BASIN_863/gmpe_bbp_comparisons_NGAWest_2014_NoIdr/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2742)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2742)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2742)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2742)*

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
*[(top)](#bruce-2742)*

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
*[(top)](#bruce-2742)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2742)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2742)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2742)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2742)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2742)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2742)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2742)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2742)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2742)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0035325303 | 0.0017610152 | 0.0025083055 | 0.0017415188 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 3.1353818E-4 | 2.953155E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0025083055 | 0.0019682236 | 0.0016722037 | 0.0015621278 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 8.779069E-4 | 8.269666E-4 | 8.361018E-4 | 8.1411644E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0016931061 | 0.001483671 | 0.0015885935 | 0.0015015544 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 9.615171E-4 | 7.6450885E-4 | 7.315891E-4 | 6.8543456E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.008632751 | 0.008095889 | 0.008486433 | 0.008080971 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.001651301 | 0.0015719547 | 0.0016303986 | 0.0015958883 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0015676909 | 0.0014444508 | 0.0012332501 | 0.0012078075 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 0.0012332501 | 5.8828574E-4 | 3.7624582E-4 | 2.950087E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.00344892 | 0.0029275264 | 0.0029263564 | 0.0028258173 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.004912098 | 0.0030493978 | 0.0030099666 | 0.0026946783 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.005100221 | 0.0050270646 | 0.0050793183 | 0.0050192056 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.010785714 | 0.007342685 | 0.0082147 | 0.0070512164 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0050793183 | 0.005023312 | 0.0050793183 | 0.0050226054 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.005142026 | 0.005032687 | 0.005100221 | 0.0050259517 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0060408358 | 0.0055826697 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 2.29928E-4 | 2.0635857E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0028427462 | 0.0026166243 | 0.0026128183 | 0.00252499 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.00591542 | 0.0035164224 | 0.004640365 | 0.0034861853 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0029263564 | 0.0028622055 | 0.0029263564 | 0.002890871 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0022365723 | 0.0017512743 | 0.0014631782 | 0.0012244795 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.007984772 | 0.007738164 | 0.0077757468 | 0.0076150056 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.00804748 | 0.004320619 | 0.005016611 | 0.0037022566 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.00928073 | 0.0069076978 | 0.005330149 | 0.005089115 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.00928073 | 0.0069076978 | 0.0056854924 | 0.0053890105 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.00689784 | 0.0067848116 | 0.00689784 | 0.006819934 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.0076503316 | 0.004362584 | 0.006939645 | 0.006298218 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0055809794 | 0.0034129035 | 0.0026337206 | 0.0021397662 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0047239754 | 0.003540328 | 0.0031562843 | 0.0028847195 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.0069187423 | 0.0067262664 | 0.0069187423 | 0.0068307766 |

### Paleo Open Interval Plots
*[(top)](#bruce-2742)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2742)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 342.08 | 0.0029232826 | 140 | 346.36 | 0.0028871761 | 138.25 |
| **FRA** | 119.00 | 0.008403362 | 118.14 | 0.008464503 | 405 | 123.27 | 0.008111992 | 388.08 |
| **COA** | 181.00 | 0.005524862 | 179.67 | 0.005565817 | 266 | 190.23 | 0.0052569257 | 251.26 |
| **SCZ** | 106.00 | 0.009433962 | 121.45 | 0.00823382 | 393 | 141.43 | 0.0070708776 | 337.46 |
| **TYS** | 329.00 | 0.0030395137 | 344.25 | 0.0029048994 | 139 | 380.59 | 0.002627471 | 125.68 |
| **TOTAL** | 31.61 | 0.0316373 | 35.60 | 0.028090699 | 1343 | 38.53 | 0.025954047 | 1240.84 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9714533 | 0.7550986 | 0.9753385 | 0.771406 | 0.72878754 |
| **20.00** | 0.8945632 | 0.57017386 | 0.90851414 | 0.5950672 | 0.53113127 |
| **30.00** | 0.7925463 | 0.43053746 | 0.8196027 | 0.4590384 | 0.3870819 |
| **40.00** | 0.6916927 | 0.32509822 | 0.7272321 | 0.35410497 | 0.28210047 |
| **50.00** | 0.57568717 | 0.2454812 | 0.6192316 | 0.2731587 | 0.2055913 |
| **60.00** | 0.44708604 | 0.1853625 | 0.5029365 | 0.21071625 | 0.14983238 |
| **70.00** | 0.32323977 | 0.13996695 | 0.38271105 | 0.16254778 | 0.10919597 |
| **80.00** | 0.21929228 | 0.10568885 | 0.27882135 | 0.12539034 | 0.079580665 |
| **90.00** | 0.12753347 | 0.0798055 | 0.18656813 | 0.09672685 | 0.057997398 |
| **100.00** | 0.0801036 | 0.06026102 | 0.13019766 | 0.07461567 | 0.04226778 |
| **110.00** | 0.047215555 | 0.04550301 | 0.080833785 | 0.057558976 | 0.030804234 |
| **120.00** | 0.022306757 | 0.034359258 | 0.048710313 | 0.04440134 | 0.022449743 |
| **130.00** | 0.0053441687 | 0.025944624 | 0.017466942 | 0.03425146 | 0.016361093 |
| **140.00** | 0.0037025728 | 0.019590748 | 0.00954486 | 0.02642178 | 0.011923761 |
| **150.00** | 0.0 | 0.014792946 | 0.0036942577 | 0.02038192 | 0.008689889 |
| **160.00** | 0.0 | 0.011170133 | 0.0016054059 | 0.015722735 | 0.0063330824 |
| **170.00** | 0.0 | 0.008434551 | 6.5858575E-4 | 0.012128612 | 0.0046154717 |
| **180.00** | 0.0 | 0.0063689174 | 2.688645E-4 | 0.009356083 | 0.0033636983 |
| **190.00** | 0.0 | 0.0048091607 | 2.080572E-4 | 0.0072173392 | 0.0024514215 |
| **200.00** | 0.0 | 0.0036313902 | 8.200697E-5 | 0.0055674985 | 0.0017865654 |
| **210.00** | 0.0 | 0.0027420574 | 5.2367566E-5 | 0.0042948015 | 0.0013020267 |
| **220.00** | 0.0 | 0.0020705238 | 0.0 | 0.0033130357 | 9.489008E-4 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2742)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 201.24 | 0.0049691168 | 238 | 229.98 | 0.0043481793 | 208.28 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 175.69 | 0.005691835 | 272 | 185.48 | 0.005391386 | 257.66 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 2426.57 | 4.1210421E-4 | 19 | 3454.92 | 2.8944213E-4 | 13.18 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 196.78 | 0.0050818687 | 243 | 199.04 | 0.00502412 | 240.25 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 195.97 | 0.005102868 | 244 | 198.98 | 0.005025671 | 240.28 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 396.00 | 0.0025252549 | 120 | 570.83 | 0.0017518203 | 83.28 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 642.89 | 0.0015554863 | 75 | 668.61 | 0.0014956362 | 72.06 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 1349.83 | 7.4083323E-4 | 35 | 1438.90 | 6.949758E-4 | 32.82 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 129.35 | 0.0077311923 | 370 | 131.69 | 0.007593507 | 363.4 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 342.08 | 0.0029232826 | 140 | 346.23 | 0.002888283 | 138.32 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 4560.25 | 2.192864E-4 | 10 | 5143.43 | 1.9442261E-4 | 8.93 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 382.71 | 0.0026129577 | 125 | 396.00 | 0.0025252558 | 120.77 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 1241.85 | 8.052512E-4 | 39 | 1336.20 | 7.483912E-4 | 36.27 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 144.63 | 0.0069140745 | 331 | 146.34 | 0.0068333736 | 327.13 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 136.37 | 0.007333109 | 351 | 151.41 | 0.006604752 | 316.19 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 379.53 | 0.0026348145 | 126 | 468.97 | 0.0021323273 | 102.1 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 118.14 | 0.008464503 | 405 | 123.09 | 0.008123892 | 388.69 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 121.45 | 0.00823382 | 393 | 141.37 | 0.007073569 | 337.58 |
| **RodgersCreek** | 325.31 | 0.003074 | 214.74 | 0.004656866 | 222 | 284.65 | 0.0035131006 | 167.23 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 2311.32 | 4.3265373E-4 | 20 | 3168.12 | 3.1564423E-4 | 14.44 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 339.23 | 0.002947828 | 140 | 351.28 | 0.0028467278 | 135.15 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 344.25 | 0.0029048994 | 139 | 380.66 | 0.0026270135 | 125.7 |
| **Compton** | 2658.16 | 3.762E-4 | 5863.17 | 1.705561E-4 | 8 | 6354.11 | 1.5737835E-4 | 7.1 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 179.67 | 0.005565817 | 266 | 190.21 | 0.005257226 | 251.26 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 544.75 | 0.001835702 | 88 | 601.68 | 0.0016619997 | 79.61 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 615.06 | 0.0016258664 | 78 | 626.58 | 0.0015959718 | 76.56 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 196.78 | 0.0050818687 | 243 | 199.21 | 0.005019791 | 240 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 145.07 | 0.0068931226 | 330 | 146.79 | 0.006812664 | 326.15 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 787.27 | 0.001270208 | 60 | 809.93 | 0.0012346793 | 58.31 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1186.90 | 8.4252795E-4 | 40 | 1217.90 | 8.210882E-4 | 38.98 |
| **TOTAL** | 9.08 | 0.1101451 | 16.09 | 0.062133517 | 2970 | 17.53 | 0.05705709 | 2727.39 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.8778445 | 0.5372267 | 0.89436966 | 0.56520265 | 0.33238843 |
| **20.00** | 0.638893 | 0.28861248 | 0.67681456 | 0.31945407 | 0.110482074 |
| **30.00** | 0.4324129 | 0.15505032 | 0.47965902 | 0.1805563 | 0.036722966 |
| **40.00** | 0.27125156 | 0.08329716 | 0.31699446 | 0.1020509 | 0.012206289 |
| **50.00** | 0.15715921 | 0.044749457 | 0.19029212 | 0.05767944 | 0.004057229 |
| **60.00** | 0.07914062 | 0.024040602 | 0.10583444 | 0.032600574 | 0.001348576 |
| **70.00** | 0.03551233 | 0.012915252 | 0.05134014 | 0.018425932 | 4.4825108E-4 |
| **80.00** | 0.013348904 | 0.006938418 | 0.022638537 | 0.010414386 | 1.4899348E-4 |
| **90.00** | 0.008617405 | 0.0037275031 | 0.011969172 | 0.005886239 | 4.952371E-5 |
| **100.00** | 0.004126237 | 0.002002514 | 0.0037891301 | 0.003326918 | 1.6461108E-5 |
| **110.00** | 0.0027262464 | 0.0010758039 | 0.0029928896 | 0.001880383 | 5.4714824E-6 |
| **120.00** | 0.0 | 5.7795056E-4 | 2.7317676E-4 | 0.0010627975 | 1.8186574E-6 |
| **130.00** | 0.0 | 3.1049043E-4 | 0.0 | 6.00696E-4 | 6.045007E-7 |

### Moment Release Variability Plots
*[(top)](#bruce-2742)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2742)*

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
*[(top)](#bruce-2742)*

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
  receiverElementAreaFrac = 0.85
  receiverElementIntTol = 1.0e-4
  receiverElementSubdivisionMax = 4
  tgfDist1 = 3
  tgfDist1 = 10
```
