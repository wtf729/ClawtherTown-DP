data modify storage scr_sky:ui work.ctx.id set from storage scr_sky:ui request.id
function scr_sky:ui/invitation_read with storage scr_sky:ui work.ctx
execute unless data storage scr_sky:ui work.invitation run return run function scr_sky:ui/unavailable
data modify storage scr_sky:ui work.name_island set value {}
data modify storage scr_sky:ui work.name_island.id set from storage scr_sky:ui request.id
function scr_sky:ui/island_name
data modify storage scr_sky:ui work.line set from storage scr_sky:ui work.island_name
function scr_sky:ui/append_line
data modify storage scr_sky:ui work.ctx.target set from storage scr_sky:ui work.invitation.inviter
function scr_sky:ui/name with storage scr_sky:ui work.ctx
data modify storage scr_sky:ui work.line set value {"translate":"gui.scr.sky.invitation_from","fallback":"邀请人：%s · 加入后身份：成员","color":"white","with":[{"text":""}]}
data modify storage scr_sky:ui work.line.with[0] set from storage scr_sky:ui work.name
function scr_sky:ui/append_line
data modify storage scr_sky:ui work.route set value {"view":"operate","op":"accept_invite","id":0,"target":"","role":0,"confirmed":0}
data modify storage scr_sky:ui work.route.id set from storage scr_sky:ui request.id
data modify storage scr_sky:ui work.label set value {"translate":"gui.scr.sky.accept_invite","fallback":"接受","color":"white"}
function scr_sky:ui/button
data modify storage scr_sky:ui work.dialog.actions append from storage scr_sky:ui work.button
data modify storage scr_sky:ui work.route set value {"view":"operate","op":"reject_invite","id":0,"target":"","role":0,"confirmed":0}
data modify storage scr_sky:ui work.route.id set from storage scr_sky:ui request.id
data modify storage scr_sky:ui work.label set value {"translate":"gui.scr.sky.reject_invite","fallback":"拒绝","color":"white"}
function scr_sky:ui/button
data modify storage scr_sky:ui work.dialog.actions append from storage scr_sky:ui work.button
data modify storage scr_sky:ui work.route set value {"view":"invitations","op":"none","id":0,"target":"","role":0,"confirmed":0}
data modify storage scr_sky:ui work.label set value {"translate":"gui.scr.sky.back","fallback":"返回","color":"white"}
function scr_sky:ui/button
data modify storage scr_sky:ui work.dialog.actions append from storage scr_sky:ui work.button
