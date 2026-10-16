# A live ticket binds the confirmation to its UUID, original Run, phase and selected tower.
execute unless data storage scr_tower:runtime nav{view:"confirm_start"} run return 0
execute unless data storage scr_tower:runtime nav{selected_tower:"main"} unless data storage scr_tower:runtime nav{selected_tower:"sky"} run return 0
execute unless data storage scr_tower:runtime route{tower:"main"} unless data storage scr_tower:runtime route{tower:"sky"} run return 0
data modify storage scr_tower:runtime check set from storage scr_tower:runtime route.tower
execute store success score #different scr_tw run data modify storage scr_tower:runtime check set from storage scr_tower:runtime nav.selected_tower
execute if score #different scr_tw matches 1 run return 0
execute store result score #business scr_tw run function scr_tower:entry
execute if score #business scr_tw matches 1 run data modify storage scr_tower:runtime nav set value {view:"run",page:0,return_view:"run"}
execute if data storage scr_tower:runtime p.run{phase:"building"} run data modify storage scr_tower:runtime nav set value {view:"run",page:0,return_view:"run"}
execute unless score #business scr_tw matches 1 unless data storage scr_tower:runtime p.run{phase:"building"} run function scr_tower:ui/nav/home
return run scoreboard players get #business scr_tw
