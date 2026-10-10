# Binary search [low, high); at most 24 iterations for the full representation.
scoreboard players operation #lv_gap scr_sk = #lv_high scr_sk
scoreboard players operation #lv_gap scr_sk -= #lv_low scr_sk
execute unless score #lv_gap scr_sk matches 2.. run return 1
scoreboard players operation #lv_mid scr_sk = #lv_low scr_sk
scoreboard players operation #lv_mid scr_sk += #lv_high scr_sk
scoreboard players operation #lv_mid scr_sk /= #lv_two scr_sk
function scr_sky:level/threshold
scoreboard players set #lv_fits scr_sk 0
execute if score #lv_pm scr_sk < #lv_vm scr_sk run scoreboard players set #lv_fits scr_sk 1
execute if score #lv_pm scr_sk = #lv_vm scr_sk if score #lv_pu scr_sk <= #lv_vu scr_sk run scoreboard players set #lv_fits scr_sk 1
execute if score #lv_fits scr_sk matches 1 run scoreboard players operation #lv_low scr_sk = #lv_mid scr_sk
execute if score #lv_fits scr_sk matches 0 run scoreboard players operation #lv_high scr_sk = #lv_mid scr_sk
return run function scr_sky:level/search
