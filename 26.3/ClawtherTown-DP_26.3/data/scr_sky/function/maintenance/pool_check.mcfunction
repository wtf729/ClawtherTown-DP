data modify storage scr_sky:runtime work.pool_queue set from storage scr_sky:islands meta.free_ids
scoreboard players set #m_in_pool scr_sk 0
execute store result score #m_pool_id scr_sk run data get storage scr_sky:maintenance job.id
function scr_sky:maintenance/pool_loop
