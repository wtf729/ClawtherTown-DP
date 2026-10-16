function scr_task:ui/session/reset with storage scr_task:runtime work.ctx
data modify storage scr_task:runtime work.dialog set from storage scr_task:runtime journal_template
# Validate entry selectors before instantiating NPC macros.
execute if data storage scr_task:runtime work.nav{view:"detail"} store result score #selected scr_tk run function scr_task:ui/navigation/source
execute if data storage scr_task:runtime work.nav{view:"detail"} unless score #selected scr_tk matches 1 run data modify storage scr_task:runtime work.nav set from storage scr_task:runtime work.route
execute unless data storage scr_task:runtime work.nav{view:"home"} unless data storage scr_task:runtime work.nav.group run data modify storage scr_task:runtime work.nav set value {view:"home"}
execute if data storage scr_task:runtime work.nav{view:"home"} run function scr_task:ui/home
execute unless data storage scr_task:runtime work.nav{view:"home"} run function scr_task:ui/npc with storage scr_task:runtime work.nav
return run function scr_task:ui/show with storage scr_task:runtime work
