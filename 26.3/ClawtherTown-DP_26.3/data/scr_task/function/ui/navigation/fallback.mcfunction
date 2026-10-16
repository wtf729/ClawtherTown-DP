# Use the validated source/fallback in the already-open UI context.
data modify storage scr_task:runtime work.nav set from storage scr_task:runtime work.route
execute if data storage scr_task:runtime work.nav{view:"home"} run return run function scr_task:ui/home
return run function scr_task:ui/npc with storage scr_task:runtime work.nav
