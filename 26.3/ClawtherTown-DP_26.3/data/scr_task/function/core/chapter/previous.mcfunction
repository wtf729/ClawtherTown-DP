scoreboard players set #previous_count scr_tk 0
$execute if data storage scr_task:players players."$(key)".chapters.$(line).$(previous){unlocked:1b} store result score #previous_count scr_tk run data get storage scr_task:players players."$(key)".chapters.$(line).$(previous).completed_count
execute store result score #previous_required scr_tk run data get storage scr_task:runtime work.chapter.previous_required
execute if score #previous_count scr_tk >= #previous_required scr_tk run scoreboard players set #chapter_allowed scr_tk 1
