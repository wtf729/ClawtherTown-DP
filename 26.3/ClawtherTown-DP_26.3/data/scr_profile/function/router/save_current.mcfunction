execute if score @s scr_pf_cur matches 1 run return run function scr_profile:save/main
execute if score @s scr_pf_cur matches 2 run return run function scr_profile:save/building
execute if score @s scr_pf_cur matches 3 run return run function scr_profile:save/memory
execute if score @s scr_pf_cur matches 4 run return run function scr_profile:save/star
execute if score @s scr_pf_cur matches 5 run return run function scr_profile:save/sky
return 0
