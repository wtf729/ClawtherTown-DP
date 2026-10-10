data modify storage scr_mail:runtime work.number set value 0
data modify storage scr_mail:runtime work.number set from storage scr_mail:runtime work.entry.parameters.amount
execute store result score #ok scr_ml_ok run function scr_mail:number/read_int
execute unless score #ok scr_ml_ok matches 1 run return 0
execute unless score #number scr_ml_n matches 1..2147483647 run return 0
return 1
