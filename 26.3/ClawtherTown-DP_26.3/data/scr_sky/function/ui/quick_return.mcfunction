scoreboard players set @s is 0
scoreboard players enable @s is
data modify storage scr_sky:runtime result set value {ok:0b,reason:"not_ready_or_not_allowed"}
function scr_sky:api/return_primary
data modify storage scr_sky:ui response set from storage scr_sky:runtime result
execute unless data storage scr_sky:ui response{ok:1b} if data storage scr_sky:runtime busy run data modify storage scr_sky:ui response.reason set value "busy"
execute unless data storage scr_sky:ui response{ok:1b} unless score #config_ok scr_sk matches 1 run data modify storage scr_sky:ui response.reason set value "config_invalid"
data modify storage scr_sky:ui request set value {op:"return_primary"}
function scr_sky:ui/feedback
function scr_sky:ui/close
