execute if data storage scr_task:runtime work.nav{history:1} unless data storage scr_task:runtime work.nav.chapter unless data storage scr_task:runtime work.nav.advanced run return 1
execute if data storage scr_task:runtime work.nav{chapter:0} run return run execute if data storage scr_task:runtime work.sky_ui_task{id:"skywing/sky_00"}
execute if data storage scr_task:runtime work.nav.chapter run return run function scr_task:ui/skywing/filter_chapter with storage scr_task:runtime work.nav
execute if data storage scr_task:runtime work.nav{advanced:1} run return run execute if data storage scr_task:runtime work.sky_ui_task.category
return 0
