execute store result storage scr_sky:runtime work.ticket_ctx.index int 1 run scoreboard players get #ticket_index scr_sk
function scr_sky:jobs/ticket_one with storage scr_sky:runtime work.ticket_ctx
scoreboard players add #ticket_index scr_sk 1
execute if score #ticket_index scr_sk matches ..3 run return run function scr_sky:jobs/ticket_loop
