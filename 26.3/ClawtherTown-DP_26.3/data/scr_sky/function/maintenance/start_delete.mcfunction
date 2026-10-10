execute unless data storage scr_sky:runtime work.island{delete_state:"awaiting_confirmation",reset_state:"idle"} run return 0
execute store result score #m_members scr_sk run data get storage scr_sky:runtime work.island.roles
execute unless score #m_members scr_sk matches 0 run return 0
data modify storage scr_sky:runtime work.island.state set value "deleting"
data modify storage scr_sky:runtime work.island.delete_state set value "deleting"
data modify storage scr_sky:maintenance job.locked set value 1b
