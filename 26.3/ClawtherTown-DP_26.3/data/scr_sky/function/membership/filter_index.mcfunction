execute unless data storage scr_sky:runtime work.member_queue[0] run return 1
execute store result score #a scr_sk run data get storage scr_sky:runtime work.member_queue[0] 1
execute store result score #b scr_sk run data get storage scr_sky:runtime work.ctx.id 1
execute unless score #a scr_sk = #b scr_sk run data modify storage scr_sky:runtime work.member_new append from storage scr_sky:runtime work.member_queue[0]
data remove storage scr_sky:runtime work.member_queue[0]
return run function scr_sky:membership/filter_index
