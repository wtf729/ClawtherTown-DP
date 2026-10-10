data modify storage scr_profile:runtime work.sample set value {initialized:1b,schema:1,inventory:[],ender_chest:[],xp:{levels:0,points:0},gamemode:0}
data modify storage scr_profile:runtime work.step set value "save_inventory"
execute store result score @s scr_pf_ok run function scr_profile:component/inventory/save
execute unless score @s scr_pf_ok matches 1 run return 0
data modify storage scr_profile:runtime work.step set value "save_ender_chest"
execute store result score @s scr_pf_ok run function scr_profile:component/ender_chest/save
execute unless score @s scr_pf_ok matches 1 run return 0
data modify storage scr_profile:runtime work.step set value "save_xp"
execute store result score @s scr_pf_ok run function scr_profile:component/xp/save
execute unless score @s scr_pf_ok matches 1 run return 0
data modify storage scr_profile:runtime work.step set value "save_gamemode"
execute store result score @s scr_pf_ok run function scr_profile:component/gamemode/save
execute unless score @s scr_pf_ok matches 1 run return 0
return 1
