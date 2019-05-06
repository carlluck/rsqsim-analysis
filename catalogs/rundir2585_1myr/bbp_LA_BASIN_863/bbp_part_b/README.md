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
| M6.6 SS | **[PASS](#m66-ss-20-km-results)** | **[PASS](#m66-ss-50-km-results)** |
| M6.6 Reverse | **[PASS](#m66-reverse-20-km-results)** | **[PASS](#m66-reverse-50-km-results)** |

## M6.6, Vertical Strike-Slip with Surface Rupture
*[(top)](#table-of-contents)*

### M6.6 SS RSQSim Rupture Match Criteria
*[(top)](#table-of-contents)*

4346 events in the catalog match the following criteria:

* M=[6.55,6.65]
* Ztor=[0.0,1.0]
* Rake=[-180,-170] or [-10,10] or [170,180]
* Dip=90.0
* Linear rupture (max 0.5km deviation from ideal)

Example matches (20 km sites in Blue, 50 km sites in Geen):

| ![Event 4063294](resources/m6p6_vert_ss_surface_match_0_event_4063294.png) | ![Event 7946360](resources/m6p6_vert_ss_surface_match_1_event_7946360.png) | ![Event 5627990](resources/m6p6_vert_ss_surface_match_2_event_5627990.png) | ![Event 9822358](resources/m6p6_vert_ss_surface_match_3_event_9822358.png) | ![Event 2687020](resources/m6p6_vert_ss_surface_match_4_event_2687020.png) |
|-----|-----|-----|-----|-----|
### M6.6 SS 20 km Results
*[(top)](#table-of-contents)*

Result: **PASS**

![Acceptance Plot](resources/m6p6_vert_ss_surface_20km.png)

| **Period** | 1s | 1.1s | 1.2s | 1.3s | 1.5s | 1.7s | 2s | 2.2s | 2.4s | 2.6s | 2.8s | 3s |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **Lower Bound** | 0.0465 | 0.0413 | 0.0371 | 0.0336 | 0.0281 | 0.0240 | 0.0196 | 0.0175 | 0.0157 | 0.0143 | 0.0130 | 0.0120 |
| **Sim Median** | **0.0796** | **0.0701** | **0.0610** | **0.0533** | **0.0428** | **0.0354** | **0.0286** | **0.0259** | **0.0235** | **0.0212** | **0.0189** | **0.0167** |
| **NGA-W2 Median** | 0.0670 | 0.0596 | 0.0535 | 0.0485 | 0.0406 | 0.0347 | 0.0283 | 0.0252 | 0.0227 | 0.0207 | 0.0189 | 0.0174 |
| **Upper Bound** | 0.0967 | 0.0859 | 0.0772 | 0.0699 | 0.0586 | 0.0500 | 0.0408 | 0.0364 | 0.0328 | 0.0298 | 0.0273 | 0.0252 |

#### M6.6 SS 20 km Comparisons
*[(top)](#table-of-contents)*

| ExSIM | G&P | SDSU | UCSB |
|-----|-----|-----|-----|
| ![ExSIM](http://www.seismosoc.org/Publications/SRL/SRL_86/srl_86-1_dreger_et_al-esupp/SRL_2014118_esupp_Figure_S17.png) | ![G&P](http://www.seismosoc.org/Publications/SRL/SRL_86/srl_86-1_dreger_et_al-esupp/SRL_2014118_esupp_Figure_S18.png) | ![SDSU](http://www.seismosoc.org/Publications/SRL/SRL_86/srl_86-1_dreger_et_al-esupp/SRL_2014118_esupp_Figure_S19.png) | ![UCSB](http://www.seismosoc.org/Publications/SRL/SRL_86/srl_86-1_dreger_et_al-esupp/SRL_2014118_esupp_Figure_S16.png) |

### M6.6 SS 50 km Results
*[(top)](#table-of-contents)*

Result: **PASS**

![Acceptance Plot](resources/m6p6_vert_ss_surface_50km.png)

| **Period** | 1s | 1.1s | 1.2s | 1.3s | 1.5s | 1.7s | 2s | 2.2s | 2.4s | 2.6s | 2.8s | 3s |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **Lower Bound** | 0.0187 | 0.0167 | 0.0151 | 0.0137 | 0.0116 | 0.0099 | 0.0081 | 0.0071 | 0.0063 | 0.0057 | 0.0052 | 0.0047 |
| **Sim Median** | **0.0328** | **0.0298** | **0.0264** | **0.0236** | **0.0197** | **0.0156** | **0.0122** | **0.0110** | **0.0102** | **0.0095** | **0.0086** | **0.0078** |
| **NGA-W2 Median** | 0.0270 | 0.0241 | 0.0218 | 0.0198 | 0.0167 | 0.0143 | 0.0117 | 0.0104 | 0.0094 | 0.0086 | 0.0078 | 0.0072 |
| **Upper Bound** | 0.0390 | 0.0348 | 0.0314 | 0.0286 | 0.0242 | 0.0207 | 0.0169 | 0.0151 | 0.0136 | 0.0123 | 0.0113 | 0.0104 |

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

| ![Event 1982494](resources/m6p6_reverse_match_0_event_1982494.png) | ![Event 4315200](resources/m6p6_reverse_match_1_event_4315200.png) | ![Event 5851740](resources/m6p6_reverse_match_2_event_5851740.png) | ![Event 6556513](resources/m6p6_reverse_match_3_event_6556513.png) | ![Event 8486791](resources/m6p6_reverse_match_4_event_8486791.png) |
|-----|-----|-----|-----|-----|
### M6.6 Reverse 20 km Results
*[(top)](#table-of-contents)*

Result: **PASS**

![Acceptance Plot](resources/m6p6_reverse_20km.png)

| **Period** | 1s | 1.1s | 1.2s | 1.3s | 1.5s | 1.7s | 2s | 2.2s | 2.4s | 2.6s | 2.8s | 3s |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **Lower Bound** | 0.0494 | 0.0438 | 0.0392 | 0.0355 | 0.0296 | 0.0251 | 0.0203 | 0.0180 | 0.0162 | 0.0146 | 0.0133 | 0.0122 |
| **Sim Median** | **0.0642** | **0.0565** | **0.0493** | **0.0428** | **0.0332** | **0.0257** | **0.0206** | **0.0190** | **0.0182** | **0.0172** | **0.0156** | **0.0141** |
| **NGA-W2 Median** | 0.0712 | 0.0632 | 0.0566 | 0.0511 | 0.0427 | 0.0363 | 0.0293 | 0.0260 | 0.0233 | 0.0211 | 0.0192 | 0.0176 |
| **Upper Bound** | 0.1028 | 0.0911 | 0.0816 | 0.0738 | 0.0616 | 0.0523 | 0.0423 | 0.0375 | 0.0336 | 0.0304 | 0.0277 | 0.0254 |

#### M6.6 Reverse 20 km Comparisons
*[(top)](#table-of-contents)*

| ExSIM | G&P | SDSU | UCSB |
|-----|-----|-----|-----|
| ![ExSIM](http://www.seismosoc.org/Publications/SRL/SRL_86/srl_86-1_dreger_et_al-esupp/SRL_2014118_esupp_Figure_S25.png) | ![G&P](http://www.seismosoc.org/Publications/SRL/SRL_86/srl_86-1_dreger_et_al-esupp/SRL_2014118_esupp_Figure_S26.png) | ![SDSU](http://www.seismosoc.org/Publications/SRL/SRL_86/srl_86-1_dreger_et_al-esupp/SRL_2014118_esupp_Figure_S27.png) | ![UCSB](http://www.seismosoc.org/Publications/SRL/SRL_86/srl_86-1_dreger_et_al-esupp/SRL_2014118_esupp_Figure_S24.png) |

### M6.6 Reverse 50 km Results
*[(top)](#table-of-contents)*

Result: **PASS**

![Acceptance Plot](resources/m6p6_reverse_50km.png)

| **Period** | 1s | 1.1s | 1.2s | 1.3s | 1.5s | 1.7s | 2s | 2.2s | 2.4s | 2.6s | 2.8s | 3s |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **Lower Bound** | 0.0198 | 0.0177 | 0.0159 | 0.0145 | 0.0122 | 0.0104 | 0.0084 | 0.0074 | 0.0067 | 0.0060 | 0.0055 | 0.0050 |
| **Sim Median** | **0.0268** | **0.0236** | **0.0211** | **0.0187** | **0.0143** | **0.0119** | **0.0086** | **0.0077** | **0.0072** | **0.0072** | **0.0068** | **0.0062** |
| **NGA-W2 Median** | 0.0286 | 0.0255 | 0.0230 | 0.0209 | 0.0175 | 0.0149 | 0.0121 | 0.0107 | 0.0096 | 0.0087 | 0.0079 | 0.0073 |
| **Upper Bound** | 0.0413 | 0.0368 | 0.0331 | 0.0301 | 0.0253 | 0.0215 | 0.0175 | 0.0155 | 0.0139 | 0.0125 | 0.0114 | 0.0105 |

#### M6.6 Reverse 50 km Comparisons
*[(top)](#table-of-contents)*

| ExSIM | G&P | SDSU | UCSB |
|-----|-----|-----|-----|
| ![ExSIM](http://www.seismosoc.org/Publications/SRL/SRL_86/srl_86-1_dreger_et_al-esupp/SRL_2014118_esupp_Figure_S29.png) | ![G&P](http://www.seismosoc.org/Publications/SRL/SRL_86/srl_86-1_dreger_et_al-esupp/SRL_2014118_esupp_Figure_S30.png) | ![SDSU](http://www.seismosoc.org/Publications/SRL/SRL_86/srl_86-1_dreger_et_al-esupp/SRL_2014118_esupp_Figure_S31.png) | ![UCSB](http://www.seismosoc.org/Publications/SRL/SRL_86/srl_86-1_dreger_et_al-esupp/SRL_2014118_esupp_Figure_S28.png) |

