execute store result storage scr_sky:runtime work.pin.index int 1 run scoreboard players get #m_pin_index scr_sk
function scr_sky:maintenance/pin_one with storage scr_sky:runtime work.pin
scoreboard players add #m_pin_index scr_sk 1
execute if score #m_pin_index scr_sk matches ..4 run return run function scr_sky:maintenance/pin_loop
