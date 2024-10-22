# Bruce 2627
## Metadata
| **Catalog** | Bruce 2627 |
|-----|-----|
| **Author** | Bruce Shaw, 2018/03/08 |
| **Description** | sensitivity test, diff r2585   a=.0012 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 2,583,499 events in 233,607 years |
| **Frictional Params** | a=0.0012, b=0.008, (b-a)=0.0068, ddotEQ=1 |

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
*[(top)](#bruce-2627)*

* [PGA](hazard_pga/)
* [0.2s SA](hazard_sa_0.2s/)
* [1.0s SA](hazard_sa_1.0s/)
* [10.0s SA](hazard_sa_10.0s/)
* [2.0s SA](hazard_sa_2.0s/)
* [5.0s SA](hazard_sa_5.0s/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2627)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2627)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2627)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2627)*

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
*[(top)](#bruce-2627)*

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
*[(top)](#bruce-2627)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2627)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2627)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2627)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2627)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2627)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2627)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2627)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2627)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2627)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.003701717 | 0.002377191 | 0.0026603355 | 0.0022395977 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 2.1002648E-4 | 1.9958177E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0018683606 | 0.0015053687 | 0.0012164034 | 0.0011804124 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 6.650839E-4 | 6.389906E-4 | 6.432061E-4 | 6.336037E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0013432944 | 0.0011425611 | 0.0011201412 | 0.0010895289 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 7.2196603E-4 | 5.933368E-4 | 4.900618E-4 | 4.7579737E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.0070315115 | 0.006337656 | 0.006747101 | 0.0064942823 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0012557834 | 0.0012245771 | 0.0012426567 | 0.0012278958 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0010895124 | 9.674364E-4 | 9.2324143E-4 | 9.08619E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 9.451192E-4 | 5.296894E-4 | 2.362798E-4 | 2.1930876E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0023409203 | 0.0020175758 | 0.0020127539 | 0.0019682762 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0032466594 | 0.0024132428 | 0.0017983518 | 0.0017208691 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.004235534 | 0.004118679 | 0.004169901 | 0.0041209254 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.005465064 | 0.0044220975 | 0.0043317964 | 0.0040891413 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.00420053 | 0.0041125906 | 0.004169901 | 0.0041160025 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.0044455607 | 0.0042054234 | 0.004248661 | 0.0041890787 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0046380847 | 0.004321157 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 2.1440204E-4 | 1.7991639E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0022796625 | 0.0020587444 | 0.0019558717 | 0.0019214175 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.003496066 | 0.0025050961 | 0.0021658982 | 0.0020809805 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0025159423 | 0.0024611172 | 0.0024853135 | 0.0024569966 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.001649583 | 0.001347415 | 0.0010501324 | 9.565805E-4 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.007504071 | 0.006588418 | 0.0061957813 | 0.0060896836 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0063445503 | 0.0036658882 | 0.0034698127 | 0.0029111295 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.0065939566 | 0.0053405412 | 0.004012381 | 0.0039044165 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.0065939566 | 0.0053405412 | 0.0043274206 | 0.0041935337 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.0052594133 | 0.0051686773 | 0.0052462867 | 0.0051918435 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.005561326 | 0.003364393 | 0.004939998 | 0.0046830797 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0039204946 | 0.0026022324 | 0.0017545962 | 0.0015832972 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0038417345 | 0.0028027147 | 0.002520318 | 0.0023618082 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.005281291 | 0.0051474557 | 0.005255038 | 0.005196628 |

### Paleo Open Interval Plots
*[(top)](#bruce-2627)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2627)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 401.18 | 0.0024926583 | 569 | 406.11 | 0.0024623778 | 562.1 |
| **FRA** | 119.00 | 0.008403362 | 148.43 | 0.0067370646 | 1540 | 153.57 | 0.0065115504 | 1488.45 |
| **COA** | 181.00 | 0.005524862 | 236.08 | 0.004235841 | 969 | 244.45 | 0.004090737 | 935.84 |
| **SCZ** | 106.00 | 0.009433962 | 230.86 | 0.0043315906 | 990 | 244.40 | 0.0040916614 | 935.02 |
| **TYS** | 329.00 | 0.0030395137 | 563.27 | 0.0017753417 | 405 | 586.03 | 0.0017063946 | 389.29 |
| **TOTAL** | 31.61 | 0.0316373 | 51.10 | 0.019568885 | 4473 | 53.03 | 0.018855982 | 4310.05 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9867729 | 0.82226807 | 0.98767006 | 0.828151 | 0.72878754 |
| **20.00** | 0.95014876 | 0.67612475 | 0.953447 | 0.685834 | 0.53113127 |
| **30.00** | 0.8954773 | 0.55595577 | 0.9023706 | 0.5679741 | 0.3870819 |
| **40.00** | 0.8195006 | 0.45714468 | 0.8310134 | 0.4703683 | 0.28210047 |
| **50.00** | 0.7357316 | 0.37589547 | 0.75139904 | 0.38953596 | 0.2055913 |
| **60.00** | 0.6537585 | 0.30908683 | 0.6730351 | 0.32259458 | 0.14983238 |
| **70.00** | 0.57645816 | 0.2541522 | 0.59783417 | 0.26715702 | 0.10919597 |
| **80.00** | 0.49593094 | 0.20898125 | 0.5182386 | 0.22124633 | 0.079580665 |
| **90.00** | 0.41603586 | 0.17183861 | 0.43774816 | 0.18322536 | 0.057997398 |
| **100.00** | 0.3343309 | 0.1412974 | 0.3575219 | 0.15173826 | 0.04226778 |
| **110.00** | 0.27892748 | 0.11618433 | 0.3004496 | 0.12566218 | 0.030804234 |
| **120.00** | 0.2121612 | 0.09553467 | 0.23312943 | 0.10406726 | 0.022449743 |
| **130.00** | 0.160596 | 0.07855511 | 0.1795737 | 0.0861834 | 0.016361093 |
| **140.00** | 0.1192649 | 0.06459335 | 0.13593131 | 0.07137287 | 0.011923761 |
| **150.00** | 0.089084096 | 0.05311305 | 0.10340052 | 0.05910751 | 0.008689889 |
| **160.00** | 0.06525254 | 0.043673165 | 0.07748456 | 0.04894994 | 0.0063330824 |
| **170.00** | 0.03239959 | 0.035911046 | 0.041573968 | 0.04053794 | 0.0046154717 |
| **180.00** | 0.016552122 | 0.029528506 | 0.022801258 | 0.033571534 | 0.0033636983 |
| **190.00** | 0.004313802 | 0.024280347 | 0.007999722 | 0.027802298 | 0.0024514215 |
| **200.00** | 0.0022359018 | 0.019964954 | 0.0042550117 | 0.0230245 | 0.0017865654 |
| **210.00** | 0.0 | 0.016416544 | 0.0015099614 | 0.01906776 | 0.0013020267 |
| **220.00** | 0.0 | 0.0134988 | 0.0010555881 | 0.015790984 | 9.489008E-4 |
| **230.00** | 0.0 | 0.011099632 | 8.4671075E-4 | 0.01307732 | 6.915471E-4 |
| **240.00** | 0.0 | 0.009126873 | 5.728004E-4 | 0.010829994 | 5.039909E-4 |
| **250.00** | 0.0 | 0.0075047356 | 4.1066096E-4 | 0.00896887 | 3.673023E-4 |
| **260.00** | 0.0 | 0.0061709043 | 1.616003E-4 | 0.0074275783 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.0050741374 | 1.3064762E-4 | 0.0061511565 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.004172301 | 8.5235304E-5 | 0.005094086 | 1.4217607E-4 |
| **290.00** | 0.0 | 0.00343075 | 4.9837636E-5 | 0.0042186724 | 1.0361615E-4 |
| **300.00** | 0.0 | 0.002820996 | 3.17991E-5 | 0.0034936974 | 7.551416E-5 |
| **310.00** | 0.0 | 0.0023196149 | 0.0 | 0.0028933089 | 5.503378E-5 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2627)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 282.39 | 0.003541235 | 809 | 302.87 | 0.0033017532 | 753.95 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 231.30 | 0.004323358 | 989 | 238.73 | 0.00418877 | 958.22 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 2661.56 | 3.7571887E-4 | 86 | 3473.42 | 2.8790065E-4 | 65.34 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 239.94 | 0.0041676383 | 952 | 243.03 | 0.004114711 | 939.9 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 235.37 | 0.0042485716 | 971 | 238.69 | 0.004189498 | 957.38 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 376.31 | 0.00265741 | 608 | 446.64 | 0.00223896 | 512.23 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 900.63 | 0.0011103379 | 254 | 918.74 | 0.0010884454 | 248.96 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 2039.82 | 4.9024005E-4 | 112 | 2100.25 | 4.7613325E-4 | 108.76 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 161.98 | 0.006173741 | 1411 | 164.59 | 0.00607588 | 1388.61 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 401.18 | 0.0024926583 | 569 | 405.84 | 0.0024640046 | 562.45 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 7265.60 | 1.3763491E-4 | 32 | 7651.56 | 1.3069223E-4 | 30.3 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 511.48 | 0.0019551134 | 447 | 520.77 | 0.0019202195 | 439.04 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 1695.97 | 5.8963173E-4 | 135 | 1739.83 | 5.747701E-4 | 131.57 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 190.27 | 0.005255605 | 1201 | 192.46 | 0.005195965 | 1187.37 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 187.15 | 0.005343199 | 1221 | 198.52 | 0.0050372006 | 1151.12 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 568.16 | 0.0017600786 | 401 | 628.38 | 0.00159139 | 362.41 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 148.43 | 0.0067370646 | 1540 | 153.61 | 0.006509863 | 1488.07 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 230.86 | 0.0043315906 | 990 | 244.55 | 0.004089224 | 934.38 |
| **RodgersCreek** | 325.31 | 0.003074 | 461.74 | 0.0021657133 | 495 | 479.96 | 0.0020834995 | 476.17 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 4183.24 | 2.3904943E-4 | 54 | 4426.63 | 2.259056E-4 | 51.03 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 496.33 | 0.0020147806 | 460 | 507.76 | 0.0019694434 | 449.64 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 563.27 | 0.0017753417 | 405 | 586.62 | 0.0017046796 | 388.92 |
| **Compton** | 2658.16 | 3.762E-4 | 8644.84 | 1.1567591E-4 | 26 | 8974.66 | 1.11424786E-4 | 25.04 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 236.08 | 0.004235841 | 969 | 244.64 | 0.00408772 | 935.13 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 768.41 | 0.0013013938 | 298 | 805.06 | 0.0012421452 | 284.39 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 801.94 | 0.0012469694 | 285 | 812.56 | 0.0012306848 | 281.26 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 239.94 | 0.0041676383 | 952 | 242.54 | 0.0041230517 | 941.78 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 190.43 | 0.0052512255 | 1200 | 192.48 | 0.005195253 | 1187.22 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1086.44 | 9.204404E-4 | 211 | 1103.57 | 9.061517E-4 | 207.74 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1557.66 | 6.419905E-4 | 147 | 1579.41 | 6.3314824E-4 | 144.97 |
| **TOTAL** | 9.08 | 0.1101451 | 21.79 | 0.045892067 | 10489 | 22.53 | 0.044387452 | 10145.1 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9270576 | 0.63196534 | 0.9309602 | 0.6415459 | 0.33238843 |
| **20.00** | 0.7799284 | 0.39938024 | 0.7904606 | 0.41158116 | 0.110482074 |
| **30.00** | 0.6114327 | 0.25239447 | 0.6269669 | 0.26404822 | 0.036722966 |
| **40.00** | 0.44848382 | 0.15950456 | 0.4656454 | 0.16939905 | 0.012206289 |
| **50.00** | 0.31306598 | 0.10080136 | 0.32951123 | 0.108677275 | 0.004057229 |
| **60.00** | 0.21046057 | 0.06370297 | 0.22400184 | 0.06972146 | 0.001348576 |
| **70.00** | 0.13534838 | 0.04025807 | 0.14704975 | 0.04472952 | 4.4825108E-4 |
| **80.00** | 0.083362244 | 0.025441706 | 0.09220378 | 0.02869604 | 1.4899348E-4 |
| **90.00** | 0.050825935 | 0.016078277 | 0.05693558 | 0.018409828 | 4.952371E-5 |
| **100.00** | 0.027309112 | 0.010160915 | 0.03089727 | 0.01181075 | 1.6461108E-5 |
| **110.00** | 0.014169265 | 0.0064213458 | 0.01628987 | 0.007577138 | 5.4714824E-6 |
| **120.00** | 0.0057765255 | 0.004058068 | 0.007547847 | 0.004861082 | 1.8186574E-6 |
| **130.00** | 0.0032114238 | 0.0025645585 | 0.0039228257 | 0.0031186074 | 6.045007E-7 |
| **140.00** | 0.0016109446 | 0.0016207122 | 0.0019705018 | 0.0020007298 | 2.0092905E-7 |
| **150.00** | 0.0 | 0.001024234 | 5.712275E-4 | 0.0012835601 | 6.678649E-8 |
| **160.00** | 0.0 | 6.472804E-4 | 3.3567112E-4 | 8.2346273E-4 | 2.2199057E-8 |
| **170.00** | 0.0 | 4.090588E-4 | 2.3133183E-4 | 5.282891E-4 | 7.37871E-9 |
| **180.00** | 0.0 | 2.58511E-4 | 0.0 | 3.3892173E-4 | 2.452598E-9 |

### Moment Release Variability Plots
*[(top)](#bruce-2627)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2627)*

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
*[(top)](#bruce-2627)*

```
  A_1 = 0.0012
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
