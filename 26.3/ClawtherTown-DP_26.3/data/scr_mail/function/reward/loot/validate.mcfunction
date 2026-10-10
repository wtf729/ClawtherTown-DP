# Only audited, static, non-empty reward tables belong here. Shop/case opening entry points are unchanged.
execute if data storage scr_mail:runtime work.entry.parameters{table:"scr:card/card_clawther_coin_double_v"} run return 1
execute if data storage scr_mail:runtime work.entry.parameters{table:"scr:card/card_soul_double_v"} run return 1
execute if data storage scr_mail:runtime work.entry.parameters{table:"scr:case/case/case_rare_ore"} run return 1
execute if data storage scr_mail:runtime work.entry.parameters{table:"scr:card/card_clawther_coin_double_iii"} run return 1
execute if data storage scr_mail:runtime work.entry.parameters{table:"scr:card/card_soul_double_iii"} run return 1
execute if data storage scr_mail:runtime work.entry.parameters{table:"scr:case/case/case_special_item_ii"} run return 1
execute if data storage scr_mail:runtime work.entry.parameters{table:"scr:tools/staff/staff_clear_spring_custom_1"} run return 1
return 0
