
##仅适用于龙之冒险模组服
#记忆之地传送中心 > 龙之冒险一周目
execute in scr:memory_land run particle minecraft:portal 0 94 -5 0 0 0 1 2
execute in scr:memory_land positioned 0 94 -5 as @a[distance=..1] run execute in scr:memory_land_mod_1 run teleport @s 95 66 -157 0 0

#龙之冒险一周目 > 记忆之地传送中心
execute as @a[predicate=scr:location/in_memory_land_mod_1,predicate=scr:operation/is_sneaking] at @s if block ~ ~-1 ~ minecraft:chiseled_stone_bricks if block ~1 ~-1 ~1 minecraft:mossy_stone_bricks if block ~1 ~-1 ~ minecraft:mossy_stone_bricks if block ~1 ~-1 ~-1 minecraft:mossy_stone_bricks if block ~ ~-1 ~1 minecraft:mossy_stone_bricks if block ~ ~-1 ~-1 minecraft:mossy_stone_bricks if block ~-1 ~-1 ~1 minecraft:mossy_stone_bricks if block ~-1 ~-1 ~ minecraft:mossy_stone_bricks if block ~-1 ~-1 ~-1 minecraft:mossy_stone_bricks run execute in scr:memory_land run teleport @s -2 100 0