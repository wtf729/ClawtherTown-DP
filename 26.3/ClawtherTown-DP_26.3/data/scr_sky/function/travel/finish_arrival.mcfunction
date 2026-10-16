# Tags and attribute modifiers survive logout/reload; clean up on the next online tick after reset.
execute unless entity @s[nbt={fall_distance:0.0d}] run return 0
attribute @s minecraft:fall_damage_multiplier modifier remove scr_sky:arrival_fall_guard
tag @s remove scr_sky.arrival_fall_guard
