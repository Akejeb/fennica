---
title: "Publication place preprocessing summary"
author: "Leo Lahti"
date: "2016-04-27"
output: markdown_document
---

### Publication places

[Accepted publication countries](output.tables/country_accepted.csv)

[Publication country not identified](output.tables/publication_place_missingcountry.csv) (add to [country mappings](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/reg2country.csv))

[Accepted publication places](output.tables/publication_place_accepted.csv)

[Ambiguous publication places](output.tables/publication_place_ambiguous.csv)

[Ambiguous region-country mappings](output.tables/publication_country_ambiguous.csv)

[Discarded publication places](output.tables/publication_place_discarded.csv) (add to [synonyme list](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/PublicationPlaceSynonymes.csv) to accept; or add to [publication place stopwords](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/stopwords_for_place.csv) to completely discard the term)

[Publication place conversions](output.tables/publication_place_conversion_nontrivial.csv)

[Places missing geocoordinate information](output.tables/absentgeocoordinates.csv). Altogether ``1.1``% of the documents have missing geocoordinates.



Top-20 publication places are shown together with the number of documents. This info is available for 68323 documents (96%). There are 437 unique publication places. Overall 98.9% of the places could be matched to geographic coordinates (from the [Geonames](http://download.geonames.org/export/dump/) database).


<img src="figure/summaryplace-1.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" /><img src="figure/summaryplace-2.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" />



|name    |     n|   fraction|
|:-------|-----:|----------:|
|Finland | 58073| 81.5082529|
|Sweden  |  5072|  7.1187963|
|Russia  |  2434|  3.4162362|
|USA     |   808|  1.1340669|
|Germany |   765|  1.0737143|
|Estonia |   285|  0.4000112|