scoreboard players set @s task 0
scoreboard players set @s task_action 0
scoreboard players enable @s task
scoreboard players enable @s task_action
data modify storage scr_task:runtime work.nav set value {view:"home"}
return run function scr_task:ui/render
