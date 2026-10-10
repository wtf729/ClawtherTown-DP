execute store result score @s scr_pf_ok run function scr_profile:adapter/open
execute unless score @s scr_pf_ok matches 1 run return 0
# Never invent an absent source snapshot; verify it before any destructive operation.
execute store result score @s scr_pf_ok run function scr_profile:recovery/read_source
execute unless score @s scr_pf_ok matches 1 run return 0
execute store result score @s scr_pf_ok run function scr_profile:component/preflight
execute unless score @s scr_pf_ok matches 1 run return 0
# A rollback is also a transaction. It must stop being eligible for pre-clear retry BEFORE clearing.
scoreboard players set @s scr_pf_phase 3
function scr_profile:storage/phase with storage scr_profile:runtime work.ctx
execute store result score @s scr_pf_ok run function scr_profile:switch/clear
execute unless score @s scr_pf_ok matches 1 run return 0
scoreboard players set @s scr_pf_phase 4
function scr_profile:storage/phase with storage scr_profile:runtime work.ctx
execute store result score @s scr_pf_ok run function scr_profile:component/load
execute unless score @s scr_pf_ok matches 1 run return 0
execute store result score @s scr_pf_ok run function scr_profile:component/verify
execute unless score @s scr_pf_ok matches 1 run return 0
scoreboard players set @s scr_pf_phase 5
function scr_profile:storage/phase with storage scr_profile:runtime work.ctx
return run function scr_profile:storage/commit_wrapper
