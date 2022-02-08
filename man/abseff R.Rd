\name{abseff}
\alias{abseff}
\title{abseff - immediate calculation of absolute effects from relative treatment estimates}
\usage{
 .abseff_rr
 .abseff_rr100
 .abseff_or
 .abseff_or100
 .abseff_hrsurv
 .abseff_hrsurv100
 .abseff_hrevent
 .abseff_hrevent100
}
\description{
The command abseff was created for the immediate calculating of absolute effects based on relative treatment estimates. 
The main intention of this command is to facilitate absolute effects derivation for health researchers and systematic review authors. Editors and peer-reviewers of Cochrane reviews may also find this helpful as they have to revise multiple summary of findings table.
}
\examples{
  
abseff_rr(0.83, 0.63, 1.03, 50, 130)
abseff_rr100(0.83, 0.63, 1.03, 50, 130)
abseff_or(1.57, 1.31, 1.87, 14, 100)
abseff_or100(1.57, 1.31, 1.87, 14, 100)
abseff_hrevent(0.90, 0.61, 1.34, 0.055)
abseff_hrevent100(0.90, 0.61, 1.34, 0.055)
abseff_hrsurv(0.35, 0.18, 0.65, 0.7)
abseff_hrsurv100(0.35, 0.18, 0.65, 0.7)

}
