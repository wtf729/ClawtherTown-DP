# History always reserves navigation; only an empty inbox omits this row.
execute unless data storage scr_mail:runtime work.ctx{view:"history"} unless score #length scr_ml_n matches 1.. run return 0
execute if score #page scr_ml_n matches 1.. run function scr_mail:ui/previous
execute unless score #page scr_ml_n matches 1.. run data modify storage scr_mail:runtime work.dialog.actions append value {"label":{"translate":"gui.scr.mail.prev_page","fallback":"上一页","color":"dark_gray"},"width":170}
execute if score #index scr_ml_n matches 0.. run function scr_mail:ui/next
execute unless score #index scr_ml_n matches 0.. run data modify storage scr_mail:runtime work.dialog.actions append value {"label":{"translate":"gui.scr.mail.next_page","fallback":"下一页","color":"dark_gray"},"width":170}
