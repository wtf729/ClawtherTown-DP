execute if data storage scr_sky:runtime busy run return 0
execute store result score #job_wait scr_sk run data get storage scr_sky:jobs active.wait 1
scoreboard players add #job_wait scr_sk 1
execute store result storage scr_sky:jobs active.wait int 1 run scoreboard players get #job_wait scr_sk
execute if score #job_wait scr_sk matches 201.. run data modify storage scr_sky:jobs active.error set value "timeout_or_function_error"
execute if score #job_wait scr_sk matches 201.. run function scr_sky:jobs/timeout
data modify storage scr_sky:runtime busy set value 1b
data modify storage scr_sky:runtime work set value {ctx:{}}
data modify storage scr_sky:runtime work.ctx set from storage scr_sky:jobs active
function scr_sky:player/init with storage scr_sky:runtime work.ctx
function scr_sky:jobs/dispatch
function scr_sky:core/context/close
# UI refresh only after the business context is released.
execute unless data storage scr_sky:jobs active if data storage scr_sky:jobs last{kind:"transfer",outcome:"transferred"} run function scr_sky:ui/transfer_finished with storage scr_sky:jobs last
# Claim has fully committed, released its tickets and closed its context before travel starts.
execute unless data storage scr_sky:jobs active if data storage scr_sky:jobs last{kind:"claim",outcome:"claimed"} run function scr_sky:jobs/claim_arrival with storage scr_sky:jobs last
