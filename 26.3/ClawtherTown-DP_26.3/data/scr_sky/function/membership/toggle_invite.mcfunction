function scr_sky:core/island/read with storage scr_sky:runtime work.ctx
execute unless data storage scr_sky:runtime work.island{state:"active",reset_state:"idle",delete_state:"idle"} run return 0
function scr_sky:role/read with storage scr_sky:runtime work.ctx
execute unless score #role scr_sk matches 2..3 run return 0
$execute if data storage scr_sky:runtime work.ctx{key:"$(target)"} run return 0
$execute if data storage scr_sky:runtime work.island{owner:"$(target)"} run return 0
$execute if data storage scr_sky:runtime work.island.roles."$(target)" run return 0
data modify storage scr_sky:runtime work.online set value []
execute as @a run function scr_sky:membership/online_player
$execute unless data storage scr_sky:runtime work.online[{key:"$(target)"}] run return 0
$execute if data storage scr_sky:invites pending[{island_id:$(id),target:"$(target)"}] run return run function scr_sky:membership/cancel_invite with storage scr_sky:runtime work.ctx
function scr_sky:membership/invite with storage scr_sky:runtime work.ctx
