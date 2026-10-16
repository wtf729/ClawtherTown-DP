data modify storage scr_tower:runtime nav set value {view:"home",page:0,return_view:"run"}
$execute if data storage scr_tower:ui players."$(key)" run data modify storage scr_tower:runtime nav set from storage scr_tower:ui players."$(key)"
