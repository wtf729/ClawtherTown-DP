execute if score #token scr_tw matches 2147483647 run return 0
execute store result storage scr_tower:runtime route.token int 1 run scoreboard players add #token scr_tw 1
data modify storage scr_tower:runtime route.run set from storage scr_tower:runtime p.run.id
data modify storage scr_tower:runtime route.floor set from storage scr_tower:runtime p.run.floor
data modify storage scr_tower:runtime route.phase set from storage scr_tower:runtime p.run.phase
data modify storage scr_tower:runtime route.view set from storage scr_tower:runtime nav.view
data modify storage scr_tower:runtime route.page set from storage scr_tower:runtime nav.page
function scr_tower:ui/ticket with storage scr_tower:runtime ctx
function scr_tower:ui/command with storage scr_tower:runtime route

return 1
