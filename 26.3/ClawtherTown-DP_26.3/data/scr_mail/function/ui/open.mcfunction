execute if score #busy scr_ml_lock matches 1 run return 0
scoreboard players set @s mail 0
execute store result score #ok scr_ml_ok run function scr_mail:context/open
execute unless score #ok scr_ml_ok matches 1 run return 0
scoreboard players set #page scr_ml_n 0
data modify storage scr_mail:runtime work.ctx.view set value "inbox"
function scr_mail:ui/list
scoreboard players set @s scr_ml_work 1
function scr_mail:context/close
