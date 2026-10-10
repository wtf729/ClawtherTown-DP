$data modify storage scr_mail:runtime work.entry set from storage scr_mail:players players."$(key)".messages[{id:$(id)}].rewards[$(reward)]
execute if data storage scr_mail:runtime work.entry{state:"done"} run return 1
execute unless data storage scr_mail:runtime work.entry{state:"pending",prepared:1b} run return 0
$data modify storage scr_mail:runtime work.plan set from storage scr_mail:runtime work.plans[$(reward)]
$data modify storage scr_mail:players players."$(key)".transaction.reward_index set value $(reward)
$data modify storage scr_mail:players players."$(key)".messages[{id:$(id)}].rewards[$(reward)].receipt set from storage scr_mail:runtime work.plan
$data modify storage scr_mail:players players."$(key)".messages[{id:$(id)}].rewards[$(reward)].state set value "executing"
execute store result score #ok scr_ml_ok run function scr_mail:reward/dispatch
execute unless score #ok scr_ml_ok matches 1 run return 0
$data modify storage scr_mail:players players."$(key)".messages[{id:$(id)}].rewards[$(reward)].state set value "done"
return 1
