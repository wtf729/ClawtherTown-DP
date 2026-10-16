data modify storage scr_tower:runtime countdown set value "--:--:--"
data modify storage scr_tower:runtime countdown_valid set value 0
execute unless score #second timecounter matches 1..1000 run return 0
execute unless score #minute timecounter matches 1..60 run return 0
execute unless score #hour timecounter matches 1..60 run return 0
execute unless score #day timecounter matches 1..24 run return 0
execute unless score #server time_hour matches -2147483648..2147483647 run return 0
execute unless score #server time_minute matches -2147483648..2147483647 run return 0
execute unless score #server time_second matches -2147483648..2147483647 run return 0
execute unless score #server timecounter matches -2147483648..2147483647 run return 0
scoreboard players operation #cd_s scr_tw = #second timecounter
scoreboard players operation #cd_m scr_tw = #minute timecounter
scoreboard players operation #cd_h scr_tw = #hour timecounter
scoreboard players operation #cd_d scr_tw = #day timecounter
scoreboard players operation #cd_hour scr_tw = #server time_hour
scoreboard players operation #cd_minute scr_tw = #server time_minute
scoreboard players operation #cd_second scr_tw = #server time_second
scoreboard players operation #cd_tick scr_tw = #server timecounter
# Clamp before multiplication, including transitional carry states, to prevent overflow.
execute if score #cd_hour scr_tw matches ..-1 run scoreboard players set #cd_hour scr_tw 0
execute if score #cd_minute scr_tw matches ..-1 run scoreboard players set #cd_minute scr_tw 0
execute if score #cd_second scr_tw matches ..-1 run scoreboard players set #cd_second scr_tw 0
execute if score #cd_tick scr_tw matches ..-1 run scoreboard players set #cd_tick scr_tw 0
execute if score #cd_hour scr_tw > #cd_d scr_tw run scoreboard players operation #cd_hour scr_tw = #cd_d scr_tw
execute if score #cd_minute scr_tw > #cd_h scr_tw run scoreboard players operation #cd_minute scr_tw = #cd_h scr_tw
execute if score #cd_second scr_tw > #cd_m scr_tw run scoreboard players operation #cd_second scr_tw = #cd_m scr_tw
execute if score #cd_tick scr_tw > #cd_s scr_tw run scoreboard players operation #cd_tick scr_tw = #cd_s scr_tw
scoreboard players operation #cd_total scr_tw = #cd_d scr_tw
scoreboard players operation #cd_total scr_tw *= #cd_h scr_tw
scoreboard players operation #cd_total scr_tw *= #cd_m scr_tw
scoreboard players operation #cd_total scr_tw *= #cd_s scr_tw
scoreboard players operation #cd_elapsed scr_tw = #cd_hour scr_tw
scoreboard players operation #cd_elapsed scr_tw *= #cd_h scr_tw
scoreboard players operation #cd_elapsed scr_tw += #cd_minute scr_tw
scoreboard players operation #cd_elapsed scr_tw *= #cd_m scr_tw
scoreboard players operation #cd_elapsed scr_tw += #cd_second scr_tw
scoreboard players operation #cd_elapsed scr_tw *= #cd_s scr_tw
scoreboard players operation #cd_elapsed scr_tw += #cd_tick scr_tw
execute if score #cd_elapsed scr_tw > #cd_total scr_tw run scoreboard players operation #cd_elapsed scr_tw = #cd_total scr_tw
scoreboard players operation #cd_remaining scr_tw = #cd_total scr_tw
scoreboard players operation #cd_remaining scr_tw -= #cd_elapsed scr_tw
# Integer ceiling to server clock seconds; a fraction of a second displays 1, not 0.
scoreboard players operation #cd_seconds scr_tw = #cd_remaining scr_tw
scoreboard players operation #cd_seconds scr_tw += #cd_s scr_tw
scoreboard players remove #cd_seconds scr_tw 1
scoreboard players operation #cd_seconds scr_tw /= #cd_s scr_tw
scoreboard players set #cd_sixty scr_tw 60
scoreboard players set #cd_3600 scr_tw 3600
scoreboard players operation #cd_out_h scr_tw = #cd_seconds scr_tw
scoreboard players operation #cd_out_h scr_tw /= #cd_3600 scr_tw
scoreboard players operation #cd_out_m scr_tw = #cd_seconds scr_tw
scoreboard players operation #cd_out_m scr_tw %= #cd_3600 scr_tw
scoreboard players operation #cd_out_m scr_tw /= #cd_sixty scr_tw
scoreboard players operation #cd_out_s scr_tw = #cd_seconds scr_tw
scoreboard players operation #cd_out_s scr_tw %= #cd_sixty scr_tw
data modify storage scr_tower:runtime cd set value {hours:0,minutes:0,seconds:0,hh:"00",mm:"00",ss:"00"}
execute store result storage scr_tower:runtime cd.hours int 1 run scoreboard players get #cd_out_h scr_tw
execute store result storage scr_tower:runtime cd.minutes int 1 run scoreboard players get #cd_out_m scr_tw
execute store result storage scr_tower:runtime cd.seconds int 1 run scoreboard players get #cd_out_s scr_tw
function scr_tower:clock/pad with storage scr_tower:runtime cd
function scr_tower:clock/text with storage scr_tower:runtime cd
data modify storage scr_tower:runtime countdown_valid set value 1
return 1
