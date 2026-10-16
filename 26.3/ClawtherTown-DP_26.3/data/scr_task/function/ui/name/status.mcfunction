# Shared Task navigation terminology; #state is UI scratch, not a persistent state write.
data modify storage scr_task:runtime work.status_label set value {translate:"gui.scr.task.status.locked",fallback:"未解锁",color:"gray"}
execute if score #state scr_tk matches 1 run data modify storage scr_task:runtime work.status_label set value {translate:"gui.scr.task.status.available",fallback:"可接受",color:"yellow"}
execute if score #state scr_tk matches 2 run data modify storage scr_task:runtime work.status_label set value {translate:"gui.scr.task.status.active",fallback:"进行中",color:"aqua"}
execute if score #state scr_tk matches 3 run data modify storage scr_task:runtime work.status_label set value {translate:"gui.scr.task.status.ready_to_complete",fallback:"可完成",color:"green"}
execute if score #state scr_tk matches 4 run data modify storage scr_task:runtime work.status_label set value {translate:"gui.scr.task.status.completed",fallback:"已完成",color:"gray"}
