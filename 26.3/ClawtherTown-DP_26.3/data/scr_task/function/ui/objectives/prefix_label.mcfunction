# Build the visible name without changing the row; common Tooltip later uses this finalized name.
$data modify storage scr_task:runtime work.goal_ui.prefixed_label set value {translate:"gui.scr.task.goal.$(kind)",fallback:"%s",with:[{}],color:"white"}
data modify storage scr_task:runtime work.goal_ui.prefixed_label.with[0] set from storage scr_mail:preview work.item_label
data modify storage scr_mail:preview work.line.description.contents.extra[0] set from storage scr_task:runtime work.goal_ui.prefixed_label
