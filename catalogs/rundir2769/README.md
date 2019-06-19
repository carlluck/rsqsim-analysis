# Bruce 2769
## Metadata
| **Catalog** | Bruce 2769 |
|-----|-----|
| **Author** | Bruce Shaw, 2018/08/14 |
| **Description** | FinitePatch fracArea=0.95, 48Hr, all else same as r2585 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 3,024,452 events in 111,560 years |
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
*[(top)](#bruce-2769)*


### Full Catalog GMPE Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-2769)*

* [ASK2014](bbp_LA_BASIN_863/gmpe_bbp_comparisons_ASK2014/)
* [NGAWest_2014_NoIdr](bbp_LA_BASIN_863/gmpe_bbp_comparisons_NGAWest_2014_NoIdr/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2769)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2769)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2769)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2769)*

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
*[(top)](#bruce-2769)*

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
*[(top)](#bruce-2769)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2769)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2769)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2769)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2769)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2769)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2769)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2769)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2769)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2769)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0030323288 | 0.0014243111 | 0.0019527071 | 0.0012762338 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 3.4735654E-4 | 3.1560057E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0028257924 | 0.002179991 | 0.0017743348 | 0.0016464359 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 0.0010420696 | 9.676208E-4 | 9.481895E-4 | 9.1922877E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0019808712 | 0.0016791093 | 0.0017461708 | 0.0016341584 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 0.0010983978 | 8.8275375E-4 | 8.1675727E-4 | 7.502217E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.0100264 | 0.009536885 | 0.00993252 | 0.009324307 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.001858827 | 0.0017916529 | 0.001858827 | 0.0018184421 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0017555588 | 0.0015864345 | 0.0015020823 | 0.001441685 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 0.0014269783 | 6.334397E-4 | 4.8817677E-4 | 3.381565E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.004449919 | 0.003576795 | 0.0038396982 | 0.0036299687 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.005679749 | 0.0033561164 | 0.003867862 | 0.0032474636 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0059520015 | 0.0058744764 | 0.0059332256 | 0.0058296034 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.014720407 | 0.00898772 | 0.012288911 | 0.008516149 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.005914449 | 0.00584014 | 0.0059050615 | 0.0058169956 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.0059801657 | 0.0058261584 | 0.0059426134 | 0.005796822 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0067124306 | 0.0063793384 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 4.318487E-4 | 3.5324163E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0033984613 | 0.003043315 | 0.0029947767 | 0.0028597915 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.007228771 | 0.0038242443 | 0.005792405 | 0.0038703557 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.003220089 | 0.0031447997 | 0.003201313 | 0.003162595 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.002544152 | 0.0019674485 | 0.0015865745 | 0.0013095962 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.009256583 | 0.00901433 | 0.009143926 | 0.0088932095 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.008364721 | 0.004542437 | 0.005698525 | 0.0039709136 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.011124797 | 0.0077070002 | 0.00624303 | 0.0058883005 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.011124797 | 0.0077070002 | 0.0067405947 | 0.006257628 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.008007976 | 0.007856471 | 0.007989201 | 0.0078567825 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.009350463 | 0.005348376 | 0.008092469 | 0.0070891557 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0064965063 | 0.004139387 | 0.0028821207 | 0.00224474 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.005698525 | 0.0041422243 | 0.0039335783 | 0.0034670944 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.008007976 | 0.0077310167 | 0.008007976 | 0.007863101 |

### Paleo Open Interval Plots
*[(top)](#bruce-2769)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2769)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 312.92 | 0.0031957359 | 340 | 316.32 | 0.0031613319 | 336.32 |
| **FRA** | 119.00 | 0.008403362 | 100.38 | 0.009961927 | 1061 | 106.29 | 0.0094086295 | 1001.97 |
| **COA** | 181.00 | 0.005524862 | 153.11 | 0.0065314556 | 696 | 164.55 | 0.0060771713 | 647.56 |
| **SCZ** | 106.00 | 0.009433962 | 81.38 | 0.012288219 | 1309 | 117.34 | 0.008521912 | 907.3 |
| **TYS** | 329.00 | 0.0030395137 | 254.80 | 0.003924696 | 418 | 304.85 | 0.0032802569 | 349.23 |
| **TOTAL** | 31.61 | 0.0316373 | 27.86 | 0.035895914 | 3824 | 32.85 | 0.030439034 | 3241.87 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9570965 | 0.6984029 | 0.9683806 | 0.7375729 | 0.72878754 |
| **20.00** | 0.84684616 | 0.4877666 | 0.8837013 | 0.5440138 | 0.53113127 |
| **30.00** | 0.7056615 | 0.3406576 | 0.77271897 | 0.40124983 | 0.3870819 |
| **40.00** | 0.54916686 | 0.23791625 | 0.64268196 | 0.295951 | 0.28210047 |
| **50.00** | 0.38729894 | 0.16616139 | 0.50469196 | 0.21828544 | 0.2055913 |
| **60.00** | 0.25028157 | 0.11604759 | 0.3724705 | 0.16100143 | 0.14983238 |
| **70.00** | 0.15243445 | 0.081047975 | 0.2668495 | 0.11875029 | 0.10919597 |
| **80.00** | 0.071273424 | 0.056604136 | 0.17273244 | 0.08758699 | 0.079580665 |
| **90.00** | 0.03133752 | 0.039532494 | 0.10929263 | 0.064601794 | 0.057997398 |
| **100.00** | 0.013584071 | 0.027609607 | 0.06286197 | 0.04764853 | 0.04226778 |
| **110.00** | 0.0043867794 | 0.019282628 | 0.028890226 | 0.035144266 | 0.030804234 |
| **120.00** | 0.001742976 | 0.013467044 | 0.009662297 | 0.025921458 | 0.022449743 |
| **130.00** | 0.0 | 0.009405422 | 0.0041473266 | 0.019118965 | 0.016361093 |
| **140.00** | 0.0 | 0.0065687736 | 0.0021229694 | 0.01410163 | 0.011923761 |
| **150.00** | 0.0 | 0.0045876503 | 0.001120339 | 0.010400981 | 0.008689889 |
| **160.00** | 0.0 | 0.0032040284 | 5.9207674E-4 | 0.0076714815 | 0.0063330824 |
| **170.00** | 0.0 | 0.0022377025 | 3.168573E-4 | 0.005658277 | 0.0046154717 |
| **180.00** | 0.0 | 0.001562818 | 1.1427781E-4 | 0.0041733915 | 0.0033636983 |
| **190.00** | 0.0 | 0.0010914765 | 5.6957222E-5 | 0.0030781806 | 0.0024514215 |
| **200.00** | 0.0 | 7.622904E-4 | 0.0 | 0.0022703826 | 0.0017865654 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2769)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 179.34 | 0.0055760164 | 593 | 211.64 | 0.0047250227 | 502.5 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 148.41 | 0.006738207 | 718 | 159.79 | 0.0062580234 | 666.78 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 2189.45 | 4.567367E-4 | 49 | 3374.62 | 2.9632985E-4 | 31.27 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 169.40 | 0.005903044 | 629 | 172.13 | 0.0058094645 | 619.01 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 168.33 | 0.0059406427 | 633 | 172.50 | 0.005797122 | 617.72 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 501.70 | 0.0019932082 | 208 | 768.20 | 0.0013017379 | 135.69 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 574.68 | 0.0017401131 | 185 | 607.67 | 0.0016456363 | 174.87 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 1218.43 | 8.2072715E-4 | 87 | 1327.06 | 7.535438E-4 | 79.89 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 109.39 | 0.009141887 | 974 | 112.51 | 0.008888175 | 946.93 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 312.92 | 0.0031957359 | 340 | 316.52 | 0.0031593551 | 336.13 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 4449.74 | 2.2473217E-4 | 24 | 4981.08 | 2.0075963E-4 | 21.51 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 334.17 | 0.0029924808 | 319 | 349.45 | 0.0028616225 | 304.82 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 1044.46 | 9.574358E-4 | 102 | 1143.59 | 8.7443716E-4 | 93.1 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 124.96 | 0.008002822 | 852 | 127.25 | 0.007858659 | 836.67 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 115.46 | 0.008661104 | 922 | 134.15 | 0.0074542305 | 793.6 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 345.44 | 0.0028948938 | 307 | 441.13 | 0.0022669213 | 240.43 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 100.38 | 0.009961927 | 1061 | 106.22 | 0.009414177 | 1002.62 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 81.38 | 0.012288219 | 1309 | 117.24 | 0.008529364 | 908.15 |
| **RodgersCreek** | 325.31 | 0.003074 | 172.54 | 0.005795893 | 617 | 257.05 | 0.0038902634 | 413.93 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 1970.93 | 5.0737505E-4 | 54 | 2879.22 | 3.4731664E-4 | 36.75 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 260.54 | 0.0038381964 | 409 | 275.70 | 0.0036271096 | 386.48 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 254.80 | 0.003924696 | 418 | 305.54 | 0.003272858 | 348.51 |
| **Compton** | 2658.16 | 3.762E-4 | 4652.00 | 2.1496121E-4 | 23 | 5363.47 | 1.8644644E-4 | 20.02 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 153.11 | 0.0065314556 | 696 | 164.91 | 0.0060639456 | 646.1 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 531.84 | 0.0018802768 | 201 | 585.57 | 0.0017077455 | 182.62 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 538.25 | 0.0018578654 | 198 | 550.89 | 0.0018152297 | 193.45 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 168.87 | 0.0059218435 | 631 | 171.68 | 0.005824943 | 620.66 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 125.10 | 0.007993419 | 851 | 127.10 | 0.007867707 | 837.62 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 664.47 | 0.0015049499 | 160 | 692.01 | 0.0014450761 | 153.6 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1050.55 | 9.518795E-4 | 101 | 1082.55 | 9.237481E-4 | 97.99 |
| **TOTAL** | 9.08 | 0.1101451 | 13.04 | 0.07668015 | 8168 | 14.92 | 0.06700617 | 7137.64 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.827161 | 0.46449637 | 0.85943645 | 0.51167697 | 0.33238843 |
| **20.00** | 0.5345182 | 0.21575688 | 0.6053148 | 0.26181334 | 0.110482074 |
| **30.00** | 0.30096224 | 0.10021829 | 0.37985143 | 0.13396387 | 0.036722966 |
| **40.00** | 0.16203654 | 0.04655103 | 0.22733273 | 0.06854623 | 0.012206289 |
| **50.00** | 0.07550206 | 0.021622784 | 0.11855814 | 0.035073526 | 0.004057229 |
| **60.00** | 0.023851836 | 0.010043706 | 0.049282122 | 0.017946316 | 0.001348576 |
| **70.00** | 0.009589385 | 0.004665265 | 0.023007132 | 0.009182718 | 4.4825108E-4 |
| **80.00** | 0.004168196 | 0.0021669986 | 0.0091890935 | 0.0046985853 | 1.4899348E-4 |
| **90.00** | 0.001359392 | 0.001006563 | 0.0029190483 | 0.002404158 | 4.952371E-5 |
| **100.00** | 0.0 | 4.6754486E-4 | 5.3544866E-4 | 0.0012301523 | 1.6461108E-5 |
| **110.00** | 0.0 | 2.1717288E-4 | 7.0363974E-5 | 6.2944065E-4 | 5.4714824E-6 |
| **120.00** | 0.0 | 1.00876015E-4 | 1.2036462E-5 | 3.220703E-4 | 1.8186574E-6 |
| **130.00** | 0.0 | 4.6856545E-5 | 0.0 | 1.6479596E-4 | 6.045007E-7 |

### Moment Release Variability Plots
*[(top)](#bruce-2769)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2769)*

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
*[(top)](#bruce-2769)*

```
  A_1 = 0.001
  fA = 0.1
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
  maxWallTime = 85000
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
  KTauFname = /scratch/sciteam/shaw1/rsqsim/bluew/rundir2757/Ktau..out
  KSigmaFname = /scratch/sciteam/shaw1/rsqsim/bluew/rundir2757/Ksigma..out
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
  receiverElementAreaFrac = 0.95
  receiverElementIntTol = 1.0e-4
  receiverElementSubdivisionMax = 4
  tgfDist1 = 3
  tgfDist1 = 10
```
