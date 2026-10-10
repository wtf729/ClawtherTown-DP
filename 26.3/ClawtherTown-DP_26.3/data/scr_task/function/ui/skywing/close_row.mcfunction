# Close is a normal native action in the two-column grid, using the existing close route.
function scr_task:ui/close_button
data modify storage scr_task:runtime work.dialog.actions append from storage scr_task:runtime work.button
# With no exit_action, native Escape closes directly; avoid a duplicate footer button.
# Escape performs no business/navigation action. Opening a page always rebuilds UI tokens.
data remove storage scr_task:runtime work.dialog.exit_action
data modify storage scr_task:runtime work.dialog.can_close_with_escape set value 1b
