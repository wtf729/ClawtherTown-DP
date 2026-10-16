$data modify storage scr_tower:players players."$(key)" set from storage scr_tower:runtime p
# A no-change data write returns 0; verify content equality instead.
$data modify storage scr_tower:runtime check set from storage scr_tower:players players."$(key)"
execute store success score #different scr_tw run data modify storage scr_tower:runtime check set from storage scr_tower:runtime p
execute if score #different scr_tw matches 1 run return 0
return 1
