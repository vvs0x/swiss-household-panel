<div align="center">

# Swiss Household Panel 
## Data Cleaning & Analysis

**Household survey data processing for social science research**

</div>

<br>

Clean, reshape, and analyze longitudinal data from the Swiss Household Panel (SHP), a nationally representative survey tracking Swiss households from 1999 to the present. Built for applied social. The SHP covers 26 waves of person-, household-, and calendar-level data across modules including income, health, employment, and well-being.

## Overview

The [Swiss Household Panel](https://forscenter.ch/projects/swiss-household-panel/) (SHP) is one of the longest-running household panel surveys in Europe, run by FORS at the University of Lausanne. This repository contains code and documentation for working with the confidential SPSS data files provided to researchers.

This project was developed as part of an applied statistics practicum at the [Zurich University of Applied Sciences (ZHAW)](https://www.zhaw.ch/).


## Data

The SHP data files are **not included** in this repository. Access must be requested directly from [FORS](https://forscenter.ch/projects/swiss-household-panel/data/). Once obtained, place the SPSS `.sav` files in `data/raw/Data_SPSS/SHP-Data-WA-SPSS/`.

The following files are used:

| File | Description |
|------|-------------|
| `SHP_MP.sav` | Master person-level file |
| `SHP_MH.sav` | Master household-level file |
| `SHP_LJ.sav` | Life journal (calendar) |
| `SHP_SO.sav` | Socio-demographic file |
| `SHP_CA.sav` | Activity calendar |


## Getting Started

### Prerequisites

- R >= 4.0
- R packages: `foreign`, `stringr`

Install dependencies:

```r
install.packages(c("foreign", "stringr"))
```

### Running the Analysis

Open and knit the main analysis notebook:

```r
rmarkdown::render("src/Praktikum_2_Schwarz_Berdelis.Rmd")
```

Or open it interactively in RStudio.
