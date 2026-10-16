$execute unless data storage scr_task:runtime work.candidate{group:"$(group)"} run return 0
data modify storage scr_task:runtime work.ctx set from storage scr_task:runtime work.candidate
data modify storage scr_task:runtime work.ctx.key set from storage scr_task:runtime work.key
function scr_task:ui/state_read with storage scr_task:runtime work.ctx
execute if data storage scr_task:runtime work.nav{history:1} unless score #state scr_tk matches 4 run return 0
execute unless data storage scr_task:runtime work.nav{history:1} unless score #state scr_tk matches 1..3 run return 0
return run function scr_task:ui/panel_row
