# Only a read-only top-level destination is inherited; never copy operation authorization.
execute if data storage scr_sky:ui work.route{view:"home"} run return run data remove storage scr_sky:ui work.route.return_to
execute if data storage scr_sky:ui work.route{view:"list"} run return run data remove storage scr_sky:ui work.route.return_to
execute if data storage scr_sky:ui work.route{view:"select"} run return run data remove storage scr_sky:ui work.route.return_to
execute if data storage scr_sky:ui work.route{view:"invitations"} run return run data remove storage scr_sky:ui work.route.return_to
execute if data storage scr_sky:ui work.route{view:"invitation"} run return run data remove storage scr_sky:ui work.route.return_to
execute if data storage scr_sky:ui work.route.return_to{view:"home"} run return run data modify storage scr_sky:ui work.route.return_to set value {view:"home"}
execute if data storage scr_sky:ui work.route.return_to{view:"list"} run return run data modify storage scr_sky:ui work.route.return_to set value {view:"list"}
data remove storage scr_sky:ui work.route.return_to
execute if data storage scr_sky:ui request.return_to{view:"home"} run data modify storage scr_sky:ui work.route.return_to set value {view:"home"}
execute if data storage scr_sky:ui request.return_to{view:"list"} run data modify storage scr_sky:ui work.route.return_to set value {view:"list"}
