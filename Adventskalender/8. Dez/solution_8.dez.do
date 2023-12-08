gen Event_Date_Standard = date(event_date, "DMY") if strpos(event_date, "/")
replace Event_Date_Standard = date(event_date, "MDY") if strpos(event_date, ",")
replace Event_Date_Standard = date(event_date, "YMD") if strpos(event_date, "-")
replace Event_Date_Standard = date(event_date, "DMY") if strpos(event_date, ".")

format Event_Date_Standard %tdCY-N-D