execute if data storage scr_mail:runtime work.entry{handler:"loot"} run return run function scr_mail:reward/loot/validate
execute if data storage scr_mail:runtime work.entry{handler:"item"} run return run function scr_mail:reward/item/validate
execute if data storage scr_mail:runtime work.entry{handler:"scoreboard"} run return run function scr_mail:reward/scoreboard/validate
execute if data storage scr_mail:runtime work.entry{handler:"function"} run return run function scr_mail:reward/function/validate
execute if data storage scr_mail:runtime work.entry{handler:"tag"} run return run function scr_mail:reward/tag/validate
execute if data storage scr_mail:runtime work.entry{handler:"advancement"} run return run function scr_mail:reward/advancement/validate
execute if data storage scr_mail:runtime work.entry{handler:"clawther_coin"} run return run function scr_mail:reward/clawther_coin/validate
execute if data storage scr_mail:runtime work.entry{handler:"clawther_gem"} run return run function scr_mail:reward/clawther_gem/validate
execute if data storage scr_mail:runtime work.entry{handler:"soul"} run return run function scr_mail:reward/soul/validate
return 0
