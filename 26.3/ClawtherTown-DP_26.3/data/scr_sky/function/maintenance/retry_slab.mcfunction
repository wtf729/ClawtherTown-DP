# Called only after a guarded live comparison returns dirty. Persist attempts before mutation.
execute store result score #m_retries scr_sk run data get storage scr_sky:maintenance job.slab_retries
execute if score #m_retries scr_sk matches 3.. run data modify storage scr_sky:maintenance job.error set value "slab_verify_retry_exhausted"
execute if score #m_retries scr_sk matches 3.. run return run function scr_sky:maintenance/recovery
scoreboard players add #m_retries scr_sk 1
execute store result storage scr_sky:maintenance job.slab_retries int 1 run scoreboard players get #m_retries scr_sk
execute store result score #m_retries_total scr_sk run data get storage scr_sky:maintenance job.retry_attempts
scoreboard players add #m_retries_total scr_sk 1
execute store result storage scr_sky:maintenance job.retry_attempts int 1 run scoreboard players get #m_retries_total scr_sk
execute in scr:sky store result score #m_section_ok scr_sk run function scr_sky:maintenance/slab_fill with storage scr_sky:runtime work.section
execute unless score #m_section_ok scr_sk matches 1 run return run function scr_sky:maintenance/recovery
data modify storage scr_sky:maintenance job.wait set value 0
# End this tick's batch, allow world updates, then verify this same slab before advancing.
return 0
