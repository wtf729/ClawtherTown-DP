data modify storage scr_sky:runtime result set value {ok:0b}
execute if data storage scr_sky:ui request{op:"claim"} run function scr_sky:api/claim
$execute if data storage scr_sky:ui request{op:"teleport"} run function scr_sky:api/teleport {id:$(id)}
execute if data storage scr_sky:ui request{op:"return_primary"} run function scr_sky:api/return_primary
execute if data storage scr_sky:ui request{op:"return_owned"} run function scr_sky:api/return_owned
execute if data storage scr_sky:ui request{op:"hub"} run function scr_sky:api/return_hub
$execute if data storage scr_sky:ui request{op:"set_primary"} run function scr_sky:api/set_primary {id:$(id)}
$execute if data storage scr_sky:ui request{op:"scan"} run function scr_sky:api/scan {id:$(id)}
$execute if data storage scr_sky:ui request{op:"set_spawn"} run function scr_sky:api/set_spawn {id:$(id)}
$execute if data storage scr_sky:ui request{op:"kick"} if data storage scr_sky:ui request{confirmed:1} run function scr_sky:api/set_role {id:$(id),target:"$(target)",role:0}
$execute if data storage scr_sky:ui request{op:"promote"} run function scr_sky:api/set_role {id:$(id),target:"$(target)",role:2}
$execute if data storage scr_sky:ui request{op:"demote"} run function scr_sky:api/set_role {id:$(id),target:"$(target)",role:1}
$execute if data storage scr_sky:ui request{op:"transfer"} if data storage scr_sky:ui request{confirmed:1} run function scr_sky:api/transfer_owner {id:$(id),target:"$(target)"}
$execute if data storage scr_sky:ui request{op:"leave"} if data storage scr_sky:ui request{confirmed:1} run function scr_sky:api/leave {id:$(id)}
$execute if data storage scr_sky:ui request{op:"reset"} if data storage scr_sky:ui request{confirmed:2} run function scr_sky:ui/commit_maintenance {id:$(id),kind:"reset"}
$execute if data storage scr_sky:ui request{op:"delete"} if data storage scr_sky:ui request{confirmed:2} run function scr_sky:ui/commit_maintenance {id:$(id),kind:"delete"}
$execute if data storage scr_sky:ui request{op:"cancel_reset"} run function scr_sky:api/cancel_reset {id:$(id)}
$execute if data storage scr_sky:ui request{op:"cancel_delete"} run function scr_sky:api/cancel_delete {id:$(id)}
$execute if data storage scr_sky:ui request{op:"invite_toggle"} run function scr_sky:api/toggle_invite {id:$(id),target:"$(target)"}
$execute if data storage scr_sky:ui request{op:"accept_invite"} run function scr_sky:api/accept_invite {id:$(id)}
$execute if data storage scr_sky:ui request{op:"reject_invite"} run function scr_sky:api/reject_invite {id:$(id)}
data modify storage scr_sky:ui response set from storage scr_sky:runtime result
# APIs may reject before opening a context. Keep their guard failures explicit.
execute unless data storage scr_sky:ui response{ok:1b} if data storage scr_sky:runtime busy run data modify storage scr_sky:ui response.reason set value "busy"
execute unless data storage scr_sky:ui response{ok:1b} unless score #config_ok scr_sk matches 1 run data modify storage scr_sky:ui response.reason set value "config_invalid"
data modify storage scr_sky:ui request.view set value "notice"
execute if data storage scr_sky:ui request{op:"teleport"} run data modify storage scr_sky:ui request.view set value "close"
execute if data storage scr_sky:ui request{op:"return_primary"} run data modify storage scr_sky:ui request.view set value "close"
execute if data storage scr_sky:ui request{op:"return_owned"} run data modify storage scr_sky:ui request.view set value "close"
execute if data storage scr_sky:ui request{op:"hub"} run data modify storage scr_sky:ui request.view set value "close"
execute if data storage scr_sky:ui request{op:"claim"} run data modify storage scr_sky:ui request.view set value "close"
execute if data storage scr_sky:ui request{op:"scan"} run data modify storage scr_sky:ui request.view set value "close"
execute if data storage scr_sky:ui request{op:"set_spawn"} run data modify storage scr_sky:ui request.view set value "close"
execute if data storage scr_sky:ui request{op:"leave"} run data modify storage scr_sky:ui request.view set value "close"
execute if data storage scr_sky:ui request{op:"reset"} run data modify storage scr_sky:ui request.view set value "close"
execute if data storage scr_sky:ui request{op:"delete"} run data modify storage scr_sky:ui request.view set value "close"
execute if data storage scr_sky:ui request{op:"set_primary"} run data modify storage scr_sky:ui request.view set value "detail"
execute if data storage scr_sky:ui request{op:"kick"} run data modify storage scr_sky:ui request.view set value "members"
execute if data storage scr_sky:ui request{op:"promote"} run data modify storage scr_sky:ui request.view set value "members"
execute if data storage scr_sky:ui request{op:"demote"} run data modify storage scr_sky:ui request.view set value "members"
execute if data storage scr_sky:ui request{op:"transfer"} run data modify storage scr_sky:ui request.view set value "detail"
execute if data storage scr_sky:ui request{op:"cancel_reset"} run data modify storage scr_sky:ui request.view set value "detail"
execute if data storage scr_sky:ui request{op:"cancel_delete"} run data modify storage scr_sky:ui request.view set value "detail"
# Invitations keep their existing success and failure navigation.
execute if data storage scr_sky:ui response{ok:1b} if data storage scr_sky:ui request{op:"invite_toggle"} run data modify storage scr_sky:ui request.view set value "invite"
execute if data storage scr_sky:ui response{ok:1b} if data storage scr_sky:ui request{op:"accept_invite"} run data modify storage scr_sky:ui request.view set value "invitations"
execute if data storage scr_sky:ui response{ok:1b} if data storage scr_sky:ui request{op:"reject_invite"} run data modify storage scr_sky:ui request.view set value "invitations"
execute unless data storage scr_sky:ui request{op:"invite_toggle"} unless data storage scr_sky:ui request{op:"accept_invite"} unless data storage scr_sky:ui request{op:"reject_invite"} run function scr_sky:ui/feedback
# Never carry a member selection or a used confirmation into a refreshed page.
data modify storage scr_sky:ui request.target set value ""
data modify storage scr_sky:ui request.role set value 0
data modify storage scr_sky:ui request.confirmed set value 0
