$data modify storage scr_mail:runtime work.entry set from storage scr_mail:players players."$(key)".messages[{id:$(id)}].rewards[$(reward)]
execute if data storage scr_mail:runtime work.entry{prepared:1b} run return 1
# Interrupted generation is never silently rerolled on reload.
execute if data storage scr_mail:runtime work.entry{state:"generating"} run return 0
execute store result score #ok scr_ml_ok run function scr_mail:reward/validate
execute unless score #ok scr_ml_ok matches 1 run return 0
$data modify storage scr_mail:players players."$(key)".messages[{id:$(id)}].rewards[$(reward)].state set value "generating"
data modify storage scr_mail:runtime work.payload set value []
data remove storage scr_mail:runtime work.icon
execute if data storage scr_mail:runtime work.entry{handler:"loot"} store result score #ok scr_ml_ok run function scr_mail:reward/loot/prepare
execute if data storage scr_mail:runtime work.entry{handler:"item"} store result score #ok scr_ml_ok run function scr_mail:reward/item/prepare
execute unless score #ok scr_ml_ok matches 1 run return 0
execute if data storage scr_mail:runtime work.entry{handler:"clawther_coin"} store result score #ok scr_ml_ok run function scr_mail:reward/clawther_coin/prepare
execute unless score #ok scr_ml_ok matches 1 run return 0
execute if data storage scr_mail:runtime work.entry{handler:"soul"} store result score #ok scr_ml_ok run function scr_mail:reward/soul/prepare
execute unless score #ok scr_ml_ok matches 1 run return 0
execute if data storage scr_mail:runtime work.entry{handler:"clawther_gem"} store result score #ok scr_ml_ok run function scr_mail:reward/clawther_gem/prepare
execute unless score #ok scr_ml_ok matches 1 run return 0
$data modify storage scr_mail:players players."$(key)".messages[{id:$(id)}].rewards[$(reward)].items set from storage scr_mail:runtime work.payload
$execute if data storage scr_mail:runtime work.icon run data modify storage scr_mail:players players."$(key)".messages[{id:$(id)}].rewards[$(reward)].icon set from storage scr_mail:runtime work.icon
$data modify storage scr_mail:players players."$(key)".messages[{id:$(id)}].rewards[$(reward)].prepared set value 1b
$data modify storage scr_mail:players players."$(key)".messages[{id:$(id)}].rewards[$(reward)].state set value "pending"
return 1
