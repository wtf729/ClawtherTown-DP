# Same authoritative memberships/active island/role/level as Sky's membership reader.
# Read directly so a display cannot invoke Sky player initialization/index writes.
scoreboard players set #ui_level scr_tk 0
data modify storage scr_task:runtime work.goal_ui.level_ctx set from storage scr_task:runtime work.ctx
function scr_task:ui/objectives/level_queue with storage scr_task:runtime work.ctx
execute if data storage scr_task:runtime work.goal_ui.level_queue[0] run function scr_task:ui/objectives/level_loop
execute store result storage scr_task:runtime work.goal_ui.row.have int 1 run scoreboard players get #ui_level scr_tk
