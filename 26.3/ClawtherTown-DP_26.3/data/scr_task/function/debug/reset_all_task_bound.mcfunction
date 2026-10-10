# Bound UUID macro helper. No task IDs are enumerated; all fields under the player record are removed.
scoreboard players set #reset_all_had_record scr_tk 0
$execute if data storage scr_task:players players."$(key)" run scoreboard players set #reset_all_had_record scr_tk 1
$execute if score #reset_all_had_record scr_tk matches 1 run data remove storage scr_task:players players."$(key)"
$execute if data storage scr_task:players players."$(key)" run return 0
execute store result score #reset_all_initialized scr_tk run function scr_task:core/player/init with storage scr_task:runtime work.ctx
execute unless score #reset_all_initialized scr_tk matches 1 run return 0
execute if score #reset_all_had_record scr_tk matches 1 run tellraw @s [{"text":"[Task Debug] 已重置 ","color":"yellow"},{"selector":"@s","color":"white"},{"text":" 的全部任务。","color":"yellow"}]
execute if score #reset_all_had_record scr_tk matches 0 run tellraw @s {"text":"[Task Debug] 未发现旧任务记录，已完成任务初始化。","color":"yellow"}
return 1
