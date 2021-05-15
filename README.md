# A Pipeline For Molecular Network Analysis And Drug Response Prediction

## Installation

1. Installing the R package
    - From CRAN: Use `install.packages("molnet")` to install the package and the R dependencies
    - From source: Either clone the repo and use `devtools::install()` within to install, or use `remotes::install_github()` without cloning.
2. Installing the python dependencies
    - To use the differential drug response score computation, a Python (>= 3.8) installation is required. Once the molnet package is installed, use `molnet::install_python_dependencies()` to install the necessary dependencies automatically. You can use the function arguments to customize and use either pip or conda for the installation. If you prefer to install the dependencies manually, check out the requirements file in this repository `inst/requirements.txt`.


## Additional Information

At the moment all functions are exported to make debugging easier. However, many functions are not intended for used-interaction. These functions are marked with `(INTERNAL)` in the function documentation.
