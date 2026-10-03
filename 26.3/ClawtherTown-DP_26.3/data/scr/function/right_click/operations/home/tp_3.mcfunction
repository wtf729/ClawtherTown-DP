execute unless data entity @s data.Dimension run return 0
data modify storage scr:home_call dimension_check set from storage scr:home_call target.dim
execute store success score #dimension_changed scr_home_call run data modify storage scr:home_call dimension_check set from entity @s data.Dimension
$execute if score #dimension_changed scr_home_call matches 0 at @s run summon minecraft:marker ~ ~ ~ {Tags:["scr.home_destination"],data:{call:$(call)}}
