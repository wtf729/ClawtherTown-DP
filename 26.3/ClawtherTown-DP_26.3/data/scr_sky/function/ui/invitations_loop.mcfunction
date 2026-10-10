execute unless data storage scr_sky:ui work.invitation_queue[0] run return 1
data modify storage scr_sky:ui work.name_island set value {}
data modify storage scr_sky:ui work.name_island.id set from storage scr_sky:ui work.invitation_queue[0].island_id
function scr_sky:ui/island_name
data modify storage scr_sky:ui work.label set from storage scr_sky:ui work.island_name
data modify storage scr_sky:ui work.route set value {view:"invitation",op:"none",id:0,target:"",role:0,confirmed:0}
data modify storage scr_sky:ui work.route.id set from storage scr_sky:ui work.invitation_queue[0].island_id
function scr_sky:ui/button
data modify storage scr_sky:ui work.dialog.actions append from storage scr_sky:ui work.button
data remove storage scr_sky:ui work.invitation_queue[0]
return run function scr_sky:ui/invitations_loop
