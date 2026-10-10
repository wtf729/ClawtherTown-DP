scoreboard players set #audit_budget scr_sk 32
function scr_sky:jobs/audit_loop
execute if data storage scr_sky:jobs active{phase:"audit_owner"} run data modify storage scr_sky:jobs active.wait set value 0
