$scoreboard players set #recovery_x scr_sk $(x)
$scoreboard players set #recovery_z scr_sk $(z)
scoreboard players operation #recovery_x scr_sk += #recovery_x scr_sk
scoreboard players operation #recovery_z scr_sk += #recovery_z scr_sk
scoreboard players add #recovery_x scr_sk 1
scoreboard players add #recovery_z scr_sk 1
execute store result storage scr_sky:jobs active.candidate.x double 0.5 run scoreboard players get #recovery_x scr_sk
execute store result storage scr_sky:jobs active.candidate.z double 0.5 run scoreboard players get #recovery_z scr_sk
