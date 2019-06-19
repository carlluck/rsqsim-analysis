# Bruce 2622
## Metadata
| **Catalog** | Bruce 2622 |
|-----|-----|
| **Author** | Bruce Shaw, 2018/03/08 |
| **Description** | sensitivity test, diff r2585   b=.009 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 2,621,499 events in 283,109 years |
| **Frictional Params** | a=0.001, b=0.009, (b-a)=0.008, ddotEQ=1 |

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
*[(top)](#bruce-2622)*

* [PGA](hazard_pga/)
* [0.2s SA](hazard_sa_0.2s/)
* [1.0s SA](hazard_sa_1.0s/)
* [10.0s SA](hazard_sa_10.0s/)
* [2.0s SA](hazard_sa_2.0s/)
* [5.0s SA](hazard_sa_5.0s/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2622)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2622)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2622)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2622)*

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
*[(top)](#bruce-2622)*

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
*[(top)](#bruce-2622)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2622)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2622)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2622)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2622)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2622)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2622)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2622)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2622)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2622)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.003265673 | 0.002025066 | 0.0024384651 | 0.0021462361 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 1.9061749E-4 | 1.7660053E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0015968711 | 0.001314836 | 0.0011005462 | 0.0010720348 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 5.502731E-4 | 5.3551514E-4 | 5.322903E-4 | 5.25951E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0011473015 | 9.7071717E-4 | 9.4229775E-4 | 9.252196E-4 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 6.761526E-4 | 5.542559E-4 | 4.0641087E-4 | 3.9773845E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.006160901 | 0.0055562397 | 0.00585879 | 0.005687369 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.001046598 | 0.0010218102 | 0.0010322117 | 0.0010217257 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 8.8475284E-4 | 8.144295E-4 | 7.8764587E-4 | 7.7867194E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 8.0203207E-4 | 4.7723946E-4 | 2.0500371E-4 | 1.9384194E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.002010475 | 0.0017598782 | 0.0017443298 | 0.0017140857 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0028089106 | 0.0020888783 | 0.0015213434 | 0.0014807049 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0035138356 | 0.0034298936 | 0.0034562906 | 0.0034192407 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.004776227 | 0.003915437 | 0.0038878773 | 0.003704796 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0034922562 | 0.003420537 | 0.0034419044 | 0.0034065894 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.0035713804 | 0.0034297265 | 0.0034562906 | 0.0034193564 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0038806843 | 0.00365357 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 2.1219683E-4 | 1.8710218E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0021255647 | 0.0018862571 | 0.0017335402 | 0.0017052214 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0028736484 | 0.002133244 | 0.0018090678 | 0.0017609607 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.002197496 | 0.0021423514 | 0.0021543372 | 0.00213059 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.001402657 | 0.001173019 | 8.991391E-4 | 8.3295E-4 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.0064414325 | 0.0056482605 | 0.0053085173 | 0.0052284733 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0055890484 | 0.003352249 | 0.002927597 | 0.002578213 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.005682559 | 0.0046606143 | 0.0033735698 | 0.0033042987 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.005682559 | 0.0046606143 | 0.0036756806 | 0.0035918537 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.004499292 | 0.0044145524 | 0.004466923 | 0.0044206358 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.004977634 | 0.0031868527 | 0.004233147 | 0.0040665823 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0033771663 | 0.0022555254 | 0.0015177468 | 0.0014098047 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0032440939 | 0.0024358456 | 0.0020320544 | 0.0019390457 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.004466923 | 0.004371354 | 0.004466923 | 0.004419272 |

### Paleo Open Interval Plots
*[(top)](#bruce-2622)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2622)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 464.60 | 0.0021523784 | 599 | 469.91 | 0.0021280479 | 592.2 |
| **FRA** | 119.00 | 0.008403362 | 169.58 | 0.005896748 | 1639 | 174.13 | 0.0057428265 | 1596.23 |
| **COA** | 181.00 | 0.005524862 | 278.20 | 0.0035945293 | 999 | 286.27 | 0.0034932268 | 970.86 |
| **SCZ** | 106.00 | 0.009433962 | 257.34 | 0.0038859223 | 1081 | 270.40 | 0.0036982533 | 1028.84 |
| **TYS** | 329.00 | 0.0030395137 | 662.96 | 0.0015083759 | 419 | 681.33 | 0.0014677075 | 407.73 |
| **TOTAL** | 31.61 | 0.0316373 | 58.72 | 0.017031003 | 4736 | 60.50 | 0.01652868 | 4596.3 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.99053675 | 0.8434033 | 0.9910809 | 0.8476505 | 0.72878754 |
| **20.00** | 0.9626506 | 0.7113291 | 0.96480995 | 0.71851146 | 0.53113127 |
| **30.00** | 0.9184958 | 0.5999373 | 0.92281914 | 0.60904664 | 0.3870819 |
| **40.00** | 0.8601986 | 0.50598913 | 0.8672653 | 0.5162587 | 0.28210047 |
| **50.00** | 0.7989291 | 0.4267529 | 0.80884606 | 0.437607 | 0.2055913 |
| **60.00** | 0.72189164 | 0.3599248 | 0.7351134 | 0.3709378 | 0.14983238 |
| **70.00** | 0.65091556 | 0.30356175 | 0.66622144 | 0.31442562 | 0.10919597 |
| **80.00** | 0.5735923 | 0.256025 | 0.5906945 | 0.26652306 | 0.079580665 |
| **90.00** | 0.49904615 | 0.21593231 | 0.51708484 | 0.22591841 | 0.057997398 |
| **100.00** | 0.42629665 | 0.18211803 | 0.44535995 | 0.19149987 | 0.04226778 |
| **110.00** | 0.37462628 | 0.15359893 | 0.39349565 | 0.16232497 | 0.030804234 |
| **120.00** | 0.31184825 | 0.12954585 | 0.32995293 | 0.13759485 | 0.022449743 |
| **130.00** | 0.24597749 | 0.1092594 | 0.26338968 | 0.11663235 | 0.016361093 |
| **140.00** | 0.19372365 | 0.092149734 | 0.20987609 | 0.098863475 | 0.011923761 |
| **150.00** | 0.1508879 | 0.07771939 | 0.16552709 | 0.08380168 | 0.008689889 |
| **160.00** | 0.11712525 | 0.06554879 | 0.13077387 | 0.071034536 | 0.0063330824 |
| **170.00** | 0.087727316 | 0.055284064 | 0.09880397 | 0.060212467 | 0.0046154717 |
| **180.00** | 0.05586762 | 0.04662676 | 0.06510635 | 0.05103913 | 0.0033636983 |
| **190.00** | 0.03793879 | 0.039325166 | 0.045370482 | 0.043263346 | 0.0024514215 |
| **200.00** | 0.02200419 | 0.033166975 | 0.027965002 | 0.0366722 | 0.0017865654 |
| **210.00** | 0.010170642 | 0.027973136 | 0.01375877 | 0.03108521 | 0.0013020267 |
| **220.00** | 0.00496655 | 0.023592634 | 0.0073821275 | 0.026349396 | 9.489008E-4 |
| **230.00** | 0.0012945636 | 0.019898105 | 0.0024022672 | 0.02233508 | 6.915471E-4 |
| **240.00** | 0.0 | 0.016782127 | 0.0010151713 | 0.018932343 | 5.039909E-4 |
| **250.00** | 0.0 | 0.014154102 | 6.8498595E-4 | 0.01604801 | 3.673023E-4 |
| **260.00** | 0.0 | 0.011937616 | 5.2066304E-4 | 0.013603105 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.010068225 | 3.2998878E-4 | 0.01153068 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.008491574 | 2.1449063E-4 | 0.009773986 | 1.4217607E-4 |
| **290.00** | 0.0 | 0.0071618212 | 1.500588E-4 | 0.0082849255 | 1.0361615E-4 |
| **300.00** | 0.0 | 0.006040304 | 7.833874E-5 | 0.007022721 | 7.551416E-5 |
| **310.00** | 0.0 | 0.0050944122 | 2.74675E-5 | 0.0059528137 | 5.503378E-5 |
| **320.00** | 0.0 | 0.004296644 | 0.0 | 0.0050459057 | 4.0107934E-5 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2622)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 334.24 | 0.002991861 | 832 | 352.46 | 0.0028372179 | 788.96 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 271.93 | 0.0036773693 | 1022 | 278.28 | 0.0035935508 | 998.7 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 2872.14 | 3.481723E-4 | 97 | 3558.31 | 2.8103255E-4 | 77.74 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 290.67 | 0.003440356 | 957 | 293.61 | 0.0034058462 | 947.38 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 289.46 | 0.0034547509 | 961 | 292.54 | 0.0034183722 | 950.88 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 409.55 | 0.002441723 | 678 | 465.05 | 0.002150288 | 597.07 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 1069.89 | 9.34678E-4 | 260 | 1086.98 | 9.199782E-4 | 255.9 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 2457.80 | 4.0686733E-4 | 113 | 2511.95 | 3.9809672E-4 | 110.57 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 188.74 | 0.0052983225 | 1473 | 191.50 | 0.005221929 | 1451.74 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 464.60 | 0.0021523784 | 599 | 470.07 | 0.0021273268 | 592.03 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 8075.19 | 1.2383609E-4 | 33 | 8333.28 | 1.2000082E-4 | 31.97 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 577.40 | 0.0017319074 | 482 | 587.23 | 0.0017029122 | 473.93 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 2020.79 | 4.9485633E-4 | 137 | 2062.76 | 4.8478702E-4 | 134.17 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 223.96 | 0.0044651283 | 1241 | 226.29 | 0.0044190795 | 1228.19 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 225.23 | 0.004439922 | 1234 | 233.77 | 0.004277742 | 1188.92 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 657.36 | 0.0015212396 | 422 | 705.61 | 0.0014172099 | 393.03 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 169.58 | 0.005896748 | 1639 | 173.92 | 0.005749753 | 1598.14 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 257.34 | 0.0038859223 | 1081 | 270.11 | 0.0037021684 | 1029.93 |
| **RodgersCreek** | 325.31 | 0.003074 | 552.40 | 0.0018102915 | 503 | 567.54 | 0.0017619885 | 489.57 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 4926.78 | 2.0297221E-4 | 56 | 5138.94 | 1.9459265E-4 | 53.68 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 573.98 | 0.0017422357 | 485 | 583.82 | 0.001712871 | 476.78 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 662.96 | 0.0015083759 | 419 | 679.49 | 0.0014717021 | 408.81 |
| **Compton** | 2658.16 | 3.762E-4 | 10123.71 | 9.877798E-5 | 27 | 10432.67 | 9.5852745E-5 | 26.21 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 278.20 | 0.0035945293 | 999 | 285.95 | 0.0034970557 | 971.91 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 884.17 | 0.0011310064 | 314 | 909.21 | 0.0010998589 | 305.29 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 965.23 | 0.0010360224 | 288 | 976.59 | 0.0010239729 | 284.65 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 289.46 | 0.0034547509 | 961 | 292.71 | 0.0034163732 | 950.33 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 223.42 | 0.0044759307 | 1244 | 225.85 | 0.0044277175 | 1230.6 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1266.99 | 7.892715E-4 | 220 | 1282.46 | 7.7974953E-4 | 217.35 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1873.22 | 5.338402E-4 | 148 | 1893.44 | 5.281395E-4 | 146.42 |
| **TOTAL** | 9.08 | 0.1101451 | 25.63 | 0.039011247 | 10847 | 26.32 | 0.037988093 | 10562.46 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.94737774 | 0.67698073 | 0.9497183 | 0.68394285 | 0.33238843 |
| **20.00** | 0.82808405 | 0.4583029 | 0.834875 | 0.46777782 | 0.110482074 |
| **30.00** | 0.6822254 | 0.31026223 | 0.6932769 | 0.3199333 | 0.036722966 |
| **40.00** | 0.536265 | 0.21004154 | 0.5496198 | 0.2188161 | 0.012206289 |
| **50.00** | 0.4014569 | 0.14219408 | 0.41596344 | 0.14965771 | 0.004057229 |
| **60.00** | 0.29533726 | 0.09626265 | 0.30914274 | 0.10235732 | 0.001348576 |
| **70.00** | 0.21291666 | 0.065167956 | 0.22515851 | 0.07000656 | 4.4825108E-4 |
| **80.00** | 0.14379185 | 0.04411745 | 0.1539987 | 0.047880482 | 1.4899348E-4 |
| **90.00** | 0.088610515 | 0.029866664 | 0.09711358 | 0.032747515 | 4.952371E-5 |
| **100.00** | 0.053747337 | 0.020219155 | 0.060090736 | 0.022397429 | 1.6461108E-5 |
| **110.00** | 0.030478176 | 0.0136879785 | 0.03560849 | 0.015318561 | 5.4714824E-6 |
| **120.00** | 0.017699787 | 0.009266498 | 0.02118563 | 0.01047702 | 1.8186574E-6 |
| **130.00** | 0.010147968 | 0.0062732403 | 0.012038207 | 0.0071656834 | 6.045007E-7 |
| **140.00** | 0.0036757227 | 0.0042468626 | 0.0048098573 | 0.004900918 | 2.0092905E-7 |
| **150.00** | 0.0018332113 | 0.002875044 | 0.0027305235 | 0.0033519478 | 6.678649E-8 |
| **160.00** | 8.2190085E-4 | 0.0019463494 | 0.0014585695 | 0.0022925406 | 2.2199057E-8 |
| **170.00** | 0.0 | 0.001317641 | 6.0739595E-4 | 0.0015679669 | 7.37871E-9 |
| **180.00** | 0.0 | 8.9201756E-4 | 1.8216927E-4 | 0.0010723997 | 2.452598E-9 |
| **190.00** | 0.0 | 6.038787E-4 | 1.703439E-4 | 7.334601E-4 | 8.152152E-10 |
| **200.00** | 0.0 | 4.0881423E-4 | 1.5810008E-4 | 5.016448E-4 | 2.709681E-10 |
| **210.00** | 0.0 | 2.7675935E-4 | 0.0 | 3.4309638E-4 | 9.006666E-11 |

### Moment Release Variability Plots
*[(top)](#bruce-2622)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2622)*

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
*[(top)](#bruce-2622)*

```
  A_1 = 0.001
  fA = .1
  B_1 = 0.009
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
