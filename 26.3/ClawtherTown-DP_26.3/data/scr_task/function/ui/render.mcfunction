function scr_task:ui/session/reset with storage scr_task:runtime work.ctx
data modify storage scr_task:runtime work.dialog set from storage scr_task:runtime journal_template
execute if data storage scr_task:runtime work.nav{view:"home"} run function scr_task:ui/home
execute unless data storage scr_task:runtime work.nav{view:"home"} run function scr_task:ui/npc with storage scr_task:runtime work.nav
return run function scr_task:ui/show with storage scr_task:runtime work
