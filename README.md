[![Build Status](https://travis-ci.org/cdcrabtree/plotrr.svg?branch=master)](https://travis-ci.org/cdcrabtree/plotrr) [![Build status](https://ci.appveyor.com/api/projects/status/github/cdcrabtree/plotrr?svg=true)](https://ci.appveyor.com/api/projects/status/github/cdcrabtree/) ![](http://www.r-pkg.org/badges/version/plotrr) ![](http://cranlogs.r-pkg.org/badges/plotrr) [![DOI](https://zenodo.org/badge/80883292.svg)](https://zenodo.org/badge/latestdoi/80883292) [![status](http://joss.theoj.org/papers/4f707062d9621de3b7009a2ad62cc8cc/status.svg)](http://joss.theoj.org/papers/4f707062d9621de3b7009a2ad62cc8cc)

# plotrr: Functions for making visual exploratory data analysis with nested data easier.

Social scientists can improve their research by conducting exploratory data analysis (Tukey 1977). One reason why they might not, however, is because it takes additional time. This is particularly true for researchers who use nested data. The issue here is that few existing functions help scholars _easily_ visualize relationships within groups/units. 

plotrr helps address this issue by providing several functions that make visual EDA easier to conduct.  The focus of many of the package's functions is to create plots that can help researchers explore relationships within nested data. Among other things, these functions can help scholars assess the extent to which expected relationships between variables occur in specific cases. `bivarplots` creates a bivariate plot for every group/unit in the data, `dotplots` creates a dot plot for every group/unit, and `violinplots` creates a violin plot for every group/unit. 

As demonstrated in Crabtree and Nelson (2017), creating and interpreting plots like this this can help scholars find initial support for their theoretical expectations prior to conducting analysis with pooled data. The intuition here is that researchers can check their initial priors about relationships within cases. When the data support those priors, scholars have some additional evidence that the processes they theorize actually occur in the real world.

Another set of functions helps the researcher evaluate correlations between measures within groups/units. `groupcor` returns a tibble data frame with group/unit identifiers and the correlation coefficient between two measures for each group/unit in a data frame. `groupcorplot` performs a similar function and returns a figure that plots the correlation coefficient between measures within groups/units. These functions can help researchers identify important patterns across groups/units. 

They can also help scholars check the correlation between competing measures - such as different measures of state human rights practices - within units. This is one way to check the construct validity of the measures (Trochim & Donnelly, 2008). This also might be useful to generate new empirical puzzles; if measures disagree in important cases, why is this the case? 

In addition to these functions, the package also includes `histplots`, which creates histograms of a measure for each group/unit, and `bivarrugplot`, which returns a plot of the bivariate relationship between two measures alongside a rugplot of each measure.

Finally, the package also contains several "helper," or convenience, functions. `clear` effectively clears the R terminal. `lengthunique` calculates the number of uniques values in a vector. `makefacnum` converts factor vectors numeric vectors.

## Package Installation
The latest stable version (0.2.0) can be installed from CRAN.

```
install.packages("plotrr")
```

The latest development version (0.3.0) on GitHub can be installed using devtools.

```
if(!require("ghit")){
    install.packages("ghit")
}
ghit::install_github("cdcrabtree/plotrr")
```

## Support or Contact
Please use the issue tracker for problems, questions, or feature requests. If you would rather email, you can contact [Charles Crabtree](mailto:ccrabtr@umich.edu) and he will address the issue.

If you would like to contribute to the package, that is great! We welcome pull requests and new developers.

## Tests
To test the software, users and potential contributors can use the example code provided in the documentation for each function.

## Thanks
Thanks to [Karl Broman](https://github.com/kbroman) for his excellent reviewer suggestions and changes.

### References
- Crabtree, Charles, and Michael J. Nelson. 2017. "New Evidence for a Positive Relationship Between De Facto Judicial Independence and State Respect for Empowerment Rights." _International Studies Quarterly_.
- Trochim, William M. K., and James P. Donnelly. 2008. _Research Methods Knowledge Base_. New York, NY: Cengage Learning.
- Tukey, John W. 1977. _Exploratory Data Analysis_. New York, NY: Pearson.
