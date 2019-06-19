# Bruce 2626
## Metadata
| **Catalog** | Bruce 2626 |
|-----|-----|
| **Author** | Bruce Shaw, 2018/03/08 |
| **Description** | sensitivity test, diff r2585   a=.0011 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 2,575,999 events in 237,343 years |
| **Frictional Params** | a=0.0011, b=0.008, (b-a)=0.0069, ddotEQ=1 |

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
*[(top)](#bruce-2626)*

* [PGA](hazard_pga/)
* [0.2s SA](hazard_sa_0.2s/)
* [1.0s SA](hazard_sa_1.0s/)
* [10.0s SA](hazard_sa_10.0s/)
* [2.0s SA](hazard_sa_2.0s/)
* [5.0s SA](hazard_sa_5.0s/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2626)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2626)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2626)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2626)*

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
*[(top)](#bruce-2626)*

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
*[(top)](#bruce-2626)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2626)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2626)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2626)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2626)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2626)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2626)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2626)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2626)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2626)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.003732482 | 0.00238088 | 0.0027164891 | 0.002276842 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 1.8942238E-4 | 1.7794756E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0018640885 | 0.0014949833 | 0.0012312455 | 0.0011912831 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 6.3284294E-4 | 6.124205E-4 | 6.1992777E-4 | 6.1268156E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.001351787 | 0.0011310024 | 0.0011236191 | 0.0010903823 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 7.5768953E-4 | 6.2089413E-4 | 5.252166E-4 | 5.063064E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.0071377796 | 0.006326809 | 0.00675463 | 0.0065015275 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0012699909 | 0.0012217348 | 0.0012398555 | 0.0012226994 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0010590433 | 9.57915E-4 | 9.298917E-4 | 9.17044E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 9.298917E-4 | 5.350423E-4 | 2.4108303E-4 | 2.2589644E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0023419494 | 0.0020466195 | 0.0020362905 | 0.0019894936 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0031469946 | 0.002337562 | 0.001756462 | 0.0016912213 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0040941066 | 0.004021829 | 0.004063971 | 0.0040194336 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.005411453 | 0.0044034086 | 0.0044385106 | 0.0041720397 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0041113268 | 0.0040347823 | 0.004072581 | 0.0040276065 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.004322274 | 0.0041046552 | 0.004150072 | 0.0040943786 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.004705424 | 0.0043274434 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 2.3677798E-4 | 1.9712295E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0023591695 | 0.0020930457 | 0.0020362905 | 0.0019924182 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0035602797 | 0.0025086864 | 0.002143917 | 0.0020599533 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0025313718 | 0.0024657655 | 0.002479711 | 0.0024495365 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0016014802 | 0.0013200833 | 0.001028908 | 9.329945E-4 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.0073358123 | 0.0064839255 | 0.006126092 | 0.0060256706 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.006126092 | 0.0035641673 | 0.003332112 | 0.002827659 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.006625478 | 0.005334111 | 0.003930514 | 0.0038316704 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.006625478 | 0.005334111 | 0.004150072 | 0.004038274 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.0052005053 | 0.0051099556 | 0.005183285 | 0.005128287 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.0054631135 | 0.0034295619 | 0.0048819315 | 0.004632859 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0038831588 | 0.0025533875 | 0.001752157 | 0.0015815892 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.00396926 | 0.0028535984 | 0.002397915 | 0.002256913 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.00517037 | 0.005048101 | 0.005166065 | 0.0051116883 |

### Paleo Open Interval Plots
*[(top)](#bruce-2626)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2626)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 404.33 | 0.0024732344 | 575 | 409.22 | 0.002443676 | 568.14 |
| **FRA** | 119.00 | 0.008403362 | 148.45 | 0.006736276 | 1565 | 153.37 | 0.006520057 | 1514.76 |
| **COA** | 181.00 | 0.005524862 | 245.53 | 0.0040727654 | 945 | 252.71 | 0.0039571403 | 918.2 |
| **SCZ** | 106.00 | 0.009433962 | 225.43 | 0.0044360496 | 1031 | 239.71 | 0.0041717044 | 969.16 |
| **TYS** | 329.00 | 0.0030395137 | 574.69 | 0.0017400625 | 404 | 594.74 | 0.0016814147 | 390.39 |
| **TOTAL** | 31.61 | 0.0316373 | 51.40 | 0.019453665 | 4519 | 53.28 | 0.01876834 | 4359.76 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.98718774 | 0.823216 | 0.9880919 | 0.8288771 | 0.72878754 |
| **20.00** | 0.9518703 | 0.6776846 | 0.9549622 | 0.6870372 | 0.53113127 |
| **30.00** | 0.89221084 | 0.5578808 | 0.8988857 | 0.5694694 | 0.3870819 |
| **40.00** | 0.82478315 | 0.4592564 | 0.8349072 | 0.47202015 | 0.28210047 |
| **50.00** | 0.7483446 | 0.37806723 | 0.76172745 | 0.39124668 | 0.2055913 |
| **60.00** | 0.6638193 | 0.311231 | 0.68064994 | 0.3242954 | 0.14983238 |
| **70.00** | 0.5829967 | 0.25621033 | 0.6021207 | 0.26880103 | 0.10919597 |
| **80.00** | 0.49717882 | 0.21091644 | 0.5192065 | 0.22280301 | 0.079580665 |
| **90.00** | 0.42803952 | 0.1736298 | 0.44961944 | 0.18467632 | 0.057997398 |
| **100.00** | 0.35238627 | 0.14293483 | 0.37414885 | 0.15307397 | 0.04226778 |
| **110.00** | 0.2912425 | 0.11766624 | 0.31257173 | 0.1268795 | 0.030804234 |
| **120.00** | 0.23000914 | 0.09686473 | 0.2506571 | 0.105167516 | 0.022449743 |
| **130.00** | 0.17439672 | 0.0797406 | 0.1926445 | 0.08717094 | 0.016361093 |
| **140.00** | 0.13567887 | 0.065643735 | 0.15194972 | 0.072253995 | 0.011923761 |
| **150.00** | 0.0978257 | 0.054038975 | 0.11115128 | 0.05988968 | 0.008689889 |
| **160.00** | 0.06266262 | 0.044485748 | 0.07323951 | 0.049641185 | 0.0063330824 |
| **170.00** | 0.037621222 | 0.03662138 | 0.04576589 | 0.04114644 | 0.0046154717 |
| **180.00** | 0.01645279 | 0.030147307 | 0.02158281 | 0.034105342 | 0.0033636983 |
| **190.00** | 0.0056137047 | 0.024817746 | 0.009227218 | 0.028269136 | 0.0024514215 |
| **200.00** | 0.0015247415 | 0.020430366 | 0.002886356 | 0.023431638 | 0.0017865654 |
| **210.00** | 0.0 | 0.016818604 | 0.0012647359 | 0.019421948 | 0.0013020267 |
| **220.00** | 0.0 | 0.013845344 | 7.715516E-4 | 0.016098408 | 9.489008E-4 |
| **230.00** | 0.0 | 0.011397709 | 4.4617866E-4 | 0.0133436015 | 6.915471E-4 |
| **240.00** | 0.0 | 0.009382776 | 2.342406E-4 | 0.011060205 | 5.039909E-4 |
| **250.00** | 0.0 | 0.007724052 | 1.21010715E-4 | 0.009167551 | 3.673023E-4 |
| **260.00** | 0.0 | 0.006358563 | 6.4036845E-5 | 0.007598773 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.005234471 | 4.7110036E-5 | 0.006298449 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.0043091 | 2.6635274E-5 | 0.00522064 | 1.4217607E-4 |
| **290.00** | 0.0 | 0.0035473204 | 0.0 | 0.004327269 | 1.0361615E-4 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2626)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 294.38 | 0.003396984 | 788 | 314.68 | 0.0031778654 | 737.12 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 240.69 | 0.0041547385 | 964 | 247.44 | 0.004041447 | 937.69 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 2754.81 | 3.630015E-4 | 85 | 3598.17 | 2.77919E-4 | 64.92 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 245.52 | 0.0040730108 | 946 | 248.36 | 0.0040264577 | 935.19 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 240.93 | 0.004150592 | 964 | 244.23 | 0.0040945215 | 950.98 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 367.74 | 0.0027192985 | 631 | 439.36 | 0.002276033 | 528.06 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 903.07 | 0.0011073316 | 258 | 925.20 | 0.0010808451 | 251.84 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 1896.07 | 5.2740605E-4 | 122 | 1965.74 | 5.087135E-4 | 117.7 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 163.25 | 0.0061255544 | 1423 | 166.01 | 0.006023634 | 1399.33 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 404.33 | 0.0024732344 | 575 | 409.33 | 0.00244299 | 567.96 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 7328.70 | 1.3644977E-4 | 31 | 7599.63 | 1.3158543E-4 | 29.92 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 490.61 | 0.0020382972 | 473 | 501.60 | 0.001993634 | 462.65 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 1733.32 | 5.769272E-4 | 134 | 1777.03 | 5.6273624E-4 | 130.69 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 193.80 | 0.005159884 | 1199 | 195.69 | 0.005110225 | 1187.44 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 191.56 | 0.005220183 | 1213 | 203.05 | 0.0049249004 | 1144.28 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 569.70 | 0.001755313 | 407 | 630.51 | 0.0015860123 | 367.77 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 148.45 | 0.006736276 | 1565 | 153.46 | 0.006516413 | 1513.94 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 225.43 | 0.0044360496 | 1031 | 239.78 | 0.004170458 | 968.96 |
| **RodgersCreek** | 325.31 | 0.003074 | 466.69 | 0.0021427604 | 498 | 485.83 | 0.0020583433 | 478.42 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 4174.10 | 2.3957269E-4 | 56 | 4391.46 | 2.2771487E-4 | 53.18 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 491.77 | 0.0020334888 | 473 | 503.65 | 0.001985505 | 461.84 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 574.69 | 0.0017400625 | 404 | 595.53 | 0.0016791816 | 389.86 |
| **Compton** | 2658.16 | 3.762E-4 | 8456.20 | 1.1825647E-4 | 27 | 8766.39 | 1.1407201E-4 | 26.08 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 245.53 | 0.0040727654 | 945 | 252.71 | 0.0039571193 | 918.17 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 791.10 | 0.0012640571 | 294 | 819.46 | 0.0012203129 | 283.81 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 810.99 | 0.0012330537 | 287 | 821.88 | 0.001216721 | 283.19 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 246.30 | 0.0040600807 | 943 | 249.00 | 0.004016021 | 932.74 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 193.16 | 0.0051771123 | 1203 | 195.11 | 0.005125215 | 1190.92 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1070.66 | 9.3400246E-4 | 217 | 1087.77 | 9.193084E-4 | 213.59 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1619.12 | 6.176211E-4 | 144 | 1640.96 | 6.094002E-4 | 142.06 |
| **TOTAL** | 9.08 | 0.1101451 | 21.96 | 0.045533977 | 10576 | 22.73 | 0.043995414 | 10218.66 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.931476 | 0.63423246 | 0.9351834 | 0.644066 | 0.33238843 |
| **20.00** | 0.78265834 | 0.4022508 | 0.7926658 | 0.41482097 | 0.110482074 |
| **30.00** | 0.6071485 | 0.2551205 | 0.62232417 | 0.26717207 | 0.036722966 |
| **40.00** | 0.44982758 | 0.1618057 | 0.46671236 | 0.17207643 | 0.012206289 |
| **50.00** | 0.30881798 | 0.10262242 | 0.32552356 | 0.11082858 | 0.004057229 |
| **60.00** | 0.20082265 | 0.06508647 | 0.2173406 | 0.07138091 | 0.001348576 |
| **70.00** | 0.12992379 | 0.04127995 | 0.14332673 | 0.045974016 | 4.4825108E-4 |
| **80.00** | 0.08315904 | 0.026181083 | 0.09352787 | 0.0296103 | 1.4899348E-4 |
| **90.00** | 0.051599294 | 0.016604893 | 0.059362978 | 0.019070987 | 4.952371E-5 |
| **100.00** | 0.03192222 | 0.010531361 | 0.03680523 | 0.012282973 | 1.6461108E-5 |
| **110.00** | 0.02038801 | 0.0066793314 | 0.023598319 | 0.007911045 | 5.4714824E-6 |
| **120.00** | 0.0132581135 | 0.0042362483 | 0.014990655 | 0.005095235 | 1.8186574E-6 |
| **130.00** | 0.0062151323 | 0.0026867662 | 0.0076059783 | 0.0032816674 | 6.045007E-7 |
| **140.00** | 0.0029440974 | 0.0017040343 | 0.0035140656 | 0.0021136103 | 2.0092905E-7 |
| **150.00** | 0.0013664089 | 0.0010807539 | 0.0010623159 | 0.0013613044 | 6.678649E-8 |
| **160.00** | 0.001116759 | 6.8544917E-4 | 8.90727E-4 | 8.7676983E-4 | 2.2199057E-8 |
| **170.00** | 8.671091E-4 | 4.3473407E-4 | 7.877088E-4 | 5.646976E-4 | 7.37871E-9 |
| **180.00** | 0.0 | 2.7572247E-4 | 2.638228E-5 | 3.6370254E-4 | 2.452598E-9 |
| **190.00** | 0.0 | 1.7487213E-4 | 0.0 | 2.3424842E-4 | 8.152152E-10 |

### Moment Release Variability Plots
*[(top)](#bruce-2626)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2626)*

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
*[(top)](#bruce-2626)*

```
  A_1 = 0.0011
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
