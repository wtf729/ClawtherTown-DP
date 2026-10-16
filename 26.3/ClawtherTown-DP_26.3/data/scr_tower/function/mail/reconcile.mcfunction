data modify storage scr_tower:runtime receipt_args set from storage scr_tower:runtime envelope.request
data modify storage scr_tower:runtime receipt_args.key set from storage scr_tower:runtime ctx.key
data remove storage scr_tower:runtime receipt
function scr_tower:mail/receipt with storage scr_tower:runtime receipt_args
scoreboard players set #found scr_tw 0
execute unless data storage scr_tower:runtime receipt run return 0
scoreboard players set #found scr_tw 1
execute store result score #receipt_ok scr_tw run function scr_tower:mail/verify
execute unless score #receipt_ok scr_tw matches 1 run data modify storage scr_tower:runtime envelope.state set value "conflict"
execute if score #receipt_ok scr_tw matches 1 run data modify storage scr_tower:runtime envelope.state set value "sent"
function scr_tower:mail/write with storage scr_tower:runtime part
return run scoreboard players get #receipt_ok scr_tw
