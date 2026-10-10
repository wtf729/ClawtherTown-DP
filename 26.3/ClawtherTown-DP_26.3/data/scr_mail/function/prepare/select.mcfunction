$execute unless data storage scr_mail:players players."$(key)".messages[{state:"preparing"}] run scoreboard players set @s scr_ml_work 0
$execute unless data storage scr_mail:players players."$(key)".messages[{state:"preparing"}] run return 0
# /data modify set selects the last matching source; one queued mail per player/tick.
$data modify storage scr_mail:runtime work.ctx.id set from storage scr_mail:players players."$(key)".messages[{state:"preparing"}].id
execute store result score #ok scr_ml_ok run function scr_mail:adapter/open
execute unless score #ok scr_ml_ok matches 1 run return 0
return run function scr_mail:prepare/mail with storage scr_mail:runtime work.ctx
