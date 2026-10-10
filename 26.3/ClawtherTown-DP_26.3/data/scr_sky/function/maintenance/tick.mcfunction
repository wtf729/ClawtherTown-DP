execute if data storage scr_sky:runtime busy run return 0
data modify storage scr_sky:runtime busy set value 1b
data modify storage scr_sky:runtime work set value {ctx:{}}
data modify storage scr_sky:runtime work.ctx set from storage scr_sky:maintenance job
data modify storage scr_sky:runtime result set value {ok:0b}
execute store result score #m_wait scr_sk run data get storage scr_sky:maintenance job.wait
scoreboard players add #m_wait scr_sk 1
execute store result storage scr_sky:maintenance job.wait int 1 run scoreboard players get #m_wait scr_sk
execute if score #m_wait scr_sk matches 201.. run data modify storage scr_sky:maintenance job.failed_phase set from storage scr_sky:maintenance job.phase
execute if score #m_wait scr_sk matches 201.. run data modify storage scr_sky:maintenance job.error set value "phase_timeout"
execute if score #m_wait scr_sk matches 201.. run data modify storage scr_sky:maintenance job.phase set value "recovery"
# One budget for this tick; column/commit phases remain separate ticks.
scoreboard players set #m_budget scr_sk 2
execute store result score #m_budget scr_sk run data get storage scr_sky:config maintenance.slabs_per_tick
execute unless score #m_budget scr_sk matches 1..8 run scoreboard players set #m_budget scr_sk 2
function scr_sky:maintenance/dispatch
function scr_sky:core/context/close
