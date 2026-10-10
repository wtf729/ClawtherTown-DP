scoreboard players set #cd_remaining scr_sk 0
execute unless data storage scr_sky:runtime work.clock_stamp run return 1
execute store result score #cd_now scr_sk run time query gametime
execute store result score #cd_last scr_sk run data get storage scr_sky:runtime work.clock_stamp 1
scoreboard players operation #cd_elapsed scr_sk = #cd_now scr_sk
scoreboard players operation #cd_elapsed scr_sk -= #cd_last scr_sk
execute if score #cd_elapsed scr_sk matches ..-1 run scoreboard players operation #cd_elapsed scr_sk += #modtime scr_sk
scoreboard players set #cd_remaining scr_sk 12000
scoreboard players operation #cd_remaining scr_sk -= #cd_elapsed scr_sk
execute if score #cd_remaining scr_sk matches ..-1 run scoreboard players set #cd_remaining scr_sk 0
