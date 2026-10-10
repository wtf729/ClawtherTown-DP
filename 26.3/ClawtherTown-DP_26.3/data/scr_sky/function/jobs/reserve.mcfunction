execute store result score #id scr_sk run data get storage scr_sky:runtime work.ctx.id 1
function scr_sky:island/coordinates
data modify storage scr_sky:runtime work.island set value {version:2,state:"allocating",roles:{},members_index:[],spawn:{configured:0b},starter:{template:"scr_sky:starter"},value:{millions:0,units:0},level:0,last_scan_time:-1,scan_state:"idle",reset_state:"idle",delete_state:"idle",settings:{}}
data modify storage scr_sky:runtime work.island.id set from storage scr_sky:runtime work.ctx.id
data modify storage scr_sky:runtime work.island.owner set from storage scr_sky:runtime work.ctx.key
data modify storage scr_sky:runtime work.island.region set from storage scr_sky:runtime work.region
execute store result storage scr_sky:runtime work.island.created_time int 1 run time query gametime
function scr_sky:core/island/save with storage scr_sky:runtime work.ctx
data modify storage scr_sky:jobs active.allocated set value 1b
execute if data storage scr_sky:jobs active{kind:"reserve"} run return run function scr_sky:jobs/reserved_only
data modify storage scr_sky:jobs active.phase set value "prepare"
data modify storage scr_sky:jobs active.wait set value 0
