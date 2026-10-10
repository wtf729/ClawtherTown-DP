data modify storage scr_mail:runtime work.business_label set value {"translate":"gui.scr.mail.reward.clawther_gem","fallback":"翎钻 ×%s","color":"aqua"}
return run function scr_mail:ui/business_reward with storage scr_mail:runtime work.entry.parameters
