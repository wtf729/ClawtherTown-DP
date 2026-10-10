execute store result score #audit_id scr_sk run data get storage scr_sky:jobs active.cursor 1
execute store result score #audit_end scr_sk run data get storage scr_sky:jobs active.audit_end 1
execute if score #audit_id scr_sk >= #audit_end scr_sk run return run function scr_sky:jobs/audit_done
data modify storage scr_sky:runtime work.audit set from storage scr_sky:jobs active
execute store result storage scr_sky:runtime work.audit.test_id int 1 run scoreboard players get #audit_id scr_sk
scoreboard players set #owner_found scr_sk 0
function scr_sky:jobs/audit_one with storage scr_sky:runtime work.audit
execute if score #owner_found scr_sk matches 1 run data modify storage scr_sky:jobs active.error set value "owner_exists_or_inconsistent"
execute if score #owner_found scr_sk matches 1 run return run function scr_sky:jobs/recover
scoreboard players add #audit_id scr_sk 1
execute store result storage scr_sky:jobs active.cursor int 1 run scoreboard players get #audit_id scr_sk
scoreboard players remove #audit_budget scr_sk 1
execute if score #audit_budget scr_sk matches 1.. run return run function scr_sky:jobs/audit_loop
