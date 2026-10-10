data remove storage scr_task:runtime work.npc
$data modify storage scr_task:runtime work.npc set from storage scr_task:runtime npc_catalog[{group:"$(group)"}]
execute unless data storage scr_task:runtime work.npc run return run function scr_task:ui/home
execute if data storage scr_task:runtime work.nav{view:"detail"} run return run function scr_task:ui/detail
execute if data storage scr_task:runtime work.nav{group:"skywing"} run return run function scr_task:ui/skywing/route
return run function scr_task:ui/panel
