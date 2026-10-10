$execute if data storage scr_sky:ui work.ctx{key:"$(key)"} run return 0
$execute if data storage scr_sky:ui work.island{owner:"$(key)"} run return 0
$execute if data storage scr_sky:ui work.island.roles."$(key)" run return 0
$data modify storage scr_sky:ui work.ctx.target set value "$(key)"
function scr_sky:ui/name with storage scr_sky:ui work.ctx
data modify storage scr_sky:ui work.label set value {"text":"","color":"white","extra":[{"text":""},{"text":"   ["},{"translate":"gui.scr.sky.invite_action","fallback":"邀请","color":"white"},{"text":"]"}]}
data modify storage scr_sky:ui work.label.extra[0] set from storage scr_sky:ui work.name
$execute if data storage scr_sky:invites pending[{island_id:$(id),target:"$(key)"}] run data modify storage scr_sky:ui work.label.extra[2] set value {"translate":"gui.scr.sky.invited","fallback":"已邀请","color":"white"}
$data modify storage scr_sky:ui work.route set value {view:"operate",op:"invite_toggle",id:$(id),target:"$(key)",role:0,confirmed:0}
function scr_sky:ui/button
data modify storage scr_sky:ui work.dialog.actions append from storage scr_sky:ui work.button
