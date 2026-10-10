execute if score @s scr_pf_lock matches 1 run return 0
execute if score #busy scr_pf_lock matches 1 run return 0
execute if score @s scr_pf_cur = @s scr_pf_target run return 0
execute store result score @s scr_pf_ok run function scr_profile:context/open
execute if score @s scr_pf_ok matches 1 run function scr_profile:switch/locked
function scr_profile:context/release
