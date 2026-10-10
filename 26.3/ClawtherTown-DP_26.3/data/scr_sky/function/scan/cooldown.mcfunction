execute store result score #last scr_sk run data get storage scr_sky:runtime work.island.last_scan_started 1
scoreboard players operation #elapsed scr_sk = #now scr_sk
scoreboard players operation #elapsed scr_sk -= #last scr_sk
execute if score #elapsed scr_sk matches ..-1 run scoreboard players operation #elapsed scr_sk += #modtime scr_sk
