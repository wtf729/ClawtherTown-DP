execute unless data storage scr_sky:runtime work.pool_queue[0] run return 1
execute store result score #m_pool_entry scr_sk run data get storage scr_sky:runtime work.pool_queue[0]
execute if score #m_pool_entry scr_sk = #m_pool_id scr_sk run scoreboard players set #m_in_pool scr_sk 1
data remove storage scr_sky:runtime work.pool_queue[0]
return run function scr_sky:maintenance/pool_loop
