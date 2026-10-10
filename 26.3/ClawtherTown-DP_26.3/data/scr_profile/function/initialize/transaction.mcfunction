execute store result score @s scr_pf_ok run function scr_profile:storage/begin_wrapper
execute unless score @s scr_pf_ok matches 1 run return 0
execute store result score @s scr_pf_ok run function scr_profile:router/save_current
execute unless score @s scr_pf_ok matches 1 run return 0
scoreboard players set @s scr_pf_phase 2
function scr_profile:storage/phase with storage scr_profile:runtime work.ctx
# Main was saved exactly once. Do not call the normal save-current transaction again.
execute if score @s scr_pf_target matches 1 run return run function scr_profile:storage/commit_wrapper
return run function scr_profile:switch/continue
