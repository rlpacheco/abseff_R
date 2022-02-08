# abseff_R
 -------------------------------------------------------------------------------------------------------------------------------------------------------------------
**abseff (absolute effects)**

R package **abseff** (immediate calculation of absolute effects from relative treatment estimates)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------
**Authors**

Rafael Leite Pacheco<sup>1,2,3</sup>, Rachel Riera<sup>1,2</sup>

[1] Núcleo de Avaliação de Tecnologias em Saúde, Hospital Sírio-Libanês.

[2] Núcleo de Ensino e Pesquisa em Saúde Baseada em Evidências e Avaliação de Tecnologias em Saúde (NEP-SBEATS), Universidade Federal de São Paulo.

[3] Centro Universitário São Camilo.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
**Contact**

Feedbacks and corrections are welcome!

e-mail: rleitepacheco@hotmail.com

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
**Downloading package**

(Step 1) Install devtools package from CRAN (skip this if already installed): install.packages("devtools")

(Step 2) Load devtools package: library(devtools)

(Step 3) Then type: install_github("rlpacheco/abseff_R")

(Step 4) Loading the package: library(abseff)

Your commands are now available.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
**Title**

**abseff** - immediate calculation of absolute effects from relative treatment estimates

**Functions**:
- abseff_rr
- abseff_or
- abseff_hrsurv
- abseff_hrevent

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
**Syntax**

**abseff_X** (N1, N2, N3, N4, N5) 

where,

X = identification of treatment effect estimate (rr, or, hrevent, hrsurv)

N1-N5 = numerical values based on each treatment effect

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
**Description**

The command abseff was created for the immediate calculating of absolute effects based on relative treatment estimates. 

The main intention of this command is to facilitate absolute effects derivation for health researchers and systematic review authors. Editors and peer-reviewers of Cochrane reviews may also find this helpful as they have to revise multiple summary of findings table.


1) **Absolute effect based on relative risk (risk ratios)**

**abseff_rr**(N1, N2, N3, N4, N5)

N1 = point estimate for the relative risk

N2 = lower limit of the confidence interval for the relative risk

N3 = upper limit of the confidence interval for the relative risk

N4 = total number of events on control group

N5 = total number of participants on control group


*Example (1)*: 

. **abseff_rr**(0.83, 0.63, 1.03, 50, 130)

*Display*:

"Base 1000"
"The baseline risk with control group is 385 per 1000"
"The anticipated absolute effects is 319 per 1000 (95% CI = 242 to 396 )."
"The absolute risk difference is  -66 per 1000 (95% CI = -143 to 11 )."
""
"Base 100"
"The baseline risk with control group is  38 per 100"
"The anticipated absolute effects is 32 per 100 (95% CI = 24 to 40 )."
"The absolute risk difference is  -6 per 100 (95% CI = -14 to 2 )."

*Explanation*:

This example is calculating the absolute effects for a relative risk of 0.83 (95% CI of 0.63 to 1.03) considering a control risk of 50/130. The antecipated risk with intervention is 319 (242 to 396) per 1000 patients, corresponding to an absolute risk difference of 66 fewer patients per 1000 (143 fewer to 11 more). The display also presents the results on base 100.

2) **Absolute effect based on odds ratios**

**abseff_or**(N1, N2, N3, N4, N5)

N1 = point estimate for the odds ratio

N2 = lower limit of the confidence interval for the odds ratio

N3 = upper limit of the confidence interval for the odds ratio

N4 = total number of events on control group

N5 = total number of participants on control group

*Example (2)*:

. **abseff_or**(1.57, 1.31, 1.87, 14, 100)

*Display*:

"Base 1000"
"The baseline risk with control group is 140 per 1000"
"The anticipated absolute effects is 204 per 1000 (95% CI = 176 to 233 )."
"The absolute risk difference is  64 per 1000 (95% CI = 36 to 93 )."
""
"Base 100"
"The baseline risk with control group is  14 per 100"
"The anticipated absolute effects is 20 per 100 (95% CI = 18 to 23 )."
"The absolute risk difference is  6 per 100 (95% CI = 4 to 9 )."

*Explanation*:

