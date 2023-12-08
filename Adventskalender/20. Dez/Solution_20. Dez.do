
*Data cleaning
replace number_produced = "." if number_produced == "missing"
destring number_produced, replace //make data numeric
replace number_produced = . if number_produced < 0

replace toy_type = "Toy Train" if regexm(toy_type, "Toy Train|ToyTrain")
replace toy_type = "Teddy Bear" if regexm(toy_type, "TeddyBear|teddy bear")

* Calculate the Total Number of Toy Trains Produced
egen total_trains = sum(number_produced), by(toy_type)
list total_trains if toy_type == "Toy Train"
