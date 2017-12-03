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

## Note: This paper describes the 0.3.0 version of the software. Check the README for current info about the package.

Large social science literatures examine the role of an individual's ethnicity or nationality on a host of behaviors. This means that they often want to know the ethnicities or nationalities of individuals. Not all pre-existing datasets contain this information, though, and it can be difficult for scholars to locate if they work with exotic samples. Even if reseachers do not have information about the ethnicity or nationality of individuals, though, they often know their names. Thanks to recent developments in machine learning, these names can be used to probabilistically identify the ethnic or national origins of their bearers. These exciting advancements can potentially catalyze existing research programs on race, ethnicity, and coethnicity.

Unfortunately, most of the available name classifiers are very costly to use. While some allow free access, they typically impose extremely restrictive limits on the number of names that can be classified in a period, such as 100 per month (see [NamSor](http://www.namsor.com/)). One free tool with a generous limit is [NamePrism](http://name-prism.com/) (Ye et al. 2017), a non-commercial program intended to support academic research. At the time of this writing, NamePrism provides users with an accessible web-based interface that can classify names one at a time. Researchers who want to classify more than one name at a time can, in theory, use the publicly available [API](http://name-prism.com/api). In contrast to other tools and services, NamePrism allows up to 1000 API requests per day.

In order to classify names in bulk, however, researchers would need to write code to automatically query the API. That could be a significant barrier to use, though, as many scholars likely lack the requisite programming experience. The `nomine` package address that problem by providing two functions that make the task of quering NameSor's API trivally easy. The first, `get_ethnicities`, takes a vector of names and returns a data frame that contains the predicted probability that each name bearer belongs to one of 6 U.S. ethnicities. The second, `get_nationalities`, performs the same function but for 39 lead nationalities instead. See [http://name-prism.com/about](http://name-prism.com/about) for more information about the specific ethnicities and nationalities covered by NameSor.


### References

