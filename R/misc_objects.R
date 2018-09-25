##############################
### LABEL AND NAME VECTORS ###
##############################

censor = FALSE
# debugonce(ggbootUV)

if( !censor ){
  vaccStimLabVecInt = c( "1ag85" = "AERAS-402 - Ag85A/B",
    "1tb104" = "AERAS-402 - TB10.4",
    "2ag85b" = "H56:IC31 - Ag85B",
    "2esat6" = "H56:IC31 - ESAT6",
    "2rv2660" = "H56:IC31 - Rv2660",
    "3m72ppl" = "M72/AS01E - M72 ppl",
    "4ag85a" = "MVA85A - Ag85A",
    "5ag85b" = "H1:IC31 - Ag85B",
    "5esat6" = "H1:IC31 - ESAT6",
    "6rv1813" = "ID93+GLA-SE - Rv1813",
    "6rv2608" = "ID93+GLA-SE - Rv2608",
    "6rv3619" = "ID93+GLA-SE - Rv3619",
    "6rv3620" = "ID93+GLA-SE - Rv3620",
    "7bcg" = "BCG - BCG",
    "8mega" = "No vaccine" )
} else{

}
#' @export
vaccStimLabVec = vaccStimLabVecInt

if( !censor ){
  vaccStimLineTypeVecInt = c( "1ag85" = "solid",
    "1tb104" = "11",
    "2ag85b" = "solid",
    "2esat6" = "11",
    "2rv2660" = "1161",
    "3m72ppl" = "solid",
    "4ag85a" = "solid",
    "5ag85b" = "solid",
    "5esat6" = "11",
    "6rv1813" = "solid",
    "6rv2608" = "11",
    "6rv3619" = "1161",
    "6rv3620" = "6161",
    "7bcg" = "solid",
    "8mega" = "solid" )
}
#' @export
vaccStimLineTypeVec = vaccStimLineTypeVecInt

#' @export
vaccStim2StimLabVec = c( "1ag85" = "Ag85A/B",
  "1tb104" = "TB10.4",
  "2ag85b" = "Ag85B",
  "2esat6" = "ESAT6",
  "2rv2660" = "Rv2660",
  "3m72ppl" = "M72 ppl",
  "4ag85a" = "Ag85A",
  "5ag85b" = "Ag85B",
  "5esat6" = "ESAT6",
  "6rv1813" = "Rv1813",
  "6rv2608" = "Rv2608",
  "6rv3619" = "Rv3619",
  "6rv3620" = "Rv3620",
  "7bcg" = "BCG",
  "8mega" = "No vaccine" )

#' @export
stimLabVec = c( "ag85" = "Ag85A/B",
  "tb104" = "TB10.4",
  "ag85a" = "Ag85A",
  "ag85b" = "Ag85b",
  "esat6" = "ESAT6",
  "rv2660" = "Rv2660",
  "rv1813" = "Rv1813",
  "rv2608" = "Rv2608",
  "rv3619" = "Rv3619",
  "rv3620" = "Rv3620",
  "bcg" = "BCG",
  "mega" = "No vaccine" )

#' @export
vaccStimColVec = c( "1ag85" = "darkorchid1", "1tb104" = "darkorchid3",
  "2ag85b" = "springgreen", "2esat6" = "springgreen4", '2rv2660' = 'springgreen2',
  "3m72ppl" = 'maroon1',
  "4ag85a" = "gray50",
  "5ag85b" = "red", "5esat6" = "red3",
  "6rv1813" = "cyan", "6rv2608" = "cyan4",
  "6rv3619" = "deepskyblue1", "6rv3620" = "deepskyblue3",
  "7bcg" = "yellow3",
  "8mega" = "orange2" )

#' @export
vaccLabelVec = c( '1' = 'A402', '2' = 'H56', '3' = 'M72', '4' = 'MVA85A', '5' = 'H1', '7' = 'BCG', '6'= 'ID93', '8' = 'No vaccine' )


