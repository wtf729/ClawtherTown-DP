data modify storage scr_tower:runtime nav set value {view:"run",page:0,return_view:"run"}
function scr_tower:ui/nav/write with storage scr_tower:runtime ctx
return run function scr_tower:ui/render
