# Bruce 2740 BBP Part B Validation

[Catalog Details](../#bruce-2740)

## Table Of Contents
* [Background Information](#background-information)
* [RSQSim BBP Part B Methodology](#rsqsim-bbp-part-b-methodology)
* [Results Summary Table](#results-summary-table)
* [M6.6, Vertical Strike-Slip with Surface Rupture](#m66-vertical-strike-slip-with-surface-rupture)
  * [M6.6 SS RSQSim Rupture Match Criteria](#m66-ss-rsqsim-rupture-match-criteria)
  * [M6.6 SS 20 km Results](#m66-ss-20-km-results)
  * [M6.6 SS 50 km Results](#m66-ss-50-km-results)
* [M6.6, Reverse, Dip=45, Ztor=3](#m66-reverse-dip45-ztor3)
  * [M6.6 Reverse RSQSim Rupture Match Criteria](#m66-reverse-rsqsim-rupture-match-criteria)
  * [M6.6 Reverse 20 km Results](#m66-reverse-20-km-results)
  * [M6.6 Reverse 50 km Results](#m66-reverse-50-km-results)
## Background Information
*[(top)](#table-of-contents)*


This page reproduces the SCEC BroadBand Platform "Part B" validation exercise as defined in:

*Goulet, C. A., Abrahamson, N. A., Somerville, P. G., & Wooddell, K. E. (2014). The SCEC broadband platform validation exercise: Methodology for code validation in the context of seismic‐hazard analyses. Seismological Research Letters, 86(1), 17-26.* [(link)](https://pubs.geoscienceworld.org/ssa/srl/article/86/1/17/315438/the-scec-broadband-platform-validation-exercise)

The goal of this exercise was to validate BBP simulation methods (both rupture generation and ground motion simulation) against the NGA-West GMPEs (the original study used NGA-West1, we use NGA-West2) for scenario ruptures where the NGA relations are well constrained:

* M 5.5, 45°-dipping reverse, Ztor = 6 km
* M 6.2, vertical strike slip, Ztor = 4 km
* M 6.6, vertical strike slip with a surface rupture
* M 6.6, 45°-dipping reverse, Ztor = 3 km

50 rupture realizations were generated for each scenario, and 40 sites were distributed at random azimuths on the footwall side of the faults at rupture distances of 20 and 50 km. Resultant ground motions were compared against an evaluation criterion which "was established so as to be wide enough to limit a pass/fail grade for each scenario considered." This criterion only applies at periods up to 3s, becase data above this period "are fairly sparse and cannot provide a reliable constraint."

A method is said to pass the test if the median RotD50 value is within the evaluation criteria at every spectral period. "Departure from that range is a definite sign that the model is not consistent with our current dataset and is a sign of potential issues with the simulations."

## RSQSim BBP Part B Methodology
*[(top)](#table-of-contents)*

We reproduce the Part B experiment using RSQSim as the rupture generator, coupled with the Graves & Pitarka ground motion simulation method. While the original BBP Part B validation exercise was prescriptive (the magnitude and fault surface for each scenario was an input to the rupture generators), we can't prescribe RSQSim ruptures. Instead we search catalogs for ruptures which are very similar to the BBP Part B scenarios, and distribute sites around those ruptures. This algorithm can be a little tricky for non-rectangular dipping ruptures. The specific matching criteria for each scenario along with example plots of ruptures and sites can be found under each scenario.

*NOTE: We only currently only consider the larger M6.6 scenarios, and spectral periods 1s or larger*

## Results Summary Table

| Scenario | 20 km | 50 km |
|-----|-----|-----|
| M6.6 SS | **[FAIL](#m66-ss-20-km-results)** | **[FAIL](#m66-ss-50-km-results)** |
| M6.6 Reverse | **[PASS](#m66-reverse-20-km-results)** | **[PASS](#m66-reverse-50-km-results)** |

## M6.6, Vertical Strike-Slip with Surface Rupture
*[(top)](#table-of-contents)*

### M6.6 SS RSQSim Rupture Match Criteria
*[(top)](#table-of-contents)*

1693 events in the catalog match the following criteria:

* M=[6.55,6.65]
* Ztor=[0,1]
* Rake=[-180,-170] or [-10,10] or [170,180]
* Dip=90
* Linear rupture (max 0.5km deviation from ideal)

Example matches (20 km sites in Blue, 50 km sites in Geen):

| ![Event 87938](resources/m6p6_vert_ss_surface_match_0_event_87938.png) | ![Event 92056](resources/m6p6_vert_ss_surface_match_1_event_92056.png) | ![Event 93332](resources/m6p6_vert_ss_surface_match_2_event_93332.png) | ![Event 95872](resources/m6p6_vert_ss_surface_match_3_event_95872.png) | ![Event 96116](resources/m6p6_vert_ss_surface_match_4_event_96116.png) |
|-----|-----|-----|-----|-----|
### M6.6 SS 20 km Results
*[(top)](#table-of-contents)*

Result: **FAIL**

![Acceptance Plot](resources/m6p6_vert_ss_surface_20km.png)

| **Period** | 1s | 1.1s | 1.2s | 1.3s | 1.5s | 1.7s | 2s | 2.2s | 2.4s | 2.6s | 2.8s | 3s |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **Lower Bound** | 0.0465 | 0.0413 | 0.0371 | 0.0336 | 0.0281 | 0.0240 | 0.0196 | 0.0175 | 0.0157 | 0.0143 | 0.0130 | 0.0120 |
| **Sim Median** | *0.1108* | *0.0981* | *0.0865* | *0.0772* | *0.0636* | *0.0527* | *0.0418* | *0.0374* | *0.0338* | *0.0305* | *0.0273* | **0.0245** |
| **NGA-W2 Median** | 0.0670 | 0.0596 | 0.0535 | 0.0485 | 0.0406 | 0.0347 | 0.0283 | 0.0252 | 0.0227 | 0.0207 | 0.0189 | 0.0174 |
| **Upper Bound** | 0.0967 | 0.0859 | 0.0772 | 0.0699 | 0.0586 | 0.0500 | 0.0408 | 0.0364 | 0.0328 | 0.0298 | 0.0273 | 0.0252 |

### M6.6 SS 50 km Results
*[(top)](#table-of-contents)*

Result: **FAIL**

![Acceptance Plot](resources/m6p6_vert_ss_surface_50km.png)

| **Period** | 1s | 1.1s | 1.2s | 1.3s | 1.5s | 1.7s | 2s | 2.2s | 2.4s | 2.6s | 2.8s | 3s |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **Lower Bound** | 0.0187 | 0.0167 | 0.0151 | 0.0137 | 0.0116 | 0.0099 | 0.0081 | 0.0071 | 0.0063 | 0.0057 | 0.0052 | 0.0047 |
| **Sim Median** | *0.0432* | *0.0393* | *0.0347* | *0.0311* | *0.0265* | *0.0218* | **0.0168** | **0.0150** | *0.0139* | *0.0129* | *0.0119* | *0.0108* |
| **NGA-W2 Median** | 0.0270 | 0.0241 | 0.0218 | 0.0198 | 0.0167 | 0.0143 | 0.0117 | 0.0104 | 0.0094 | 0.0086 | 0.0078 | 0.0072 |
| **Upper Bound** | 0.0390 | 0.0348 | 0.0314 | 0.0286 | 0.0242 | 0.0207 | 0.0169 | 0.0151 | 0.0136 | 0.0123 | 0.0113 | 0.0104 |

## M6.6, Reverse, Dip=45, Ztor=3
*[(top)](#table-of-contents)*

### M6.6 Reverse RSQSim Rupture Match Criteria
*[(top)](#table-of-contents)*

49 events in the catalog match the following criteria:

* M=[6.55,6.65]
* Ztor=[2,4]
* Rake=[80,100]
* Dip=[40,50]

Example matches (20 km sites in Blue, 50 km sites in Geen):

| ![Event 165223](resources/m6p6_reverse_match_0_event_165223.png) | ![Event 212169](resources/m6p6_reverse_match_1_event_212169.png) | ![Event 337250](resources/m6p6_reverse_match_2_event_337250.png) | ![Event 347099](resources/m6p6_reverse_match_3_event_347099.png) | ![Event 772547](resources/m6p6_reverse_match_4_event_772547.png) |
|-----|-----|-----|-----|-----|
### M6.6 Reverse 20 km Results
*[(top)](#table-of-contents)*

Result: **PASS**

![Acceptance Plot](resources/m6p6_reverse_20km.png)

| **Period** | 1s | 1.1s | 1.2s | 1.3s | 1.5s | 1.7s | 2s | 2.2s | 2.4s | 2.6s | 2.8s | 3s |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **Lower Bound** | 0.0509 | 0.0451 | 0.0404 | 0.0365 | 0.0304 | 0.0258 | 0.0208 | 0.0184 | 0.0165 | 0.0149 | 0.0136 | 0.0124 |
| **Sim Median** | **0.0916** | **0.0829** | **0.0722** | **0.0626** | **0.0494** | **0.0398** | **0.0324** | **0.0300** | **0.0279** | **0.0258** | **0.0237** | **0.0214** |
| **NGA-W2 Median** | 0.0735 | 0.0651 | 0.0583 | 0.0527 | 0.0439 | 0.0372 | 0.0299 | 0.0265 | 0.0238 | 0.0215 | 0.0196 | 0.0179 |
| **Upper Bound** | 0.1060 | 0.0939 | 0.0841 | 0.0760 | 0.0633 | 0.0536 | 0.0432 | 0.0383 | 0.0343 | 0.0310 | 0.0282 | 0.0259 |

### M6.6 Reverse 50 km Results
*[(top)](#table-of-contents)*

Result: **PASS**

![Acceptance Plot](resources/m6p6_reverse_50km.png)

| **Period** | 1s | 1.1s | 1.2s | 1.3s | 1.5s | 1.7s | 2s | 2.2s | 2.4s | 2.6s | 2.8s | 3s |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **Lower Bound** | 0.0203 | 0.0181 | 0.0163 | 0.0148 | 0.0124 | 0.0106 | 0.0085 | 0.0076 | 0.0068 | 0.0061 | 0.0056 | 0.0051 |
| **Sim Median** | **0.0370** | **0.0328** | **0.0299** | **0.0262** | **0.0211** | **0.0175** | **0.0133** | **0.0119** | **0.0113** | **0.0109** | **0.0102** | **0.0093** |
| **NGA-W2 Median** | 0.0294 | 0.0262 | 0.0235 | 0.0214 | 0.0180 | 0.0152 | 0.0123 | 0.0109 | 0.0098 | 0.0088 | 0.0080 | 0.0074 |
| **Upper Bound** | 0.0424 | 0.0377 | 0.0340 | 0.0308 | 0.0259 | 0.0220 | 0.0177 | 0.0157 | 0.0141 | 0.0127 | 0.0116 | 0.0106 |

