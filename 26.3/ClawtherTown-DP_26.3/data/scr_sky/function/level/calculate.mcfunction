# Internal reusable API. Input: scr_sky:level input {millions:int,units:int}.
# Exact nonnegative base-1,000,000 integer. Result is transient, never a player context.
data remove storage scr_sky:level result
execute unless data storage scr_sky:level input.millions run return 0
execute unless data storage scr_sky:level input.units run return 0
execute store result score #lv_vm scr_sk run data get storage scr_sky:level input.millions 1
execute store result score #lv_vu scr_sk run data get storage scr_sky:level input.units 1
execute unless score #lv_vm scr_sk matches 0..2147483647 run return 0
execute unless score #lv_vu scr_sk matches 0..999999 run return 0
scoreboard players set #lv_base scr_sk 1000000
scoreboard players set #lv_k scr_sk 1000
scoreboard players set #lv_ten scr_sk 10
scoreboard players set #lv_twenty scr_sk 20
scoreboard players set #lv_hundred scr_sk 100
scoreboard players set #lv_two scr_sk 2
scoreboard players set #lv_low scr_sk 0
# Exclusive sentinel: maximum supported VALUE implies at most level 14,654,290.
# P(14,654,290)=2,147,483,619,470,000; P(next) exceeds the input representation.
scoreboard players set #lv_high scr_sk 14654291
function scr_sky:level/search
data modify storage scr_sky:level result set value {valid:1b,level:0}
execute store result storage scr_sky:level result.level int 1 run scoreboard players get #lv_low scr_sk
return 1
