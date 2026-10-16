$data modify storage scr_tower:runtime repair_entry set from storage scr_tower:runtime p.run.pending[$(index)]
$data modify storage scr_tower:runtime envelope set from storage scr_tower:runtime p.run.outbox[$(part)]
$data modify storage scr_tower:runtime repair_batch_entry set from storage scr_tower:runtime envelope.request.rewards[$(slot)]
$data modify storage scr_tower:runtime repair_floor_config set from storage scr_tower:config floors.$(tower).f$(floor)
$data modify storage scr_tower:runtime repair_expected_event set value "tower/$(key)/$(id)/$(part)"
$data modify storage scr_tower:runtime repair_expected_source set value "scr_tower/$(tower)"
