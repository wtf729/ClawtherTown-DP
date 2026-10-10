execute store result score #done_count scr_sk run data get storage scr_sky:scan job.processed_sections 1
execute store result score #expected_count scr_sk run data get storage scr_sky:scan job.total_sections 1
execute unless score #done_count scr_sk = #expected_count scr_sk run return run function scr_sky:scan/abort
scoreboard players set #cleared scr_sk 0
execute store result score #cleared scr_sk in scr_sky:scanner run function scr_sky:scan/buffer/clear
execute unless score #cleared scr_sk matches 1 run return 0
function scr_sky:scan/commit_record with storage scr_sky:scan job
execute unless score #committed scr_sk matches 1 run return run function scr_sky:scan/abort
data modify storage scr_sky:scan job.outcome set value "committed"
function scr_sky:scan/finish
