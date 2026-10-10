# Compare durable ownership, pending source and BOTH phase copies before releasing the lock.
$execute unless data storage scr_profile:players players."$(key)".meta{initialized:1b,current:$(from),pending:{from:$(from)}} run return 0
execute unless score @s scr_pf_cur matches 1..5 run return 0
scoreboard players set @s scr_pf_tmp -1
$execute store result score @s scr_pf_tmp run data get storage scr_profile:players players."$(key)".meta.pending.phase
execute unless score @s scr_pf_tmp matches 1..2 run return 0
execute unless score @s scr_pf_tmp = @s scr_pf_phase run return 0
$execute store success score @s scr_pf_tmp run data remove storage scr_profile:players players."$(key)".meta.pending
execute unless score @s scr_pf_tmp matches 1 run return 0
scoreboard players set @s scr_pf_phase 0
scoreboard players set @s scr_pf_lock 0
return 1
