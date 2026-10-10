execute if data storage scr_sky:scan job run data modify storage scr_sky:runtime result.reason set value "busy"
execute if data storage scr_sky:scan job run return 0

execute if data storage scr_sky:jobs active unless data storage scr_sky:jobs active{kind:"travel"} run data modify storage scr_sky:runtime result.reason set value "busy"
execute if data storage scr_sky:jobs active unless data storage scr_sky:jobs active{kind:"travel"} run return 0



scoreboard players set #buffer_dimension scr_sk 0



execute store success score #buffer_dimension scr_sk in scr_sky:scanner run time query gametime



execute unless score #buffer_dimension scr_sk matches 1 run data modify storage scr_sky:runtime result.reason set value "scan_config"
execute unless score #buffer_dimension scr_sk matches 1 run return 0



execute store result score #block_limit scr_sk run gamerule minecraft:max_block_modifications



execute unless score #block_limit scr_sk matches 16384.. run data modify storage scr_sky:runtime result.reason set value "scan_config"
execute unless score #block_limit scr_sk matches 16384.. run return 0



execute unless data storage scr_sky:config scan{enabled:1b} run data modify storage scr_sky:runtime result.reason set value "scan_config"
execute unless data storage scr_sky:config scan{enabled:1b} run return 0



execute unless data storage scr_sky:config scan{cooldown_ticks:12000} run data modify storage scr_sky:runtime result.reason set value "scan_config"
execute unless data storage scr_sky:config scan{cooldown_ticks:12000} run return 0



function scr_sky:core/island/read with storage scr_sky:runtime work.ctx



execute unless data storage scr_sky:runtime work.island{reset_state:"idle",scan_state:"idle"} run data modify storage scr_sky:runtime result.reason set value "island_state"
execute unless data storage scr_sky:runtime work.island{reset_state:"idle",scan_state:"idle"} run return 0



execute unless data storage scr_sky:runtime work.island{state:"active",delete_state:"idle"} run data modify storage scr_sky:runtime result.reason set value "island_state"
execute unless data storage scr_sky:runtime work.island{state:"active",delete_state:"idle"} run return 0

function scr_sky:role/read with storage scr_sky:runtime work.ctx



execute unless score #role scr_sk matches 1..3 run data modify storage scr_sky:runtime result.reason set value "permission"
execute unless score #role scr_sk matches 1..3 run return 0



execute store result score #id scr_sk run data get storage scr_sky:runtime work.ctx.id 1



execute unless score #id scr_sk matches 1.. run data modify storage scr_sky:runtime result.reason set value "invalid_id"
execute unless score #id scr_sk matches 1.. run return 0



execute if score #id scr_sk > #g_max_id scr_sk run data modify storage scr_sky:runtime result.reason set value "invalid_id"
execute if score #id scr_sk > #g_max_id scr_sk run return 0



function scr_sky:island/coordinates



execute store success score #changed scr_sk run data modify storage scr_sky:runtime work.region set from storage scr_sky:runtime work.island.region



execute unless score #changed scr_sk matches 0 run data modify storage scr_sky:runtime result.reason set value "region_mismatch"
execute unless score #changed scr_sk matches 0 run return 0



execute store result score #now scr_sk run time query gametime



scoreboard players set #elapsed scr_sk 12000



execute if data storage scr_sky:runtime work.island.last_scan_started run function scr_sky:scan/cooldown



execute store result score #cooldown scr_sk run data get storage scr_sky:config scan.cooldown_ticks 1



execute unless data storage scr_sky:runtime work{force:1b} if score #elapsed scr_sk < #cooldown scr_sk run data modify storage scr_sky:runtime result.reason set value "scan_cooldown"
execute unless data storage scr_sky:runtime work{force:1b} if score #elapsed scr_sk < #cooldown scr_sk run return 0



# Reserve lock before any forceload or buffer work.



data modify storage scr_sky:scan job set value {phase:"acquire",wait:0,source_ticket:0b,buffer_ticket:0b,ref_ticket:0b,ref_y:0,remaining:0,processed_sections:0,detailed_sections:0,skipped_sections:0,temp_value:{millions:0,units:0},error:"none"}



execute store result storage scr_sky:scan job.total_sections int 1 run scoreboard players get #sections scr_sk



data modify storage scr_sky:scan job.id set from storage scr_sky:runtime work.ctx.id



data modify storage scr_sky:scan job.owner_request set from storage scr_sky:runtime work.ctx.key



data modify storage scr_sky:scan job.x set from storage scr_sky:runtime work.island.region.min_x



data modify storage scr_sky:scan job.z set from storage scr_sky:runtime work.island.region.min_z



data modify storage scr_sky:scan job.xmin set from storage scr_sky:runtime work.island.region.min_x



data modify storage scr_sky:scan job.xmax set from storage scr_sky:runtime work.island.region.max_x



data modify storage scr_sky:scan job.zmax set from storage scr_sky:runtime work.island.region.max_z



data modify storage scr_sky:scan job.ymin set from storage scr_sky:islands geometry.min_y



data modify storage scr_sky:scan job.ymax set from storage scr_sky:islands geometry.max_y



data modify storage scr_sky:scan job.y set from storage scr_sky:islands geometry.min_y







data modify storage scr_sky:scan job.timeout set from storage scr_sky:config scan.load_timeout



data modify storage scr_sky:runtime work.island.scan_state set value "scanning"



execute store result storage scr_sky:runtime work.island.last_scan_started int 1 run scoreboard players get #now scr_sk



function scr_sky:core/island/save with storage scr_sky:runtime work.ctx



data modify storage scr_sky:runtime result.ok set value 1b



data modify storage scr_sky:runtime result.reason set value "scan_started"
