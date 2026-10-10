$data modify storage scr_sky:runtime work.recovery_offset set from storage scr_sky:config spawn_recovery.columns[$(column)]
$scoreboard players set #recovery_x scr_sk $(cx)
$scoreboard players set #recovery_z scr_sk $(cz)
execute store result score #recovery_dx scr_sk run data get storage scr_sky:runtime work.recovery_offset.x
execute store result score #recovery_dz scr_sk run data get storage scr_sky:runtime work.recovery_offset.z
scoreboard players operation #recovery_x scr_sk += #recovery_dx scr_sk
scoreboard players operation #recovery_z scr_sk += #recovery_dz scr_sk
data modify storage scr_sky:jobs active.candidate set value {yaw:0f,pitch:0f}
execute store result storage scr_sky:jobs active.candidate.x int 1 run scoreboard players get #recovery_x scr_sk
execute store result storage scr_sky:jobs active.candidate.z int 1 run scoreboard players get #recovery_z scr_sk
$data modify storage scr_sky:jobs active.candidate.y set value $(y)
function scr_sky:jobs/travel_recovery/center_candidate with storage scr_sky:jobs active.candidate
scoreboard players set #spawn_safe scr_sk 0
execute in scr:sky store result score #spawn_safe scr_sk run function scr_sky:island/spawn/safe with storage scr_sky:jobs active.candidate
