# Empty visual cells only: no mail record, action, token or handler is created.
data modify storage scr_mail:runtime work.dialog.actions append value {label:{text:""},width:170}
scoreboard players add #mail_slots scr_ml_n 1
execute if score #mail_slots scr_ml_n matches ..7 run function scr_mail:ui/list_padding
