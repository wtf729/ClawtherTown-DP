data modify storage scr_profile:runtime work.step set value "load_inventory"
execute store result score @s scr_pf_ok run function scr_profile:component/inventory/load
execute unless score @s scr_pf_ok matches 1 run return 0
data modify storage scr_profile:runtime work.step set value "load_ender_chest"
execute store result score @s scr_pf_ok run function scr_profile:component/ender_chest/load
execute unless score @s scr_pf_ok matches 1 run return 0
data modify storage scr_profile:runtime work.step set value "load_xp"
execute store result score @s scr_pf_ok run function scr_profile:component/xp/load
execute unless score @s scr_pf_ok matches 1 run return 0
data modify storage scr_profile:runtime work.step set value "load_gamemode"
execute store result score @s scr_pf_ok run function scr_profile:component/gamemode/load
execute unless score @s scr_pf_ok matches 1 run return 0
return 1
