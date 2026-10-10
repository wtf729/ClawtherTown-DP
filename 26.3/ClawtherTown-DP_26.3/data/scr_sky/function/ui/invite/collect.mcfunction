function scr_uuid:resolve
execute unless data storage scr_uuid:runtime result.key run return 0
data modify storage scr_sky:ui work.candidate set value {}
data modify storage scr_sky:ui work.candidate.key set from storage scr_uuid:runtime result.key
data modify storage scr_sky:ui work.candidates append from storage scr_sky:ui work.candidate
