execute if score @s scr_pf_lock matches 1 run return 0
execute if score #busy scr_pf_lock matches 1 run return 0
execute if entity @s[nbt={Health:0.0f}] run return 0
function scr_profile:router/resolve
scoreboard players set @s scr_pf_cur 0
execute store result score @s scr_pf_ok run function scr_profile:context/open
execute if score @s scr_pf_ok matches 1 run function scr_profile:initialize/bound with storage scr_profile:runtime work.ctx
function scr_profile:context/release
