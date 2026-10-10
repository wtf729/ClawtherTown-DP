# Static dialog IDs cannot issue a UUID-bound token; -1 is a close-only task_action fallback.
execute as @a[scores={task_action=-1}] run function scr_task:ui/close
# Only actual triggers open a context. No task tree scan in tick.
execute as @a[scores={task=1..}] at @s run function scr_task:ui/open
execute as @a[scores={task_action=1..}] at @s run function scr_task:ui/action
scoreboard players enable @a task
scoreboard players enable @a task_action
