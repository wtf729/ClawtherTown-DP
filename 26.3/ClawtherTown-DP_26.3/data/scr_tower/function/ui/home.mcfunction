execute store result score #clock scr_tw run function scr_tower:clock/quota
execute store result score #pday scr_tw run data get storage scr_tower:runtime p.day
scoreboard players set #left scr_tw 2
execute if score #pday scr_tw = #day scr_tw store result score #entries scr_tw run data get storage scr_tower:runtime p.entries
execute if score #pday scr_tw = #day scr_tw run scoreboard players operation #left scr_tw -= #entries scr_tw
execute if score #left scr_tw matches ..-1 run scoreboard players set #left scr_tw 0
execute if score #left scr_tw matches 3.. run scoreboard players set #left scr_tw 2
execute store result storage scr_tower:runtime left int 1 run scoreboard players get #left scr_tw
execute store result storage scr_tower:runtime cycle_day int 1 run scoreboard players get #day scr_tw
function scr_tower:clock/countdown

data modify storage scr_tower:runtime text_args set value {left:0,countdown:"--:--:--",wallet:0}
data modify storage scr_tower:runtime text_args.left set from storage scr_tower:runtime left
data modify storage scr_tower:runtime text_args.countdown set from storage scr_tower:runtime countdown
data modify storage scr_tower:runtime text_args.wallet set from storage scr_tower:runtime wallet
function scr_tower:ui/text/home_compact with storage scr_tower:runtime text_args
scoreboard players set #active scr_tw 1
execute if data storage scr_tower:runtime p.run{phase:"idle"} run scoreboard players set #active scr_tw 0
execute if data storage scr_tower:runtime p.run{phase:"settled"} run scoreboard players set #active scr_tw 0
execute if data storage scr_tower:runtime p.run{phase:"abandoned"} run scoreboard players set #active scr_tw 0
execute if score #active scr_tw matches 1 run function scr_tower:ui/home_active
execute if score #active scr_tw matches 0 run function scr_tower:ui/home_idle
data modify storage scr_tower:runtime button set value {"label":{"translate":"gui.scr.tower.main"},"width":170}
data modify storage scr_tower:runtime route set value {"op":"start","index":-1,"tower":"main"}
function scr_tower:ui/button
data modify storage scr_tower:runtime button set value {"label":{"translate":"gui.scr.tower.sky"},"width":170}
data modify storage scr_tower:runtime route set value {"op":"start","index":-1,"tower":"sky"}
function scr_tower:ui/button
execute if score #active scr_tw matches 1 run function scr_tower:ui/home_resume
execute unless score #clock scr_tw matches 1 run function scr_tower:ui/no_clock
execute unless score #allowed scr_tw matches 1 run function scr_tower:ui/home_locked
execute unless score #left scr_tw matches 1.. run function scr_tower:ui/no_entries
