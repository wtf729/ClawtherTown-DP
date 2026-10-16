# Read the same SCR runtime-day clock as entry/quota, without opening/saving a player context.
execute store result score #notice_clock notice run function scr_tower:clock/read
execute unless score #notice_clock notice matches 1 run return 0
$execute if data storage scr_tower:players players."$(key)" unless data storage scr_tower:players players."$(key)"{schema:1} run return 0

# Legacy records use production_anchor.day when quota migrates them; preserve used entries.
# If no anchor exists yet, clock/anchor would take the current day.
scoreboard players operation #notice_day notice = #day scr_tw
execute if data storage scr_tower:clock production_anchor store result score #notice_day notice run data get storage scr_tower:clock production_anchor.day
$execute if data storage scr_tower:players players."$(key)"{cycle_source:"scr_runtime_day"} store result score #notice_day notice run data get storage scr_tower:players players."$(key)".day
scoreboard players set #notice_entries notice 0
$execute if data storage scr_tower:players players."$(key)" store result score #notice_entries notice run data get storage scr_tower:players players."$(key)".entries

# A future day is unavailable. Earlier days refresh to two entries on the next real entry.
execute if score #notice_day notice > #day scr_tw run return 0
execute if score #notice_day notice = #day scr_tw unless score #notice_entries notice matches 0..1 run return 0
tellraw @s [{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.announcer","fallback":"号角鹰"},{"text":"] ","color":"gold","bold":true},{"text":"你还有挑战财富塔的机会未使用, 输入 ","color":"#7dff9a","bold":false},{"text":"/trigger tower","underlined":true,"color":"#4dd9ff","click_event":{"action":"run_command","command":"/trigger tower"},"bold":false},{"text":" 去看看吧!","color":"#7dff9a","bold":false}]
