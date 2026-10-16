execute store result score #open scr_tw run function scr_tower:context/open
execute unless score #open scr_tw matches 1 run return 0
function scr_tower:ui/nav/read with storage scr_tower:runtime ctx
execute store result storage scr_tower:runtime ctx.token int 1 run scoreboard players get @s tower_action
data remove storage scr_tower:runtime route
function scr_tower:ui/lookup with storage scr_tower:runtime ctx
execute unless data storage scr_tower:runtime route.op run return 0
function scr_tower:ui/reset with storage scr_tower:runtime ctx
# Close needs no business phase authorization, but still requires a live UUID ticket.
execute if data storage scr_tower:runtime route{op:"close"} run return run dialog clear @s
execute store result score #valid scr_tw run function scr_tower:ui/validate
execute if score #valid scr_tw matches 1 run function scr_tower:ui/act
function scr_tower:ui/nav/write with storage scr_tower:runtime ctx
return run function scr_tower:ui/render
