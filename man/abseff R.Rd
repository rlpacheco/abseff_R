\name{abseff}
\alias{abseff}
\title{abseff - immediate calculation of absolute effects from relative treatment estimates}
\usage{
abseff_X (N1, N2, N3, N4, N5)
X is the identification of treatment effect estimate (rr, or, hrevent, hrsurv)
N1-N5 are numerical values based on each treatment effect

Syntax
abseff_rr(N1, N2, N3, N4, N5)
abseff_or(N1, N2, N3, N4, N5)

N1 point estimate of the relative treatment effect (rr/or)
N2 lower limit of the confidence interval for the relative treatment effect (rr/or)
N3 upper limite of the confidence interval for the relative treatment effect (rr/or)
N4 total number of events on control group
N5 total number of participants on control group

abseff_hrevent(N1, N2, N3, N4)

N1 point estimate of the hazard ratio
N2 lower limit of the confidence interval for the hazard ratio
N3 upper limit of the confidence interval for the hazard ratio
N4 proportion of patients with event in control group

abseff_surv(N1, N2, N3, N4)

N1  point estimate of the hazard ratio
N2  lower limit of the confidence interval for the hazard ratio
N3  upper limit of the confidence interval for the hazard ratio
N4  proportion of patients with event-free in control group
}
\description{
The command abseff was created for the immediate calculating of absolute effects based on relative treatment estimates. 
The main intention of this command is to facilitate absolute effects derivation for health researchers and systematic review authors. Editors and peer-reviewers of Cochrane reviews may also find this helpful as they have to revise multiple summary of findings table.
}
\examples{
abseff_rr(0.83, 0.63, 1.03, 50, 130)
abseff_or(1.57, 1.31, 1.87, 14, 100)
abseff_hrevent(0.90, 0.61, 1.34, 0.055)
abseff_hrsurv(0.35, 0.18, 0.65, 0.7)

}
