scoreboard players set #place_x scr_sk -1
scoreboard players set #place_z scr_sk -1
scoreboard players set #endx scr_sk 0
scoreboard players set #endz scr_sk 0
function scr_sky:jobs/make_tickets
data modify storage scr_sky:jobs active.after_load set value "hub_travel"
data modify storage scr_sky:jobs active.phase set value "load"
data modify storage scr_sky:jobs active.wait set value 0
