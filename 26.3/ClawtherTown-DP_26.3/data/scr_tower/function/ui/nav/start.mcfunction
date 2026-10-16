# Tower selection is navigation only; no entry count or Run is changed here.
execute unless data storage scr_tower:runtime nav{view:"home"} run return 0
execute unless data storage scr_tower:runtime route{tower:"main"} unless data storage scr_tower:runtime route{tower:"sky"} run return 0
data modify storage scr_tower:runtime nav.view set value "confirm_start"
data modify storage scr_tower:runtime nav.page set value 0
data modify storage scr_tower:runtime nav.return_view set value "home"
data modify storage scr_tower:runtime nav.selected_tower set from storage scr_tower:runtime route.tower
return 1
