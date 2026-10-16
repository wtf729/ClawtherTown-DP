# Only automatic floor-60 completion reveals the final selected reward here.
# Safe exits at any earlier floor show the settlement summary, without a floor result.
execute if data storage scr_tower:runtime p.run{floor:60,completed:60} if data storage scr_tower:runtime p.run.pending[-1] run function scr_tower:ui/result
