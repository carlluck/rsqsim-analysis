# Bruce 2616
## Metadata
| **Catalog** | Bruce 2616 |
|-----|-----|
| **Author** | Bruce Shaw, 2018/03/19 |
| **Description** | similar to r2585, but bigger seismogenic depth: H=18 (2,13,3) |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 2,899,999 events in 271,128 years |
| **Frictional Params** | a=0.001, b=0.008, (b-a)=0.007, ddotEQ=1 |

* [Metadata](#metadata)
* [Hazard Comparisons](#hazard-comparisons)
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

## Hazard Comparisons
*[(top)](#bruce-2616)*

* [PGA](hazard_pga/)
* [0.2s SA](hazard_sa_0.2s/)
* [1.0s SA](hazard_sa_1.0s/)
* [10.0s SA](hazard_sa_10.0s/)
* [2.0s SA](hazard_sa_2.0s/)
* [5.0s SA](hazard_sa_5.0s/)

## BBP Calculations, LA Basin 863 (m/s) Velocity Model
*[(top)](#bruce-2616)*


### Full Catalog GMPE Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-2616)*

* [NGAWest_2014_NoIdr](bbp_LA_BASIN_863/gmpe_bbp_comparisons_NGAWest_2014_NoIdr/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2616)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2616)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2616)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2616)*

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
*[(top)](#bruce-2616)*

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
*[(top)](#bruce-2616)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2616)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2616)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2616)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2616)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2616)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2616)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2616)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2616)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2616)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 0.0015823239 | 8.6415437E-4 | 0.0010110335 | 8.8127854E-4 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 1.5785654E-4 | 1.487222E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.0017025956 | 0.0014007795 | 0.0012628523 | 0.001219878 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 6.051168E-4 | 5.891946E-4 | 6.051168E-4 | 5.986584E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0013229882 | 0.0011014588 | 0.0011012374 | 0.0010703342 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 7.8176573E-4 | 6.14416E-4 | 4.6981114E-4 | 4.5698512E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.006645009 | 0.005929123 | 0.006487152 | 0.006191233 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0012590939 | 0.0012117225 | 0.001213992 | 0.0011981161 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 0.0010035166 | 9.417419E-4 | 9.396223E-4 | 9.28262E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 9.922411E-4 | 5.8480055E-4 | 2.6309423E-4 | 2.4477518E-4 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0023077123 | 0.0019882238 | 0.0019581728 | 0.0019260705 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0032924365 | 0.0023231746 | 0.0014846032 | 0.0014059148 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0038975533 | 0.0038191718 | 0.0038486929 | 0.0038073035 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0051453714 | 0.0039927647 | 0.0033337798 | 0.0032319294 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0038562098 | 0.0037943632 | 0.003833659 | 0.003793794 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.003811108 | 0.00371554 | 0.0037998324 | 0.0037500188 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.00477704 | 0.0044312645 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 2.6685273E-4 | 2.1975234E-4 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0016650107 | 0.001586225 | 0.0016236673 | 0.0016054623 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0031345799 | 0.0022345698 | 0.0020408595 | 0.0019389684 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0022175086 | 0.0021880728 | 0.00221375 | 0.0021904856 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0016424598 | 0.0013178664 | 0.0011162712 | 0.0010350782 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.0059797564 | 0.0056023765 | 0.005446051 | 0.005376487 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.004017825 | 0.0019454793 | 0.0022889199 | 0.0018797735 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.0062202993 | 0.005146336 | 0.0039013117 | 0.003818548 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.0062202993 | 0.005146336 | 0.004047893 | 0.0039427923 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.004840934 | 0.004776887 | 0.004833417 | 0.0047848118 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.0051378547 | 0.0033995784 | 0.00470187 | 0.0045159436 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 0.0021047539 | 0.0010284868 | 8.8324497E-4 | 7.8957126E-4 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.0030218253 | 0.002355172 | 0.0016950786 | 0.001603641 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.0048446925 | 0.004755966 | 0.004833417 | 0.0047843084 |

### Paleo Open Interval Plots
*[(top)](#bruce-2616)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2616)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 452.57 | 0.0022096026 | 588 | 457.49 | 0.002185849 | 581.67 |
| **FRA** | 119.00 | 0.008403362 | 156.83 | 0.006376299 | 1696 | 163.01 | 0.006134701 | 1631.7 |
| **COA** | 181.00 | 0.005524862 | 249.58 | 0.00400679 | 1066 | 256.08 | 0.0039051017 | 1038.95 |
| **SCZ** | 106.00 | 0.009433962 | 300.12 | 0.003331954 | 887 | 309.40 | 0.0032320938 | 860.4 |
| **TYS** | 329.00 | 0.0030395137 | 700.31 | 0.001427932 | 379 | 732.52 | 0.0013651453 | 362.35 |
| **TOTAL** | 31.61 | 0.0316373 | 57.63 | 0.017352201 | 4616 | 59.45 | 0.016819764 | 4474.35 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.99003035 | 0.84069866 | 0.99070305 | 0.84518677 | 0.72878754 |
| **20.00** | 0.9580664 | 0.70677423 | 0.9606294 | 0.7143407 | 0.53113127 |
| **30.00** | 0.9116837 | 0.5941841 | 0.916584 | 0.6037513 | 0.3870819 |
| **40.00** | 0.8552797 | 0.49952978 | 0.862563 | 0.51028264 | 0.28210047 |
| **50.00** | 0.78939724 | 0.41995403 | 0.7994099 | 0.43128413 | 0.2055913 |
| **60.00** | 0.7247019 | 0.3530548 | 0.7366339 | 0.36451566 | 0.14983238 |
| **70.00** | 0.6527259 | 0.29681268 | 0.6666389 | 0.3080838 | 0.10919597 |
| **80.00** | 0.57889616 | 0.24953002 | 0.5945031 | 0.26038837 | 0.079580665 |
| **90.00** | 0.49881998 | 0.20977955 | 0.5155706 | 0.2200768 | 0.057997398 |
| **100.00** | 0.42529216 | 0.17636138 | 0.44343144 | 0.18600601 | 0.04226778 |
| **110.00** | 0.35296264 | 0.14826678 | 0.3722534 | 0.15720981 | 0.030804234 |
| **120.00** | 0.28586924 | 0.12464768 | 0.30450392 | 0.13287166 | 0.022449743 |
| **130.00** | 0.22696942 | 0.104791135 | 0.24546118 | 0.112301365 | 0.016361093 |
| **140.00** | 0.18057454 | 0.088097766 | 0.1984888 | 0.09491563 | 0.011923761 |
| **150.00** | 0.13503866 | 0.07406367 | 0.1504757 | 0.08022144 | 0.008689889 |
| **160.00** | 0.092255004 | 0.06226523 | 0.105946235 | 0.0678021 | 0.0063330824 |
| **170.00** | 0.06462642 | 0.052346293 | 0.07568175 | 0.057305437 | 0.0046154717 |
| **180.00** | 0.040655944 | 0.044007458 | 0.050071184 | 0.0484338 | 0.0033636983 |
| **190.00** | 0.023536056 | 0.03699701 | 0.03043304 | 0.040935606 | 0.0024514215 |
| **200.00** | 0.010675466 | 0.031103335 | 0.015190041 | 0.03459823 | 0.0017865654 |
| **210.00** | 0.002387157 | 0.026148533 | 0.0046442696 | 0.02924197 | 0.0013020267 |
| **220.00** | 0.0 | 0.021983037 | 0.001838933 | 0.024714926 | 9.489008E-4 |
| **230.00** | 0.0 | 0.01848111 | 9.221732E-4 | 0.020888729 | 6.915471E-4 |
| **240.00** | 0.0 | 0.015537043 | 6.934829E-4 | 0.017654877 | 5.039909E-4 |
| **250.00** | 0.0 | 0.013061971 | 5.200571E-4 | 0.014921669 | 3.673023E-4 |
| **260.00** | 0.0 | 0.010981182 | 3.8420426E-4 | 0.012611597 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.0092318645 | 3.2835573E-4 | 0.010659155 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.007761216 | 1.9074415E-4 | 0.009008978 | 1.4217607E-4 |
| **290.00** | 0.0 | 0.0065248436 | 1.2083643E-4 | 0.0076142685 | 1.0361615E-4 |
| **300.00** | 0.0 | 0.005485427 | 9.1923095E-5 | 0.006435479 | 7.551416E-5 |
| **310.00** | 0.0 | 0.0046115913 | 7.014016E-5 | 0.005439182 | 5.503378E-5 |
| **320.00** | 0.0 | 0.0038769585 | 6.4946944E-5 | 0.0045971246 | 4.0107934E-5 |
| **330.00** | 0.0 | 0.0032593538 | 0.0 | 0.003885429 | 2.9230163E-5 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2616)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 495.23 | 0.0020192526 | 537 | 563.63 | 0.0017742056 | 471.81 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 247.02 | 0.0040481747 | 1077 | 253.65 | 0.003942513 | 1048.85 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 1756.62 | 5.6927395E-4 | 150 | 2240.48 | 4.463332E-4 | 117.44 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 260.82 | 0.00383403 | 1020 | 263.71 | 0.0037920626 | 1008.8 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 263.15 | 0.003800167 | 1011 | 266.46 | 0.0037528719 | 998.43 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 991.80 | 0.0010082709 | 269 | 1135.39 | 8.807549E-4 | 234.72 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 925.55 | 0.001080436 | 287 | 943.44 | 0.0010599564 | 281.54 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 2136.17 | 4.681286E-4 | 125 | 2198.81 | 4.547921E-4 | 121.45 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 183.62 | 0.005446146 | 1450 | 185.99 | 0.0053766877 | 1431.52 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 452.57 | 0.0022096026 | 588 | 457.21 | 0.0021871654 | 582.03 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 9225.41 | 1.08396314E-4 | 29 | 9650.36 | 1.03623104E-4 | 27.59 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 615.22 | 0.0016254251 | 432 | 622.27 | 0.0016070261 | 427.11 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 1372.39 | 7.2865473E-4 | 194 | 1410.07 | 7.0918555E-4 | 188.83 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 206.87 | 0.0048339493 | 1286 | 208.90 | 0.004787001 | 1273.51 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 207.35 | 0.004822664 | 1283 | 216.05 | 0.0046285503 | 1231.35 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 1128.46 | 8.8616024E-4 | 235 | 1267.92 | 7.886946E-4 | 209.08 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 156.83 | 0.006376299 | 1696 | 163.02 | 0.0061343345 | 1631.55 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 300.12 | 0.003331954 | 887 | 309.56 | 0.0032304158 | 860 |
| **RodgersCreek** | 325.31 | 0.003074 | 489.99 | 0.0020408682 | 543 | 515.75 | 0.0019389351 | 515.87 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 3901.80 | 2.562921E-4 | 69 | 4159.39 | 2.4041996E-4 | 64.71 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 511.23 | 0.001956068 | 521 | 519.65 | 0.0019243596 | 512.56 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 700.31 | 0.001427932 | 379 | 731.04 | 0.0013679127 | 363.03 |
| **Compton** | 2658.16 | 3.762E-4 | 7827.62 | 1.277528E-4 | 34 | 8208.83 | 1.2182E-4 | 32.46 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 249.58 | 0.00400679 | 1066 | 256.16 | 0.0039037662 | 1038.58 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 785.70 | 0.0012727547 | 338 | 814.95 | 0.0012270747 | 325.85 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 823.46 | 0.0012143909 | 323 | 833.98 | 0.0011990727 | 318.92 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 260.06 | 0.0038453175 | 1023 | 262.73 | 0.0038061943 | 1012.58 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 206.87 | 0.0048339493 | 1286 | 209.06 | 0.004783391 | 1272.52 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1076.66 | 9.2880003E-4 | 248 | 1088.12 | 9.190203E-4 | 245.39 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1646.75 | 6.072563E-4 | 161 | 1661.71 | 6.017882E-4 | 159.55 |
| **TOTAL** | 9.08 | 0.1101451 | 24.26 | 0.041211944 | 10966 | 24.91 | 0.040138416 | 10680.37 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9426831 | 0.66224515 | 0.9452726 | 0.6693929 | 0.33238843 |
| **20.00** | 0.8111309 | 0.43856865 | 0.8178862 | 0.4480868 | 0.110482074 |
| **30.00** | 0.6577809 | 0.29043996 | 0.6684389 | 0.2999461 | 0.036722966 |
| **40.00** | 0.5084819 | 0.19234248 | 0.520608 | 0.20078178 | 0.012206289 |
| **50.00** | 0.37425268 | 0.12737787 | 0.38745984 | 0.13440189 | 0.004057229 |
| **60.00** | 0.27346432 | 0.084355384 | 0.28635818 | 0.08996766 | 0.001348576 |
| **70.00** | 0.18839827 | 0.055863943 | 0.19923927 | 0.06022371 | 4.4825108E-4 |
| **80.00** | 0.12540674 | 0.036995627 | 0.13536951 | 0.040313322 | 1.4899348E-4 |
| **90.00** | 0.08296218 | 0.024500174 | 0.090710655 | 0.02698545 | 4.952371E-5 |
| **100.00** | 0.045453325 | 0.016225122 | 0.051411938 | 0.018063867 | 1.6461108E-5 |
| **110.00** | 0.028923014 | 0.0107450085 | 0.032458033 | 0.012091824 | 5.4714824E-6 |
| **120.00** | 0.018558642 | 0.00711583 | 0.020785652 | 0.00809418 | 1.8186574E-6 |
| **130.00** | 0.010450677 | 0.0047124242 | 0.011784383 | 0.0054181865 | 6.045007E-7 |
| **140.00** | 0.0057456964 | 0.0031207802 | 0.006761626 | 0.0036268954 | 2.0092905E-7 |
| **150.00** | 0.0030584398 | 0.0020667217 | 0.0035440126 | 0.0024278178 | 6.678649E-8 |
| **160.00** | 0.001417228 | 0.0013686763 | 0.0017099081 | 0.0016251638 | 2.2199057E-8 |
| **170.00** | 0.0010978187 | 9.0639933E-4 | 8.0891803E-4 | 0.0010878731 | 7.37871E-9 |
| **180.00** | 8.3976047E-4 | 6.002586E-4 | 7.4725156E-4 | 7.2821445E-4 | 2.452598E-9 |
| **190.00** | 0.0 | 3.9751834E-4 | 0.0 | 4.8746157E-4 | 8.152152E-10 |

### Moment Release Variability Plots
*[(top)](#bruce-2616)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2616)*

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
*[(top)](#bruce-2616)*

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
