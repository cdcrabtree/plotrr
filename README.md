[![Build Status](https://travis-ci.org/cdcrabtree/nomine.svg?branch=master)](https://travis-ci.org/cdcrabtree/nomine) [![Build status](https://ci.appveyor.com/api/projects/status/github/cdcrabtree/nomine?svg=true)](https://ci.appveyor.com/api/projects/status/github/cdcrabtree/) 
=======
[![Build Status](https://travis-ci.org/cdcrabtree/plotrr.svg?branch=master)](https://travis-ci.org/cdcrabtree/plotrr) [![Build status](https://ci.appveyor.com/api/projects/status/github/cdcrabtree/plotrr?svg=true)](https://ci.appveyor.com/api/projects/status/github/cdcrabtree/) ![](http://www.r-pkg.org/badges/version/plotrr) ![](http://cranlogs.r-pkg.org/badges/grand-total/plotrr) ![](http://cranlogs.r-pkg.org/badges/plotrr) [![DOI](https://zenodo.org/badge/80883292.svg)](https://zenodo.org/badge/latestdoi/80883292) [![status](http://joss.theoj.org/papers/4f707062d9621de3b7009a2ad62cc8cc/status.svg)](http://joss.theoj.org/papers/4f707062d9621de3b7009a2ad62cc8cc)

# plotrr: Functions for Making Visual Exploratory Data Analysis with Nested Data Easier.

Social scientists can improve their research by conducting exploratory data analysis (EDA) (Tukey 1977). The benefits of EDA include: ''maximiz[ing] insight into a data set; uncover[ing] underlying structure; extract[ing] important variables; detect[ing] outliers and anomalies; test[ing] underlying assumptions; develop[ing] parsimonious models; and determin[ing] optimal factor settings'' (NIST/SEMATECH 2012). Despite these benefits, scholars infrequently conduct EDA. One possible explanation for this is because it takes additional time to do so; it is often easier to move straight to confirmatory analysis.  

The time concern is particularly an issue for researchers who use nested data. The issue here is that most existing EDA software routines visualize relationships based on the pooled data. Few existing functions help scholars _easily_ visualize relationships within groups/units. 

plotrr helps address this issue by providing several functions that make visual EDA easier to conduct.  The focus of many of the package's functions is to create plots that can help researchers explore relationships within nested data. Among other things, these functions can help scholars assess the extent to which expected relationships between variables occur in specific cases. `bivarplots` creates a bivariate plot for every group/unit in the data, `dotplots` creates a dot plot for every group/unit, and `violinplots` creates a violin plot for every group/unit. 

As demonstrated in Crabtree and Nelson (2017), creating and interpreting plots like this this can help scholars find initial support for their theoretical expectations prior to conducting analysis with pooled data. The intuition here is that researchers can check their initial priors about relationships within cases. When the data support those priors, scholars have some additional evidence that the processes they theorize actually occur in the real world.

In addition to these functions, the package also includes `histplots`, which creates histograms of a measure for each group/unit, and `bivarrugplot`, which returns a plot of the bivariate relationship between two measures alongside a rugplot of each measure.

Finally, the package also contains several "helper," or convenience, functions. `clear` effectively clears the R terminal. `lengthunique` calculates the number of uniques values in a vector. `makefacnum` converts factor vectors numeric vectors.

## Package Installation
The latest development version (1.0.0) is on GitHub can be installed using devtools.

```
if(!require("ghit")){
    install.packages("ghit")
}
ghit::install_github("cdcrabtree/nomine")
```

## Support or Contact
Please use the issue tracker for problems, questions, or feature requests. If you would rather email with questions or comments, you can contact [Charles Crabtree](mailto:ccrabtr@umich.edu) and he will address the issue.

If you would like to contribute to the package, that is great! We welcome pull requests and new developers.

## Tests
To test the software, users and potential contributors can use the example code provided in the documentation for each function.

## Thanks
Thanks to [Karl Broman](https://github.com/kbroman) and [Hadley Wickham]() for providing excellent free guies to building R packages.

### References
- Trochim, William M. K., and James P. Donnelly. 2008. _Research Methods Knowledge Base_. New York, NY: Cengage Learning.