#' @export
infLabelVec = c( "0" = "Uninfected", "1" = "Infected" )

#' @export
infLabelVec2 = c( infLabelVec, "2" = "Natural Infection" )


infVaccLabelVecInt = as.character( 1:8 )


names(infVaccLabelVecInt) = vaccLabelVec[1:8]

#' @export
infVaccLabelVec = infVaccLabelVecInt

if( censor ){
  fullVaccLabelVecInt = c( '1' = 'A', '2' = 'B', '3' = 'C', '4' = 'D', '5' = 'E', '7' = 'BCG', '6'= 'F', '8' = 'No vaccine' )
} else{
  fullVaccLabelVecInt = c( '1' = 'AERAS-402', '2' = 'H56:IC31', '3' = 'M72/AS01E', '4' = 'MVA85A',
    '5' = 'H1:IC31', '7' = 'BCG', '6'= 'ID93+GLA-SE', '8' = 'No vaccine' )
}
#' @export
fullVaccLabelVec = fullVaccLabelVecInt

shortCytComboNameVecInt = c( "Gn2nTp", "Gn2pTn", "Gn2pTp", "Gp2pTp", "Gp2pTn", "Gp2nTp", "Gp2nTn" )
#' @export
shortCytComboNameVec = shortCytComboNameVecInt

shortCytComboSymVec = c( "G-2-T+", "G-2+T-", "G-2+T+", "G+2+T+", "G+2+T-", "G+2-T+", "G+2-T-")

shortCytComboLabVecInt = setNames( shortCytComboSymVec, shortCytComboNameVec )
#' @export
shortCytComboLabVec = shortCytComboLabVecInt

#' @export
cd4FullCytComboNameVec = paste0( "CD4", shortCytComboNameVec )
#' @export
cd8FullCytComboNameVec = paste0( "CD8", shortCytComboNameVec )
#' @export
fullCytComboNameVec = c( cd4FullCytComboNameVec, cd8FullCytComboNameVec )


if( censor ){
  vaccNameVecInt = str_to_upper( letters[1:7] ) %>% c("No_vaccine")
  vaccNameVecInt[7] = "BCG"
} else{
  vaccNameVecInt = c( 'A402', 'H56', 'M72', 'MVA85A', 'H1', 'ID93', 'BCG', 'No_vaccine' )
}
#' @export
vaccNameVec = vaccNameVecInt


fullVaccNameVecInt = fullVaccLabelVec
names(fullVaccNameVecInt) = NULL
#' @export
fullVaccNameVec = fullVaccNameVecInt
#' @export
infNameVec = c( 'Uninfected', 'Infected' )
#' @export
if( censor ){
  vaccInfLabelVecInt = c( '1.0' = 'A.0',
    '1.1' = 'A.1',
    '2.0' = 'B.0',
    '2.1' = 'B.1',
    '3.0' = 'C.0',
    '3.1' = 'C.1',
    '4.0' = 'D.0',
    '4.1' = 'D.1',
    '5.0' = 'E.0',
    '5.1' = 'E.1',
    '7.0' = 'BCG.0',
    '7.1' = 'BCG.1',
    '6.0' = 'F.0',
    '6.1' = 'F.1',
    '8.1' = 'No_vaccine.1' )
} else{
  vaccInfLabelVecInt = c( '1.0' = 'A402.0',
    '1.1' = 'A402.1',
    '2.0' = 'H56.0',
    '2.1' = 'H56.1',
    '3.0' = 'M72.0',
    '3.1' = 'M72.1',
    '4.0' = 'MVA.0',
    '4.1' = 'MVA.1',
    '5.0' = 'H1.0',
    '5.1' = 'H1.1',
    '7.0' = 'BCG.0',
    '7.1' = 'BCG.1',
    '6.0' = 'ID93.0',
    '6.1' = 'ID93.1',
    '8.1' = 'No_vaccine.1' )

}
#' @export
vaccInfLabelVec = vaccInfLabelVecInt

