# Bruce 2636
## Metadata
| **Catalog** | Bruce 2636 |
|-----|-----|
| **Author** | Bruce Shaw, 2018/03/28 |
| **Description** | sensitivity test, diff r2585 a=.0013 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 2,593,499 events in 230,434 years |
| **Frictional Params** | a=0.0013, b=0.008, (b-a)=0.0067, ddotEQ=1 |

* [Metadata](#metadata)
* [Hazard Comparisons](#hazard-comparisons)
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
*[(top)](#bruce-2636)*

* [PGA](hazard_pga/)
* [0.2s SA](hazard_sa_0.2s/)
* [1.0s SA](hazard_sa_1.0s/)
* [10.0s SA](hazard_sa_10.0s/)
* [2.0s SA](hazard_sa_2.0s/)
* [5.0s SA](hazard_sa_5.0s/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2636)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2636)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2636)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2636)*

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
*[(top)](#bruce-2636)*

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
*[(top)](#bruce-2636)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2636)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2636)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2636)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2636)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2636)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2636)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2636)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2636)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2636)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0038202775 | 0.0024233996 | 0.0028352584 | 0.0023609768 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 1.9522905E-4 | 1.8695138E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0019522905 | 0.0015580731 | 0.0013311072 | 0.0012791969 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 6.6111656E-4 | 6.3695986E-4 | 6.3893147E-4 | 6.311206E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0013089221 | 0.0011321278 | 0.0011225671 | 0.0010951142 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 8.297235E-4 | 6.567403E-4 | 5.0582073E-4 | 4.91882E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.0071125496 | 0.0064519676 | 0.0068241428 | 0.006577253 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0012645518 | 0.0012215211 | 0.0012468038 | 0.0012319456 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0010915078 | 9.815429E-4 | 9.495231E-4 | 9.3539746E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 8.9184183E-4 | 5.030364E-4 | 2.3516227E-4 | 2.1977053E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0023294375 | 0.0020423934 | 0.00202772 | 0.0019849131 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0032745237 | 0.002446854 | 0.0018147428 | 0.0017440842 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0041397433 | 0.0040517817 | 0.004095373 | 0.004048195 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.005555154 | 0.004494941 | 0.004419276 | 0.0041655083 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.004108684 | 0.0040471153 | 0.004090936 | 0.0040458147 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.0042107357 | 0.004061898 | 0.0041175582 | 0.0040664254 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.004805297 | 0.0044335295 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 2.6178441E-4 | 2.1581956E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0024980444 | 0.0022146744 | 0.0021075865 | 0.00205377 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0034520046 | 0.0025051662 | 0.002200764 | 0.0021085662 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0026267183 | 0.002562025 | 0.0025690368 | 0.0025389025 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0016816321 | 0.001364719 | 0.0010427006 | 9.4415556E-4 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.0073965187 | 0.006584875 | 0.0061940853 | 0.006093073 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.006478055 | 0.0036914963 | 0.0034298196 | 0.0028806531 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.0067176544 | 0.0054331166 | 0.0039977585 | 0.0038935558 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.0067176544 | 0.0054331166 | 0.004295039 | 0.0041655223 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.0053022434 | 0.005206233 | 0.0052800584 | 0.005224995 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.005564028 | 0.0034339142 | 0.0049739038 | 0.0047158147 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0039977585 | 0.0026496504 | 0.0018324909 | 0.0016395472 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0038424628 | 0.0027944269 | 0.0025202297 | 0.0023577942 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.0052978066 | 0.005166651 | 0.0052800584 | 0.005222915 |

### Paleo Open Interval Plots
*[(top)](#bruce-2636)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2636)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 388.75 | 0.0025723707 | 579 | 393.34 | 0.0025423588 | 572.22 |
| **FRA** | 119.00 | 0.008403362 | 145.98 | 0.0068501974 | 1543 | 151.04 | 0.0066207624 | 1491.33 |
| **COA** | 181.00 | 0.005524862 | 236.40 | 0.0042300913 | 954 | 244.90 | 0.0040832837 | 920.9 |
| **SCZ** | 106.00 | 0.009433962 | 226.24 | 0.004420117 | 996 | 239.98 | 0.0041669416 | 938.91 |
| **TYS** | 329.00 | 0.0030395137 | 560.19 | 0.0017850965 | 402 | 582.10 | 0.0017179217 | 386.91 |
| **TOTAL** | 31.61 | 0.0316373 | 50.38 | 0.019849913 | 4473 | 52.29 | 0.01912371 | 4309.37 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9859739 | 0.8199605 | 0.98698455 | 0.82593673 | 0.72878754 |
| **20.00** | 0.9493307 | 0.6723352 | 0.95287186 | 0.68217146 | 0.53113127 |
| **30.00** | 0.8924147 | 0.55128825 | 0.899428 | 0.5634305 | 0.3870819 |
| **40.00** | 0.82070297 | 0.4520346 | 0.83159286 | 0.46535793 | 0.28210047 |
| **50.00** | 0.73951113 | 0.3706505 | 0.7544918 | 0.38435623 | 0.2055913 |
| **60.00** | 0.6544184 | 0.30391875 | 0.6732187 | 0.31745392 | 0.14983238 |
| **70.00** | 0.568432 | 0.24920137 | 0.5898405 | 0.26219687 | 0.10919597 |
| **80.00** | 0.49110582 | 0.20433527 | 0.5134257 | 0.21655801 | 0.079580665 |
| **90.00** | 0.40651602 | 0.16754685 | 0.429446 | 0.17886321 | 0.057997398 |
| **100.00** | 0.33751217 | 0.13738179 | 0.35958996 | 0.14772971 | 0.04226778 |
| **110.00** | 0.26891628 | 0.11264764 | 0.2901346 | 0.12201539 | 0.030804234 |
| **120.00** | 0.20595041 | 0.09236661 | 0.22683091 | 0.10077699 | 0.022449743 |
| **130.00** | 0.15164912 | 0.07573697 | 0.17053632 | 0.08323542 | 0.016361093 |
| **140.00** | 0.11946143 | 0.062101323 | 0.1358226 | 0.06874719 | 0.011923761 |
| **150.00** | 0.08513591 | 0.05092063 | 0.098688364 | 0.05678083 | 0.008689889 |
| **160.00** | 0.060067255 | 0.041752905 | 0.07120257 | 0.046897374 | 0.0063330824 |
| **170.00** | 0.033978857 | 0.03423573 | 0.04093887 | 0.038734265 | 0.0046154717 |
| **180.00** | 0.013042011 | 0.028071947 | 0.017495144 | 0.03199205 | 0.0033636983 |
| **190.00** | 0.0038151895 | 0.023017887 | 0.006646467 | 0.02642341 | 0.0024514215 |
| **200.00** | 0.0 | 0.018873757 | 0.0019594072 | 0.021824066 | 0.0017865654 |
| **210.00** | 0.0 | 0.015475735 | 0.0013143967 | 0.018025298 | 0.0013020267 |
| **220.00** | 0.0 | 0.012689491 | 7.7423605E-4 | 0.014887755 | 9.489008E-4 |
| **230.00** | 0.0 | 0.010404881 | 5.567201E-4 | 0.012296344 | 6.915471E-4 |
| **240.00** | 0.0 | 0.008531591 | 4.3780694E-4 | 0.010156002 | 5.039909E-4 |
| **250.00** | 0.0 | 0.0069955676 | 3.6377722E-4 | 0.008388216 | 3.673023E-4 |
| **260.00** | 0.0 | 0.005736089 | 2.1049999E-4 | 0.006928135 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.004703366 | 1.5516179E-4 | 0.0057222014 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.0038565744 | 0.0 | 0.004726176 | 1.4217607E-4 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2636)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 284.20 | 0.0035186005 | 793 | 304.49 | 0.003284205 | 740.2 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 232.98 | 0.0042922334 | 968 | 240.04 | 0.0041658916 | 939.49 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 2782.65 | 3.5936924E-4 | 80 | 3644.20 | 2.74409E-4 | 60.89 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 244.73 | 0.004086109 | 920 | 247.40 | 0.0040420936 | 910.08 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 242.62 | 0.004121679 | 928 | 245.80 | 0.0040684165 | 915.99 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 353.02 | 0.0028326688 | 639 | 422.18 | 0.0023686653 | 534.38 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 892.88 | 0.0011199693 | 253 | 915.58 | 0.0010921984 | 246.74 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 1968.11 | 5.081021E-4 | 114 | 2027.24 | 4.932807E-4 | 110.65 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 162.29 | 0.0061616236 | 1388 | 164.81 | 0.0060676713 | 1366.84 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 388.75 | 0.0025723707 | 579 | 393.62 | 0.0025405497 | 571.82 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 7229.59 | 1.3832045E-4 | 31 | 7583.43 | 1.318664E-4 | 29.49 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 475.11 | 0.0021047753 | 475 | 486.99 | 0.0020534513 | 463.4 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 1668.96 | 5.991767E-4 | 135 | 1714.36 | 5.8330735E-4 | 131.43 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 189.43 | 0.0052788607 | 1189 | 191.50 | 0.0052218065 | 1176.16 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 187.07 | 0.005345513 | 1204 | 198.88 | 0.0050280704 | 1132.56 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 546.33 | 0.0018303831 | 413 | 610.71 | 0.0016374253 | 369.45 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 145.98 | 0.0068501974 | 1543 | 150.91 | 0.006626271 | 1492.57 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 226.24 | 0.004420117 | 996 | 240.10 | 0.004164996 | 938.44 |
| **RodgersCreek** | 325.31 | 0.003074 | 453.88 | 0.0022032103 | 496 | 474.54 | 0.0021072945 | 474.43 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 4119.66 | 2.427386E-4 | 53 | 4372.78 | 2.2868771E-4 | 49.91 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 492.63 | 0.0020299351 | 457 | 502.68 | 0.0019893383 | 447.86 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 560.19 | 0.0017850965 | 402 | 581.92 | 0.0017184558 | 387.03 |
| **Compton** | 2658.16 | 3.762E-4 | 7478.89 | 1.3370976E-4 | 30 | 7881.57 | 1.268782E-4 | 28.46 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 236.40 | 0.0042300913 | 954 | 245.09 | 0.004080188 | 920.17 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 730.54 | 0.0013688514 | 309 | 761.83 | 0.0013126323 | 296.27 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 803.92 | 0.0012439096 | 281 | 814.42 | 0.001227873 | 277.37 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 243.94 | 0.0040994477 | 923 | 246.62 | 0.004054902 | 912.94 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 189.12 | 0.005287748 | 1191 | 191.11 | 0.0052325153 | 1178.57 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1045.47 | 9.565098E-4 | 215 | 1063.81 | 9.4001426E-4 | 211.28 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1558.49 | 6.4164755E-4 | 144 | 1579.26 | 6.332072E-4 | 142.08 |
| **TOTAL** | 9.08 | 0.1101451 | 21.80 | 0.045873046 | 10336 | 22.58 | 0.04428384 | 9977.93 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.93142825 | 0.63208556 | 0.935372 | 0.64221096 | 0.33238843 |
| **20.00** | 0.77691984 | 0.3995322 | 0.7880633 | 0.41243494 | 0.110482074 |
| **30.00** | 0.6072363 | 0.25253853 | 0.62355846 | 0.26487023 | 0.036722966 |
| **40.00** | 0.4465415 | 0.15962598 | 0.4648557 | 0.17010257 | 0.012206289 |
| **50.00** | 0.31866315 | 0.100897275 | 0.3365254 | 0.10924173 | 0.004057229 |
| **60.00** | 0.20310695 | 0.06377572 | 0.2182885 | 0.07015624 | 0.001348576 |
| **70.00** | 0.12555924 | 0.04031171 | 0.1383699 | 0.045055106 | 4.4825108E-4 |
| **80.00** | 0.07889848 | 0.025480451 | 0.088731416 | 0.028934883 | 1.4899348E-4 |
| **90.00** | 0.04717679 | 0.016105827 | 0.05442929 | 0.0185823 | 4.952371E-5 |
| **100.00** | 0.02582854 | 0.010180261 | 0.030692784 | 0.011933756 | 1.6461108E-5 |
| **110.00** | 0.015228576 | 0.006434796 | 0.017664362 | 0.0076639894 | 5.4714824E-6 |
| **120.00** | 0.010502905 | 0.004067342 | 0.01208468 | 0.004921898 | 1.8186574E-6 |
| **130.00** | 0.004149589 | 0.0025709083 | 0.0050157877 | 0.003160897 | 6.045007E-7 |
| **140.00** | 0.0015391258 | 0.001625034 | 0.0020973787 | 0.0020299626 | 2.0092905E-7 |
| **150.00** | 0.0 | 0.0010271606 | 3.1133767E-4 | 0.0013036643 | 6.678649E-8 |
| **160.00** | 0.0 | 6.4925343E-4 | 5.8546393E-5 | 8.372275E-4 | 2.2199057E-8 |
| **170.00** | 0.0 | 4.103837E-4 | 4.3609754E-5 | 5.376767E-4 | 7.37871E-9 |
| **180.00** | 0.0 | 2.5939764E-4 | 0.0 | 3.4530184E-4 | 2.452598E-9 |

### Moment Release Variability Plots
*[(top)](#bruce-2636)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2636)*

Example rupture plots:

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![example](resources/trigger_within_prev_m6_example_re_rup.png) |  |  |
| ![example](resources/trigger_within_prev_m6_example_new_hypo.png) | ![example](resources/trigger_within_prev_m6.5_example_new_hypo.png) | ![example](resources/trigger_within_prev_m7_example_new_hypo.png) |

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![hypocenter plot](resources/trigger_within_prev_m6_1yr.png) | ![hypocenter plot](resources/trigger_within_prev_m6.5_1yr.png) | ![hypocenter plot](resources/trigger_within_prev_m7_1yr.png) |
| ![hypocenter plot](resources/trigger_within_prev_m6_10yr.png) | ![hypocenter plot](resources/trigger_within_prev_m6.5_10yr.png) | ![hypocenter plot](resources/trigger_within_prev_m7_10yr.png) |
| ![hypocenter plot](resources/trigger_within_prev_m6_100yr.png) | ![hypocenter plot](resources/trigger_within_prev_m6.5_100yr.png) | ![hypocenter plot](resources/trigger_within_prev_m7_100yr.png) |

## Input File
*[(top)](#bruce-2636)*

```
  A_1 = 0.0013
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
