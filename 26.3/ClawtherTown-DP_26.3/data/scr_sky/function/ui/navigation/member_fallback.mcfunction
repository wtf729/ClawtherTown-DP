# The selected member disappeared. Read current permissions through the existing members page.
data modify storage scr_sky:ui request.view set value "members"
data modify storage scr_sky:ui request.op set value "none"
data modify storage scr_sky:ui request.target set value ""
data modify storage scr_sky:ui request.role set value 0
data modify storage scr_sky:ui request.confirmed set value 0
return run function scr_sky:ui/members
