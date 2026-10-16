# Build a canonical return route from entry selectors, never from Task state.
data modify storage scr_task:runtime work.route set value {view:"home"}
execute unless data storage scr_task:runtime work.nav.group run return 0
execute unless data storage scr_task:runtime work.nav{history:0} unless data storage scr_task:runtime work.nav{history:1} run return 0
execute store result score #selected scr_tk run function scr_task:ui/navigation/source_group with storage scr_task:runtime work.nav
execute unless score #selected scr_tk matches 1 run return 0
# Known NPC with an invalid subpage falls back to that NPC's current homepage.
execute if data storage scr_task:runtime work.nav.chapter if data storage scr_task:runtime work.nav.advanced run return 0
execute unless data storage scr_task:runtime work.nav{group:"skywing"} if data storage scr_task:runtime work.nav.chapter run return 0
execute unless data storage scr_task:runtime work.nav{group:"skywing"} if data storage scr_task:runtime work.nav.advanced run return 0
execute if data storage scr_task:runtime work.nav.advanced unless data storage scr_task:runtime work.nav{advanced:1} run return 0
execute if data storage scr_task:runtime work.nav.chapter store result score #selected scr_tk run function scr_task:ui/navigation/source_chapter with storage scr_task:runtime work.nav
execute unless score #selected scr_tk matches 1 run return 0
data modify storage scr_task:runtime work.route.history set from storage scr_task:runtime work.nav.history
execute if data storage scr_task:runtime work.nav.chapter run data modify storage scr_task:runtime work.route.chapter set from storage scr_task:runtime work.nav.chapter
execute if data storage scr_task:runtime work.nav.advanced run data modify storage scr_task:runtime work.route.advanced set from storage scr_task:runtime work.nav.advanced
return 1
