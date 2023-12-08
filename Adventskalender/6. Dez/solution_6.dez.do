use "R:\people\Adventskalender\6. Dez\candy_production.dta", clear
merge 1:1 candy_id using "R:\people\Adventskalender\6. Dez\candy_sales.dta"
browse

sort candy_type
bysort candy_type: gen sales_ratio= sales_quantity/ production_quantity *100 
li candy_type sales_ratio