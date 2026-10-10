# Reject strings, floats, bytes and compound values rather than accepting /data get lengths.
execute store success score #ok scr_ml_ok store result score #number scr_ml_n run data get storage scr_mail:runtime work.number
execute unless score #ok scr_ml_ok matches 1 run return 0
execute store result storage scr_mail:runtime work.integer int 1 run scoreboard players get #number scr_ml_n
data modify storage scr_mail:runtime work.check set from storage scr_mail:runtime work.number
execute store success score #tmp scr_ml_n run data modify storage scr_mail:runtime work.check set from storage scr_mail:runtime work.integer
execute if score #tmp scr_ml_n matches 1 run return 0
return 1
