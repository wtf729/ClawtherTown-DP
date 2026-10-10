data remove storage scr_task:runtime work.action
$data modify storage scr_task:runtime work.action set from storage scr_task:ui sessions."$(key)".buttons[{token:$(token)}]
execute unless data storage scr_task:runtime work.action.view run return 0
return 1
