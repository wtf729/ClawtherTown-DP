# An interrupted sending state may ONLY reconcile an existing matching receipt.
# Never automatically send again in an ambiguous state.
execute if data storage scr_tower:runtime envelope{state:"conflict"} run return 0
execute if data storage scr_tower:runtime envelope{state:"sending"} run return run function scr_tower:mail/reconcile
data modify storage scr_tower:runtime envelope.state set value "sending"
execute store result score #ok scr_tw run function scr_tower:mail/write with storage scr_tower:runtime part
execute unless score #ok scr_tw matches 1 run return 0
data remove storage scr_tower:runtime previous_mail
data modify storage scr_tower:runtime previous_mail set from storage scr_mail:request mail
data modify storage scr_mail:request mail set from storage scr_tower:runtime envelope.request
execute store result score #send_result scr_tw run function scr_mail:send
data remove storage scr_mail:request mail
execute if data storage scr_tower:runtime previous_mail run data modify storage scr_mail:request mail set from storage scr_tower:runtime previous_mail
# Verify actual persisted receipt, not merely the function return code.
execute store result score #receipt scr_tw run function scr_tower:mail/reconcile
execute if score #receipt scr_tw matches 1 run return 1
# Explicit failure and no receipt: safely retryable. Unknown success stays sending.
execute if score #send_result scr_tw matches 0 if score #found scr_tw matches 0 run data modify storage scr_tower:runtime envelope.error set value "mail_rejected"
execute if score #send_result scr_tw matches 0 if score #found scr_tw matches 0 run data modify storage scr_tower:runtime envelope.state set value "pending"
function scr_tower:mail/write with storage scr_tower:runtime part
return 0
