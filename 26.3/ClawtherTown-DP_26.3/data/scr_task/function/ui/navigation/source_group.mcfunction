$execute unless data storage scr_task:runtime npc_catalog[{group:"$(group)"}] run return 0
data modify storage scr_task:runtime work.route set value {view:"panel",history:0}
data modify storage scr_task:runtime work.route.group set from storage scr_task:runtime work.nav.group
return 1
