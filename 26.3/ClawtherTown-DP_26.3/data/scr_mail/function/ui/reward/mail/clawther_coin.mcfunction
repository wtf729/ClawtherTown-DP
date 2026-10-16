data modify storage scr_mail:runtime work.business_label set value {"translate":"gui.scr.mail.reward.clawther_coin","fallback":"鹰翎币 ×%s","color":"aqua"}
return run function scr_mail:ui/reward/mail/currency_row with storage scr_mail:runtime work.entry.parameters
