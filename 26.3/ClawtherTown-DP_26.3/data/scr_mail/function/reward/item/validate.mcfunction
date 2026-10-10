execute unless data storage scr_mail:runtime work.entry.parameters.stack.id run return 0
execute unless data storage scr_mail:runtime work.entry.parameters.stack.count run return 0
data modify storage scr_mail:runtime work.number set from storage scr_mail:runtime work.entry.parameters.stack.count
execute store result score #ok scr_ml_ok run function scr_mail:number/read_int
execute unless score #ok scr_ml_ok matches 1 run return 0
execute unless score #number scr_ml_n matches 1..64 run return 0
return 1
