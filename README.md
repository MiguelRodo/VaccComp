<!-- README.md is generated from README.Rmd. Please edit that file -->
VaccComp
========

VaccComp provides the code used to create the figures for the paper 'A comparison of antigen-specific T cell responses of six novel tuberculosis vaccine candidates'. It can be installed from Github using the following code:

``` r
devtools::install_github("MiguelRodo/VaccComp")
```

Two packages, ggboot and VaccCompData, are not available on CRAN but are required to re-compile the figures. They can be installed by running the following code:

``` r
devtools::install_github("MiguelRodo/VaccCompData", build_vignettes = TRUE)
devtools::install_github("MiguelRodo/ggboot")
```

The analysis code is available as the file at the path VaccComp/Analysis/Paper\_Figures.Rmd.
