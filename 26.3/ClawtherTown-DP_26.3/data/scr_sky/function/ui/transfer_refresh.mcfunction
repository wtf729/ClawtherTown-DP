$data modify storage scr_sky:ui request set value {view:"detail",op:"none",id:$(id),target:"",role:0,confirmed:0}
# Read only this player's previous page, never the shared request of another player.
$data modify storage scr_sky:ui request.return_to set from storage scr_sky:ui sessions."$(key)".page.return_to
function scr_sky:ui/render
