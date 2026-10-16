# Archive the exact journal on its message BEFORE releasing the player-wide gate.
# Leave every reward state, payload, receipt and delivered count unchanged.
$execute unless data storage scr_mail:players players."$(key)".messages[{id:$(id)}] run return 0
$data modify storage scr_mail:players players."$(key)".messages[{id:$(id)}].recovery set from storage scr_mail:players players."$(key)".transaction
$execute unless data storage scr_mail:players players."$(key)".messages[{id:$(id)}].recovery{mail_id:$(id)} run return 0
$data modify storage scr_mail:players players."$(key)".messages[{id:$(id)}].state set value "error"
$data remove storage scr_mail:players players."$(key)".transaction
return 1
