## 1.0.6

* Progressive ZIP scoring depending on number of common first digits

## 1.0.5

* Re-query for city when fallback to adjacent ZIP happens

## 1.0.4

* Improve ranking of ranges, which catches some previously missed numbers, improves score, parity

## 1.0.3

* Enable setting weights on init
* Fixed error in sqlite metaphone() function
* Clean up and fix a bug scoring process
* Use all street parts for Levenshtein ranking, improving matching
