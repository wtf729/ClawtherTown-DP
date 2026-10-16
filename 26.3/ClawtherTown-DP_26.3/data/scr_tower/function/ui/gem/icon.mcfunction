execute if data storage scr_tower:ui gem_icon.id run return 1
data remove storage scr_tower:ui gem_icon
execute summon minecraft:item_display run function scr_tower:ui/gem/icon_build
execute unless data storage scr_tower:ui gem_icon.id run return 0
data modify storage scr_tower:ui gem_icon.count set value 1
return 1
