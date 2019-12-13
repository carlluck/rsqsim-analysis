# Bruce 2585 1myr BBP Part B Validation

[Catalog Details](../#bruce-2585-1myr)

## Table Of Contents
* [Background Information](#background-information)
* [RSQSim BBP Part B Methodology](#rsqsim-bbp-part-b-methodology)
* [Results Summary Table](#results-summary-table)
* [M6.6, Vertical Strike-Slip with Surface Rupture](#m66-vertical-strike-slip-with-surface-rupture)
  * [M6.6 SS RSQSim Rupture Match Criteria](#m66-ss-rsqsim-rupture-match-criteria)
  * [M6.6 SS 20 km Results](#m66-ss-20-km-results)
    * [M6.6 SS 20 km Comparisons](#m66-ss-20-km-comparisons)
  * [M6.6 SS 50 km Results](#m66-ss-50-km-results)
    * [M6.6 SS 50 km Comparisons](#m66-ss-50-km-comparisons)
* [M6.6, Reverse, Dip=45, Ztor=3](#m66-reverse-dip45-ztor3)
  * [M6.6 Reverse RSQSim Rupture Match Criteria](#m66-reverse-rsqsim-rupture-match-criteria)
  * [M6.6 Reverse 20 km Results](#m66-reverse-20-km-results)
    * [M6.6 Reverse 20 km Comparisons](#m66-reverse-20-km-comparisons)
  * [M6.6 Reverse 50 km Results](#m66-reverse-50-km-results)
    * [M6.6 Reverse 50 km Comparisons](#m66-reverse-50-km-comparisons)
* [M7.2, Vertical Strike-Slip with Surface Rupture](#m72-vertical-strike-slip-with-surface-rupture)
  * [M7.2 SS RSQSim Rupture Match Criteria](#m72-ss-rsqsim-rupture-match-criteria)
  * [M7.2 SS 20 km Results](#m72-ss-20-km-results)
  * [M7.2 SS 50 km Results](#m72-ss-50-km-results)
* [M7.2, Reverse, Dip=45](#m72-reverse-dip45)
  * [M7.2 Reverse RSQSim Rupture Match Criteria](#m72-reverse-rsqsim-rupture-match-criteria)
  * [M7.2 Reverse 20 km Results](#m72-reverse-20-km-results)
  * [M7.2 Reverse 50 km Results](#m72-reverse-50-km-results)
* [M7.6, Vertical Strike-Slip with Surface Rupture](#m76-vertical-strike-slip-with-surface-rupture)
  * [M7.6 SS RSQSim Rupture Match Criteria](#m76-ss-rsqsim-rupture-match-criteria)
  * [M7.6 SS 20 km Results](#m76-ss-20-km-results)
  * [M7.6 SS 50 km Results](#m76-ss-50-km-results)
* [M7.6, Reverse, Dip=45](#m76-reverse-dip45)
  * [M7.6 Reverse RSQSim Rupture Match Criteria](#m76-reverse-rsqsim-rupture-match-criteria)
  * [M7.6 Reverse 20 km Results](#m76-reverse-20-km-results)
  * [M7.6 Reverse 50 km Results](#m76-reverse-50-km-results)
## Background Information
*[(top)](#table-of-contents)*


This page reproduces the SCEC BroadBand Platform "Part B" validation exercise as defined in:

*Goulet, C. A., Abrahamson, N. A., Somerville, P. G., & Wooddell, K. E. (2014). The SCEC broadband platform validation exercise: Methodology for code validation in the context of seismic‐hazard analyses. Seismological Research Letters, 86(1), 17-26.* [(link)](https://pubs.geoscienceworld.org/ssa/srl/article/86/1/17/315438/the-scec-broadband-platform-validation-exercise)

The goal of this exercise was to validate BBP simulation methods (both rupture generation and ground motion simulation) against the NGA-West GMPEs (the original study used NGA-West1, we use NGA-West2) for scenario ruptures where the NGA relations are well constrained:

* M 5.5, 45°-dipping reverse, Ztor = 6 km
* M 6.2, vertical strike slip, Ztor = 4 km
* M 6.6, vertical strike slip with a surface rupture
* M 6.6, 45°-dipping reverse, Ztor = 3 km

50 rupture realizations were generated for each scenario with randomly distributed hypocenters, and 40 sites were distributed at random azimuths on the footwall side of the faults at rupture distances of 20 and 50 km. Resultant ground motions were compared against an evaluation criterion which "was established so as to be wide enough to limit a pass/fail grade for each scenario considered." This criterion only applies at periods up to 3s, becase data above this period "are fairly sparse and cannot provide a reliable constraint."

A method is said to pass the test if the median RotD50 value is within the evaluation criteria at every spectral period. "Departure from that range is a definite sign that the model is not consistent with our current dataset and is a sign of potential issues with the simulations."

## RSQSim BBP Part B Methodology
*[(top)](#table-of-contents)*

We reproduce the Part B experiment using RSQSim as the rupture generator, coupled with the Graves & Pitarka ground motion simulation method. While the original BBP Part B validation exercise was prescriptive (the magnitude and fault surface for each scenario was an input to the rupture generators), we can't prescribe RSQSim ruptures. Instead we search catalogs for ruptures which are very similar to the BBP Part B scenarios, and distribute sites around those ruptures. This algorithm can be a little tricky for non-rectangular dipping ruptures. The specific matching criteria for each scenario along with example plots of ruptures and sites can be found under each scenario.

*NOTE: We only currently only consider the larger M6.6 scenarios, and spectral periods 1s or larger*

## Results Summary Table

| Scenario | 20 km | 50 km |
|-----|-----|-----|
| M6.6 SS | **[FAIL](#m66-ss-20-km-results)** | **[FAIL](#m66-ss-50-km-results)** |
| M6.6 Reverse | **[FAIL](#m66-reverse-20-km-results)** | **[FAIL](#m66-reverse-50-km-results)** |
| M7.2 SS | **[FAIL](#m72-ss-20-km-results)** | **[FAIL](#m72-ss-50-km-results)** |
| M7.2 Reverse | **[PASS](#m72-reverse-20-km-results)** | **[PASS](#m72-reverse-50-km-results)** |
| M7.6 SS | **[FAIL](#m76-ss-20-km-results)** | **[FAIL](#m76-ss-50-km-results)** |
| M7.6 Reverse | **[FAIL](#m76-reverse-20-km-results)** | **[FAIL](#m76-reverse-50-km-results)** |

## M6.6, Vertical Strike-Slip with Surface Rupture
*[(top)](#table-of-contents)*

### M6.6 SS RSQSim Rupture Match Criteria
*[(top)](#table-of-contents)*

500 events in the catalog match the following criteria:

* M=[6.55,6.65]
* Ztor=[0.0,1.0]
* Rake=[-180,-170] or [-10,10] or [170,180]
* Dip=90.0
* Linear rupture (max 0.5km deviation from ideal)

Example matches (20 km sites in Blue, 50 km sites in Geen):

| ![Event 1602584](resources/m6p6_vert_ss_surface_match_0_event_1602584.png) | ![Event 232455](resources/m6p6_vert_ss_surface_match_1_event_232455.png) | ![Event 2687020](resources/m6p6_vert_ss_surface_match_2_event_2687020.png) | ![Event 8537227](resources/m6p6_vert_ss_surface_match_3_event_8537227.png) | ![Event 3145789](resources/m6p6_vert_ss_surface_match_4_event_3145789.png) |
|-----|-----|-----|-----|-----|
### M6.6 SS 20 km Results
*[(top)](#table-of-contents)*

Result: **FAIL**

![Acceptance Plot](resources/m6p6_vert_ss_surface_20km.png)

| **Period** | 1s | 1.1s | 1.2s | 1.3s | 1.5s | 1.7s | 2s | 2.2s | 2.4s | 2.6s | 2.8s | 3s |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **Lower Bound** | 0.0813 | 0.0723 | 0.0650 | 0.0589 | 0.0494 | 0.0420 | 0.0341 | 0.0302 | 0.0271 | 0.0245 | 0.0223 | 0.0205 |
| **Sim Median** | **0.1228** | **0.1066** | **0.0927** | **0.0819** | **0.0621** | **0.0483** | **0.0367** | **0.0320** | **0.0283** | **0.0251** | *0.0222* | *0.0199* |
| **NGA-W2 Median** | 0.1173 | 0.1044 | 0.0938 | 0.0850 | 0.0713 | 0.0606 | 0.0492 | 0.0436 | 0.0391 | 0.0354 | 0.0322 | 0.0295 |
| **Upper Bound** | 0.1693 | 0.1505 | 0.1353 | 0.1226 | 0.1028 | 0.0877 | 0.0714 | 0.0633 | 0.0567 | 0.0512 | 0.0467 | 0.0428 |

#### M6.6 SS 20 km Comparisons
*[(top)](#table-of-contents)*

| ExSIM | G&P | SDSU | UCSB |
|-----|-----|-----|-----|
| ![ExSIM](http://www.seismosoc.org/Publications/SRL/SRL_86/srl_86-1_dreger_et_al-esupp/SRL_2014118_esupp_Figure_S17.png) | ![G&P](http://www.seismosoc.org/Publications/SRL/SRL_86/srl_86-1_dreger_et_al-esupp/SRL_2014118_esupp_Figure_S18.png) | ![SDSU](http://www.seismosoc.org/Publications/SRL/SRL_86/srl_86-1_dreger_et_al-esupp/SRL_2014118_esupp_Figure_S19.png) | ![UCSB](http://www.seismosoc.org/Publications/SRL/SRL_86/srl_86-1_dreger_et_al-esupp/SRL_2014118_esupp_Figure_S16.png) |

### M6.6 SS 50 km Results
*[(top)](#table-of-contents)*

Result: **FAIL**

![Acceptance Plot](resources/m6p6_vert_ss_surface_50km.png)

| **Period** | 1s | 1.1s | 1.2s | 1.3s | 1.5s | 1.7s | 2s | 2.2s | 2.4s | 2.6s | 2.8s | 3s |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **Lower Bound** | 0.0329 | 0.0294 | 0.0265 | 0.0241 | 0.0204 | 0.0174 | 0.0141 | 0.0125 | 0.0112 | 0.0101 | 0.0092 | 0.0084 |
| **Sim Median** | **0.0407** | **0.0356** | **0.0322** | **0.0285** | **0.0227** | **0.0186** | **0.0142** | *0.0122* | *0.0111* | *0.0100* | *0.0090* | *0.0081* |
| **NGA-W2 Median** | 0.0474 | 0.0424 | 0.0382 | 0.0348 | 0.0294 | 0.0251 | 0.0204 | 0.0180 | 0.0162 | 0.0146 | 0.0133 | 0.0122 |
| **Upper Bound** | 0.0684 | 0.0611 | 0.0552 | 0.0502 | 0.0424 | 0.0362 | 0.0294 | 0.0260 | 0.0233 | 0.0211 | 0.0192 | 0.0176 |

#### M6.6 SS 50 km Comparisons
*[(top)](#table-of-contents)*

| ExSIM | G&P | SDSU | UCSB |
|-----|-----|-----|-----|
| ![ExSIM](http://www.seismosoc.org/Publications/SRL/SRL_86/srl_86-1_dreger_et_al-esupp/SRL_2014118_esupp_Figure_S21.png) | ![G&P](http://www.seismosoc.org/Publications/SRL/SRL_86/srl_86-1_dreger_et_al-esupp/SRL_2014118_esupp_Figure_S22.png) | ![SDSU](http://www.seismosoc.org/Publications/SRL/SRL_86/srl_86-1_dreger_et_al-esupp/SRL_2014118_esupp_Figure_S23.png) | ![UCSB](http://www.seismosoc.org/Publications/SRL/SRL_86/srl_86-1_dreger_et_al-esupp/SRL_2014118_esupp_Figure_S20.png) |

## M6.6, Reverse, Dip=45, Ztor=3
*[(top)](#table-of-contents)*

### M6.6 Reverse RSQSim Rupture Match Criteria
*[(top)](#table-of-contents)*

142 events in the catalog match the following criteria:

* M=[6.55,6.65]
* Ztor=[1.0,5.0]
* Rake=[80,100]
* Dip=[35.0,55.0]

Example matches (20 km sites in Blue, 50 km sites in Geen):

| ![Event 1982494](resources/m6p6_reverse_match_0_event_1982494.png) | ![Event 4315200](resources/m6p6_reverse_match_1_event_4315200.png) | ![Event 5851740](resources/m6p6_reverse_match_2_event_5851740.png) | ![Event 6556513](resources/m6p6_reverse_match_3_event_6556513.png) | ![Event 417792](resources/m6p6_reverse_match_4_event_417792.png) |
|-----|-----|-----|-----|-----|
### M6.6 Reverse 20 km Results
*[(top)](#table-of-contents)*

Result: **FAIL**

![Acceptance Plot](resources/m6p6_reverse_20km.png)

| **Period** | 1s | 1.1s | 1.2s | 1.3s | 1.5s | 1.7s | 2s | 2.2s | 2.4s | 2.6s | 2.8s | 3s |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **Lower Bound** | 0.0864 | 0.0767 | 0.0688 | 0.0622 | 0.0520 | 0.0440 | 0.0354 | 0.0312 | 0.0278 | 0.0250 | 0.0227 | 0.0207 |
| **Sim Median** | *0.0840* | *0.0710* | *0.0614* | *0.0547* | *0.0441* | *0.0343* | *0.0259* | *0.0237* | *0.0221* | *0.0198* | *0.0176* | *0.0157* |
| **NGA-W2 Median** | 0.1247 | 0.1106 | 0.0992 | 0.0897 | 0.0750 | 0.0634 | 0.0511 | 0.0450 | 0.0401 | 0.0361 | 0.0327 | 0.0298 |
| **Upper Bound** | 0.1799 | 0.1596 | 0.1431 | 0.1294 | 0.1081 | 0.0915 | 0.0737 | 0.0650 | 0.0579 | 0.0520 | 0.0472 | 0.0430 |

#### M6.6 Reverse 20 km Comparisons
*[(top)](#table-of-contents)*

| ExSIM | G&P | SDSU | UCSB |
|-----|-----|-----|-----|
| ![ExSIM](http://www.seismosoc.org/Publications/SRL/SRL_86/srl_86-1_dreger_et_al-esupp/SRL_2014118_esupp_Figure_S25.png) | ![G&P](http://www.seismosoc.org/Publications/SRL/SRL_86/srl_86-1_dreger_et_al-esupp/SRL_2014118_esupp_Figure_S26.png) | ![SDSU](http://www.seismosoc.org/Publications/SRL/SRL_86/srl_86-1_dreger_et_al-esupp/SRL_2014118_esupp_Figure_S27.png) | ![UCSB](http://www.seismosoc.org/Publications/SRL/SRL_86/srl_86-1_dreger_et_al-esupp/SRL_2014118_esupp_Figure_S24.png) |

### M6.6 Reverse 50 km Results
*[(top)](#table-of-contents)*

Result: **FAIL**

![Acceptance Plot](resources/m6p6_reverse_50km.png)

| **Period** | 1s | 1.1s | 1.2s | 1.3s | 1.5s | 1.7s | 2s | 2.2s | 2.4s | 2.6s | 2.8s | 3s |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **Lower Bound** | 0.0348 | 0.0310 | 0.0280 | 0.0254 | 0.0214 | 0.0181 | 0.0146 | 0.0129 | 0.0115 | 0.0103 | 0.0093 | 0.0085 |
| **Sim Median** | *0.0309* | *0.0259* | *0.0234* | *0.0215* | *0.0169* | *0.0145* | *0.0122* | *0.0101* | *0.0090* | *0.0085* | *0.0078* | *0.0074* |
| **NGA-W2 Median** | 0.0502 | 0.0448 | 0.0403 | 0.0366 | 0.0308 | 0.0261 | 0.0211 | 0.0186 | 0.0165 | 0.0148 | 0.0135 | 0.0123 |
| **Upper Bound** | 0.0724 | 0.0646 | 0.0582 | 0.0528 | 0.0445 | 0.0377 | 0.0304 | 0.0268 | 0.0238 | 0.0214 | 0.0194 | 0.0177 |

#### M6.6 Reverse 50 km Comparisons
*[(top)](#table-of-contents)*

| ExSIM | G&P | SDSU | UCSB |
|-----|-----|-----|-----|
| ![ExSIM](http://www.seismosoc.org/Publications/SRL/SRL_86/srl_86-1_dreger_et_al-esupp/SRL_2014118_esupp_Figure_S29.png) | ![G&P](http://www.seismosoc.org/Publications/SRL/SRL_86/srl_86-1_dreger_et_al-esupp/SRL_2014118_esupp_Figure_S30.png) | ![SDSU](http://www.seismosoc.org/Publications/SRL/SRL_86/srl_86-1_dreger_et_al-esupp/SRL_2014118_esupp_Figure_S31.png) | ![UCSB](http://www.seismosoc.org/Publications/SRL/SRL_86/srl_86-1_dreger_et_al-esupp/SRL_2014118_esupp_Figure_S28.png) |

## M7.2, Vertical Strike-Slip with Surface Rupture
*[(top)](#table-of-contents)*

### M7.2 SS RSQSim Rupture Match Criteria
*[(top)](#table-of-contents)*

500 events in the catalog match the following criteria:

* M=[7.15,7.25]
* Ztor=[0.0,1.0]
* Rake=[-180,-170] or [-10,10] or [170,180]
* Dip=90.0
* Linear rupture (max 5.0% deviation from ideal)

Example matches (20 km sites in Blue, 50 km sites in Geen):

| ![Event 1928221](resources/m7p2_vert_ss_surface_match_0_event_1928221.png) | ![Event 7779442](resources/m7p2_vert_ss_surface_match_1_event_7779442.png) | ![Event 2922537](resources/m7p2_vert_ss_surface_match_2_event_2922537.png) | ![Event 3157046](resources/m7p2_vert_ss_surface_match_3_event_3157046.png) | ![Event 8393862](resources/m7p2_vert_ss_surface_match_4_event_8393862.png) |
|-----|-----|-----|-----|-----|
### M7.2 SS 20 km Results
*[(top)](#table-of-contents)*

Result: **FAIL**

![Acceptance Plot](resources/m7p2_vert_ss_surface_20km.png)

| **Period** | 1s | 1.1s | 1.2s | 1.3s | 1.5s | 1.7s | 2s | 2.2s | 2.4s | 2.6s | 2.8s | 3s |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **Lower Bound** | 0.1155 | 0.1041 | 0.0947 | 0.0869 | 0.0744 | 0.0645 | 0.0537 | 0.0487 | 0.0446 | 0.0411 | 0.0381 | 0.0355 |
| **Sim Median** | *0.3328* | *0.3039* | *0.2776* | *0.2474* | *0.1992* | *0.1704* | *0.1412* | *0.1258* | *0.1122* | *0.0983* | *0.0882* | *0.0797* |
| **NGA-W2 Median** | 0.1666 | 0.1502 | 0.1367 | 0.1253 | 0.1073 | 0.0931 | 0.0774 | 0.0703 | 0.0643 | 0.0593 | 0.0550 | 0.0512 |
| **Upper Bound** | 0.2403 | 0.2167 | 0.1972 | 0.1808 | 0.1548 | 0.1343 | 0.1117 | 0.1014 | 0.0928 | 0.0855 | 0.0793 | 0.0739 |

### M7.2 SS 50 km Results
*[(top)](#table-of-contents)*

Result: **FAIL**

![Acceptance Plot](resources/m7p2_vert_ss_surface_50km.png)

| **Period** | 1s | 1.1s | 1.2s | 1.3s | 1.5s | 1.7s | 2s | 2.2s | 2.4s | 2.6s | 2.8s | 3s |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **Lower Bound** | 0.0514 | 0.0466 | 0.0425 | 0.0391 | 0.0337 | 0.0293 | 0.0244 | 0.0221 | 0.0202 | 0.0186 | 0.0172 | 0.0161 |
| **Sim Median** | **0.1046** | **0.0968** | *0.0897* | *0.0829* | **0.0699** | **0.0593** | **0.0470** | **0.0402** | **0.0356** | **0.0319** | **0.0283** | **0.0252** |
| **NGA-W2 Median** | 0.0741 | 0.0672 | 0.0614 | 0.0565 | 0.0487 | 0.0423 | 0.0352 | 0.0319 | 0.0292 | 0.0269 | 0.0249 | 0.0232 |
| **Upper Bound** | 0.1070 | 0.0969 | 0.0885 | 0.0815 | 0.0702 | 0.0610 | 0.0508 | 0.0461 | 0.0421 | 0.0388 | 0.0359 | 0.0334 |

## M7.2, Reverse, Dip=45
*[(top)](#table-of-contents)*

### M7.2 Reverse RSQSim Rupture Match Criteria
*[(top)](#table-of-contents)*

158 events in the catalog match the following criteria:

* M=[7.15,7.25]
* Ztor=[0.0,5.0]
* Rake=[80,100]
* Dip=[35.0,55.0]

Example matches (20 km sites in Blue, 50 km sites in Geen):

| ![Event 9776022](resources/m7p2_reverse_match_0_event_9776022.png) | ![Event 6109274](resources/m7p2_reverse_match_1_event_6109274.png) | ![Event 6327401](resources/m7p2_reverse_match_2_event_6327401.png) | ![Event 4542287](resources/m7p2_reverse_match_3_event_4542287.png) | ![Event 7171169](resources/m7p2_reverse_match_4_event_7171169.png) |
|-----|-----|-----|-----|-----|
### M7.2 Reverse 20 km Results
*[(top)](#table-of-contents)*

Result: **PASS**

![Acceptance Plot](resources/m7p2_reverse_20km.png)

| **Period** | 1s | 1.1s | 1.2s | 1.3s | 1.5s | 1.7s | 2s | 2.2s | 2.4s | 2.6s | 2.8s | 3s |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **Lower Bound** | 0.1197 | 0.1077 | 0.0979 | 0.0896 | 0.0765 | 0.0661 | 0.0547 | 0.0494 | 0.0450 | 0.0414 | 0.0382 | 0.0355 |
| **Sim Median** | **0.2371** | **0.2111** | **0.1917** | **0.1799** | **0.1556** | **0.1275** | **0.0957** | **0.0850** | **0.0775** | **0.0694** | **0.0611** | **0.0526** |
| **NGA-W2 Median** | 0.1727 | 0.1554 | 0.1412 | 0.1292 | 0.1103 | 0.0953 | 0.0789 | 0.0713 | 0.0650 | 0.0597 | 0.0551 | 0.0512 |
| **Upper Bound** | 0.2491 | 0.2242 | 0.2037 | 0.1864 | 0.1592 | 0.1376 | 0.1138 | 0.1028 | 0.0937 | 0.0861 | 0.0796 | 0.0739 |

### M7.2 Reverse 50 km Results
*[(top)](#table-of-contents)*

Result: **PASS**

![Acceptance Plot](resources/m7p2_reverse_50km.png)

| **Period** | 1s | 1.1s | 1.2s | 1.3s | 1.5s | 1.7s | 2s | 2.2s | 2.4s | 2.6s | 2.8s | 3s |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **Lower Bound** | 0.0531 | 0.0481 | 0.0438 | 0.0403 | 0.0347 | 0.0300 | 0.0249 | 0.0224 | 0.0204 | 0.0187 | 0.0173 | 0.0161 |
| **Sim Median** | **0.0865** | **0.0795** | **0.0740** | **0.0700** | **0.0608** | **0.0517** | **0.0444** | **0.0363** | **0.0321** | **0.0296** | **0.0264** | **0.0240** |
| **NGA-W2 Median** | 0.0767 | 0.0693 | 0.0633 | 0.0581 | 0.0500 | 0.0433 | 0.0359 | 0.0324 | 0.0295 | 0.0270 | 0.0250 | 0.0232 |
| **Upper Bound** | 0.1106 | 0.1000 | 0.0913 | 0.0839 | 0.0721 | 0.0624 | 0.0517 | 0.0467 | 0.0425 | 0.0390 | 0.0360 | 0.0334 |

## M7.6, Vertical Strike-Slip with Surface Rupture
*[(top)](#table-of-contents)*

### M7.6 SS RSQSim Rupture Match Criteria
*[(top)](#table-of-contents)*

500 events in the catalog match the following criteria:

* M=[7.55,7.65]
* Ztor=[0.0,1.0]
* Rake=[-180,-170] or [-10,10] or [170,180]
* Dip=90.0
* Linear rupture (max 5.0% deviation from ideal)

Example matches (20 km sites in Blue, 50 km sites in Geen):

| ![Event 4439104](resources/m7p6_vert_ss_surface_match_0_event_4439104.png) | ![Event 888843](resources/m7p6_vert_ss_surface_match_1_event_888843.png) | ![Event 11050158](resources/m7p6_vert_ss_surface_match_2_event_11050158.png) | ![Event 4550722](resources/m7p6_vert_ss_surface_match_3_event_4550722.png) | ![Event 3388475](resources/m7p6_vert_ss_surface_match_4_event_3388475.png) |
|-----|-----|-----|-----|-----|
### M7.6 SS 20 km Results
*[(top)](#table-of-contents)*

Result: **FAIL**

![Acceptance Plot](resources/m7p6_vert_ss_surface_20km.png)

| **Period** | 1s | 1.1s | 1.2s | 1.3s | 1.5s | 1.7s | 2s | 2.2s | 2.4s | 2.6s | 2.8s | 3s |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **Lower Bound** | 0.1410 | 0.1269 | 0.1153 | 0.1055 | 0.0901 | 0.0796 | 0.0677 | 0.0626 | 0.0582 | 0.0545 | 0.0512 | 0.0484 |
| **Sim Median** | *0.4625* | *0.4239* | *0.3905* | *0.3536* | *0.2934* | *0.2594* | *0.2200* | *0.1975* | *0.1757* | *0.1556* | *0.1388* | *0.1265* |
| **NGA-W2 Median** | 0.2035 | 0.1849 | 0.1693 | 0.1562 | 0.1353 | 0.1186 | 0.1001 | 0.0919 | 0.0851 | 0.0793 | 0.0742 | 0.0698 |
| **Upper Bound** | 0.2936 | 0.2667 | 0.2443 | 0.2254 | 0.1951 | 0.1712 | 0.1444 | 0.1326 | 0.1228 | 0.1143 | 0.1071 | 0.1007 |

### M7.6 SS 50 km Results
*[(top)](#table-of-contents)*

Result: **FAIL**

![Acceptance Plot](resources/m7p6_vert_ss_surface_50km.png)

| **Period** | 1s | 1.1s | 1.2s | 1.3s | 1.5s | 1.7s | 2s | 2.2s | 2.4s | 2.6s | 2.8s | 3s |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **Lower Bound** | 0.0649 | 0.0589 | 0.0539 | 0.0497 | 0.0430 | 0.0382 | 0.0328 | 0.0302 | 0.0281 | 0.0262 | 0.0246 | 0.0232 |
| **Sim Median** | *0.1811* | *0.1675* | *0.1557* | *0.1448* | *0.1259* | *0.1081* | *0.0900* | *0.0817* | *0.0753* | *0.0697* | *0.0645* | *0.0601* |
| **NGA-W2 Median** | 0.0969 | 0.0883 | 0.0812 | 0.0752 | 0.0655 | 0.0575 | 0.0485 | 0.0445 | 0.0411 | 0.0382 | 0.0357 | 0.0335 |
| **Upper Bound** | 0.1419 | 0.1293 | 0.1188 | 0.1099 | 0.0956 | 0.0835 | 0.0700 | 0.0642 | 0.0593 | 0.0551 | 0.0515 | 0.0483 |

## M7.6, Reverse, Dip=45
*[(top)](#table-of-contents)*

### M7.6 Reverse RSQSim Rupture Match Criteria
*[(top)](#table-of-contents)*

165 events in the catalog match the following criteria:

* M=[7.55,7.65]
* Ztor=[0.0,5.0]
* Rake=[80,100]
* Dip=[35.0,55.0]

Example matches (20 km sites in Blue, 50 km sites in Geen):

| ![Event 9018761](resources/m7p6_reverse_match_0_event_9018761.png) | ![Event 7439729](resources/m7p6_reverse_match_1_event_7439729.png) | ![Event 8249980](resources/m7p6_reverse_match_2_event_8249980.png) | ![Event 9933462](resources/m7p6_reverse_match_3_event_9933462.png) | ![Event 432900](resources/m7p6_reverse_match_4_event_432900.png) |
|-----|-----|-----|-----|-----|
### M7.6 Reverse 20 km Results
*[(top)](#table-of-contents)*

Result: **FAIL**

![Acceptance Plot](resources/m7p6_reverse_20km.png)

| **Period** | 1s | 1.1s | 1.2s | 1.3s | 1.5s | 1.7s | 2s | 2.2s | 2.4s | 2.6s | 2.8s | 3s |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **Lower Bound** | 0.1472 | 0.1324 | 0.1202 | 0.1099 | 0.0937 | 0.0821 | 0.0691 | 0.0636 | 0.0589 | 0.0549 | 0.0514 | 0.0484 |
| **Sim Median** | *0.5084* | *0.4591* | *0.4418* | *0.4202* | *0.3623* | *0.3117* | *0.2321* | *0.1972* | *0.1742* | *0.1544* | *0.1344* | *0.1159* |
| **NGA-W2 Median** | 0.2124 | 0.1926 | 0.1761 | 0.1622 | 0.1400 | 0.1222 | 0.1025 | 0.0937 | 0.0862 | 0.0800 | 0.0745 | 0.0698 |
| **Upper Bound** | 0.3064 | 0.2778 | 0.2540 | 0.2340 | 0.2019 | 0.1763 | 0.1479 | 0.1351 | 0.1244 | 0.1153 | 0.1075 | 0.1007 |

### M7.6 Reverse 50 km Results
*[(top)](#table-of-contents)*

Result: **FAIL**

![Acceptance Plot](resources/m7p6_reverse_50km.png)

| **Period** | 1s | 1.1s | 1.2s | 1.3s | 1.5s | 1.7s | 2s | 2.2s | 2.4s | 2.6s | 2.8s | 3s |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **Lower Bound** | 0.0689 | 0.0623 | 0.0568 | 0.0521 | 0.0448 | 0.0394 | 0.0335 | 0.0307 | 0.0284 | 0.0264 | 0.0247 | 0.0233 |
| **Sim Median** | *0.1598* | *0.1526* | *0.1448* | *0.1379* | *0.1222* | *0.1048* | *0.0896* | *0.0762* | *0.0672* | *0.0607* | *0.0528* | **0.0466** |
| **NGA-W2 Median** | 0.1008 | 0.0918 | 0.0843 | 0.0779 | 0.0676 | 0.0591 | 0.0497 | 0.0453 | 0.0416 | 0.0385 | 0.0359 | 0.0335 |
| **Upper Bound** | 0.1454 | 0.1324 | 0.1215 | 0.1123 | 0.0976 | 0.0853 | 0.0717 | 0.0654 | 0.0601 | 0.0556 | 0.0517 | 0.0484 |