This example is calculating the absolute effects on base 1000 for a odds ratio of 1.57 (95% CI of 1.31 to 1.87) considering a control risk of 14/100. The display also presents the results on base 100.



3) **Absolute effect based on hazard ratios**

**Event calculation (absolute risk of an event within a particular period of time)**

**abseff_hrevent**(N1, N2, N3, N4) 

N1 = point estimate for the hazard ratio

N2 = lower limit of the confidence interval for the hazard ratio

N3 = upper limit of the confidence interval for the hazard ratio

N4 = % of patients with event in control group

*Example (3)*:

. **abseff_hrevent**(0.90, 0.61, 1.34, 0.055)

*Display*: 

"Base 1000"
"The baseline risk of events in a certain time-point with control group is 55 per 1000"
"The anticipated absolute effects is 50 per 1000 (95% CI = 34 to 73 )."
"The absolute risk difference is  -5 per 1000 (95% CI = -21 to 18 )."
""
"Base 100"
"The baseline risk of events in a certain time-point with control group is 6 per 100"
"The anticipated absolute effects is 5 per 100 (95% CI = 3 to 7 )."
"The absolute risk difference is  -1 per 100 (95% CI = -3 to 1 )."

*Explanation*:

This example is calculating the absolute risk of an event on base 1000 for a hazard ratio of 0.90 (95% CI of 0.61 to 1.34) considering a control risk of 0.055 (5.5%, 55 per 1000) in a particular time (e.g. 5 years). The anticipated absolute risk difference is 5 more events per 1000 patients (21 fewer to 18 more). The display also presents the results on base 100.

For hazard ratios, we included the % of patients with event in control group, as this is more often the available information presented in survival curves rather than number of events. If you have the number of events, you can just calculate the % and add to the command.


4) **Event-free survival calculation (absolute risk of event-free survival within a particular period of time)**

**abseff_hrsurv**(N1, N2, N3, N4)  

N1 = point estimate for the hazard ratio

N2 = lower limit of the confidence interval for the hazard ratio

N3 = upper limit of the confidence interval for the hazard ratio

N4 = % of patients with event-free in control group

*Example (6)*:

. **abseff_hrsurv**(0.35, 0.18, 0.65, 0.7)

*Display*:

"Base 1000"
"The baseline proportion of patients free of event in a certain time-point with control group is 700 per 1000"
"The anticipated absolute effects is 883 per 1000 (95% CI = 793 to 938 )."
"The absolute risk difference is  183 per 1000 (95% CI = 93 to 238 )."
""
"Base 100"
"The baseline proportion of patients free of event in a certain time-point with control group is 70 per 100"
"The anticipated absolute effects is 88 per 100 (95% CI = 79 to 94 )."
"The absolute risk difference is  18 per 100 (95% CI = 9 to 24 )."

*Explanation*:

This example is calculating the absolute risk of an event-free survival on base 1000 for a hazard ratio of 0.35 (95% CI of 0.18 to 0.65) considering a control risk of 0.7 (70%, 700 per 1000) in a particular time (e.g. 5 years). The antecipated risk of event-free (e.g. alive) patients with intervention is 883 (793 to 938) per 1000 patients, corresponding to an absolute difference of 183 more events per 1000 (93 more to 238 more). The display also presents the results on base 100.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
**References**

Calculations were based on the following publications:

[1] Schünemann HJ, Higgins JPT, Vist GE, Glasziou P, Akl EA, Skoetz N, Guyatt GH. Chapter 14: Completing `Summary of findings' tables and grading the certainty of the evidence. In: Higgins JPT, Thomas J, Chandler J, Cumpston M, Li T, Page MJ, Welch VA (editors). Cochrane Handbook for Systematic Reviews of Interventions version 6.2 (updated February 2021). Cochrane, 2021. Available from www.training.cochrane.org/handbook.

[2] Skoetz N, Goldkuhle M, van Dalen EC, Akl EA, Trivella M, Mustafa RA, Nowak A, Dahm P, Schünemann H, Bender R; GRADE Working Group. GRADE guidelines 27: how to calculate absolute effects for time-to-event outcomes in summary of findings tables and Evidence Profiles. J Clin Epidemiol. 2020 Feb;118:124-131. doi: 10.1016/j.jclinepi.2019.10.015.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

