# Budget is shared by air checks, fills and verification retries; never cross a column boundary here.
execute unless score #m_budget scr_sk matches 1.. run return 0
scoreboard players remove #m_budget scr_sk 1
execute if data storage scr_sky:maintenance job{phase:"clear"} run return run function scr_sky:maintenance/clear
execute if data storage scr_sky:maintenance job{phase:"verify"} run return run function scr_sky:maintenance/verify
return 0
