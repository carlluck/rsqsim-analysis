# Bruce 2628
## Metadata
| **Catalog** | Bruce 2628 |
|-----|-----|
| **Author** | Bruce Shaw, 2018/03/08 |
| **Description** | sensitivity test, diff r2585   N=80 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 2,753,499 events in 169,703 years |
| **Frictional Params** | a=0.001, b=0.008, (b-a)=0.007, ddotEQ=1 |

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
*[(top)](#bruce-2628)*

* [PGA](hazard_pga/)
* [0.2s SA](hazard_sa_0.2s/)
* [1.0s SA](hazard_sa_1.0s/)
* [10.0s SA](hazard_sa_10.0s/)
* [2.0s SA](hazard_sa_2.0s/)
* [5.0s SA](hazard_sa_5.0s/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2628)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2628)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2628)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2628)*

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
*[(top)](#bruce-2628)*

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
*[(top)](#bruce-2628)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2628)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2628)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2628)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2628)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2628)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2628)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2628)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2628)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2628)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.003861508 | 0.0024704933 | 0.0034668571 | 0.0026429668 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 2.7321992E-4 | 2.5203367E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0019975412 | 0.0016428282 | 0.001742536 | 0.0016542561 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 8.3180284E-4 | 7.9158164E-4 | 8.075166E-4 | 7.894614E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0015603893 | 0.0013947478 | 0.0014086005 | 0.0013557128 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 0.0010868082 | 8.225999E-4 | 7.953735E-4 | 7.3182565E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.011220232 | 0.009473728 | 0.010285212 | 0.009669281 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0014632444 | 0.0014195632 | 0.0014571729 | 0.0014394947 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0013053841 | 0.0011932802 | 0.0012082392 | 0.0011796367 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 0.0011232374 | 6.173384E-4 | 3.3393546E-4 | 2.9156735E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.00304792 | 0.0026563539 | 0.0027807716 | 0.0026809748 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0038068641 | 0.0027030827 | 0.00214933 | 0.002025401 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.005634402 | 0.005393125 | 0.0054340404 | 0.005350257 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0072069345 | 0.0058960137 | 0.0059986953 | 0.0054471646 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.005622259 | 0.005424608 | 0.0054886844 | 0.005400867 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.0058711926 | 0.005590305 | 0.0056526167 | 0.0055380617 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.005865121 | 0.0054525943 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 2.8536303E-4 | 2.4247545E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.002750414 | 0.0024326635 | 0.0023982637 | 0.0023290822 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0038068641 | 0.0027651852 | 0.0027564855 | 0.0025936493 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0033029253 | 0.0031802992 | 0.003211852 | 0.0031664707 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0020096842 | 0.0016008128 | 0.0012203823 | 0.0010881225 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.013041697 | 0.01087806 | 0.010467359 | 0.009725644 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.008396959 | 0.0044101947 | 0.0052458225 | 0.0037382394 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.008658036 | 0.0065644914 | 0.0050151036 | 0.0048315995 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.008658036 | 0.0065644914 | 0.005403683 | 0.0051523526 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.0072737215 | 0.0070978487 | 0.007213006 | 0.007104335 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.007650158 | 0.00495385 | 0.0072008627 | 0.0066214437 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0050272467 | 0.0032771323 | 0.0022950473 | 0.0019093518 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.00562833 | 0.0038318706 | 0.0034182847 | 0.003047241 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.007140147 | 0.0069564907 | 0.007103718 | 0.0070153093 |

### Paleo Open Interval Plots
*[(top)](#bruce-2628)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2628)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 312.54 | 0.003199596 | 527 | 316.97 | 0.0031548264 | 519.63 |
| **FRA** | 119.00 | 0.008403362 | 95.13 | 0.010512225 | 1730 | 101.47 | 0.009855387 | 1621.94 |
| **COA** | 181.00 | 0.005524862 | 188.14 | 0.005315268 | 875 | 197.80 | 0.0050556893 | 832.29 |
| **SCZ** | 106.00 | 0.009433962 | 166.72 | 0.005998188 | 988 | 183.61 | 0.0054463805 | 897.16 |
| **TYS** | 329.00 | 0.0030395137 | 457.67 | 0.0021849861 | 359 | 488.24 | 0.002048176 | 336.41 |
| **TOTAL** | 31.61 | 0.0316373 | 36.75 | 0.027210684 | 4479 | 39.13 | 0.025552718 | 4206.12 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9761819 | 0.7617729 | 0.97887677 | 0.77450806 | 0.72878754 |
| **20.00** | 0.91055274 | 0.5802979 | 0.91996735 | 0.59986275 | 0.53113127 |
| **30.00** | 0.8160651 | 0.4420552 | 0.83417314 | 0.46459857 | 0.3870819 |
| **40.00** | 0.7023148 | 0.33674565 | 0.7296715 | 0.35983533 | 0.28210047 |
| **50.00** | 0.57459277 | 0.2565237 | 0.6097188 | 0.27869537 | 0.2055913 |
| **60.00** | 0.45863727 | 0.19541278 | 0.4977371 | 0.21585183 | 0.14983238 |
| **70.00** | 0.3469139 | 0.14886016 | 0.38730875 | 0.16717899 | 0.10919597 |
| **80.00** | 0.25870994 | 0.11339763 | 0.29608655 | 0.12948148 | 0.079580665 |
| **90.00** | 0.17726348 | 0.08638324 | 0.20967212 | 0.10028445 | 0.057997398 |
| **100.00** | 0.11035554 | 0.06580441 | 0.13981064 | 0.07767112 | 0.04226778 |
| **110.00** | 0.0545696 | 0.05012801 | 0.077064574 | 0.060156908 | 0.030804234 |
| **120.00** | 0.02431197 | 0.038186155 | 0.03932951 | 0.04659201 | 0.022449743 |
| **130.00** | 0.008580294 | 0.029089179 | 0.018105514 | 0.03608589 | 0.016361093 |
| **140.00** | 0.0045467257 | 0.022159345 | 0.010559574 | 0.027948812 | 0.011923761 |
| **150.00** | 0.0 | 0.01688039 | 0.0043655685 | 0.021646582 | 0.008689889 |
| **160.00** | 0.0 | 0.012859022 | 0.0021818457 | 0.016765451 | 0.0063330824 |
| **170.00** | 0.0 | 0.009795654 | 0.0010530774 | 0.012984978 | 0.0046154717 |
| **180.00** | 0.0 | 0.0074620633 | 7.625578E-4 | 0.010056971 | 0.0033636983 |
| **190.00** | 0.0 | 0.005684397 | 4.249876E-4 | 0.007789205 | 0.0024514215 |
| **200.00** | 0.0 | 0.0043302197 | 1.6371845E-4 | 0.006032802 | 0.0017865654 |
| **210.00** | 0.0 | 0.0032986437 | 6.347334E-5 | 0.0046724537 | 0.0013020267 |
| **220.00** | 0.0 | 0.0025128173 | 2.7540107E-5 | 0.0036188534 | 9.489008E-4 |
| **230.00** | 0.0 | 0.0019141961 | 2.288147E-5 | 0.0028028311 | 6.915471E-4 |
| **240.00** | 0.0 | 0.0014581826 | 1.8222834E-5 | 0.0021708154 | 5.039909E-4 |
| **250.00** | 0.0 | 0.0011108039 | 0.0 | 0.0016813141 | 3.673023E-4 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2628)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 189.71 | 0.005271342 | 868 | 223.58 | 0.004472713 | 736.49 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 184.96 | 0.005406491 | 890 | 194.13 | 0.005151257 | 847.93 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 2540.22 | 3.9366676E-4 | 65 | 3561.93 | 2.8074675E-4 | 45.94 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 182.53 | 0.0054785176 | 902 | 185.18 | 0.005400242 | 889.12 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 176.82 | 0.005655626 | 931 | 180.58 | 0.0055376897 | 911.6 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 288.52 | 0.0034659102 | 571 | 379.61 | 0.0026342613 | 433.8 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 712.97 | 0.0014025823 | 231 | 736.75 | 0.0013573179 | 223.48 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 1261.39 | 7.92779E-4 | 131 | 1368.88 | 7.3052436E-4 | 120.7 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 102.52 | 0.009754576 | 1606 | 108.73 | 0.009196799 | 1514.16 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 312.54 | 0.003199596 | 527 | 316.61 | 0.0031584185 | 520.22 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 5430.68 | 1.84139E-4 | 31 | 5962.65 | 1.6771062E-4 | 28.21 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 416.76 | 0.0023994755 | 395 | 428.95 | 0.002331271 | 383.77 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 1440.28 | 6.943078E-4 | 114 | 1495.95 | 6.684711E-4 | 109.74 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 140.46 | 0.0071196156 | 1172 | 142.30 | 0.007027213 | 1156.78 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 137.98 | 0.0072472948 | 1193 | 148.35 | 0.0067409123 | 1109.48 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 436.27 | 0.0022921523 | 378 | 524.57 | 0.0019063152 | 314.24 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 95.13 | 0.010512225 | 1730 | 101.61 | 0.00984148 | 1619.66 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 166.72 | 0.005998188 | 988 | 183.65 | 0.00544517 | 896.98 |
| **RodgersCreek** | 325.31 | 0.003074 | 362.71 | 0.002757054 | 454 | 385.91 | 0.0025912551 | 426.69 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 2917.12 | 3.428042E-4 | 57 | 3325.09 | 3.0074365E-4 | 49.9 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 359.44 | 0.0027821197 | 458 | 372.65 | 0.0026834656 | 441.76 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 457.67 | 0.0021849861 | 359 | 487.92 | 0.0020495052 | 336.64 |
| **Compton** | 2658.16 | 3.762E-4 | 5903.43 | 1.6939304E-4 | 28 | 6373.77 | 1.5689313E-4 | 25.96 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 188.14 | 0.005315268 | 875 | 197.71 | 0.005057974 | 832.62 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 565.43 | 0.0017685642 | 291 | 595.55 | 0.0016791123 | 276.26 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 685.82 | 0.0014581032 | 240 | 695.14 | 0.0014385689 | 236.79 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 183.96 | 0.005435954 | 895 | 186.93 | 0.0053494987 | 880.76 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 138.45 | 0.0072229747 | 1189 | 140.63 | 0.007110753 | 1170.52 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 835.39 | 0.0011970493 | 197 | 852.17 | 0.0011734721 | 193.13 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1238.70 | 8.0730027E-4 | 133 | 1269.28 | 7.878452E-4 | 129.79 |
| **TOTAL** | 9.08 | 0.1101451 | 14.46 | 0.069147155 | 11383 | 15.32 | 0.06528581 | 10747.36 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.8583486 | 0.5008385 | 0.87054104 | 0.52055585 | 0.33238843 |
| **20.00** | 0.5979533 | 0.25083923 | 0.62514406 | 0.2709784 | 0.110482074 |
| **30.00** | 0.3698797 | 0.12562995 | 0.4005533 | 0.14105938 | 0.036722966 |
| **40.00** | 0.19897194 | 0.06292032 | 0.2250462 | 0.07342928 | 0.012206289 |
| **50.00** | 0.10008843 | 0.03151292 | 0.11838073 | 0.03822404 | 0.004057229 |
| **60.00** | 0.04011098 | 0.015782883 | 0.053315658 | 0.019897748 | 0.001348576 |
| **70.00** | 0.015795808 | 0.007904677 | 0.022945704 | 0.010357888 | 4.4825108E-4 |
| **80.00** | 0.006473498 | 0.0039589666 | 0.009897653 | 0.0053918594 | 1.4899348E-4 |
| **90.00** | 0.0022375009 | 0.001982803 | 0.0031017098 | 0.0028067639 | 4.952371E-5 |
| **100.00** | 0.0010217732 | 9.930641E-4 | 0.0011145882 | 0.0014610774 | 1.6461108E-5 |
| **110.00** | 0.0 | 4.9736473E-4 | 3.3424768E-4 | 7.605723E-4 | 5.4714824E-6 |
| **120.00** | 0.0 | 2.4909942E-4 | 3.0563405E-4 | 3.9592036E-4 | 1.8186574E-6 |
| **130.00** | 0.0 | 1.2475859E-4 | 5.4406835E-5 | 2.0609866E-4 | 6.045007E-7 |
| **140.00** | 0.0 | 6.248391E-5 | 0.0 | 1.0728586E-4 | 2.0092905E-7 |

### Moment Release Variability Plots
*[(top)](#bruce-2628)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2628)*

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
*[(top)](#bruce-2628)*

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
  sigma0_1 = 80
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
