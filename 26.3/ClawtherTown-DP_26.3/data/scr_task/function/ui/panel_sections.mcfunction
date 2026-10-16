# Preserve the original state-group ordering in the native action grid.
data modify storage scr_task:runtime work.dialog.actions append from storage scr_task:runtime work.available[]
data modify storage scr_task:runtime work.dialog.actions append from storage scr_task:runtime work.active[]
data modify storage scr_task:runtime work.dialog.actions append from storage scr_task:runtime work.ready_to_complete[]
