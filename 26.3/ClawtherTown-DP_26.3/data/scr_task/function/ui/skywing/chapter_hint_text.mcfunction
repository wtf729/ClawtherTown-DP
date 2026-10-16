data modify storage scr_task:runtime work.label.extra append value {text:" · ",color:"gray"}
$data modify storage scr_task:runtime work.label.extra append value {translate:"gui.scr.task.sky.chapter_remaining_many",fallback:"再完成%s项解锁下一章",with:["$(remaining)"],color:"white"}
execute if score #ui_ch_remaining scr_tk matches 1 run data modify storage scr_task:runtime work.label.extra[-1].translate set value "gui.scr.task.sky.chapter_remaining_one"
