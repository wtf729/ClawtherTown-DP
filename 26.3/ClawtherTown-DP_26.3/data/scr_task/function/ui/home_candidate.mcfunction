# The six registered NPC groups are the allowlist; test/debug groups are excluded.
$execute unless data storage scr_task:runtime work.home_flags.$(group) run return 0
data modify storage scr_task:runtime work.ctx set from storage scr_task:runtime work.home_candidate
data modify storage scr_task:runtime work.ctx.key set from storage scr_task:runtime work.key
function scr_task:core/state/read with storage scr_task:runtime work.ctx
$execute if score #state scr_tk matches 2 run data modify storage scr_task:runtime work.home_flags.$(group).active set value 1b
$execute if score #state scr_tk matches 1 run data modify storage scr_task:runtime work.home_flags.$(group).available set value 1b
$execute if score #state scr_tk matches 3 run data modify storage scr_task:runtime work.home_flags.$(group).completed set value 1b
