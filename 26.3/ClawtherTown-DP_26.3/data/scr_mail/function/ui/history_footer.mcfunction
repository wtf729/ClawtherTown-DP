# History returns to inbox; native Escape closes directly.
# The return action keeps multi_action valid even without other operations.
data modify storage scr_mail:runtime work.button set value {label:{translate:"gui.scr.mail.back",fallback:"返回邮箱",color:"aqua"},width:170}
data modify storage scr_mail:runtime work.op set value {kind:"list",view:"inbox",page:0}
function scr_mail:ui/button
return 1
