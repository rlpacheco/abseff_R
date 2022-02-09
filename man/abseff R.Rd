\name{abseff}
\alias{abseff}
\title{abseff - immediate calculation of absolute effects from relative treatment estimates}
\usage{
abseff_X (a, b, c, d, e)
X is the identification of treatment effect estimate (rr, or, hrevent, hrsurv)
a-e are numerical values based on each treatment effect

Syntax
abseff_rr(a, b, c, d, e)
abseff_or(a, b, c, d, e)

a point estimate of the relative treatment effect (rr/or)
b lower limit of the confidence interval for the relative treatment effect (rr/or)
c upper limite of the confidence interval for the relative treatment effect (rr/or)
d total number of events on control group
e total number of participants on control group

abseff_hrevent(a, b, c, d)

a point estimate of the hazard ratio
b lower limit of the confidence interval for the hazard ratio
c upper limit of the confidence interval for the hazard ratio
d proportion of patients with event in control group

abseff_surv(a, b, c, d)

a  point estimate of the hazard ratio
b  lower limit of the confidence interval for the hazard ratio
c  upper limit of the confidence interval for the hazard ratio
d  proportion of patients with event-free in control group
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
