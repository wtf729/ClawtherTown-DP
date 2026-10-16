# Called as the actual player. Check both the current dimension and the loaded inventory profile.
execute unless entity @s[type=minecraft:player] run return 0
function scr:shop/policy/profile
execute if score #profile scr_shop matches 5 run return 0
execute unless score @s scr_pf_init matches 1 run return 0
execute unless score @s scr_pf_lock matches 0 run return 0
execute unless score @s scr_pf_phase matches 0 run return 0
execute if score #busy scr_pf_lock matches 1 run return 0
execute unless score @s scr_pf_cur = #profile scr_shop run return 0
execute if entity @s[nbt={Health:0.0f}] run return 0
return 1
