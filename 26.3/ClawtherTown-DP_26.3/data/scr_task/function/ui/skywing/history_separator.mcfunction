# Keep a complete two-column separator row even after an odd historical task count.
execute store result score #task_history_cells scr_tk run data get storage scr_task:runtime work.dialog.actions
scoreboard players set #task_history_columns scr_tk 2
scoreboard players operation #task_history_cells scr_tk %= #task_history_columns scr_tk
execute if score #task_history_cells scr_tk matches 1 run data modify storage scr_task:runtime work.dialog.actions append value {label:{text:""},width:200}
function scr_task:ui/skywing/separator
scoreboard players reset #task_history_cells scr_tk
scoreboard players reset #task_history_columns scr_tk
