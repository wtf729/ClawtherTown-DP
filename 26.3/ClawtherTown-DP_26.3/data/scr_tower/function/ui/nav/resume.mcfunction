data modify storage scr_tower:runtime nav set value {view:"run",page:0,return_view:"run"}
# Resume explicitly restores an interrupted final-floor settlement; viewing home/list does not.
execute store result score #ok scr_tw run function scr_tower:guard
execute if score #ok scr_tw matches 1 if data storage scr_tower:runtime p.run{phase:"cleared",floor:60} run return run function scr_tower:settle
return 1
