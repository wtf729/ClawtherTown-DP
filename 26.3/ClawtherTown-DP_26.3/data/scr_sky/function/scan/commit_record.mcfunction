scoreboard players set #committed scr_sk 0
$execute unless data storage scr_sky:islands records.i$(id){scan_state:"scanning",reset_state:"idle"} run return 0
# Full scan has passed section-count verification. Prepare value + level, then publish once.
# Copy the latest island to preserve concurrent membership/spawn edits.
$data modify storage scr_sky:scan commit_record set from storage scr_sky:islands records.i$(id)
data modify storage scr_sky:scan commit_record.value set from storage scr_sky:scan job.temp_value
data modify storage scr_sky:level input set from storage scr_sky:scan commit_record.value
execute store result score #lv_valid scr_sk run function scr_sky:level/calculate
execute unless score #lv_valid scr_sk matches 1 run data remove storage scr_sky:scan commit_record
execute unless score #lv_valid scr_sk matches 1 run return 0
data modify storage scr_sky:scan commit_record.level set from storage scr_sky:level result.level
execute store result storage scr_sky:scan commit_record.last_scan_time int 1 run time query gametime
data modify storage scr_sky:scan commit_record.scan_state set value "idle"
$execute store success score #committed scr_sk run data modify storage scr_sky:islands records.i$(id) set from storage scr_sky:scan commit_record
data remove storage scr_sky:scan commit_record
