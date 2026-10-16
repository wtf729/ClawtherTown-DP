scoreboard objectives add tower trigger
scoreboard objectives add tower_action trigger
scoreboard objectives add scr_tw dummy
scoreboard players add #token scr_tw 0
scoreboard players set #five scr_tw 5
# Only ephemeral UI/context resets. Never reset players, runs, wallet or clock.
data modify storage scr_tower:runtime sessions set value {}
data modify storage scr_tower:ui players set value {}
data remove storage scr_tower:ui gem_icon
data remove storage scr_tower:runtime p
execute unless data storage scr_tower:clock control run data modify storage scr_tower:clock control set value {mode:"disabled",day:0}
function scr_tower:config/load
function scr_tower:audio/config
function scr_tower:clock/anchor
scoreboard players set @a tower 0
scoreboard players set @a tower_action 0
scoreboard players enable @a tower
scoreboard players enable @a tower_action
