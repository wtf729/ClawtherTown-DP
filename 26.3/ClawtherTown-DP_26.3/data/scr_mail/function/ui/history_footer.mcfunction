# History has a normal return action and a close-only footer.
# The return action keeps multi_action valid even without other operations.
data modify storage scr_mail:runtime work.button set value {label:{translate:"gui.scr.mail.back",fallback:"返回邮箱",color:"aqua"},width:170}
data modify storage scr_mail:runtime work.op set value {kind:"list",view:"inbox",page:0}
function scr_mail:ui/button
# Keep the return action above. Only move the new close button into the footer.
function scr_mail:ui/close_button
data modify storage scr_mail:runtime work.dialog.exit_action set from storage scr_mail:runtime work.button
data remove storage scr_mail:runtime work.dialog.actions[-1]
return 1
