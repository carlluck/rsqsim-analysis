# Bruce 2336
## Metadata
| **Catalog** | Bruce 2336 |
|-----|-----|
| **Author** | Bruce Shaw, 2017/10/20 |
| **Description** | Larger slip velocity (1.5 m/s), backslipFromStress loading |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.5 m/s |
| **Average Element Area** | 1.35 km^2 |
| **Length** | 387,999 events in 63,498 years |
| **Frictional Params** | a=0.001, b=0.008, (b-a)=0.007, ddotEQ=1.5 |

* [Metadata](#metadata)
* [BBP Calculations, LA Basin 863 (m/s) Velocity Model](#bbp-calculations-la-basin-863-ms-velocity-model)
  * [Single Event Comparisons, LA Basin 863 (m/s)](#single-event-comparisons-la-basin-863-ms)
  * [Full Catalog GMPE Comparisons, LA Basin 863 (m/s)](#full-catalog-gmpe-comparisons-la-basin-863-ms)
  * [Full Catalog GMPE Comparisons with BBP Rupture Generator, LA Basin 863 (m/s)](#full-catalog-gmpe-comparisons-with-bbp-rupture-generator-la-basin-863-ms)
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
*[(top)](#bruce-2336)*


### Single Event Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-2336)*

* [Event 131670, M7.67](bbp_LA_BASIN_863/event_131670/)

### Full Catalog GMPE Comparisons, LA Basin 863 (m/s)
*[(top)](#bruce-2336)*

* [BSSA2014](bbp_LA_BASIN_863/gmpe_bbp_comparisons_BSSA2014/)
* [NGAWest_2014_NoIdr](bbp_LA_BASIN_863/gmpe_bbp_comparisons_NGAWest_2014_NoIdr/)

### Full Catalog GMPE Comparisons with BBP Rupture Generator, LA Basin 863 (m/s)
*[(top)](#bruce-2336)*

* [BSSA2014](bbp_LA_BASIN_863/gmpe_bbp_rg_comparisons_BSSA2014/)
* [NGAWest_2014_NoIdr](bbp_LA_BASIN_863/gmpe_bbp_rg_comparisons_NGAWest_2014_NoIdr/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#bruce-2336)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#bruce-2336)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MA Scatter](resources/mag_area.png) | ![MA Hist](resources/mag_area_hist2D.png) |
### Slip-Area Plots
*[(top)](#bruce-2336)*

| Scatter | 2-D Hist |
|-----|-----|
| ![Slip Area Scatter](resources/slip_area.png) | ![Slip Area Hist](resources/slip_area_hist2D.png) |
### Slip-Length Plots
*[(top)](#bruce-2336)*

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
*[(top)](#bruce-2336)*

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
*[(top)](#bruce-2336)*

Slip rates are calculated at mid-seismogenic depth: no deeper than 8 km, no shallower than 4 km, and no less than 2 km down- or up-dip from the top or bottom of the fault. UCERF3 comparisons are included with the original target slip rate for the fault and deformation model used as input to the simulator when constructing the geometry, but this target is often smoothed and/or modified before use in the simlators. Post-UCERF3 inversion slip rates (which will not perfectly match the target) are also included and labeled as 'UCERF3 Solution'.

| <p align="center">**Simulation Slip Rate**</p> | <p align="center">**Simulation vs Target Ratio**</p> | <p align="center">**UCERF3 Target Slip Rate**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_sim_map.png) | ![Slip Rate Plot](resources/slip_rate_sim_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_target_map.png) |
| <p align="center">**Simulation vs UCERF3 Target Ratio**</p> | <p align="center">**UCERF3 Solution Slip Rate**</p> | <p align="center">**UCERF3 Solution vs Target Ratio**</p> |
| ![Slip Rate Plot](resources/slip_rate_sim_u3_ratio_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_sol_map.png) | ![Slip Rate Plot](resources/slip_rate_u3_ratio_map.png) |
#### Slip Rate Fault Plots
*[(top)](#bruce-2336)*

| <p align="center">**Calaveras**</p> | <p align="center">**Elsinore**</p> | <p align="center">**Garlock**</p> |
|-----|-----|-----|
| ![Slip Rate Plot](resources/slip_rate_fault_Calaveras.png) | ![Slip Rate Plot](resources/slip_rate_fault_Elsinore.png) | ![Slip Rate Plot](resources/slip_rate_fault_Garlock.png) |
| <p align="center">**Green Valley**</p> | <p align="center">**Hayward-Rodgers Creek**</p> | <p align="center">**San Andreas**</p> |
| ![Slip Rate Plot](resources/slip_rate_fault_Green_Valley.png) | ![Slip Rate Plot](resources/slip_rate_fault_Hayward_Rodgers_Creek.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Andreas.png) |
| <p align="center">**San Jacinto (CC to SM)**</p> | <p align="center">**San Jacinto (SB to C)**</p> |  |
| ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_CC_to_SM_.png) | ![Slip Rate Plot](resources/slip_rate_fault_San_Jacinto_SB_to_C_.png) |  |
### Rupture Velocity Plots
*[(top)](#bruce-2336)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Global Interevent-Time Distributions
*[(top)](#bruce-2336)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Normalized Fault Interevent-Time Distributions
*[(top)](#bruce-2336)*

These plots show interevent-time distributions for a point on a fault (either an element,  or aggregated at the subsection or parent section level).

|  | **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|-----|
| **Elements** | ![Norm RIs](resources/norm_ri_elem_m6.png) | ![Norm RIs](resources/norm_ri_elem_m6.5.png) | ![Norm RIs](resources/norm_ri_elem_m7.png) | ![Norm RIs](resources/norm_ri_elem_m7.5.png) |
| **Subsections** | ![Norm RIs](resources/norm_ri_subsect_m6.png) | ![Norm RIs](resources/norm_ri_subsect_m6.5.png) | ![Norm RIs](resources/norm_ri_subsect_m7.png) | ![Norm RIs](resources/norm_ri_subsect_m7.5.png) |
| **Sections** | ![Norm RIs](resources/norm_ri_parent_m6.png) | ![Norm RIs](resources/norm_ri_parent_m6.5.png) | ![Norm RIs](resources/norm_ri_parent_m7.png) | ![Norm RIs](resources/norm_ri_parent_m7.5.png) |
### Normalized Rupture Interevent-Time Distributions
*[(top)](#bruce-2336)*

These plots show interevent-time distributions, averaged over a rupture, similar to the UCERF3 BPT calculation. For each rupture, we compute the average normalized open interval across all subsections which participate.

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Norm RIs](resources/u3_norm_ri_m6.png) | ![Norm RIs](resources/u3_norm_ri_m6.5.png) | ![Norm RIs](resources/u3_norm_ri_m7.png) | ![Norm RIs](resources/u3_norm_ri_m7.5.png) |
### Stationarity Plot
*[(top)](#bruce-2336)*

![Stationarity](resources/stationarity.png)
### Element/Subsection Interevent Time Comparisons

#### Element Interevent Time Comparisons
*[(top)](#bruce-2336)*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Element Scatter](resources/interevent_elements_m6_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6_hist2D.png) |
| **M≥6.5** | ![Element Scatter](resources/interevent_elements_m6.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m6.5_hist2D.png) |
| **M≥7.0** | ![Element Scatter](resources/interevent_elements_m7_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7_hist2D.png) |
| **M≥7.5** | ![Element Scatter](resources/interevent_elements_m7.5_scatter.png) | ![Element 2-D Hist](resources/interevent_elements_m7.5_hist2D.png) |

#### Subsection Interevent Time Comparisons
*[(top)](#bruce-2336)*

*Subsections participate in a rupture if at least 20.0 % of its area ruptures*

| Min Mag | Scatter | 2-D Hist |
|-----|-----|-----|
| **M≥6.0** | ![Subsection Scatter](resources/interevent_sub_sects_m6_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6_hist2D.png) |
| **M≥6.5** | ![Subsection Scatter](resources/interevent_sub_sects_m6.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m6.5_hist2D.png) |
| **M≥7.0** | ![Subsection Scatter](resources/interevent_sub_sects_m7_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7_hist2D.png) |
| **M≥7.5** | ![Subsection Scatter](resources/interevent_sub_sects_m7.5_scatter.png) | ![Subsection 2-D Hist](resources/interevent_sub_sects_m7.5_hist2D.png) |

### Paleo Recurrence Plots
*[(top)](#bruce-2336)*

| ![Paleo Plot](resources/paleo_recurrence_raw_sect_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_sect_rate.png) |
|-----|-----|
| ![Paleo Plot](resources/paleo_recurrence_raw_elem_rate.png) | ![Paleo Plot](resources/paleo_recurrence_paleo_elem_rate.png) |

| Paleoseismic Site Name | UCERF3 Rate | UCERF3 95% Conf | UCERF3 68% Conf | Sim Subsection Rate | Sim Paleo-Detectable Subsection Rate | Sim Element Rate | Sim Paleo-Detectable Element Rate |
|-----|-----|-----|-----|-----|-----|-----|-----|
| Calaveras fault - North | 0.001618 | [8.41E-4 0.0031128] | [0.0011644 0.0022419] | 9.822816E-4 | 5.478462E-4 | 6.893205E-4 | 5.7575735E-4 |
| Compton | 3.762E-4 | [1.647E-4 8.592E-4] | [2.464E-4 5.721E-4] | 1.20631084E-4 | 1.0289826E-4 | 0.0 | 0.0 |
| Elsinore - Glen Ivy | 0.0055828 | [0.0038119 0.0081764] | [0.0046288 0.00677] | 0.00143034 | 0.0010925368 | 8.961166E-4 | 8.7271084E-4 |
| Elsinore Fault - Julian | 3.076E-4 | [7.8E-6 0.0011347] | [5.35E-5 5.62E-4] | 5.6868943E-4 | 5.3270033E-4 | 5.342234E-4 | 5.227939E-4 |
| Elsinore - Temecula | 9.812E-4 | [1.06E-5 0.090633] | [5.225E-4 0.0018758] | 0.0011546118 | 9.705912E-4 | 8.616506E-4 | 8.3861913E-4 |
| Elsinore - Whittier | 3.128E-4 | [7.9E-6 0.0011538] | [5.45E-5 5.725E-4] | 6.5485446E-4 | 5.1971665E-4 | 3.4466025E-4 | 3.3812597E-4 |
| Frazier Mountian, SSAF | 0.0067307 | [0.0037115 0.0122057] | [0.0049697 0.0090886] | 0.0047907773 | 0.0045764567 | 0.0046356805 | 0.004550456 |
| Garlock Central (all events) | 6.969E-4 | [3.037E-4 0.0015988] | [4.591E-4 0.0010631] | 0.0011029128 | 0.0010723996 | 0.0011029128 | 0.001091337 |
| Garlock - Western (all events) | 8.129E-4 | [3.459E-4 0.00191] | [5.294E-4 0.0012535] | 7.2378654E-4 | 6.886082E-4 | 7.065535E-4 | 6.993185E-4 |
| Green Valley - Mason Road | 0.0034094 | [0.0018448 0.0063008] | [0.0025038 0.004657] | 0.0 | 0.0 | 0.0 | 0.0 |
| Hayward fault - North | 0.0031413 | [0.0020308 0.0048591] | [0.0025239 0.0039174] | 0.0019300974 | 0.0016723055 | 0.0016543692 | 0.0016240987 |
| Hayward fault - South | 0.0059677 | [0.0046073 0.0077298] | [0.0052416 0.0068047] | 0.0022230586 | 0.0014701402 | 0.0012580099 | 0.0011981761 |
| N. San Andreas - Alder Creek | 0.0011499 | [2.91E-5 0.0042417] | [2.006E-4 0.0021088] | 0.0034983014 | 0.003464136 | 0.0034983014 | 0.00346314 |
| N. San Andreas - Santa Cruz Seg. | 0.0091041 | [0.0054923 0.0150912] | [0.0070415 0.0117617] | 0.0045322822 | 0.0034910275 | 0.00303301 | 0.0029244327 |
| N. San Andreas -  Fort Ross | 0.003265 | [0.0023217 0.0045915] | [0.0027356 0.0038814] | 0.0034983014 | 0.0034573209 | 0.0034983014 | 0.0034633183 |
| N. San Andreas - North Coast | 0.0037898 | [0.0024481 0.0058668] | [0.0030343 0.0047303] | 0.0034983014 | 0.003422581 | 0.0034983014 | 0.003456833 |
| N. San Andreas -Offshore Noyo | 0.0053293 | [0.004035 0.0070387] | [0.0046304 0.0061415] | 0.0035155346 | 0.003468003 | 0.0 | 0.0 |
| Puente Hills | 2.852E-4 | [1.909E-4 4.262E-4] | [2.319E-4 3.518E-4] | 1.20631084E-4 | 8.78236E-5 | 0.0 | 0.0 |
| San Gregorio - North | 9.813E-4 | [2.48E-5 0.0036199] | [1.717E-4 0.0018047] | 0.0014992721 | 0.0014202349 | 0.0014992721 | 0.0014806322 |
| Rodgers Creek | 0.003074 | [0.001274 0.0074173] | [0.0019892 0.004789] | 0.0018611653 | 0.0013622356 | 0.0013269419 | 0.0012528624 |
| San Jacinto - Hog Lake | 0.0032074 | [0.0018202 0.0056519] | [0.0024066 0.0042752] | 0.0020334953 | 0.00198803 | 0.0020162624 | 0.0019956199 |
| San Jacinto - Superstition | 0.0019675 | [5.929E-4 0.0065288] | [0.0010666 0.0036454] | 0.0017922332 | 0.0011639894 | 7.2378654E-4 | 6.6697557E-4 |
| S. SAF- Carrizo Bidart | 0.0087179 | [0.0048746 0.0155916] | [0.0064913 0.0117016] | 0.004446117 | 0.0042670234 | 0.004377185 | 0.004327218 |
| S. San Andreas - Burro Flats                          | 0.0048677 | [0.002824 0.0083903] | [0.0036799 0.0064073] | 0.0024126216 | 0.0015518906 | 0.0015509711 | 0.0013078251 |
| S. San Andreas - Coachella | 0.0056037 | [0.0031142 0.0100834] | [0.0041571 0.0075507] | 0.005738593 | 0.0042963815 | 0.003119175 | 0.0030712113 |
| S. San Andreas - Indio   | 0.0036053 | [0.0022287 0.0058323] | [0.002805 0.0046111] | 0.005738593 | 0.0042963815 | 0.0031364083 | 0.0030759736 |
| S. San Andreas - Pallett Creek | 0.006698 | [0.0044376 0.0101097] | [0.005447 0.0082553] | 0.0044116513 | 0.004350338 | 0.0044116513 | 0.004367237 |
| S. San Andreas - Pitman Canyon       | 0.0057643 | [0.003515 0.0094529] | [0.0044747 0.0074149] | 0.004480583 | 0.0029511452 | 0.0040669907 | 0.0039143106 |
| S. San Andreas - Plunge Creek    | 0.0048695 | [0.0028965 0.0081864] | [0.0036725 0.0062762] | 4.9975736E-4 | 3.08613E-4 | 4.308253E-4 | 3.4928037E-4 |
| S. SAF M. Creek - 1000 Palms | 0.0038266 | [0.0024425 0.0059951] | [0.0030666 0.0047993] | 0.002740049 | 0.0017010983 | 0.001464806 | 0.0012829665 |
| S. San Andreas - Wrightwood         | 0.0094304 | [0.0067778 0.0131212] | [0.0079741 0.0111519] | 0.0044116513 | 0.004328246 | 0.0044116513 | 0.004366586 |

### Paleo Open Interval Plots
*[(top)](#bruce-2336)*

#### Paleo Open Interval Plots, Biasi and Sharer 2019
*[(top)](#bruce-2336)*

These plots use the 5 paleoseismic sites identified in Biasi & Scharer (2019) on the Hayward, N. SAF, S. SAF, and SJC faults. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternatively apply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **HOG** | 191.00 | 0.005235602 | 493.50 | 0.0020263619 | 117 | 497.92 | 0.002008369 | 115.95 |
| **FRA** | 119.00 | 0.008403362 | 213.60 | 0.0046816203 | 271 | 217.54 | 0.004596817 | 266.1 |
| **COA** | 181.00 | 0.005524862 | 322.06 | 0.003104997 | 180 | 326.83 | 0.0030597267 | 177.37 |
| **SCZ** | 106.00 | 0.009433962 | 330.31 | 0.00302746 | 176 | 342.26 | 0.002921759 | 169.83 |
| **TYS** | 329.00 | 0.0030395137 | 823.66 | 0.0012140963 | 71 | 858.69 | 0.0011645627 | 68.08 |
| **TOTAL** | 31.61 | 0.0316373 | 71.01 | 0.014082015 | 815 | 72.58 | 0.013777884 | 797.36 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_biasi_count.png) | ![Prob](resources/paleo_open_biasi_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9943363 | 0.86864555 | 0.99459136 | 0.87129134 | 0.72878754 |
| **20.00** | 0.97729945 | 0.75454503 | 0.97857803 | 0.75914866 | 0.53113127 |
| **30.00** | 0.94362134 | 0.65543216 | 0.9467195 | 0.66143966 | 0.3870819 |
| **40.00** | 0.90441334 | 0.56933826 | 0.9081033 | 0.57630664 | 0.28210047 |
| **50.00** | 0.84666735 | 0.49455312 | 0.85276455 | 0.50213104 | 0.2055913 |
| **60.00** | 0.7808239 | 0.42959136 | 0.7883726 | 0.4375024 | 0.14983238 |
| **70.00** | 0.71821874 | 0.3731626 | 0.7267975 | 0.3811921 | 0.10919597 |
| **80.00** | 0.6705018 | 0.32414603 | 0.6805115 | 0.33212936 | 0.079580665 |
| **90.00** | 0.61873776 | 0.281568 | 0.6287609 | 0.28938144 | 0.057997398 |
| **100.00** | 0.56656384 | 0.24458279 | 0.5752554 | 0.25213557 | 0.04226778 |
| **110.00** | 0.5161886 | 0.21245575 | 0.5283974 | 0.21968354 | 0.030804234 |
| **120.00** | 0.4299779 | 0.18454874 | 0.44226745 | 0.19140837 | 0.022449743 |
| **130.00** | 0.38107082 | 0.16030744 | 0.3940895 | 0.16677245 | 0.016361093 |
| **140.00** | 0.34323236 | 0.13925034 | 0.35597944 | 0.1453074 | 0.011923761 |
| **150.00** | 0.29275933 | 0.12095918 | 0.30277982 | 0.1266051 | 0.008689889 |
| **160.00** | 0.23548804 | 0.10507065 | 0.24571607 | 0.11030992 | 0.0063330824 |
| **170.00** | 0.19864978 | 0.09126915 | 0.20665172 | 0.09611208 | 0.0046154717 |
| **180.00** | 0.1583347 | 0.07928054 | 0.1662782 | 0.08374163 | 0.0033636983 |
| **190.00** | 0.1321103 | 0.068866685 | 0.1377396 | 0.07296336 | 0.0024514215 |
| **200.00** | 0.08162367 | 0.05982074 | 0.088567525 | 0.06357234 | 0.0017865654 |
| **210.00** | 0.05398413 | 0.05196302 | 0.05749112 | 0.05539003 | 0.0013020267 |
| **220.00** | 0.030544018 | 0.045137443 | 0.03342702 | 0.048260856 | 9.489008E-4 |
| **230.00** | 0.022168621 | 0.03920844 | 0.024396954 | 0.042049266 | 6.915471E-4 |
| **240.00** | 0.0070326147 | 0.034058236 | 0.006512383 | 0.036637165 | 5.039909E-4 |
| **250.00** | 0.0 | 0.029584534 | 0.0012701121 | 0.031921644 | 3.673023E-4 |
| **260.00** | 0.0 | 0.025698474 | 9.3287573E-4 | 0.027813053 | 2.6768536E-4 |
| **270.00** | 0.0 | 0.022322863 | 5.719194E-4 | 0.024233272 | 1.9508575E-4 |
| **280.00** | 0.0 | 0.019390656 | 2.9280176E-4 | 0.021114241 | 1.4217607E-4 |
| **290.00** | 0.0 | 0.016843606 | 1.8964315E-4 | 0.018396657 | 1.0361615E-4 |
| **300.00** | 0.0 | 0.014631123 | 1.4095452E-4 | 0.016028848 | 7.551416E-5 |
| **310.00** | 0.0 | 0.01270926 | 8.334526E-5 | 0.013965797 | 5.503378E-5 |
| **320.00** | 0.0 | 0.011039842 | 0.0 | 0.012168278 | 4.0107934E-5 |

#### Paleo Open Interval Plots, UCERF3
*[(top)](#bruce-2336)*

These plots use the full set of UCERF3 paleoseismic sites. By default, a rupture is counted at a paleo site if the nearest element (at the surface) slips any amount. We also alternativeslyapply a probability of detection model. Those results are marked as 'Prob. Filtered'.

**Paleoseismic sites table:**

| **Site Name** | Data MRI (yr) | Data Annual Rate | Catalog MRI (yr) | Catalog Annual Rate | Catalog Occurences | Prob Filtered Catalog MRI (yr) | Prob Filtered Catalog Annual Rate | Prob Filtered Catalog Occurences |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **SSanAndreasBurroFlats** | 205.44 | 0.0048677 | 633.82 | 0.0015777417 | 92 | 683.35 | 0.0014633707 | 85.36 |
| **SSanAndreasIndio** | 277.37 | 0.0036053 | 318.50 | 0.0031396898 | 182 | 324.93 | 0.0030776109 | 178.4 |
| **SSAFMCreek1000Palms** | 261.33 | 0.0038266 | 2613.47 | 3.8263298E-4 | 22 | 3133.59 | 3.1912266E-4 | 18.26 |
| **NSanAndreasFortRoss** | 306.28 | 0.003265 | 284.69 | 0.003512639 | 203 | 287.86 | 0.003473869 | 200.75 |
| **NSanAndreasNorthCoast** | 263.87 | 0.0037898 | 284.69 | 0.003512639 | 203 | 287.87 | 0.0034738032 | 200.71 |
| **CalaverasfaultNorth** | 618.05 | 0.001618 | 1466.04 | 6.8210834E-4 | 40 | 1759.17 | 5.684492E-4 | 33.32 |
| **ElsinoreTemecula** | 1019.16 | 9.812E-4 | 1124.11 | 8.895943E-4 | 51 | 1155.56 | 8.653844E-4 | 49.58 |
| **ElsinoreWhittier** | 3196.93 | 3.128E-4 | 2878.94 | 3.4735032E-4 | 20 | 2922.59 | 3.4216247E-4 | 19.68 |
| **SSAFCarrizoBidart** | 114.71 | 0.0087179 | 227.63 | 0.0043930886 | 255 | 230.49 | 0.004338641 | 251.83 |
| **SanJacintoHogLake** | 311.78 | 0.0032074 | 493.50 | 0.0020263619 | 117 | 498.87 | 0.0020045163 | 115.71 |
| **PuenteHills** | 3506.31 | 2.852E-4 | 58028.16 | 0.0 | 0 | ∞ | 0.0 | 0 |
| **SanGregorioNorth** | 1019.06 | 9.813E-4 | 670.00 | 0.0014925482 | 87 | 678.12 | 0.0014746758 | 85.95 |
| **SanJacintoSuperstition** | 508.26 | 0.0019675 | 2026.56 | 4.9344636E-4 | 28 | 2134.09 | 4.6858442E-4 | 26.59 |
| **SSanAndreasWrightwood** | 106.04 | 0.0094304 | 226.17 | 0.0044215303 | 256 | 228.40 | 0.004378333 | 253.5 |
| **SSanAndreasPitmanCanyon** | 173.48 | 0.0057643 | 234.44 | 0.0042654765 | 247 | 245.40 | 0.0040749516 | 235.75 |
| **SSanAndreasPlungeCreek** | 205.36 | 0.0048695 | 2283.71 | 4.378849E-4 | 25 | 2840.55 | 3.520442E-4 | 19.96 |
| **FrazierMountianSSAF** | 148.57 | 0.0067307 | 213.60 | 0.0046816203 | 271 | 217.52 | 0.0045973747 | 266.12 |
| **NSanAndreasSantaCruzSeg** | 109.84 | 0.0091041 | 330.31 | 0.00302746 | 176 | 343.78 | 0.002908854 | 169.11 |
| **RodgersCreek** | 325.31 | 0.003074 | 759.10 | 0.0013173578 | 77 | 803.41 | 0.0012446936 | 72.75 |
| **GreenValleyMasonRoad** | 293.31 | 0.0034094 | 58028.16 | 0.0 | 0 | ∞ | 0.0 | 0 |
| **HaywardfaultNorth** | 318.34 | 0.0031413 | 605.09 | 0.001652644 | 96 | 616.29 | 0.0016226015 | 94.25 |
| **HaywardfaultSouth** | 167.57 | 0.0059677 | 823.66 | 0.0012140963 | 71 | 859.17 | 0.0011639197 | 68.02 |
| **Compton** | 2658.16 | 3.762E-4 | 58028.16 | 0.0 | 0 | ∞ | 0.0 | 0 |
| **SSanAndreasCoachella** | 178.45 | 0.0056037 | 322.06 | 0.003104997 | 180 | 326.88 | 0.0030592165 | 177.34 |
| **ElsinoreGlenIvy** | 179.12 | 0.0055828 | 1102.07 | 9.0738625E-4 | 52 | 1129.31 | 8.8549696E-4 | 50.76 |
| **GarlockCentralallevents** | 1434.93 | 6.969E-4 | 918.44 | 0.0010887994 | 64 | 927.71 | 0.0010779233 | 63.36 |
| **NSanAndreasAlderCreek** | 869.64 | 0.0011499 | 284.69 | 0.003512639 | 203 | 287.79 | 0.0034747587 | 200.79 |
| **SSanAndreasPallettCreek** | 149.30 | 0.006698 | 226.17 | 0.0044215303 | 256 | 228.76 | 0.0043713613 | 253.06 |
| **GarlockWesternallevents** | 1230.16 | 8.129E-4 | 1403.23 | 7.1264076E-4 | 41 | 1420.27 | 7.0409366E-4 | 40.49 |
| **ElsinoreFaultJulian** | 3250.98 | 3.076E-4 | 1855.68 | 5.388852E-4 | 31 | 1900.17 | 5.262679E-4 | 30.27 |
| **TOTAL** | 9.08 | 0.1101451 | 32.02 | 0.0312309 | 1812 | 32.76 | 0.030527463 | 1771.18 |

**Paleoseismic Plots:**

| ![Count](resources/paleo_open_ucerf3_count.png) | ![Prob](resources/paleo_open_ucerf3_prob.png) |
|-----|-----|

**Open interval probabilities table:**

| **Open Interval (yr)** | Catalog Probability | Catalog Poisson Probability | Prob. Filtered Catalog Probability | Prob. Filtered Catalog Poisson Probability | Data Poisson Probability |
|-----|-----|-----|-----|-----|-----|
| **10.00** | 0.9674174 | 0.7317554 | 0.9686263 | 0.73692095 | 0.33238843 |
| **20.00** | 0.8809151 | 0.53546596 | 0.8854257 | 0.5430525 | 0.110482074 |
| **30.00** | 0.76782393 | 0.3918301 | 0.77609485 | 0.40018678 | 0.036722966 |
| **40.00** | 0.6492732 | 0.28672376 | 0.66063243 | 0.29490602 | 0.012206289 |
| **50.00** | 0.52004004 | 0.20981166 | 0.5337064 | 0.21732242 | 0.004057229 |
| **60.00** | 0.4080577 | 0.1535308 | 0.42105603 | 0.16014946 | 0.001348576 |
| **70.00** | 0.29607958 | 0.112347 | 0.30825666 | 0.11801749 | 4.4825108E-4 |
| **80.00** | 0.23187461 | 0.08221052 | 0.24127993 | 0.08696956 | 1.4899348E-4 |
| **90.00** | 0.16454314 | 0.06015799 | 0.17283934 | 0.06408969 | 4.952371E-5 |
| **100.00** | 0.11414094 | 0.044020932 | 0.122500554 | 0.047229037 | 1.6461108E-5 |
| **110.00** | 0.08003317 | 0.032212555 | 0.08610203 | 0.03480407 | 5.4714824E-6 |
| **120.00** | 0.061901506 | 0.02357171 | 0.06477311 | 0.025647847 | 1.8186574E-6 |
| **130.00** | 0.048879966 | 0.017248726 | 0.051315963 | 0.018900435 | 6.045007E-7 |
| **140.00** | 0.03308814 | 0.012621848 | 0.03441612 | 0.0139281275 | 2.0092905E-7 |
| **150.00** | 0.023237385 | 0.009236105 | 0.024040611 | 0.010263929 | 6.678649E-8 |
| **160.00** | 0.01258366 | 0.0067585693 | 0.013221065 | 0.007563704 | 2.2199057E-8 |
| **170.00** | 0.011233443 | 0.0049456195 | 0.010241214 | 0.0055738525 | 7.37871E-9 |
| **180.00** | 0.0098875305 | 0.0036189838 | 0.010002841 | 0.004107489 | 2.452598E-9 |
| **190.00** | 0.0060451594 | 0.0026482109 | 0.005549222 | 0.0030268945 | 8.152152E-10 |
| **200.00** | 0.0039107683 | 0.0019378425 | 0.003550446 | 0.0022305818 | 2.709681E-10 |
| **210.00** | 0.0 | 0.0014180266 | 1.0819265E-4 | 0.0016437626 | 9.006666E-11 |
| **220.00** | 0.0 | 0.0010376486 | 0.0 | 0.0012113231 | 2.993712E-11 |

### Moment Release Variability Plots
*[(top)](#bruce-2336)*

We first create a tapered moment release time series for the entire catalog. Each event's moment is distributed across a 25 year Hanning (cosine) taper. Here is a plot of a random 2,000 year section of this time series:

![Time Series](resources/moment_variability_time_series.png)

We then compute Welch's power spectral density estimate on the entire time series. Results are plotted below, with a Poisson randomization of the catalog also plotted in a gray line, and the 95% confidence bounds from 200 realizations as a light gray shaded area. Significant deviations outside the Poisson confidence intervals indicate synchronous behaviour.

![Welch PSD](resources/moment_variability_welch.png)

### Trigger Hypocenter Statistics Within Previous Rupture Area
*[(top)](#bruce-2336)*

Example rupture plots:

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![example](resources/trigger_within_prev_m6_example_re_rup.png) | ![example](resources/trigger_within_prev_m6.5_example_re_rup.png) |  |
| ![example](resources/trigger_within_prev_m6_example_new_hypo.png) | ![example](resources/trigger_within_prev_m6.5_example_new_hypo.png) |  |

| M≥6 | M≥6.5 | M≥7 |
|-----|-----|-----|
| ![hypocenter plot](resources/trigger_within_prev_m6_1yr.png) | ![hypocenter plot](resources/trigger_within_prev_m6.5_1yr.png) | ![hypocenter plot](resources/trigger_within_prev_m7_1yr.png) |
| ![hypocenter plot](resources/trigger_within_prev_m6_10yr.png) | ![hypocenter plot](resources/trigger_within_prev_m6.5_10yr.png) | ![hypocenter plot](resources/trigger_within_prev_m7_10yr.png) |
| ![hypocenter plot](resources/trigger_within_prev_m6_100yr.png) | ![hypocenter plot](resources/trigger_within_prev_m6.5_100yr.png) | ![hypocenter plot](resources/trigger_within_prev_m7_100yr.png) |

## Input File
*[(top)](#bruce-2336)*

```
  A_1 = 0.001
  fA = .1
  B_1 = 0.008
  muSlipAmp_1 = 0
  muSlipInvDist_1 = 00
  cohesion = 0.0
  Dc_1 = 1.0000000000000000818e-05
  mu0_1 = 0.6
  ddotStar_1 = 9.9999999999999995475e-07
  ddotAB_1 = 9.9999999999999995475e-07
  alpha_1 = 0.0
  theta0_1 = 200000000
  tau0_1 = 55
  sigma0_1 = 100
  sigmaFracPin = .5
  lowSigmaAction = 1
  maxThetaPin = 1.0e13
  ddotEQ_1 = 1.5
  ddotEQFname = 
  stressOvershootFactor = 0.10000000000000000555
  lameLambda = 30000
  lameMu = 30000
  slowSlip_1 = 0
  nEq = 100000000
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
  neighborFname = 
  stressRateFname =  
  slowSlipFname = 
  writePatchFname = 
  DEBUG = 0
  ZBrentUpperBracket = 0
```
