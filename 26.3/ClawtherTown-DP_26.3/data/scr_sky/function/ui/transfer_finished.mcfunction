# No server polling/session lock: runs once at the existing transfer completion boundary.
$execute as @a[nbt={UUID:$(uuid)},scores={sky_action=0,sky=0}] at @s if data storage scr_sky:ui sessions."$(key)"{refresh_transfer:1b} run function scr_sky:ui/transfer_refresh {id:$(id),key:"$(key)"}
$data remove storage scr_sky:ui sessions."$(key)".refresh_transfer
# Recipient tokens are invalidated as before; their next navigation reads current permissions.
$data remove storage scr_sky:ui sessions."$(target)".refresh_transfer
