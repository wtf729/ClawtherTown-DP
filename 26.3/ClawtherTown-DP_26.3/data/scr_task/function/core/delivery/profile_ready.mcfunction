execute unless entity @s[type=minecraft:player] run return 0
$execute unless predicate $(predicate) run return 0
execute unless score @s scr_pf_init matches 1 run return 0
$execute unless score @s scr_pf_cur matches $(profile) run return 0
execute unless score @s scr_pf_lock matches 0 run return 0
return 1
