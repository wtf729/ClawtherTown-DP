execute store result score #now scr_sk run time query gametime
execute store result score #then scr_sk run data get storage scr_sky:ui work.island.last_scan_time
scoreboard players operation #now scr_sk -= #then scr_sk
execute if score #now scr_sk matches ..-1 run scoreboard players operation #now scr_sk += #modtime scr_sk
scoreboard players set #minute_ticks scr_sk 1200
scoreboard players operation #now scr_sk /= #minute_ticks scr_sk
data modify storage scr_sky:ui work.line set value {"translate":"gui.scr.sky.rated","fallback":"上次评级：%s 分钟前","color":"white","with":[{"text":""}]}
execute store result storage scr_sky:ui work.number.n int 1 run scoreboard players get #now scr_sk
function scr_sky:ui/string_number with storage scr_sky:ui work.number
data modify storage scr_sky:ui work.line.with[0].text set from storage scr_sky:ui work.number_text
data modify storage scr_sky:ui work.rated_text set from storage scr_sky:ui work.line
