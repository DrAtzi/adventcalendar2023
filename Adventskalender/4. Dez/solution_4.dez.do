*Simple bar graph
graph bar weightintons, over(typeofgifts) bar(1, color(red)) ///
    title("Santa's Sleigh Load by Trip")
	
	
*Organized bar graph with descending order of weight in tons and different colors per toy	
graph hbar weightintons, over(typeofgifts, sort(weightintons) descending) asyvars  ///
	scheme(s1color) ///
	bar(1, color(green)) ///
	bar(2, color(yellow)) ///
	bar(3, color(blue)) ///
	bar(4, color(purple)) ///
	bar(5, color(orange)) ///
	bar(6, color(red)) ///
    title("Santa's Sleigh Load by Trip") ///
	showyvars legend(off)
	


