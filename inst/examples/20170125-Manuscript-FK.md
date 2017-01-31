---
title: "Printing in a Periphery: a Quantitative Study of Finnish Knowledge Production, 1640-1828"
author: "Mikko Tolonen, Jani Marjanen, Hege Roivainen, Leo Lahti"
date: "2017-02-01"
output: 
  beamer_presentation:
    theme: "boxes"
    colortheme: "orchid"
    fonttheme: "professionalfonts"
  pdf_document:
fontsize: 13pt
---









### Paper consumption per title

Paper consumption per title in 1757–1765, 1766–1774, and 1775–1783 in
Stockholm, Lund and Uppsala in Kungliga.

![plot of chunk paper_per_title](2017-manuscript/paper_per_title-1.png)

|period    |publication_place |    n|      paper| paper_per_title|
|:---------|:-----------------|----:|----------:|---------------:|
|1757-1765 |Lund              |   64|  152453.82|       2382.0909|
|1757-1765 |Stockholm         | 1656| 2375424.83|       1434.4353|
|1757-1765 |Uppsala           |  177|  307949.65|       1739.8285|
|1766-1774 |Lund              |   63|   92062.41|       1461.3081|
|1766-1774 |Stockholm         | 3879| 3757813.72|        968.7584|
|1766-1774 |Uppsala           |  350|  498522.87|       1424.3511|
|1775-1783 |Lund              |   77|  119119.10|       1547.0013|
|1775-1783 |Stockholm         | 1863| 2674096.92|       1435.3714|
|1775-1783 |Uppsala           |  191|  388122.22|       2032.0535|





### Book production and Riksdag assemblies

According to Kungliga in the the long eighteenth century.

![plot of chunk riksdar](2017-manuscript/riksdar-1.png)


### Book production

Book production by year in Turku in Fennica and Kungliga 1640–1828 as a percentage of all books in the catalogues. 

![plot of chunk bookprod](2017-manuscript/bookprod-1.png)


### Kungliga / Linkoping




[Document listing for Kungliga / Linköping 1640 - 1828](output.tables/Linkoping.tab)


### Title count and publisher count in Linköping


```
## Error: attempt to use zero-length variable name
```

```
## Error in read.table(file = file, header = header, sep = sep, quote = quote, : no lines available in input
```

```
## Error in melt(pop, "Year"): object 'pop' not found
```

```
## Error in colnames(pop) <- c("publication_decade", "publication_place", : object 'pop' not found
```

```
## Error in as_data_frame(pop): object 'pop' not found
```

```
## Error in eval(expr, envir, enclos): object 'pop' not found
```

```
## Error in setdiff(pop$publication_place, "Year"): object 'pop' not found
```

```
## Error in filter_impl(.data, dots): object 'cities' not found
```

```
## Error in gsub("Linköping", "Linkoping", pop$publication_place): object 'pop' not found
```

```
## Error in inner_join(pop, df, by = c("publication_decade", "publication_place")): object 'pop' not found
```

```
## Error in mutate_impl(.data, dots): non-numeric argument to binary operator
```

```
## Error in eval(expr, envir, enclos): object 'publication_place' not found
```

![plot of chunk percapita](2017-manuscript/percapita-1.png)
