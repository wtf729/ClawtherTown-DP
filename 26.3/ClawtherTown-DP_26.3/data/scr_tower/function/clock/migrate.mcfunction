execute store result score #clock scr_tw run function scr_tower:clock/anchor
execute unless score #clock scr_tw matches 1 run return 0
# Preserve original legacy date and used-entry count, and all Run/history fields.
data modify storage scr_tower:runtime p.legacy_clock set value {}
data modify storage scr_tower:runtime p.legacy_clock.day set from storage scr_tower:runtime p.day
data modify storage scr_tower:runtime p.legacy_clock.entries set from storage scr_tower:runtime p.entries
data modify storage scr_tower:runtime p.day set from storage scr_tower:clock production_anchor.day
data modify storage scr_tower:runtime p.cycle_source set value "scr_runtime_day"
return run function scr_tower:save
