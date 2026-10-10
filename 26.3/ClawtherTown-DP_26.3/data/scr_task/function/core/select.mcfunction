data remove storage scr_task:runtime work.selected
$data modify storage scr_task:runtime work.selected set from storage scr_task:runtime catalog[{id:"$(id)"}]
execute unless data storage scr_task:runtime work.selected.group run return 0
data modify storage scr_task:runtime work.ctx set from storage scr_task:runtime work.selected
data modify storage scr_task:runtime work.ctx.key set from storage scr_task:runtime work.key
return 1
