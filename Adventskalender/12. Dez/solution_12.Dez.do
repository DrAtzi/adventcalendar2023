local total_flights 0

foreach r in Dasher Dancer Prancer Vixen Comet Cupid Donner Blitzen {
    qui sum flights_completed if reindeer_name == "`r'", meanonly
    local total_flights `total_flights' + r(sum)
}

di "Total practice flights completed: " `total_flights'
