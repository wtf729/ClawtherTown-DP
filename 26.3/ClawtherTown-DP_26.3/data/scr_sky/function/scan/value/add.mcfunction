# Exact nonnegative wide integer: millions * 1,000,000 + units. No float rounding.
execute store result score #units scr_sk run data get storage scr_sky:scan job.temp_value.units 1
execute store result score #millions scr_sk run data get storage scr_sky:scan job.temp_value.millions 1
scoreboard players operation #units scr_sk += #section_value scr_sk
scoreboard players operation #carry scr_sk = #units scr_sk
scoreboard players operation #carry scr_sk /= #million scr_sk
scoreboard players operation #units scr_sk %= #million scr_sk
scoreboard players operation #millions scr_sk += #carry scr_sk
execute store result storage scr_sky:scan job.temp_value.units int 1 run scoreboard players get #units scr_sk
execute store result storage scr_sky:scan job.temp_value.millions int 1 run scoreboard players get #millions scr_sk
