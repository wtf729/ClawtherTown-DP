data modify storage scr_tower:runtime check set from storage scr_tower:runtime receipt.source
execute store success score #different scr_tw run data modify storage scr_tower:runtime check set from storage scr_tower:runtime envelope.request.source
execute if score #different scr_tw matches 1 run return 0
data modify storage scr_tower:runtime check set from storage scr_tower:runtime receipt.claim_profile
execute store success score #different scr_tw run data modify storage scr_tower:runtime check set from storage scr_tower:runtime envelope.request.claim_profile
execute if score #different scr_tw matches 1 run return 0
data modify storage scr_tower:runtime check set from storage scr_tower:runtime receipt.event_id
execute store success score #different scr_tw run data modify storage scr_tower:runtime check set from storage scr_tower:runtime envelope.request.event_id
execute if score #different scr_tw matches 1 run return 0
data modify storage scr_tower:runtime check set from storage scr_tower:runtime receipt.title
execute store success score #different scr_tw run data modify storage scr_tower:runtime check set from storage scr_tower:runtime envelope.request.title
execute if score #different scr_tw matches 1 run return 0
execute store result score #a scr_tw run data get storage scr_tower:runtime receipt.rewards
execute store result score #b scr_tw run data get storage scr_tower:runtime envelope.request.rewards
execute unless score #a scr_tw = #b scr_tw run return 0
data modify storage scr_tower:runtime verify_a set from storage scr_tower:runtime receipt.rewards
data modify storage scr_tower:runtime verify_b set from storage scr_tower:runtime envelope.request.rewards
return run function scr_tower:mail/verify_loop
