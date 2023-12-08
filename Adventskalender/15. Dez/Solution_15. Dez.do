levelsof gift_type, local(gifts)
local most_requested ""
local highest_count 0

foreach g in `gifts' {
    count if gift_type == "`g'"
    if r(N) > `highest_count' {
        local most_requested "`g'"
        local highest_count = r(N)
    }
}
di "The most requested gift type is: `most_requested'"
