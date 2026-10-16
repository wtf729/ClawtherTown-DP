data modify storage scr_tower:runtime check set from storage scr_tower:runtime route.run
execute store success score #different scr_tw run data modify storage scr_tower:runtime check set from storage scr_tower:runtime p.run.id
execute if score #different scr_tw matches 1 run return 0
data modify storage scr_tower:runtime check set from storage scr_tower:runtime route.floor
execute store success score #different scr_tw run data modify storage scr_tower:runtime check set from storage scr_tower:runtime p.run.floor
execute if score #different scr_tw matches 1 run return 0
data modify storage scr_tower:runtime check set from storage scr_tower:runtime route.phase
execute store success score #different scr_tw run data modify storage scr_tower:runtime check set from storage scr_tower:runtime p.run.phase
execute if score #different scr_tw matches 1 run return 0
data modify storage scr_tower:runtime check set from storage scr_tower:runtime route.view
execute store success score #different scr_tw run data modify storage scr_tower:runtime check set from storage scr_tower:runtime nav.view
execute if score #different scr_tw matches 1 run return 0
data modify storage scr_tower:runtime check set from storage scr_tower:runtime route.page
execute store success score #different scr_tw run data modify storage scr_tower:runtime check set from storage scr_tower:runtime nav.page
execute if score #different scr_tw matches 1 run return 0
return 1
