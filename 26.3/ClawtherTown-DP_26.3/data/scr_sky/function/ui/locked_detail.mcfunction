data modify storage scr_sky:ui work.line set value {"translate":"gui.scr.sky.maintenance_status","fallback":"岛屿状态：%s；暂时不能进入。","color":"white","with":[{"text":""}]}
data modify storage scr_sky:ui work.line.with[0] set value {"translate":"gui.scr.sky.state.unavailable","fallback":"暂时不可用"}
execute if data storage scr_sky:runtime result.island{state:"resetting"} run data modify storage scr_sky:ui work.line.with[0] set value {"translate":"gui.scr.sky.state.resetting","fallback":"正在重置"}
execute if data storage scr_sky:runtime result.island{state:"deleting"} run data modify storage scr_sky:ui work.line.with[0] set value {"translate":"gui.scr.sky.state.deleting","fallback":"正在删除"}
execute if data storage scr_sky:runtime result.island{state:"recovery"} run data modify storage scr_sky:ui work.line.with[0] set value {"translate":"gui.scr.sky.state.recovery","fallback":"等待管理员处理"}
execute if data storage scr_sky:runtime result.island{state:"locked"} run data modify storage scr_sky:ui work.line.with[0] set value {"translate":"gui.scr.sky.state.locked","fallback":"暂时关闭"}
function scr_sky:ui/append_line
data modify storage scr_sky:ui work.route set value {"view":"detail","op":"none","id":0,"target":"","role":0,"confirmed":0}
data modify storage scr_sky:ui work.route.id set from storage scr_sky:ui request.id
data modify storage scr_sky:ui work.label set value {"translate":"gui.scr.sky.refresh","fallback":"刷新","color":"white"}
function scr_sky:ui/button
data modify storage scr_sky:ui work.dialog.actions append from storage scr_sky:ui work.button
function scr_sky:ui/navigation/detail_return
