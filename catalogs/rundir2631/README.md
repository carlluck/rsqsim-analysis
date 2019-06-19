# Bruce 2631
## Metadata
| **Catalog** | Bruce 2631 |
|-----|-----|
| **Author** | Bruce Shaw, 2018/03/08 |
| **Description** | sensitivity test, diff r2585   N=120 |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 2,783,499 events in 309,590 years |
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
*[(top)](#bruce-2631)*

* [PGA](hazard_pga/)
* [0.2s SA](hazard_sa_0.2s/)
* [1.0s SA](hazard_sa_1.0s/)
* [10.0s SA](hazard_sa_10.0s/)
* [2.0s SA](hazard_sa_2.0s/)
* [5.0s SA](hazard_sa_5.0s/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2631)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2631)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2631)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2631)*

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
*[(top)](#bruce-2631)*

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
*[(top)](#bruce-2631)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2631)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2631)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2631)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2631)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2631)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2631)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2631)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2631)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2631)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0033897995 | 0.0020527488 | 0.0022894286 | 0.0020563137 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 1.3795696E-4 | 1.3135342E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.00153395 | 0.0012119947 | 8.6715806E-4 | 8.5244776E-4 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 5.5182783E-4 | 5.3613266E-4 | 5.3540437E-4 | 5.296578E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 9.4599056E-4 | 8.3949184E-4 | 8.507346E-4 | 8.3762815E-4 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 5.8139005E-4 | 4.8566528E-4 | 3.514618E-4 | 3.45768E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.006769745 | 0.005592441 | 0.0059847045 | 0.0057900404 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 9.886916E-4 | 9.6111733E-4 | 9.689834E-4 | 9.5792196E-4 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 8.113183E-4 | 7.532673E-4 | 7.3905516E-4 | 7.2908023E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 7.0949295E-4 | 4.3511202E-4 | 1.9051199E-4 | 1.8191413E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0019084046 | 0.0016689172 | 0.0016094978 | 0.0015834003 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.002624467 | 0.0020109932 | 0.0014452634 | 0.0014071156 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0031040316 | 0.0030610329 | 0.003090893 | 0.0030596482 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0041846945 | 0.0034493862 | 0.0032912588 | 0.0031810391 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.003130309 | 0.00308035 | 0.0031106009 | 0.0030773694 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.003130309 | 0.003042351 | 0.003100747 | 0.0030633158 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.003639436 | 0.0034024932 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 1.9379669E-4 | 1.701754E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0020496463 | 0.001822338 | 0.0016620529 | 0.0016378101 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.002158041 | 0.0017655403 | 0.0016587682 | 0.0016181126 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0020562157 | 0.0020020544 | 0.00201023 | 0.001987371 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0014945337 | 0.0012130252 | 8.7372743E-4 | 8.141415E-4 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.0061686467 | 0.005293011 | 0.0047857924 | 0.0047231326 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0051044077 | 0.0030889327 | 0.0026113281 | 0.0023699072 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.0052719265 | 0.0043745292 | 0.0031565866 | 0.0031015615 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.0052719265 | 0.0043745292 | 0.0033438138 | 0.0032802671 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.0039514815 | 0.0038969049 | 0.003944912 | 0.0039027648 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.0044606086 | 0.002946427 | 0.0036525747 | 0.0035406188 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0031335938 | 0.0021491318 | 0.0014189859 | 0.0013299386 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0031401631 | 0.0022909807 | 0.0021022013 | 0.0020112065 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.003967905 | 0.0038822219 | 0.0039547663 | 0.0039118114 |

### Paleo Open Interval Plots
*[(top)](#bruce-2631)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2631)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 497.40 | 0.0020104737 | 612 | 503.03 | 0.001987967 | 605.16 |
| **FRA** | 119.00 | 0.008403362 | 169.24 | 0.005908834 | 1799 | 173.10 | 0.0057769762 | 1758.83 |
| **COA** | 181.00 | 0.005524862 | 303.84 | 0.003291254 | 1002 | 310.67 | 0.0032188196 | 979.95 |
| **SCZ** | 106.00 | 0.009433962 | 303.81 | 0.0032915762 | 1002 | 314.04 | 0.003184345 | 969.39 |
| **TYS** | 329.00 | 0.0030395137 | 700.54 | 0.001427477 | 434 | 719.90 | 0.001389083 | 422.34 |
| **TOTAL** | 31.61 | 0.0316373 | 62.79 | 0.015926996 | 4849 | 64.30 | 0.015552895 | 4734.97 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9910925 | 0.8527661 | 0.99149674 | 0.8559623 | 0.72878754 |
| **20.00** | 0.96618086 | 0.72721004 | 0.96763927 | 0.73267144 | 0.53113127 |
| **30.00** | 0.92549443 | 0.6201401 | 0.9287094 | 0.62713915 | 0.3870819 |
| **40.00** | 0.8754645 | 0.52883446 | 0.8806242 | 0.5368075 | 0.28210047 |
| **50.00** | 0.8200579 | 0.4509721 | 0.8268209 | 0.45948696 | 0.2055913 |
| **60.00** | 0.750928 | 0.38457373 | 0.7599034 | 0.3933035 | 0.14983238 |
| **70.00** | 0.6927116 | 0.32795146 | 0.7029749 | 0.33665296 | 0.10919597 |
| **80.00** | 0.6269145 | 0.2796659 | 0.638879 | 0.28816226 | 0.079580665 |
| **90.00** | 0.5600651 | 0.2384896 | 0.5733069 | 0.24665602 | 0.057997398 |
| **100.00** | 0.49451032 | 0.20337585 | 0.50797254 | 0.21112825 | 0.04226778 |
| **110.00** | 0.42765802 | 0.17343204 | 0.44167313 | 0.18071783 | 0.030804234 |
| **120.00** | 0.3685882 | 0.14789696 | 0.38229895 | 0.15468764 | 0.022449743 |
| **130.00** | 0.31581497 | 0.12612152 | 0.32926258 | 0.13240679 | 0.016361093 |
| **140.00** | 0.26355594 | 0.107552156 | 0.2764201 | 0.11333522 | 0.011923761 |
| **150.00** | 0.21866839 | 0.09171684 | 0.23106353 | 0.09701068 | 0.008689889 |
| **160.00** | 0.17726657 | 0.07821301 | 0.18805952 | 0.08303748 | 0.0063330824 |
| **170.00** | 0.13982482 | 0.066697404 | 0.15043467 | 0.07107695 | 0.0046154717 |
| **180.00** | 0.11175629 | 0.05687729 | 0.12111555 | 0.06083919 | 0.0033636983 |
| **190.00** | 0.09094281 | 0.048503026 | 0.09913964 | 0.052076057 | 0.0024514215 |
| **200.00** | 0.06987942 | 0.041361738 | 0.07723608 | 0.04457514 | 0.0017865654 |
| **210.00** | 0.05035295 | 0.035271887 | 0.056071777 | 0.03815464 | 0.0013020267 |
| **220.00** | 0.023909654 | 0.03007867 | 0.028718837 | 0.03265893 | 9.489008E-4 |
| **230.00** | 0.017636152 | 0.025650071 | 0.020995287 | 0.027954815 | 6.915471E-4 |
| **240.00** | 0.008268504 | 0.021873511 | 0.011239876 | 0.023928268 | 5.039909E-4 |
| **250.00** | 0.005246226 | 0.01865299 | 0.007459202 | 0.020481694 | 3.673023E-4 |
| **260.00** | 0.002674971 | 0.015906638 | 0.0044539487 | 0.017531559 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.013564642 | 0.0010694276 | 0.015006353 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.011567467 | 7.258906E-4 | 0.012844873 | 1.4217607E-4 |
| **290.00** | 0.0 | 0.009864344 | 4.3484668E-4 | 0.010994727 | 1.0361615E-4 |
| **300.00** | 0.0 | 0.008411978 | 2.742249E-4 | 0.009411071 | 7.551416E-5 |
| **310.00** | 0.0 | 0.00717345 | 2.2673674E-4 | 0.008055522 | 5.503378E-5 |
| **320.00** | 0.0 | 0.0061172755 | 1.8640398E-4 | 0.006895223 | 4.0107934E-5 |
| **330.00** | 0.0 | 0.005216605 | 1.5105779E-4 | 0.0059020515 | 2.9230163E-5 |
| **340.00** | 0.0 | 0.0044485442 | 9.691201E-5 | 0.005051933 | 2.1302578E-5 |
| **350.00** | 0.0 | 0.0037935677 | 7.776267E-5 | 0.0043242644 | 1.5525055E-5 |
| **360.00** | 0.0 | 0.003235026 | 5.472285E-5 | 0.0037014075 | 1.1314466E-5 |
| **370.00** | 0.0 | 0.0027587207 | 0.0 | 0.003168265 | 8.245842E-6 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2631)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 376.37 | 0.0026569492 | 809 | 390.80 | 0.0025588553 | 779.02 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 299.06 | 0.0033438613 | 1018 | 305.10 | 0.0032775823 | 997.8 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 2770.24 | 3.6098005E-4 | 110 | 3443.09 | 2.9043676E-4 | 88.43 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 321.45 | 0.0031109175 | 947 | 324.83 | 0.0030785617 | 937.13 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 322.47 | 0.003101052 | 944 | 326.40 | 0.0030636974 | 932.63 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 436.93 | 0.002288711 | 697 | 485.97 | 0.0020577582 | 626.67 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 1176.17 | 8.5022056E-4 | 259 | 1194.74 | 8.370035E-4 | 254.97 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 2815.78 | 3.5514173E-4 | 107 | 2856.69 | 3.5005502E-4 | 105.45 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 209.06 | 0.0047833794 | 1457 | 211.87 | 0.0047198064 | 1437.64 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 497.40 | 0.0020104737 | 612 | 503.31 | 0.0019868284 | 604.78 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 9876.23 | 1.01253216E-4 | 30 | 10115.13 | 9.886183E-5 | 29.28 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 601.50 | 0.001662516 | 506 | 610.89 | 0.0016369554 | 498.2 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 1933.21 | 5.1727454E-4 | 158 | 1974.51 | 5.064555E-4 | 154.69 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 253.48 | 0.003945152 | 1201 | 256.14 | 0.0039041224 | 1188.52 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 252.42 | 0.00396159 | 1206 | 261.24 | 0.0038278527 | 1165.22 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 705.77 | 0.0014168994 | 432 | 753.31 | 0.001327483 | 404.64 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 169.24 | 0.005908834 | 1799 | 172.94 | 0.0057823346 | 1760.48 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 303.81 | 0.0032915762 | 1002 | 314.42 | 0.0031804384 | 968.19 |
| **RodgersCreek** | 325.31 | 0.003074 | 602.09 | 0.0016608947 | 505 | 616.88 | 0.0016210595 | 492.88 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 5306.42 | 1.884511E-4 | 57 | 5507.77 | 1.8156158E-4 | 54.91 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 621.23 | 0.0016097209 | 490 | 631.87 | 0.0015826063 | 481.73 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 700.54 | 0.001427477 | 434 | 719.32 | 0.0013902034 | 422.68 |
| **Compton** | 2658.16 | 3.762E-4 | 11456.43 | 8.7287255E-5 | 26 | 11662.40 | 8.5745676E-5 | 25.54 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 303.84 | 0.003291254 | 1002 | 310.73 | 0.003218261 | 979.8 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 1114.93 | 8.969203E-4 | 273 | 1139.08 | 8.7790214E-4 | 267.18 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 1030.92 | 9.7000564E-4 | 295 | 1041.74 | 9.5993077E-4 | 291.93 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 323.50 | 0.0030911865 | 941 | 326.79 | 0.0030600769 | 931.52 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 253.69 | 0.0039418642 | 1200 | 256.31 | 0.00390146 | 1187.7 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1342.01 | 7.451493E-4 | 227 | 1360.90 | 7.3480647E-4 | 223.84 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1872.10 | 5.3415814E-4 | 163 | 1889.39 | 5.292724E-4 | 161.5 |
| **TOTAL** | 9.08 | 0.1101451 | 27.23 | 0.036727335 | 11181 | 27.83 | 0.035931345 | 10938.69 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9530212 | 0.6926203 | 0.954642 | 0.69815546 | 0.33238843 |
| **20.00** | 0.84420913 | 0.47972286 | 0.84928685 | 0.48742107 | 0.110482074 |
| **30.00** | 0.7071145 | 0.3322658 | 0.71541697 | 0.3402957 | 0.036722966 |
| **40.00** | 0.57425916 | 0.23013403 | 0.58436364 | 0.2375793 | 0.012206289 |
| **50.00** | 0.4510813 | 0.15939549 | 0.46202594 | 0.1658673 | 0.004057229 |
| **60.00** | 0.34121475 | 0.11040055 | 0.35189497 | 0.11580116 | 0.001348576 |
| **70.00** | 0.2575382 | 0.07646566 | 0.26732174 | 0.08084722 | 4.4825108E-4 |
| **80.00** | 0.18959236 | 0.052961666 | 0.19790491 | 0.056443926 | 1.4899348E-4 |
| **90.00** | 0.12805486 | 0.036682326 | 0.13590974 | 0.03940664 | 4.952371E-5 |
| **100.00** | 0.08815004 | 0.025406923 | 0.093706846 | 0.02751196 | 1.6461108E-5 |
| **110.00** | 0.05870448 | 0.01759735 | 0.06239842 | 0.019207625 | 5.4714824E-6 |
| **120.00** | 0.038094617 | 0.012188281 | 0.0409911 | 0.013409909 | 1.8186574E-6 |
| **130.00** | 0.025726967 | 0.008441851 | 0.027536998 | 0.009362201 | 6.045007E-7 |
| **140.00** | 0.01647558 | 0.0058469973 | 0.017538596 | 0.0065362724 | 2.0092905E-7 |
| **150.00** | 0.011338396 | 0.0040497486 | 0.012042042 | 0.0045633344 | 6.678649E-8 |
| **160.00** | 0.004339538 | 0.0028049382 | 0.004866065 | 0.003185917 | 2.2199057E-8 |
| **170.00** | 0.0030804235 | 0.001942757 | 0.0033625031 | 0.0022242654 | 7.37871E-9 |
| **180.00** | 0.0023241588 | 0.001345593 | 0.0020799907 | 0.0015528831 | 2.452598E-9 |
| **190.00** | 0.0020091725 | 9.31985E-4 | 0.002029526 | 0.0010841538 | 8.152152E-10 |
| **200.00** | 0.001061098 | 6.455117E-4 | 7.4307865E-4 | 7.569079E-4 | 2.709681E-10 |
| **210.00** | 7.063441E-4 | 4.470945E-4 | 7.1359554E-4 | 5.284394E-4 | 9.006666E-11 |
| **220.00** | 0.0 | 3.096667E-4 | 1.377856E-5 | 3.6893287E-4 | 2.993712E-11 |
| **230.00** | 0.0 | 2.1448145E-4 | 0.0 | 2.575725E-4 | 9.950752E-12 |

### Moment Release Variability Plots
*[(top)](#bruce-2631)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2631)*

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
*[(top)](#bruce-2631)*

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
  sigma0_1 = 120
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
