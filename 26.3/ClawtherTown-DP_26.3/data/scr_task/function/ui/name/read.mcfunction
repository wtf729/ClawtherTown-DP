# UI-only public name lookup: trusted task ID; no player context/lifecycle changes.
data remove storage scr_task:ui display_name
data remove storage scr_task:ui name_entry
$data modify storage scr_task:ui name_entry set from storage scr_task:runtime catalog[{id:"$(id)"}]
execute unless data storage scr_task:ui name_entry run return 0
data modify storage scr_task:ui display_name set value {text:"",color:"gold"}
data modify storage scr_task:ui display_name.text set from storage scr_task:ui name_entry.title
execute if data storage scr_task:ui name_entry.ui.title run data modify storage scr_task:ui display_name set from storage scr_task:ui name_entry.ui.title
data remove storage scr_task:ui name_entry
return 1
