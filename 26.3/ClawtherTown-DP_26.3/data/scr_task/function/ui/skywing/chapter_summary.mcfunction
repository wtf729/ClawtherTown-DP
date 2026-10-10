$data modify storage scr_task:runtime work.label.extra append value {text:" · $(submitted)/$(total)",color:"gray"}
function scr_task:ui/skywing/chapter_status
$data modify storage scr_task:runtime work.section set value {type:"minecraft:plain_message",width:420,contents:{translate:"gui.scr.task.sky.chapter_progress",fallback:"%1$s：已提交 %2$s/%3$s；提交 %4$s 项可解锁下一章。",with:[{},"$(submitted)","$(total)","$(required)"],color:"white"}}
data modify storage scr_task:runtime work.section.contents.with[0] set from storage scr_task:runtime work.chapter_ui.label
execute if data storage scr_task:runtime work.chapter_ui{final:1b} run data modify storage scr_task:runtime work.section.contents.translate set value "gui.scr.task.sky.final_progress"
execute if data storage scr_task:runtime work.chapter_ui{final:1b} run data modify storage scr_task:runtime work.section.contents.fallback set value "最后一章：已提交 %2$s/%3$s；全部提交后完成主线。"
execute if data storage scr_task:runtime work.nav.chapter run data modify storage scr_task:runtime work.dialog.body append from storage scr_task:runtime work.section
