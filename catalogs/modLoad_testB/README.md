# JG Mod Load Test B
## Metadata
| **Catalog** | JG Mod Load Test B |
|-----|-----|
| **Author** | Jacqui Gilchrist, 2017/11/14 |
| **Description** | Bruce's modified loading with higher values of frictional parameters |
| **Fault/Def Model** | Fault Model 3.1, Geologic |
| **Slip Velocity** | 1.0 m/s |
| **Average Element Area** | 1.34 km^2 |
| **Length** | 15,251,199 events in 192,869 years |
| **Frictional Params** | a=0.01, b=0.015, (b-a)=0.005, ddotEQ=1 |

* [Metadata](#metadata)
* [Full Catalog GMPE Comparisons](#full-catalog-gmpe-comparisons)
* [Full Catalog RotD100/RotD50 Ratios](#full-catalog-rotd100rotd50-ratios)
* [Plots](#plots)
  * [Magnitude-Frequency Plot](#magnitude-frequency-plot)
  * [Magnitude-Area Plots](#magnitude-area-plots)
  * [Rupture Velocity Plots](#rupture-velocity-plots)
  * [Interevent-Time Distributions](#interevent-time-distributions)
  * [Stationarity Plot](#stationarity-plot)
* [Input File](#input-file)

## Full Catalog GMPE Comparisons
*[(top)](#jg-mod-load-test-b)*

* [BSSA2014](gmpe_bbp_comparisons_BSSA2014/)
* [NGAWest_2014_NoIdr](gmpe_bbp_comparisons_NGAWest_2014_NoIdr/)

## Full Catalog RotD100/RotD50 Ratios
*[(top)](#jg-mod-load-test-b)*

[Full Catalog RotD100/RotD50 Ratios Plotted Here](catalog_rotd_ratio_comparisons/)

## Plots
### Magnitude-Frequency Plot
*[(top)](#jg-mod-load-test-b)*

![MFD](resources/mfd.png)
### Magnitude-Area Plots
*[(top)](#jg-mod-load-test-b)*

| Scatter | 2-D Hist |
|-----|-----|
| ![MFD Scatter](resources/mag_area.png) | ![MFD Hist](resources/mag_area_hist2D.png) |
### Rupture Velocity Plots
*[(top)](#jg-mod-load-test-b)*

| **Scatter** | ![Rupture Velocity Scatter](resources/rupture_velocity_scatter.png) |
|-----|-----|
| **Distance/Velocity** | ![Rupture Velocity vs Dist](resources/rupture_velocity_vs_dist.png) |
### Interevent-Time Distributions
*[(top)](#jg-mod-load-test-b)*

| **M≥6** | **M≥6.5** | **M≥7** | **M≥7.5** |
|-----|-----|-----|-----|
| ![Interevent Times](resources/interevent_times_m6.png) | ![Interevent Times](resources/interevent_times_m6.5.png) | ![Interevent Times](resources/interevent_times_m7.png) | ![Interevent Times](resources/interevent_times_m7.5.png) |
### Stationarity Plot
*[(top)](#jg-mod-load-test-b)*

![Stationarity](resources/stationarity.png)

## Input File
*[(top)](#jg-mod-load-test-b)*

```
  A_1 = 0.01
  fA = 0.1
  B_1 = 0.015
  muSlipAmp_1 = 0
  muSlipInvDist_1 = 00
  cohesion = 00
  Dc_1 = 1.0000000000000000818e-05
  mu0_1 = 0.6
  ddotStar_1 = 9.9999999999999995475e-07
  ddotAB_1 = 9.9999999999999995475e-07
  alpha_1 = 0.0
  theta0_1 = 200000000
  tau0_1 = 55
  sigma0_1 = 100
  sigmaFracPin = 0.5
  lowSigmaAction = 1
  maxThetaPin = 1.0e13
  ddotEQ_1 = 1
  ddotEQFname = 
  stressOvershootFactor = 0.10000000000000000555
  lameLambda = 30000
  lameMu = 30000
  slowSlip_1 = 0
  nEq = 1000000000000
  KZeroFrac = 0
  KOneFrac =  0
  muPin = 1.0
  tStart = 0
  maxT = 3.1536e13
  maxTransitions = 1.0000000000000000159e+100
  faultFname = zfault_Deepen.in
  outFnameInfix = modLoad_testB
  writeTau = 2
  writeSigma = 2
  writeSlip = 0
  writeSlipSpeed = 0
  writeState = 0
  writeTheta = 2
  writePED = 1
  writeTransitions = 1
  minDtWrite = 0
  minDtWriteCoseismic = 0
  minDtWriteInterseismic = 0
  minMagWrite = 7.65
  writeStiffness = 0
  nbuffEQS = 100
  nbuffPED = 100
  nbuffTRANS = 100
  nbuffSnap = 10
  stressRateSpecification = 2
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
  tauDotFname =  tauDotMod.in
  sigmaDotFname =  sigmaDotMod.in
  KZeroFname = zfault_Deepen_KZero.in
  pinnedFname =  
  neighborFname = 
  stressRateFname =  
  slowSlipFname = 
  writePatchFname = 
  DEBUG = 0
  ZBrentUpperBracket = 0
```
