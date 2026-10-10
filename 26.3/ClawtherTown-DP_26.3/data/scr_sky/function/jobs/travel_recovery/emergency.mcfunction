# Read-only final fallback above legal construction height; no platform or Slow Falling.
data modify storage scr_sky:jobs active.candidate set value {yaw:0f,pitch:0f}
data modify storage scr_sky:jobs active.candidate.x set from storage scr_sky:jobs active.search.cx
data modify storage scr_sky:jobs active.candidate.z set from storage scr_sky:jobs active.search.cz
data modify storage scr_sky:jobs active.candidate.y set from storage scr_sky:config spawn_recovery.emergency_y
function scr_sky:jobs/travel_recovery/center_candidate with storage scr_sky:jobs active.candidate
data modify storage scr_sky:jobs active.spawn set from storage scr_sky:jobs active.candidate
data modify storage scr_sky:jobs active.spawn_mode set value "emergency"
function scr_sky:jobs/travel_complete
