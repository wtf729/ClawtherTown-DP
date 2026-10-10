# Corners cover at most four chunks; duplicate chunk references are harmless and owned only once.
data modify storage scr_sky:jobs active.tickets set value []
execute store result storage scr_sky:runtime work.ticket_a.x int 1 run scoreboard players get #place_x scr_sk
execute store result storage scr_sky:runtime work.ticket_a.z int 1 run scoreboard players get #place_z scr_sk
execute store result storage scr_sky:runtime work.ticket_b.x int 1 run scoreboard players get #endx scr_sk
execute store result storage scr_sky:runtime work.ticket_b.z int 1 run scoreboard players get #place_z scr_sk
execute store result storage scr_sky:runtime work.ticket_c.x int 1 run scoreboard players get #place_x scr_sk
execute store result storage scr_sky:runtime work.ticket_c.z int 1 run scoreboard players get #endz scr_sk
execute store result storage scr_sky:runtime work.ticket_d.x int 1 run scoreboard players get #endx scr_sk
execute store result storage scr_sky:runtime work.ticket_d.z int 1 run scoreboard players get #endz scr_sk
data modify storage scr_sky:jobs active.tickets append from storage scr_sky:runtime work.ticket_a
data modify storage scr_sky:jobs active.tickets append from storage scr_sky:runtime work.ticket_b
data modify storage scr_sky:jobs active.tickets append from storage scr_sky:runtime work.ticket_c
data modify storage scr_sky:jobs active.tickets append from storage scr_sky:runtime work.ticket_d
