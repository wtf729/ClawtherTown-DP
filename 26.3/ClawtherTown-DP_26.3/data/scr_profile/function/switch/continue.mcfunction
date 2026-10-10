execute store result score @s scr_pf_ok run function scr_profile:router/load_target
execute unless score @s scr_pf_ok matches 1 run return 0
execute store result score @s scr_pf_ok run function scr_profile:component/preflight
execute unless score @s scr_pf_ok matches 1 run return 0
scoreboard players set @s scr_pf_phase 3
function scr_profile:storage/phase with storage scr_profile:runtime work.ctx
execute store result score @s scr_pf_ok run function scr_profile:switch/clear
execute unless score @s scr_pf_ok matches 1 run return 0
function scr_profile:switch/normalize
scoreboard players set @s scr_pf_phase 4
function scr_profile:storage/phase with storage scr_profile:runtime work.ctx
execute store result score @s scr_pf_ok run function scr_profile:component/load
execute unless score @s scr_pf_ok matches 1 run return 0
execute store result score @s scr_pf_ok run function scr_profile:component/verify
execute unless score @s scr_pf_ok matches 1 run return 0
scoreboard players set @s scr_pf_phase 5
function scr_profile:storage/phase with storage scr_profile:runtime work.ctx
return run function scr_profile:storage/commit_wrapper
