data modify storage scr_tower:runtime group set value "main"
scoreboard players set #resolved_profile scr_tw 1
execute if predicate scr_profile:profile/building run scoreboard players set #resolved_profile scr_tw 2
execute if predicate scr_profile:profile/memory run scoreboard players set #resolved_profile scr_tw 3
execute if predicate scr_profile:profile/star run scoreboard players set #resolved_profile scr_tw 4
execute if predicate scr_profile:profile/sky run scoreboard players set #resolved_profile scr_tw 5
execute if predicate scr_profile:profile/sky run data modify storage scr_tower:runtime group set value "sky"
execute unless score @s scr_pf_init matches 1 run return 0
execute unless score @s scr_pf_lock matches 0 run return 0
execute unless score @s scr_pf_phase matches 0 run return 0
execute if score #busy scr_pf_lock matches 1 run return 0
execute if entity @s[nbt={Health:0.0f}] run return 0
execute unless score @s scr_pf_cur = #resolved_profile scr_tw run return 0
return 1
