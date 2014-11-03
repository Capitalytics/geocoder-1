## 1.0.7

* Fixing progressive ZIP scoring with only two steps: first three digits equal (0.5), and all digits equal (1.0)

## 1.0.6

* Progressive ZIP scoring depending on number of common first digits
* Disabling intersection geocoding as it doesn't seem to work, and working really slow

## 1.0.5

* Re-query for city when fallback to adjacent ZIP happens

## 1.0.4

* Improve ranking of ranges, which catches some previously missed numbers, improves score, parity

## 1.0.3

* Enable setting weights on init
* Fixed error in sqlite metaphone() function
* Clean up and fix a bug scoring process
* Use all street parts for Levenshtein ranking, improving matching
