execute unless data storage scr_mail:runtime work.mail.title run return 0
execute unless data storage scr_mail:runtime work.mail.source run return 0
execute unless data storage scr_mail:runtime work.mail.event_id run return 0
execute store result score #size scr_ml_n run data get storage scr_mail:runtime work.mail.title
execute unless score #size scr_ml_n matches 1..100 run return 0
execute store result score #size scr_ml_n run data get storage scr_mail:runtime work.mail.source
execute unless score #size scr_ml_n matches 1..64 run return 0
execute store result score #size scr_ml_n run data get storage scr_mail:runtime work.mail.event_id
execute unless score #size scr_ml_n matches 1..128 run return 0
scoreboard players set #valid scr_ml_n 0
execute if data storage scr_mail:runtime work.mail{claim_profile:"main"} run scoreboard players set #valid scr_ml_n 1
execute if data storage scr_mail:runtime work.mail{claim_profile:"sky"} run scoreboard players set #valid scr_ml_n 1
execute if data storage scr_mail:runtime work.mail{claim_profile:"any"} run scoreboard players set #valid scr_ml_n 1
execute if data storage scr_mail:runtime work.mail{claim_profile:"building"} run scoreboard players set #valid scr_ml_n 1
execute if data storage scr_mail:runtime work.mail{claim_profile:"memory"} run scoreboard players set #valid scr_ml_n 1
execute if data storage scr_mail:runtime work.mail{claim_profile:"star"} run scoreboard players set #valid scr_ml_n 1
execute unless score #valid scr_ml_n matches 1 run return 0
execute store result score #count scr_ml_n run data get storage scr_mail:runtime work.mail.rewards
execute unless score #count scr_ml_n matches 1..32 run return 0
scoreboard players set #reward scr_ml_n 0
return run function scr_mail:send/validate_loop
