# Preserve an accurate preview if the pre-existing Loot is unavailable; no false icon/grant.
data modify storage scr_tower:runtime gem_fallback.amount set from storage scr_tower:runtime gem_amount
return run function scr_tower:ui/text/gem_fallback with storage scr_tower:runtime gem_fallback
