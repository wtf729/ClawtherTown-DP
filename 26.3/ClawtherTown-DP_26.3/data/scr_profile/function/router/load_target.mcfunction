execute if score @s scr_pf_target matches 1 run return run function scr_profile:load/main
execute if score @s scr_pf_target matches 2 run return run function scr_profile:load/building
execute if score @s scr_pf_target matches 3 run return run function scr_profile:load/memory
execute if score @s scr_pf_target matches 4 run return run function scr_profile:load/star
execute if score @s scr_pf_target matches 5 run return run function scr_profile:load/sky
return 0
