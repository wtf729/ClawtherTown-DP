# Reuse the normal asynchronous safety, membership and ticket lifecycle.
data modify storage scr_sky:runtime result set value {ok:0b}
$function scr_sky:api/teleport {id:$(id)}
execute unless data storage scr_sky:runtime result{ok:1b} run tellraw @s {"translate":"message.scr.sky.travel_failed","fallback":"无法安全传送，请检查岛屿、权限与出生点。","color":"red"}
