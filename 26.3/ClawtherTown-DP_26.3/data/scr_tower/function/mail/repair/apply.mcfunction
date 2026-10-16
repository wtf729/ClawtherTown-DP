# All guards are complete before touching the player record. One save commits the patch.
execute unless data storage scr_tower:runtime p.run.repairs run data modify storage scr_tower:runtime p.run.repairs set value []
$data modify storage scr_tower:runtime p.run.repairs append value {kind:"zero_gem_singleton",floor:$(floor),pending_index:$(index),part:$(part),slot:$(slot),before:0,after:$(amount),event_id:"tower/$(key)/$(id)/$(part)"}
$data modify storage scr_tower:runtime p.run.pending[$(index)].parameters.amount set value $(amount)
$data modify storage scr_tower:runtime p.run.outbox[$(part)].request.rewards[$(slot)].parameters.amount set value $(amount)
$data remove storage scr_tower:runtime p.run.outbox[$(part)].error
scoreboard players operation #repair_gems scr_tw += #repair_amount scr_tw
execute store result storage scr_tower:runtime p.run.gems int 1 run scoreboard players get #repair_gems scr_tw
return run function scr_tower:save
