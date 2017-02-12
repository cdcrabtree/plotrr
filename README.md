[![Build Status](https://travis-ci.org/cdcrabtree/plotrr.svg?branch=master)](https://travis-ci.org/cdcrabtree/plotrr) [![Build status](https://ci.appveyor.com/api/projects/status/github/cdcrabtree/plotrr?svg=true)](https://ci.appveyor.com/api/projects/status/github/cdcrabtree/) ![](http://www.r-pkg.org/badges/version/plotrr) [![DOI](https://zenodo.org/badge/80883292.svg)](https://zenodo.org/badge/latestdoi/80883292)

## plotrr

Social scientists can improve their research by conducting exploratory data analysis (Tukey 1977). One reason why they might not, however, is because it takes additional time. This is particularly true for researchers who use nested data. The issue here is that few existing functions help scholars _easily_ visualize relationships within groups/units. 

plotrr helps address this issue by providing several functions that make visual EDA easier to conduct.  The focus of many of the package's functions is to create plots that can help researchers explore relationships within nested data. Among other things, these functions can help scholars assess the extent to which expected relationships between variables occur in specific cases. `bivarplots` creates a bivariate plot for every group/unit in the data, `dotplots` creates a dot plot for every group/unit, and `violinplots` creates a violin plot for every group/unit. As demonstrated in Crabtree and Nelson (2017), creating and interpreting plots like this this can help scholars find initial support for their theoretical expectations prior to conducting analysis with pooled data.

Another set of functions helps the researcher evaluate correlations between measures within groups/units. `groupcor` returns a tibble data frame with group/unit identifiers and the correlation coefficient between two measures for each group/unit in a data frame. `groupcorplot` performs a similar function and returns a figure that plots the correlation coefficient between measures within groups/units. These functions can help researchers identify important patterns across groups/units.

In addition to these functions, the package also includes `histplots`, which creates histograms for a measure for each group/unit, and `bivarrugplot`, which returns a plot of the bivariate relationship between two measures alongside a rugplot of each measure.

Finally, the package also contains several "helper," or convenience, functions.

## Package Installation
The latest development version on GitHub can be installed using devtools:

```
if(!require("ghit")){
    install.packages("ghit")
}
ghit::install_github("cdcrabtree/plotrr")
```

## Support or Contact
Having trouble with plotrr? Please email [Charles Crabtree](mailto:ccrabtr@umich.edu) and he'll help you sort it out.

### References
- Crabtree, Charles, and Michael J. Nelson. 2017. "New Evidence for a Positive Relationship Between De Facto Judicial Independence and State Respect for Empowerment Rights." _International Studies Quarterly_.
- Tukey, John W. 1977. _Exploratory Data Analysis_. New York, NY: Pearson.
