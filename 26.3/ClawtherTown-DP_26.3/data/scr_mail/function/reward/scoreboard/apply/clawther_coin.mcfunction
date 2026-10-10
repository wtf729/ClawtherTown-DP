# Verify the forecast still matches; never silently overwrite changes from a previous unlock handler.
scoreboard players set #balance scr_ml_n 0
execute if score @s clawther_coin matches -2147483648..2147483647 run scoreboard players operation #balance scr_ml_n = @s clawther_coin
execute store result score #before scr_ml_n run data get storage scr_mail:runtime work.plan.before
execute unless score #balance scr_ml_n = #before scr_ml_n run return 0
data modify storage scr_mail:runtime work.apply set from storage scr_mail:runtime work.plan
return run function scr_mail:reward/scoreboard/command/clawther_coin with storage scr_mail:runtime work.apply
