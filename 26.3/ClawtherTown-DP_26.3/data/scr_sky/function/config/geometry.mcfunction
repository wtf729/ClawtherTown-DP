scoreboard players set #g_origin_x scr_sk 0
execute store result score #g_origin_x scr_sk run data get storage scr_sky:config geometry.origin_x 1
execute unless score #g_origin_x scr_sk matches 2048..1048576 run scoreboard players set #config_ok scr_sk 0
scoreboard players set #g_origin_z scr_sk 0
execute store result score #g_origin_z scr_sk run data get storage scr_sky:config geometry.origin_z 1
execute unless score #g_origin_z scr_sk matches 2048..1048576 run scoreboard players set #config_ok scr_sk 0
scoreboard players set #g_spacing scr_sk 0
execute store result score #g_spacing scr_sk run data get storage scr_sky:config geometry.spacing 1
execute unless score #g_spacing scr_sk matches 16..16384 run scoreboard players set #config_ok scr_sk 0
scoreboard players set #g_size_x scr_sk 0
execute store result score #g_size_x scr_sk run data get storage scr_sky:config geometry.size_x 1
execute unless score #g_size_x scr_sk matches 16..1024 run scoreboard players set #config_ok scr_sk 0
scoreboard players set #g_size_z scr_sk 0
execute store result score #g_size_z scr_sk run data get storage scr_sky:config geometry.size_z 1
execute unless score #g_size_z scr_sk matches 16..1024 run scoreboard players set #config_ok scr_sk 0
scoreboard players set #g_columns scr_sk 0
execute store result score #g_columns scr_sk run data get storage scr_sky:config geometry.columns 1
execute unless score #g_columns scr_sk matches 1..1024 run scoreboard players set #config_ok scr_sk 0
scoreboard players set #g_max_id scr_sk 0
execute store result score #g_max_id scr_sk run data get storage scr_sky:config geometry.max_id 1
execute unless score #g_max_id scr_sk matches 1..1048576 run scoreboard players set #config_ok scr_sk 0
scoreboard players set #align scr_sk 16
scoreboard players operation #rem scr_sk = #g_origin_x scr_sk
scoreboard players operation #rem scr_sk %= #align scr_sk
execute unless score #rem scr_sk matches 0 run scoreboard players set #config_ok scr_sk 0
scoreboard players operation #rem scr_sk = #g_origin_z scr_sk
scoreboard players operation #rem scr_sk %= #align scr_sk
execute unless score #rem scr_sk matches 0 run scoreboard players set #config_ok scr_sk 0
scoreboard players operation #rem scr_sk = #g_spacing scr_sk
scoreboard players operation #rem scr_sk %= #align scr_sk
execute unless score #rem scr_sk matches 0 run scoreboard players set #config_ok scr_sk 0
scoreboard players operation #rem scr_sk = #g_size_x scr_sk
scoreboard players operation #rem scr_sk %= #align scr_sk
execute unless score #rem scr_sk matches 0 run scoreboard players set #config_ok scr_sk 0
scoreboard players operation #rem scr_sk = #g_size_z scr_sk
scoreboard players operation #rem scr_sk %= #align scr_sk
execute unless score #rem scr_sk matches 0 run scoreboard players set #config_ok scr_sk 0
execute if score #g_size_x scr_sk > #g_spacing scr_sk run scoreboard players set #config_ok scr_sk 0
execute if score #g_size_z scr_sk > #g_spacing scr_sk run scoreboard players set #config_ok scr_sk 0
scoreboard players set #rows_cap scr_sk 1024
scoreboard players operation #capacity scr_sk = #g_columns scr_sk
scoreboard players operation #capacity scr_sk *= #rows_cap scr_sk
execute if score #g_max_id scr_sk > #capacity scr_sk run scoreboard players set #config_ok scr_sk 0
execute unless data storage scr_sky:config geometry{min_y:-64,max_y:319,height:384,hub_min_x:-2048,hub_max_x:2047,hub_min_z:-2048,hub_max_z:2047} run scoreboard players set #config_ok scr_sk 0
scoreboard players set #two scr_sk 2
scoreboard players operation #half_x scr_sk = #g_size_x scr_sk
scoreboard players operation #half_z scr_sk = #g_size_z scr_sk
scoreboard players operation #half_x scr_sk /= #two scr_sk
scoreboard players operation #half_z scr_sk /= #two scr_sk
scoreboard players operation #span_x scr_sk = #g_columns scr_sk
scoreboard players operation #span_x scr_sk *= #g_spacing scr_sk
scoreboard players operation #span_z scr_sk = #rows_cap scr_sk
scoreboard players operation #span_z scr_sk *= #g_spacing scr_sk
scoreboard players operation #sections scr_sk = #g_size_x scr_sk
scoreboard players operation #sections scr_sk *= #g_size_z scr_sk
execute store result score #height scr_sk run data get storage scr_sky:config geometry.height 1
scoreboard players operation #sections scr_sk *= #height scr_sk
scoreboard players set #section_volume scr_sk 4096
scoreboard players operation #sections scr_sk /= #section_volume scr_sk
