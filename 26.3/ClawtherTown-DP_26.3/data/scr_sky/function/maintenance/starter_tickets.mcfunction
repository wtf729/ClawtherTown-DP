$data modify storage scr_sky:maintenance job.starter_tickets append value {x:$(x),z:$(z)}
scoreboard players add #m_x scr_sk 8
scoreboard players add #m_z scr_sk 8
execute store result storage scr_sky:maintenance job.place.xe int 1 run scoreboard players get #m_x scr_sk
execute store result storage scr_sky:maintenance job.place.ze int 1 run scoreboard players get #m_z scr_sk
function scr_sky:maintenance/starter_corners with storage scr_sky:maintenance job.place
