execute unless data storage scr_profile:runtime work.target{initialized:1b,schema:1} run return 0
data modify storage scr_profile:runtime work.step set value "preflight_inventory"
execute store result score @s scr_pf_ok run function scr_profile:component/inventory/preflight
execute unless score @s scr_pf_ok matches 1 run return 0
data modify storage scr_profile:runtime work.step set value "preflight_ender_chest"
execute store result score @s scr_pf_ok run function scr_profile:component/ender_chest/preflight
execute unless score @s scr_pf_ok matches 1 run return 0
data modify storage scr_profile:runtime work.step set value "preflight_xp"
execute store result score @s scr_pf_ok run function scr_profile:component/xp/preflight
execute unless score @s scr_pf_ok matches 1 run return 0
data modify storage scr_profile:runtime work.step set value "preflight_gamemode"
execute store result score @s scr_pf_ok run function scr_profile:component/gamemode/preflight
execute unless score @s scr_pf_ok matches 1 run return 0
return 1
