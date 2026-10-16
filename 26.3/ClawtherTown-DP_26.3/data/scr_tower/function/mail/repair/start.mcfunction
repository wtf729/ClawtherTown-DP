# Recovery is restricted to an unsent, unambiguous singleton-gem record.
# Existing cards, sent envelopes, receipts, wallet and entry quotas are never changed.
execute unless data storage scr_tower:runtime p.run{phase:"settling"} run return 0
execute if data storage scr_tower:runtime p.run{debug:1} run return 0
execute store result score #repair_index scr_tw run data get storage scr_tower:runtime repair_input.index
execute unless score #repair_index scr_tw matches 0..59 run return 0
execute store result storage scr_tower:runtime repair_integer int 1 run scoreboard players get #repair_index scr_tw
data modify storage scr_tower:runtime check set from storage scr_tower:runtime repair_input.index
execute store success score #different scr_tw run data modify storage scr_tower:runtime check set from storage scr_tower:runtime repair_integer
execute if score #different scr_tw matches 1 run return 0
execute store result score #repair_count scr_tw run data get storage scr_tower:runtime p.run.pending
execute store result score #repair_completed scr_tw run data get storage scr_tower:runtime p.run.completed
# Current schema stores one reward per completed floor. Refuse other historical layouts.
execute unless score #repair_count scr_tw = #repair_completed scr_tw run return 0
execute unless score #repair_index scr_tw < #repair_count scr_tw run return 0
scoreboard players set #repair_limit scr_tw 30
scoreboard players operation #repair_floor scr_tw = #repair_index scr_tw
scoreboard players add #repair_floor scr_tw 1
scoreboard players operation #repair_part scr_tw = #repair_index scr_tw
scoreboard players operation #repair_part scr_tw /= #repair_limit scr_tw
scoreboard players operation #repair_slot scr_tw = #repair_index scr_tw
scoreboard players operation #repair_slot scr_tw %= #repair_limit scr_tw
data modify storage scr_tower:runtime repair_args set from storage scr_tower:runtime ctx
data modify storage scr_tower:runtime repair_args.tower set from storage scr_tower:runtime p.run.tower
data modify storage scr_tower:runtime repair_args.id set from storage scr_tower:runtime p.run.id
execute store result storage scr_tower:runtime repair_args.index int 1 run scoreboard players get #repair_index scr_tw
execute store result storage scr_tower:runtime repair_args.floor int 1 run scoreboard players get #repair_floor scr_tw
execute store result storage scr_tower:runtime repair_args.part int 1 run scoreboard players get #repair_part scr_tw
execute store result storage scr_tower:runtime repair_args.slot int 1 run scoreboard players get #repair_slot scr_tw
data remove storage scr_tower:runtime repair_entry
data remove storage scr_tower:runtime repair_batch_entry
data remove storage scr_tower:runtime envelope
data remove storage scr_tower:runtime repair_floor_config
function scr_tower:mail/repair/read with storage scr_tower:runtime repair_args
execute unless data storage scr_tower:runtime repair_entry{handler:"clawther_gem",parameters:{amount:0}} run return 0
execute unless data storage scr_tower:runtime repair_batch_entry{handler:"clawther_gem",parameters:{amount:0}} run return 0
execute unless data storage scr_tower:runtime envelope{state:"pending"} run return 0
execute unless data storage scr_tower:runtime repair_floor_config{bonus:0} run return 0
data modify storage scr_tower:runtime check set from storage scr_tower:runtime envelope.request.event_id
execute store success score #different scr_tw run data modify storage scr_tower:runtime check set from storage scr_tower:runtime repair_expected_event
execute if score #different scr_tw matches 1 run return 0
data modify storage scr_tower:runtime check set from storage scr_tower:runtime envelope.request.source
execute store success score #different scr_tw run data modify storage scr_tower:runtime check set from storage scr_tower:runtime repair_expected_source
execute if score #different scr_tw matches 1 run return 0
data modify storage scr_tower:runtime check set from storage scr_tower:runtime envelope.request.claim_profile
execute store success score #different scr_tw run data modify storage scr_tower:runtime check set from storage scr_tower:runtime p.run.tower
execute if score #different scr_tw matches 1 run return 0
# Check every entry of this batch against the original Pending slice before any repair.
data modify storage scr_tower:runtime repair_alignment set from storage scr_tower:runtime p.run.pending
scoreboard players operation #repair_skip scr_tw = #repair_part scr_tw
scoreboard players operation #repair_skip scr_tw *= #repair_limit scr_tw
function scr_tower:mail/repair/skip
data modify storage scr_tower:runtime repair_expected_rewards set value []
scoreboard players set #repair_take scr_tw 0
function scr_tower:mail/repair/take
data modify storage scr_tower:runtime check set from storage scr_tower:runtime repair_expected_rewards
execute store success score #different scr_tw run data modify storage scr_tower:runtime check set from storage scr_tower:runtime envelope.request.rewards
execute if score #different scr_tw matches 1 run return 0
# Even an unacknowledged receipt forbids editing or resending the original batch.
data modify storage scr_tower:runtime receipt_args set from storage scr_tower:runtime envelope.request
data modify storage scr_tower:runtime receipt_args.key set from storage scr_tower:runtime ctx.key
data remove storage scr_tower:runtime receipt
function scr_tower:mail/receipt with storage scr_tower:runtime receipt_args
execute if data storage scr_tower:runtime receipt run return 0
data modify storage scr_tower:runtime repair_categories set from storage scr_tower:runtime repair_floor_config.categories
scoreboard players set #repair_candidates scr_tw 0
scoreboard players set #repair_amount scr_tw 0
function scr_tower:mail/repair/categories
# Multiple possible failed fixed denominations cannot be inferred safely.
execute unless score #repair_candidates scr_tw matches 1 run return 0
execute unless score #repair_amount scr_tw matches 1..1000 run return 0
execute store result storage scr_tower:runtime repair_args.amount int 1 run scoreboard players get #repair_amount scr_tw
execute store result score #repair_gems scr_tw run data get storage scr_tower:runtime p.run.gems
data modify storage scr_tower:runtime repair_rewards set from storage scr_tower:runtime p.run.pending
scoreboard players set #repair_total scr_tw 0
function scr_tower:mail/repair/total
execute unless score #repair_gems scr_tw = #repair_total scr_tw run return 0
return run function scr_tower:mail/repair/apply with storage scr_tower:runtime repair_args
