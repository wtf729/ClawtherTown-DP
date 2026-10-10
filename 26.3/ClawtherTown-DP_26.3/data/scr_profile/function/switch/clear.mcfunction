execute store result score @s scr_pf_ok run function scr_profile:component/inventory/clear
execute unless score @s scr_pf_ok matches 1 run return 0
execute store result score @s scr_pf_ok run function scr_profile:component/ender_chest/clear
execute unless score @s scr_pf_ok matches 1 run return 0
execute store result score @s scr_pf_ok run function scr_profile:component/xp/clear
execute unless score @s scr_pf_ok matches 1 run return 0
return 1
