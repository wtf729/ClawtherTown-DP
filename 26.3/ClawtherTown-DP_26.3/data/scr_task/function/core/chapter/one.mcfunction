scoreboard players set #chapter_count scr_tk 0
data modify storage scr_task:runtime work.chapter_tasks set from storage scr_task:runtime work.chapter.tasks
execute if data storage scr_task:runtime work.chapter_tasks[0] run function scr_task:core/chapter/count
$data modify storage scr_task:players players."$(key)".chapters.$(line).$(name).completed_count set value 0
$execute store result storage scr_task:players players."$(key)".chapters.$(line).$(name).completed_count int 1 run scoreboard players get #chapter_count scr_tk
# Rebuild the renamed count from state 4, preserving unlocked flags and task records.
$data remove storage scr_task:players players."$(key)".chapters.$(line).$(name).submitted
scoreboard players set #chapter_allowed scr_tk 0
execute unless data storage scr_task:runtime work.chapter.previous run scoreboard players set #chapter_allowed scr_tk 1
execute if data storage scr_task:runtime work.chapter.root run function scr_task:core/chapter/root with storage scr_task:runtime work.chapter
execute if data storage scr_task:runtime work.chapter.previous run function scr_task:core/chapter/previous with storage scr_task:runtime work.chapter
$execute if score #chapter_allowed scr_tk matches 1 run data modify storage scr_task:players players."$(key)".chapters.$(line).$(name).unlocked set value 1b
execute store result score #chapter_total scr_tk run data get storage scr_task:runtime work.chapter.total
$execute if data storage scr_task:runtime work.chapter{final:1b} if score #chapter_count scr_tk = #chapter_total scr_tk run data modify storage scr_task:players players."$(key)".chapters.$(line).completed set value 1b
return 1
