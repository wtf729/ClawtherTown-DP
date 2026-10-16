# Read-only validation shared by detail rendering and lifecycle Action dispatch.
execute store result score #selected scr_tk run function scr_task:ui/navigation/source
execute unless score #selected scr_tk matches 1 run return 0
execute unless data storage scr_task:runtime work.nav.id run return 0
execute store result score #selected scr_tk run function scr_task:core/select with storage scr_task:runtime work.nav
execute unless score #selected scr_tk matches 1 run return 0
execute store result score #selected scr_tk run function scr_task:ui/detail_group with storage scr_task:runtime work.nav
execute unless score #selected scr_tk matches 1 run return 0
execute unless data storage scr_task:runtime work.nav{group:"skywing"} run return 1
data modify storage scr_task:runtime work.sky_ui_task set from storage scr_task:runtime work.ctx
execute store result score #selected scr_tk run function scr_task:ui/skywing/filter
data remove storage scr_task:runtime work.sky_ui_task
return run scoreboard players get #selected scr_tk
