execute unless score #config_ok scr_sk matches 1 run return 0
execute if data storage scr_sky:runtime busy run return 0
function scr_sky:core/context/open
scoreboard players set @s scr_sk_id 0
scoreboard players set @s scr_sk_role 0
execute store result score #px scr_sk run data get entity @s Pos[0] 1
execute store result score #pz scr_sk run data get entity @s Pos[2] 1
function scr_sky:hub/check
execute if score #hub scr_sk matches 0 run function scr_sky:role/locate
# Only Survival/Adventure participate in automatic regional mode control.
execute if score @s scr_sk_role matches 0 if entity @s[gamemode=survival] run gamemode adventure @s
execute if score @s scr_sk_role matches 1..3 if entity @s[gamemode=adventure] run gamemode survival @s
scoreboard players set @s scr_sk_mode 1
function scr_sky:core/context/close
execute if entity @s[tag=scr_task.sky_00_active] run function scr_task:event/sky_updated
