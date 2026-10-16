execute unless data storage scr_tower:runtime verify_b[0] run return 1
data modify storage scr_tower:runtime check set from storage scr_tower:runtime verify_a[0].handler
execute store success score #different scr_tw run data modify storage scr_tower:runtime check set from storage scr_tower:runtime verify_b[0].handler
execute if score #different scr_tw matches 1 run return 0
data modify storage scr_tower:runtime check set from storage scr_tower:runtime verify_a[0].parameters
execute store success score #different scr_tw run data modify storage scr_tower:runtime check set from storage scr_tower:runtime verify_b[0].parameters
execute if score #different scr_tw matches 1 run return 0
data remove storage scr_tower:runtime verify_a[0]
data remove storage scr_tower:runtime verify_b[0]
return run function scr_tower:mail/verify_loop
