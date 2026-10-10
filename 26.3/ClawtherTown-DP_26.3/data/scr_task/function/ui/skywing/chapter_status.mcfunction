execute store result score #ui_ch_submitted scr_tk run data get storage scr_task:runtime work.chapter_ui.submitted
execute store result score #ui_ch_total scr_tk run data get storage scr_task:runtime work.chapter_ui.total
data modify storage scr_task:runtime work.chapter_label set value {translate:"gui.scr.task.sky.chapter_locked",fallback:"未解锁",color:"gray"}
execute if data storage scr_task:runtime work.chapter_status{unlocked:1b} run data modify storage scr_task:runtime work.chapter_label set value {translate:"gui.scr.task.sky.chapter_active",fallback:"进行中",color:"green"}
execute if score #ui_ch_submitted scr_tk >= #ui_ch_total scr_tk run data modify storage scr_task:runtime work.chapter_label set value {translate:"gui.scr.task.sky.chapter_completed",fallback:"已完成",color:"gold"}
data modify storage scr_task:runtime work.label.extra append value {text:" · ",color:"gray"}
data modify storage scr_task:runtime work.label.extra append from storage scr_task:runtime work.chapter_label
