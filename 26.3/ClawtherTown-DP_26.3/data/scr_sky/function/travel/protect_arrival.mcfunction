# Called as the player only after a successful teleport. No status effects or player NBT writes.
# Vanilla teleport clears velocity but retains accumulated fall distance.
# Suppress only the arrival fall; vanilla clears its distance on landing, then tick removes our guard.
execute if entity @s[nbt={fall_distance:0.0d}] run return 1
execute unless entity @s[tag=scr_sky.arrival_fall_guard] run attribute @s minecraft:fall_damage_multiplier modifier add scr_sky:arrival_fall_guard -1 add_multiplied_total
tag @s add scr_sky.arrival_fall_guard
return 1
