[![Build Status](https://travis-ci.org/cdcrabtree/plotrr.svg?branch=master)](https://travis-ci.org/cdcrabtree/plotrr) [![Build status](https://ci.appveyor.com/api/projects/status/github/cdcrabtree/plotrr?svg=true)](https://ci.appveyor.com/api/projects/status/github/cdcrabtree/)

## plotrr

Social scientists can do better research by doing more exploratory data analysis (Tukey 1977). One reason why they might not, however, is because it takes additional time. This is particularly true for R users, who do not have single-line commands for many common visual EDA techniques. plotrr helps address this issue by providing several functions that make visual EDA easier to conduct. 

The focus of many functions is to create plots that can help researchers explore relationships within panel datasets. Among other things, these functions can help scholars assess the extent to which expected relationships occur in important cases. In addition to visualization functions, the package also contains several "helper," or convenience, functions.

### References
Tukey, John W. 1977. _Exploratory Data Analysis_. New York, NY: Pearson.

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
