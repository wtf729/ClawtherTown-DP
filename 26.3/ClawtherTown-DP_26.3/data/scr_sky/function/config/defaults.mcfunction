# Missing template/Y are deliberately absent. Offsets are adjustable before deployment.
execute unless data storage scr_sky:config geometry run data modify storage scr_sky:config geometry set value {"origin_x":4096,"origin_z":4096,"spacing":1024,"size_x":256,"size_z":256,"columns":1024,"max_id":1048576,"min_y":-64,"max_y":319,"height":384,"hub_min_x":-2048,"hub_max_x":2047,"hub_min_z":-2048,"hub_max_z":2047}
execute unless data storage scr_sky:config starter run data modify storage scr_sky:config starter set value {ready:0b,offset:{x:0,y:0,z:0}}
execute unless data storage scr_sky:config hub run data modify storage scr_sky:config hub set value {ready:0b}
execute unless data storage scr_sky:config scan run data modify storage scr_sky:config scan set value {enabled:1b,cooldown_ticks:12000,load_timeout:200}
data modify storage scr_sky:config dimensions set value {main:"scr:sky",nether:"scr:sky_the_nether",end:"scr:sky_the_end",type:"minecraft:overworld",buffer:"scr_sky:scanner"}
execute if data storage scr_sky:islands meta{next_id:1} run data modify storage scr_sky:islands geometry set from storage scr_sky:config geometry
execute unless data storage scr_sky:islands geometry run data modify storage scr_sky:islands geometry set from storage scr_sky:config geometry
scoreboard players set #config_ok scr_sk 1
data modify storage scr_sky:runtime geometry_check set from storage scr_sky:islands geometry
execute store success score #changed scr_sk run data modify storage scr_sky:runtime geometry_check set from storage scr_sky:config geometry
execute if score #changed scr_sk matches 1 run scoreboard players set #config_ok scr_sk 0
# v1 supports this bounded, aligned geometry; incompatible edits fail closed.
function scr_sky:config/geometry
# Retire the old linear divisor; the exact polynomial is implemented in level/ .
data remove storage scr_sky:config scan.value_per_level
scoreboard players set #million scr_sk 1000000
execute unless data storage scr_sky:config scan{cooldown_ticks:12000} run scoreboard players set #config_ok scr_sk 0
execute store result score #timeout_config scr_sk run data get storage scr_sky:config scan.load_timeout 1
execute unless score #timeout_config scr_sk matches 20..1200 run scoreboard players set #config_ok scr_sk 0
execute if score #config_ok scr_sk matches 0 run tellraw @a {"translate":"message.scr.sky.config_unavailable","fallback":"[Sky] 空岛服务配置异常，相关操作已停用。请联系管理员！","color":"red"}
