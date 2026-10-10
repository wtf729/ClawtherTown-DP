data modify storage scr_mail:runtime work.plans append value {}
$data modify storage scr_mail:runtime work.entry set from storage scr_mail:runtime work.mail.rewards[$(reward)]
execute if data storage scr_mail:runtime work.entry{state:"done"} run return 1
execute unless data storage scr_mail:runtime work.entry{state:"pending",prepared:1b} run return 0
execute store result score #ok scr_ml_ok run function scr_mail:reward/validate
execute unless score #ok scr_ml_ok matches 1 run return 0
execute if data storage scr_mail:runtime work.entry{handler:"loot"} unless data storage scr_mail:runtime work.entry.items[0] run return 0
execute if data storage scr_mail:runtime work.entry{handler:"item"} unless data storage scr_mail:runtime work.entry.items[0] run return 0
execute if data storage scr_mail:runtime work.entry{handler:"scoreboard"} run return run function scr_mail:reward/scoreboard/preflight
execute if data storage scr_mail:runtime work.entry{handler:"clawther_coin"} run return run function scr_mail:reward/clawther_coin/preflight
execute if data storage scr_mail:runtime work.entry{handler:"clawther_gem"} run return run function scr_mail:reward/clawther_gem/preflight
execute if data storage scr_mail:runtime work.entry{handler:"soul"} run return run function scr_mail:reward/soul/preflight
execute if data storage scr_mail:runtime work.entry.items[0] run return run function scr_mail:reward/items/preflight
return 1
