$execute unless data storage scr_mail:ui players."$(key)".actions[{token:$(token)}] run return 0
$data modify storage scr_mail:runtime work.op set from storage scr_mail:ui players."$(key)".actions[{token:$(token)}]
data modify storage scr_mail:runtime work.ctx.view set value "inbox"
execute if data storage scr_mail:runtime work.op{view:"history"} run data modify storage scr_mail:runtime work.ctx.view set value "history"
scoreboard players set #page scr_ml_n 0
execute if data storage scr_mail:runtime work.op.page store result score #page scr_ml_n run data get storage scr_mail:runtime work.op.page
execute if data storage scr_mail:runtime work.op.id run data modify storage scr_mail:runtime work.ctx.id set from storage scr_mail:runtime work.op.id
# Consume all tickets from this view before running any action, including rejected claims.
$data remove storage scr_mail:ui players."$(key)".actions
execute if data storage scr_mail:runtime work.op{kind:"close"} run dialog clear @s
execute if data storage scr_mail:runtime work.op{kind:"list"} run return run function scr_mail:ui/list
execute if data storage scr_mail:runtime work.op{kind:"detail"} run return run function scr_mail:ui/detail
execute if data storage scr_mail:runtime work.op{kind:"claim"} run return run function scr_mail:request/claim
execute if data storage scr_mail:runtime work.op{kind:"all"} run return run function scr_mail:request/all
