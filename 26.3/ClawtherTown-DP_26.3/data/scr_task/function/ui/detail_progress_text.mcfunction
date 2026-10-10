$data modify storage scr_task:runtime work.row.contents set value {"translate":"gui.scr.task.progress","fallback":"当前进度: %1$s / %2$s","with":[{"text":"$(value)"},{"text":"$(goal)"}],"color":"white"}
