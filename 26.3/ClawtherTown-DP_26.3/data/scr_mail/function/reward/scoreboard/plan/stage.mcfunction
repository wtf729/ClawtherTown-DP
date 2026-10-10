scoreboard players set #balance scr_ml_n 0
execute if score @s stage matches -2147483648..2147483647 run scoreboard players operation #balance scr_ml_n = @s stage
execute if data storage scr_mail:runtime work.forecast.stage store result score #balance scr_ml_n run data get storage scr_mail:runtime work.forecast.stage
execute unless score #balance scr_ml_n matches 0..2147483647 run return 0
execute store result storage scr_mail:runtime work.plan.before int 1 run scoreboard players get #balance scr_ml_n
execute store result score #value scr_ml_n run data get storage scr_mail:runtime work.entry.parameters.value
scoreboard players set #room scr_ml_n 2147483647
scoreboard players operation #room scr_ml_n -= #value scr_ml_n
execute if data storage scr_mail:runtime work.entry.parameters{operation:"add"} if score #balance scr_ml_n > #room scr_ml_n run return 0
execute if data storage scr_mail:runtime work.entry.parameters{operation:"add"} run scoreboard players operation #balance scr_ml_n += #value scr_ml_n
execute if data storage scr_mail:runtime work.entry.parameters{operation:"set"} run scoreboard players operation #balance scr_ml_n = #value scr_ml_n
execute store result storage scr_mail:runtime work.plan.after int 1 run scoreboard players get #balance scr_ml_n
execute store result storage scr_mail:runtime work.forecast.stage int 1 run scoreboard players get #balance scr_ml_n
function scr_mail:reward/scoreboard/store_plan with storage scr_mail:runtime work.ctx
return 1
