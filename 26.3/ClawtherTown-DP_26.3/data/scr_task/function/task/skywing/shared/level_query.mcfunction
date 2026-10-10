data modify storage scr_task:runtime work.level_queried set value 1b
data modify storage scr_task:runtime work.sky_level set value 0
execute store result score #sky_level_ok scr_tk run function scr_sky:api/memberships
execute if score #sky_level_ok scr_tk matches 1 run data modify storage scr_task:runtime work.sky_level set from storage scr_sky:runtime result.max_level
