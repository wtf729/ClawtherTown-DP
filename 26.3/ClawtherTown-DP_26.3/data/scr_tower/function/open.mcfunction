execute store result score #open scr_tw run function scr_tower:context/open
execute unless score #open scr_tw matches 1 run return 0
data modify storage scr_tower:runtime nav set value {view:"home",page:0,return_view:"run"}
function scr_tower:ui/nav/write with storage scr_tower:runtime ctx
return run function scr_tower:ui/render
