data modify storage scr_tower:runtime pool set from storage scr_tower:runtime fc.items
execute store result score #roll scr_tw run function scr_tower:generate/roll with storage scr_tower:runtime pool
return run function scr_tower:generate/weighted
