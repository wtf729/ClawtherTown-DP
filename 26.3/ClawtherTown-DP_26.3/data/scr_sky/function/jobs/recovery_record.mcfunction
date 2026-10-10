$execute if data storage scr_sky:islands records.i$(id) run data modify storage scr_sky:islands records.i$(id).state set value "recovery"
$execute if data storage scr_sky:islands records.i$(id) run data modify storage scr_sky:islands records.i$(id).recovery set from storage scr_sky:jobs active
