
/*
To count missing values in a dataset in Stata, you'll first need to ensure that missing values are appropriately coded. In Stata, missing numeric values are usually denoted by a dot .. If your dataset uses a different symbol (like - in the example dataset), you'll need to recode these symbols as proper missing values. Then, you can use Stata commands to count these missing values.
*/


count if missing(visitors)
*Missings not yet as missings defined

destring visitors, replace ignore("-")
count if missing(visitors)