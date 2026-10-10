# Audit held the global ownership-job lock. Re-check player's CD at transaction start.
data remove storage scr_sky:runtime work.clock_stamp
data modify storage scr_sky:runtime work.clock_stamp set from storage scr_sky:runtime work.player.last_claim_started
function scr_sky:core/cooldown/read
execute if score #cd_remaining scr_sk matches 1.. run data modify storage scr_sky:jobs active.error set value "claim_cooldown"
execute if score #cd_remaining scr_sk matches 1.. run return run function scr_sky:jobs/recover
execute store result score #chosen_id scr_sk run data get storage scr_sky:islands meta.next_id 1
scoreboard players set #pool_index scr_sk -1
scoreboard players set #pool_cursor scr_sk 0
data modify storage scr_sky:runtime work.pool set from storage scr_sky:islands meta.free_ids
function scr_sky:jobs/pool_min
execute unless score #chosen_id scr_sk matches 1.. run return run function scr_sky:jobs/recover
execute if score #chosen_id scr_sk > #g_max_id scr_sk run return run function scr_sky:jobs/recover
execute store result storage scr_sky:runtime work.ctx.id int 1 run scoreboard players get #chosen_id scr_sk
execute store result storage scr_sky:jobs active.id int 1 run scoreboard players get #chosen_id scr_sk
execute store result score #occupied scr_sk run function scr_sky:island/create/exists with storage scr_sky:runtime work.ctx
execute if score #occupied scr_sk matches 1 run data modify storage scr_sky:jobs active.error set value "allocator_record_exists"
execute if score #occupied scr_sk matches 1 run return run function scr_sky:jobs/recover
# Begin accepted creation transaction: write CD, occupy ID, then touch world only in later phases.
function scr_sky:jobs/record_claim_time with storage scr_sky:runtime work.ctx
execute if score #pool_index scr_sk matches 0.. run execute store result storage scr_sky:runtime work.ctx.pool_index int 1 run scoreboard players get #pool_index scr_sk
execute if score #pool_index scr_sk matches 0.. run function scr_sky:jobs/pool_take with storage scr_sky:runtime work.ctx
execute if score #pool_index scr_sk matches -1 run scoreboard players add #chosen_id scr_sk 1
execute if score #pool_index scr_sk matches -1 run execute store result storage scr_sky:islands meta.next_id int 1 run scoreboard players get #chosen_id scr_sk
function scr_sky:jobs/reserve
