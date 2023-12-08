
*Declare the data as time series using the tsset command.
tsset year
regress trees_sold year
*you can interpret the coefficient of "year" as the average annual increase in tree sales.