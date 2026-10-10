function scr_sky:core/island/read with storage scr_sky:runtime work.ctx
execute unless data storage scr_sky:runtime work.island{state:"active",reset_state:"idle",delete_state:"idle"} run return 0
function scr_sky:role/read with storage scr_sky:runtime work.ctx
execute if score #role scr_sk matches 1..3 run return 0
data remove storage scr_sky:runtime work.invite
$data modify storage scr_sky:runtime work.invite set from storage scr_sky:invites pending[{island_id:$(id),target:"$(key)",state:"pending"}]
execute unless data storage scr_sky:runtime work.invite run return 0
data modify storage scr_sky:runtime work.acceptor set from storage scr_sky:runtime work.ctx.key
data modify storage scr_sky:runtime work.ctx.key set from storage scr_sky:runtime work.invite.inviter
function scr_sky:role/read with storage scr_sky:runtime work.ctx
execute unless score #role scr_sk matches 2..3 run return 0
data modify storage scr_sky:runtime work.ctx.target set from storage scr_sky:runtime work.acceptor
data modify storage scr_sky:runtime work.ctx.role set value 1
scoreboard players set #newrole scr_sk 1
function scr_sky:membership/apply with storage scr_sky:runtime work.ctx
execute unless data storage scr_sky:runtime result{ok:1b} run return 0
function scr_task:event/sky/invite_accepted
$data remove storage scr_sky:invites pending[{island_id:$(id),target:"$(key)"}]
