execute unless data storage scr_tower:runtime chunk[0] run return 1
data modify storage scr_tower:runtime mail_args set from storage scr_tower:runtime ctx
data modify storage scr_tower:runtime mail_args.id set from storage scr_tower:runtime p.run.id
data modify storage scr_tower:runtime mail_args.tower set from storage scr_tower:runtime p.run.tower
execute store result storage scr_tower:runtime mail_args.part int 1 run scoreboard players get #chunk scr_tw
function scr_tower:mail/request with storage scr_tower:runtime mail_args
data modify storage scr_tower:runtime envelope.request.rewards set from storage scr_tower:runtime chunk
data modify storage scr_tower:runtime p.run.outbox append from storage scr_tower:runtime envelope
data modify storage scr_tower:runtime chunk set value []
scoreboard players set #size scr_tw 0
scoreboard players add #chunk scr_tw 1
return 1
