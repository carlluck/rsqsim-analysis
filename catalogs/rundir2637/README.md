# Bruce 2637
## Metadata
| **Catalog** | Bruce 2637 |
|-----|-----|
| **Author** | Bruce Shaw, 2018/03/28 |
| **Description** | sensitivity test, diff r2585  N=130 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 2,926,999 events in 345,682 years |
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
*[(top)](#bruce-2637)*

* [PGA](hazard_pga/)
* [0.2s SA](hazard_sa_0.2s/)
* [1.0s SA](hazard_sa_1.0s/)
* [10.0s SA](hazard_sa_10.0s/)
* [2.0s SA](hazard_sa_2.0s/)
* [5.0s SA](hazard_sa_5.0s/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2637)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2637)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2637)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2637)*

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
*[(top)](#bruce-2637)*

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
*[(top)](#bruce-2637)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2637)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2637)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2637)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2637)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2637)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2637)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2637)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2637)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2637)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0031749534 | 0.001901398 | 0.002141111 | 0.001946142 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 1.351044E-4 | 1.280568E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0013921628 | 0.0011042793 | 8.0181524E-4 | 7.901281E-4 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 5.551029E-4 | 5.3180964E-4 | 5.1692117E-4 | 5.0991715E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 8.576192E-4 | 7.614884E-4 | 7.665706E-4 | 7.5342035E-4 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 5.462917E-4 | 4.5546767E-4 | 3.2601279E-4 | 3.2179765E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.006493822 | 0.0052352916 | 0.0055422173 | 0.0053748423 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 9.457308E-4 | 9.097526E-4 | 9.1048615E-4 | 9.0108777E-4 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 7.5775944E-4 | 7.070723E-4 | 6.637738E-4 | 6.556872E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 7.31326E-4 | 4.3374076E-4 | 1.7916018E-4 | 1.7104647E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0017592943 | 0.001555226 | 0.0015008337 | 0.0014799064 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0024876832 | 0.0019438156 | 0.0013304846 | 0.0012960215 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0028489407 | 0.0027961028 | 0.002825444 | 0.002796172 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.003721245 | 0.0030942783 | 0.0029605485 | 0.0028771202 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.00281957 | 0.0027856077 | 0.002810759 | 0.002782559 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.0028225072 | 0.0027576087 | 0.002804885 | 0.0027759178 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.003380547 | 0.0031242361 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 1.8209724E-4 | 1.5728043E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0019355174 | 0.0017159533 | 0.0015566377 | 0.0015346817 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0020794328 | 0.001658565 | 0.0015302042 | 0.0014999608 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0019208321 | 0.0018709038 | 0.0018855875 | 0.0018648464 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0015243301 | 0.0011979046 | 8.1356347E-4 | 7.6693913E-4 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.0056567625 | 0.0048602913 | 0.004340963 | 0.004288988 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0044643194 | 0.0028434924 | 0.0023525788 | 0.002182962 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.0048784437 | 0.0040724566 | 0.0029664226 | 0.0029174085 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.0048784437 | 0.0040724566 | 0.003101527 | 0.003048998 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.0035832035 | 0.003532296 | 0.0035714554 | 0.0035337703 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.0040736916 | 0.002715197 | 0.0031925756 | 0.0031174477 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0029576116 | 0.0020494917 | 0.0012893659 | 0.0012215547 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0027402698 | 0.0020799842 | 0.0019413915 | 0.0018628746 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.0036272595 | 0.003542442 | 0.0035978889 | 0.0035564124 |

### Paleo Open Interval Plots
*[(top)](#bruce-2637)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2637)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 532.75 | 0.0018770546 | 640 | 538.17 | 0.0018581368 | 633.55 |
| **FRA** | 119.00 | 0.008403362 | 182.29 | 0.0054859 | 1867 | 185.88 | 0.0053797374 | 1830.88 |
| **COA** | 181.00 | 0.005524862 | 326.65 | 0.0030613858 | 1042 | 332.79 | 0.0030048806 | 1022.77 |
| **SCZ** | 106.00 | 0.009433962 | 337.82 | 0.0029601865 | 1008 | 347.57 | 0.0028770927 | 979.72 |
| **TYS** | 329.00 | 0.0030395137 | 770.36 | 0.0012980981 | 442 | 787.56 | 0.0012697417 | 432.36 |
| **TOTAL** | 31.61 | 0.0316373 | 68.11 | 0.014681563 | 4999 | 69.52 | 0.014383512 | 4897.5 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.99219894 | 0.86345315 | 0.9924991 | 0.8660305 | 0.72878754 |
| **20.00** | 0.97196937 | 0.74555135 | 0.9731431 | 0.7500089 | 0.53113127 |
| **30.00** | 0.93869966 | 0.6437487 | 0.94112056 | 0.6495306 | 0.3870819 |
| **40.00** | 0.89435065 | 0.5558468 | 0.8983187 | 0.5625133 | 0.28210047 |
| **50.00** | 0.84276164 | 0.47994772 | 0.84832114 | 0.4871537 | 0.2055913 |
| **60.00** | 0.7866546 | 0.41441235 | 0.7936854 | 0.42189 | 0.14983238 |
| **70.00** | 0.725096 | 0.35782567 | 0.7333555 | 0.36536962 | 0.10919597 |
| **80.00** | 0.6658828 | 0.3089657 | 0.6758065 | 0.31642124 | 0.079580665 |
| **90.00** | 0.598487 | 0.26677743 | 0.6097981 | 0.27403045 | 0.057997398 |
| **100.00** | 0.5377099 | 0.2303498 | 0.54959816 | 0.23731874 | 0.04226778 |
| **110.00** | 0.48339805 | 0.19889626 | 0.49568442 | 0.20552526 | 0.030804234 |
| **120.00** | 0.42511114 | 0.17173761 | 0.43774447 | 0.17799115 | 0.022449743 |
| **130.00** | 0.35882577 | 0.14828739 | 0.37187183 | 0.15414578 | 0.016361093 |
| **140.00** | 0.30018327 | 0.12803921 | 0.3132831 | 0.13349494 | 0.011923761 |
| **150.00** | 0.25264436 | 0.11055586 | 0.26519582 | 0.115610704 | 0.008689889 |
| **160.00** | 0.20361464 | 0.095459804 | 0.21521698 | 0.1001224 | 0.0063330824 |
| **170.00** | 0.16515635 | 0.08242507 | 0.17609803 | 0.08670905 | 0.0046154717 |
| **180.00** | 0.1394113 | 0.07117019 | 0.14910915 | 0.07509269 | 0.0033636983 |
| **190.00** | 0.10837686 | 0.061452124 | 0.11697266 | 0.06503256 | 0.0024514215 |
| **200.00** | 0.08707484 | 0.05306103 | 0.09497751 | 0.056320183 | 0.0017865654 |
| **210.00** | 0.06673147 | 0.045815714 | 0.07346806 | 0.048774995 | 0.0013020267 |
| **220.00** | 0.04832171 | 0.039559722 | 0.054422952 | 0.042240635 | 9.489008E-4 |
| **230.00** | 0.031987943 | 0.03415797 | 0.037353504 | 0.03658168 | 6.915471E-4 |
| **240.00** | 0.023413362 | 0.029493805 | 0.027644001 | 0.031680852 | 5.039909E-4 |
| **250.00** | 0.017991073 | 0.02546652 | 0.021120712 | 0.027436586 | 3.673023E-4 |
| **260.00** | 0.011042562 | 0.021989146 | 0.013192155 | 0.02376092 | 2.6768536E-4 |
| **270.00** | 0.0079623265 | 0.018986598 | 0.009258765 | 0.020577682 | 1.9508575E-4 |
| **280.00** | 0.0035272732 | 0.016394038 | 0.0046120635 | 0.017820902 | 1.4217607E-4 |
| **290.00** | 0.0026105442 | 0.014155485 | 0.0034719498 | 0.015433445 | 1.0361615E-4 |
| **300.00** | 0.001150431 | 0.012222597 | 0.0014822112 | 0.013365834 | 7.551416E-5 |
| **310.00** | 0.0 | 0.01055364 | 4.3362405E-4 | 0.01157522 | 5.503378E-5 |
| **320.00** | 0.0 | 0.009112574 | 2.2330915E-4 | 0.0100244945 | 4.0107934E-5 |
| **330.00** | 0.0 | 0.007868282 | 1.6993062E-4 | 0.008681518 | 2.9230163E-5 |
| **340.00** | 0.0 | 0.0067938925 | 1.4353503E-4 | 0.0075184596 | 2.1302578E-5 |
| **350.00** | 0.0 | 0.0058662076 | 1.2160481E-4 | 0.0065112156 | 1.5525055E-5 |
| **360.00** | 0.0 | 0.0050651957 | 1.0337236E-4 | 0.0056389114 | 1.1314466E-5 |
| **370.00** | 0.0 | 0.0043735593 | 6.520751E-5 | 0.0048834695 | 8.245842E-6 |
| **380.00** | 0.0 | 0.0037763636 | 5.469963E-5 | 0.0042292336 | 6.009467E-6 |
| **390.00** | 0.0 | 0.003260713 | 4.9447885E-5 | 0.0036626456 | 4.379625E-6 |
| **400.00** | 0.0 | 0.002815473 | 4.062363E-5 | 0.003171963 | 3.1918162E-6 |
| **410.00** | 0.0 | 0.002431029 | 2.7285072E-5 | 0.0027470167 | 2.3261557E-6 |
| **420.00** | 0.0 | 0.0020990798 | 0.0 | 0.0023790002 | 1.6952735E-6 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2637)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 405.73 | 0.0024646726 | 838 | 419.70 | 0.0023826375 | 810.12 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 322.31 | 0.0031025573 | 1056 | 327.88 | 0.003049929 | 1038.09 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 2945.41 | 3.3951155E-4 | 116 | 3547.36 | 2.8189996E-4 | 95.78 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 355.98 | 0.002809175 | 957 | 359.81 | 0.0027792535 | 946.79 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 356.72 | 0.0028032982 | 955 | 360.43 | 0.0027744349 | 945.16 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 467.02 | 0.0021412238 | 729 | 512.78 | 0.0019501538 | 663.81 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 1320.21 | 7.5745577E-4 | 258 | 1335.92 | 7.4854866E-4 | 254.96 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 3014.18 | 3.317654E-4 | 111 | 3047.67 | 3.2811897E-4 | 109.77 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 230.80 | 0.0043327226 | 1475 | 233.46 | 0.004283369 | 1458.15 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 532.75 | 0.0018770546 | 640 | 538.64 | 0.0018565216 | 632.99 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 10877.60 | 9.193203E-5 | 30 | 11117.19 | 8.995078E-5 | 29.29 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 642.27 | 0.0015569758 | 530 | 651.39 | 0.0015351698 | 522.55 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 2036.87 | 4.909493E-4 | 168 | 2072.65 | 4.824752E-4 | 164.96 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 278.48 | 0.0035908835 | 1223 | 281.51 | 0.0035522648 | 1209.84 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 283.35 | 0.0035291743 | 1202 | 291.69 | 0.0034282652 | 1167.66 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 775.34 | 0.0012897527 | 439 | 818.62 | 0.001221565 | 415.76 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 182.29 | 0.0054859 | 1867 | 186.08 | 0.0053741243 | 1828.98 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 337.82 | 0.0029601865 | 1008 | 347.64 | 0.00287658 | 979.54 |
| **RodgersCreek** | 325.31 | 0.003074 | 652.91 | 0.0015316088 | 521 | 665.88 | 0.0015017629 | 510.8 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 5534.41 | 1.8068757E-4 | 61 | 5720.45 | 1.7481142E-4 | 59.02 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 666.48 | 0.0015004104 | 511 | 675.63 | 0.0014800918 | 504.08 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 770.36 | 0.0012980981 | 442 | 788.92 | 0.0012675553 | 431.61 |
| **Compton** | 2658.16 | 3.762E-4 | 13167.63 | 7.594378E-5 | 24 | 13351.04 | 7.4900534E-5 | 23.64 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 326.65 | 0.0030613858 | 1042 | 333.08 | 0.003002293 | 1021.89 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 1214.35 | 8.2348887E-4 | 280 | 1234.30 | 8.1017864E-4 | 275.46 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 1097.71 | 9.1098854E-4 | 310 | 1109.59 | 9.012324E-4 | 306.67 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 354.12 | 0.0028238674 | 962 | 357.90 | 0.0027940709 | 951.85 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 280.09 | 0.0035703136 | 1216 | 282.96 | 0.0035340833 | 1203.65 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1504.69 | 6.6458783E-4 | 226 | 1523.79 | 6.562583E-4 | 223.18 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1940.92 | 5.152185E-4 | 176 | 1967.34 | 5.0829985E-4 | 173.65 |
| **TOTAL** | 9.08 | 0.1101451 | 29.46 | 0.03394735 | 11558 | 30.04 | 0.033290062 | 11334.23 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.95939404 | 0.7121452 | 0.9607127 | 0.7168414 | 0.33238843 |
| **20.00** | 0.86299473 | 0.50715077 | 0.86712486 | 0.5138616 | 0.110482074 |
| **30.00** | 0.73583776 | 0.36116496 | 0.74296325 | 0.3683573 | 0.036722966 |
| **40.00** | 0.6107446 | 0.25720188 | 0.61988986 | 0.26405376 | 0.012206289 |
| **50.00** | 0.4880585 | 0.18316509 | 0.49885577 | 0.18928468 | 0.004057229 |
| **60.00** | 0.38298216 | 0.13044013 | 0.3940353 | 0.1356871 | 0.001348576 |
| **70.00** | 0.28554955 | 0.09289231 | 0.29606202 | 0.09726613 | 4.4825108E-4 |
| **80.00** | 0.21078946 | 0.06615281 | 0.22060387 | 0.06972439 | 1.4899348E-4 |
| **90.00** | 0.15366194 | 0.04711041 | 0.1620727 | 0.049981333 | 4.952371E-5 |
| **100.00** | 0.1113515 | 0.03354945 | 0.11809689 | 0.03582869 | 1.6461108E-5 |
| **110.00** | 0.07674339 | 0.023892079 | 0.08192645 | 0.025683489 | 5.4714824E-6 |
| **120.00** | 0.052416805 | 0.017014628 | 0.05586037 | 0.018410988 | 1.8186574E-6 |
| **130.00** | 0.033211198 | 0.012116886 | 0.03545874 | 0.013197759 | 6.045007E-7 |
| **140.00** | 0.020434577 | 0.008628982 | 0.02218424 | 0.009460701 | 2.0092905E-7 |
| **150.00** | 0.014887349 | 0.006145088 | 0.015979435 | 0.006781822 | 6.678649E-8 |
| **160.00** | 0.0113191465 | 0.004376195 | 0.012305869 | 0.004861491 | 2.2199057E-8 |
| **170.00** | 0.0074410643 | 0.003116486 | 0.007912272 | 0.003484918 | 7.37871E-9 |
| **180.00** | 0.0037922568 | 0.0022193906 | 0.0041243546 | 0.0024981336 | 2.452598E-9 |
| **190.00** | 0.0032370365 | 0.0015805282 | 0.003463678 | 0.0017907656 | 8.152152E-10 |
| **200.00** | 0.002637585 | 0.0011255656 | 0.0027034488 | 0.001283695 | 2.709681E-10 |
| **210.00** | 0.001075089 | 8.015661E-4 | 8.479287E-4 | 9.202057E-4 | 9.006666E-11 |
| **220.00** | 0.0 | 5.708314E-4 | 7.992426E-5 | 6.596416E-4 | 2.993712E-11 |
| **230.00** | 0.0 | 4.0651485E-4 | 4.3429263E-5 | 4.728584E-4 | 9.950752E-12 |
| **240.00** | 0.0 | 2.894976E-4 | 2.7589635E-5 | 3.3896448E-4 | 3.3075149E-12 |
| **250.00** | 0.0 | 2.0616432E-4 | 1.3302567E-5 | 2.4298379E-4 | 1.0993797E-12 |
| **260.00** | 0.0 | 1.4681893E-4 | 0.0 | 1.7418084E-4 | 3.654211E-13 |

### Moment Release Variability Plots
*[(top)](#bruce-2637)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2637)*

Example rupture plots:

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![example](resources/elastic_rebound_triggering_m6_example_re_rup.png) | ![example](resources/elastic_rebound_triggering_m6.5_example_re_rup.png) |  |
| ![example](resources/elastic_rebound_triggering_m6_example_new_hypo.png) | ![example](resources/elastic_rebound_triggering_m6.5_example_new_hypo.png) | ![example](resources/elastic_rebound_triggering_m7_example_new_hypo.png) |

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_1yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_1yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_1yr.png) |
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_10yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_10yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_10yr.png) |
| ![hypocenter plot](resources/elastic_rebound_triggering_m6_100yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m6.5_100yr.png) | ![hypocenter plot](resources/elastic_rebound_triggering_m7_100yr.png) |

## Input File
*[(top)](#bruce-2637)*

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
  sigma0_1 = 130
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
