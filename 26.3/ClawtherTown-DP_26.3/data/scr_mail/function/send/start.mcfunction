execute unless data storage scr_mail:request mail run return 0
data modify storage scr_mail:runtime work.mail set from storage scr_mail:request mail
execute store result score #ok scr_ml_ok run function scr_mail:send/validate
execute unless score #ok scr_ml_ok matches 1 run return 0
data modify storage scr_mail:runtime work.ctx.event set value {}
data modify storage scr_mail:runtime work.ctx.event.event_id set from storage scr_mail:runtime work.mail.event_id
return run function scr_mail:send/store with storage scr_mail:runtime work.ctx
