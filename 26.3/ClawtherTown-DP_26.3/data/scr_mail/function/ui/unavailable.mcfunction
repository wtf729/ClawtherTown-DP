data modify storage scr_mail:runtime work.button set value {"label":{"translate":"gui.scr.mail.unavailable","fallback":"不可领取","color":"gray"},"tooltip":{"text":""},"width":170}
data modify storage scr_mail:runtime work.button.tooltip set from storage scr_mail:runtime work.reason
execute if data storage scr_mail:runtime work.mail{state:"claimed"} run data modify storage scr_mail:runtime work.button.label set value {"translate":"gui.scr.mail.claimed","fallback":"已领取","color":"gray"}
# With after_action:none, no-action buttons stay on this screen and cannot submit a claim.
data modify storage scr_mail:runtime work.dialog.actions append from storage scr_mail:runtime work.button
