$execute store result score @s scr_pf_cur run data get storage scr_profile:players players."$(key)".meta.current
execute unless score @s scr_pf_cur matches 1..5 run return run function scr_profile:switch/fault
scoreboard players set @s scr_pf_init 1
scoreboard players set @s scr_pf_lock 0
scoreboard players set @s scr_pf_phase 0
# This first-initialization tick ends here; normal routing resumes next tick.
return 1
