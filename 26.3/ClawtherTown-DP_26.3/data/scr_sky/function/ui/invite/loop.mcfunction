execute unless data storage scr_sky:ui work.candidates[0] run return 1
data modify storage scr_sky:ui work.candidate set from storage scr_sky:ui work.candidates[0]
data modify storage scr_sky:ui work.candidate.id set from storage scr_sky:ui request.id
function scr_sky:ui/invite/entry with storage scr_sky:ui work.candidate
data remove storage scr_sky:ui work.candidates[0]
return run function scr_sky:ui/invite/loop