#' @export
vaccInfLabelVec2 = setNames( vaccInfLabelVec, stringr::str_c( stringr::str_sub( names( vaccInfLabelVec ), 1, 1 ),
  stringr::str_c( stringr::str_sub( names( vaccInfLabelVec ), 3, 3 ) ) ) )

if( censor ){
  fullVaccInfLabelVecInt =  c( '1.0' = 'A - Uninfected',
    '1.1' = 'A - Infected',
    '2.0' = 'B - Uninfected',
    '2.1' = 'B - Infected',
    '3.0' = 'C - Uninfected',
    '3.1' = 'C - Infected',
    '4.0' = 'D - Uninfected',
    '4.1' = 'D - Infected',
    '5.0' = 'E - Uninfected',
    '5.1' = 'E - Infected',
    '7.0' = 'BCG - Uninfected',
    '7.1' = 'BCG - Infected',
    '6.0' = 'F - Uninfected',
    '6.1' = 'F - Infected',
    '8.1' = 'No vaccine - Infected' )
} else{
  fullVaccInfLabelVecInt =  c( '1.0' = 'AERAS-402 - Uninfected',
    '1.1' = 'AERAS-402 - Infected',
    '2.0' = 'H56:IC31 - Uninfected',
    '2.1' = 'H56:IC31 - Infected',
    '3.0' = 'M72/AS01E - Uninfected',
    '3.1' = 'M72/AS01E - Infected',
    '4.0' = 'MVA85A - Uninfected',
    '4.1' = 'MVA85A - Infected',
    '5.0' = 'H1:IC31 - Uninfected',
    '5.1' = 'H1:IC31 - Infected',
    '7.0' = 'BCG - Uninfected',
    '7.1' = 'BCG - Infected',
    '6.0' = 'ID93+GLA-SE - Uninfected',
    '6.1' = 'ID93+GLA-SE - Infected',
    '8.1' = 'No vaccine - Infected' )
}
#' @export
fullVaccInfLabelVec = fullVaccInfLabelVecInt

#' @export
fullVaccInfLabelVec2 = setNames( fullVaccInfLabelVec, stringr::str_c( stringr::str_sub( names( fullVaccInfLabelVec ), 1, 1 ),
  stringr::str_c( stringr::str_sub( names( fullVaccInfLabelVec ), 3, 3 ) ) ) )


if( censor ){
  vaccInfNameVecInt = c( "A.0", "A.1", "B.0", "B.1", "C.0", "C.1", "D.0", "D.1", "E.0", "E.1", "F.0", "F.1", "BCG.1",  "No_vaccine.1" )
} else{
  vaccInfNameVecInt = c( "A402.0", "A402.1", "H56.0", "H56.1", "M72.0", "M72.1", "MVA85A.0", "MVA85A.1", "H1.0", "H1.1", "ID93.0", "ID93.1","BCG.1", "No_vaccine.1" )
}
#' @export
vaccInfNameVec = vaccInfNameVecInt


if( censor ){
  vaccPridInfLabelVecInt = c( '1.1.0' = 'A.1.0',
    '1.1.1' = 'A.1.1',
    '2.2.0' = 'B.1.0',
    '2.2.1' = 'B.1.1',
    '3.3.0' = 'C.1.0',
    '3.3.1' = 'C.1.1',
    '3.4.0' = 'C.2.0',
    '3.4.1' = 'C.2.1',
    '4.5.0' = 'D.1.0',
    '4.6.1' = 'D.1.1',
    '5.7.0' = 'E.1.0',
    '5.7.1' = 'E.1.1',
    '7.8.1' = 'BCG.1.1',
    '6.9.0' = 'F.1.0',
    '6.9.1' = 'F.1.1',
    '8.10.1' = 'No_vaccine.10.1' )
} else{
  vaccPridInfLabelVecInt = c( '1.1.0' = '402.1.0',
    '1.1.1' = '402.1.1',
    '2.2.0' = 'H56.1.0',
    '2.2.1' = 'H56.1.1',
    '3.3.0' = 'GSK.1.0',
    '3.3.1' = 'GSK.1.1',
    '3.4.0' = 'GSK.2.0',
    '3.4.1' = 'GSK.2.1',
    '4.5.0' = 'MVA.1.0',
    '4.6.1' = 'MVA.1.1',
    '5.7.0' = 'H1.1.0',
    '5.7.1' = 'H1.1.1',
    '7.8.1' = 'BCG.1.1',
    '6.9.0' = 'ID93.1.0',
    '6.9.1' = 'ID93.1.1',
    '8.10.1' = 'No_vaccine.10.1' )
}
#' @export
vaccPridInfLabelVec = vaccPridInfLabelVecInt

