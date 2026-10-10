execute store result score #ui_digits scr_sk run data get storage scr_sky:ui work.comma.head
execute unless score #ui_digits scr_sk matches 4.. run return 1
data modify storage scr_sky:ui work.comma.tail set string storage scr_sky:ui work.comma.head -3
data modify storage scr_sky:ui work.comma.head set string storage scr_sky:ui work.comma.head 0 -3
function scr_sky:ui/value_suffix with storage scr_sky:ui work.comma
return run function scr_sky:ui/value_group
