execute if data storage scr_mail:runtime work.entry{handler:"loot"} run return run function scr_mail:reward/items/apply
execute if data storage scr_mail:runtime work.entry{handler:"item"} run return run function scr_mail:reward/items/apply
execute if data storage scr_mail:runtime work.entry{handler:"scoreboard"} run return run function scr_mail:reward/scoreboard/apply
execute if data storage scr_mail:runtime work.entry{handler:"function"} run return run function scr_mail:reward/function/apply
execute if data storage scr_mail:runtime work.entry{handler:"tag"} run return run function scr_mail:reward/tag/apply
execute if data storage scr_mail:runtime work.entry{handler:"advancement"} run return run function scr_mail:reward/advancement/apply
execute if data storage scr_mail:runtime work.entry{handler:"clawther_coin"} run return run function scr_mail:reward/clawther_coin/apply
execute if data storage scr_mail:runtime work.entry{handler:"clawther_gem"} run return run function scr_mail:reward/clawther_gem/apply
execute if data storage scr_mail:runtime work.entry{handler:"soul"} run return run function scr_mail:reward/soul/apply
return 0