vaccPridInfNameVecInt = vaccPridInfLabelVec
names( vaccPridInfNameVecInt ) = NULL
#' @export
vaccPridInfNameVec = vaccPridInfNameVecInt

#' @export
singleCytLabelVec = c( 'gamma' = 'Gamma', 'il2' = 'IL-2', 'tnf' = 'TNF' )


if( censor ){
  trialLabelVecInt = c( "1" = "Trial_A", "2" = "Trial_B", "3" = "Trial_C",
    "4" = "Trial_D", "5" = "Trial_E", "6" = "TBRU",
    "7" = "Trial_G", "8" = "Trial_H", "9" = "Trial_I", "10" = "No vaccine" )
} else{
  trialLabelVecInt = c( "1" = "TB003", "2" = "H56", "3" = "TB010",
    "4" = "TB012", "5" = "TB008", "6" = "TB011",
    "7" = "THYB04", "8" = "TBRU", "9" = "IDRI", "10" = "No vaccine" )
}
#' @export
trialLabelVec = trialLabelVecInt
#' @export
infLabelVec = c( "0" = "Uninfected", "1" = "Infected" )
#' @export
anInfLabelVec = c( "0" = "-")

#' @export
singleCytGgLabVec = c( 'gamma' = expression( paste( "IFN-", gamma ) ), "il2" = "IL-2",
  "tnf" = expression( paste( "TNF-", alpha ) ) )

#' @export
orderedSingleCdCytNameVec = c( "Gn2nTp", "Gn2pTn", "Gn2pTp", "Gp2pTp", "Gp2pTn", "Gp2nTp", "Gp2nTn")

#' @export
bsYAxisName = "Directed Proportion" # alternative - size scaled response?
#' @export
bsYAxisName = "Individually Scaled Deviation"

#' @export
qualLabVec = c( "0" = "Good Quality", "1" = "Poor Quality" )

###############
### COLOURS ###
###############
#' @export
vaccColVec = c( "1" = 'darkorchid1', "2" = 'springgreen2', "3" = 'maroon1', "4" = 'dodgerblue', "5" = 'red',
  "7" = 'yellow3', "6" = 'cyan2', "8" = "orange2" ) # vaccines



#' @export
vaccInfColVec = c( 'purple', 'forestgreen', 'tan3', 'dodgerblue',
  'maroon1', 'blue3', 'red', 'gray30', 'gold2',
  'grey65', 'orange', 'yellow3', 'tan3' ) #
#' @export
cytComboColVec = c( 'purple', 'forestgreen', 'yellow3', 'dodgerblue',
  'pink1', 'blue3', 'red', 'black' )
#' @export
clust3ColVec = c( 'red', 'green', 'royalblue' )
#' @export
clust4ColVec = c( clust3ColVec, 'deeppink' )  # cluster of 3
#' @export
clust5ColVec = c( clust4ColVec, "lightgoldenrod"  )

#' @export
infColVec = c( "dodgerblue", "red" )

# clust colvec
clustColVecInt = clust5ColVec
names( clustColVecInt ) = as.character( 1:5 )
#' @export
clustColVec = clustColVecInt
