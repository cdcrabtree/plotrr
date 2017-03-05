  ---
  title: 'Plotrr: Functions for making visual exploratory data analysis with nested data easier.'
  tags:
    - exploratory data analysis
    - nested data
    - visualization
  authors:
   - name: Charles Crabtree
     orcid: 0000-0001-5144-8671
     affiliation: 1
   - name: Michael J. Nelson
     orcid: 0000-0002-7665-7557
     affiliation: 2
  affiliations:
   - name: University of Michigan
     index: 1
   - name: Pennsylvania State University
     index: 2
  date: 12 February 2017
  bibliography: paper.bib
  ---

# Summary


Social scientists can improve their research by conducting exploratory data analysis [@Tukey1977]. One reason why they might not, however, is because it takes additional time. This is particularly true for researchers who use nested data. The issue here is that few existing functions help scholars _easily_ visualize relationships within groups/units. 

plotrr helps address this issue by providing several functions that make visual EDA easier to conduct.  The focus of many of the package's functions is to create plots that can help researchers explore relationships within nested data. Among other things, these functions can help scholars assess the extent to which expected relationships between variables occur in specific cases. `bivarplots` creates a bivariate plot for every group/unit in the data, `dotplots` creates a dot plot for every group/unit, and `violinplots` creates a violin plot for every group/unit. 

As demonstrated in [@CrabtreeNelson2017], creating and interpreting plots like this this can help scholars find initial support for their theoretical expectations prior to conducting analysis with pooled data. The intuition here is that researchers can check their initial priors about relationships within cases. When the data support those priors, scholars have some additional evidence that the processes they theorize actually occur in the real world.

Another set of functions helps the researcher evaluate correlations between measures within groups/units. `groupcor` returns a tibble data frame with group/unit identifiers and the correlation coefficient between two measures for each group/unit in a data frame. `groupcorplot` performs a similar function and returns a figure that plots the correlation coefficient between measures within groups/units. These functions can help researchers identify important patterns across groups/units. 

The visual EDA functions can also help scholars check the correlation between competing measures - such as different measures of state human rights practices - within units. This is one way to check the construct validity of the measures [@TrochimDonnelly2008]. This also might be useful to generate new empirical puzzles; if measures disagree in important cases, why is this the case? 

In addition to these functions, the package also includes `histplots`, which creates histograms of a measure for each group/unit, and `bivarrugplot`, which returns a plot of the bivariate relationship between two measures alongside a rugplot of each measure.

Finally, the package also contains several "helper," or convenience, functions.

### References

