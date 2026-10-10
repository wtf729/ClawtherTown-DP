$data modify storage scr_mail:runtime work.entry set from storage scr_mail:runtime work.mail.rewards[$(reward)]
execute store result score #ok scr_ml_ok run function scr_mail:reward/validate
execute unless score #ok scr_ml_ok matches 1 run return 0
# Only whitelisted fields are persisted. Caller-supplied done/state/transaction data is ignored.
data modify storage scr_mail:runtime work.clean set value {state:"pending",prepared:0b}
data modify storage scr_mail:runtime work.clean.handler set from storage scr_mail:runtime work.entry.handler
data modify storage scr_mail:runtime work.clean.parameters set from storage scr_mail:runtime work.entry.parameters
$data modify storage scr_mail:runtime work.mail.rewards[$(reward)] set from storage scr_mail:runtime work.clean
return 1
