##维度传送门
#主世界 > 矿区
execute as @a[predicate=scr:location/in_overworld,predicate=scr:operation/is_sneaking] at @s if block ~ ~-1 ~ minecraft:gold_block if block ~1 ~-1 ~1 minecraft:iron_block if block ~1 ~-1 ~ minecraft:iron_block if block ~1 ~-1 ~-1 minecraft:iron_block if block ~ ~-1 ~1 minecraft:iron_block if block ~ ~-1 ~-1 minecraft:iron_block if block ~-1 ~-1 ~1 minecraft:iron_block if block ~-1 ~-1 ~ minecraft:iron_block if block ~-1 ~-1 ~-1 minecraft:iron_block run execute in scr:unstable_zone run function scr:dimension/unstable_zone/spawn

#矿区 > 主世界
execute as @a[predicate=scr:location/in_unstable_zone,predicate=scr:operation/is_sneaking] at @s if block ~ ~-1 ~ minecraft:gold_block if block ~1 ~-1 ~1 minecraft:iron_block if block ~1 ~-1 ~ minecraft:iron_block if block ~1 ~-1 ~-1 minecraft:iron_block if block ~ ~-1 ~1 minecraft:iron_block if block ~ ~-1 ~-1 minecraft:iron_block if block ~-1 ~-1 ~1 minecraft:iron_block if block ~-1 ~-1 ~ minecraft:iron_block if block ~-1 ~-1 ~-1 minecraft:iron_block run function scr:dimension/overworld/spawn_only


#主世界 > 建筑区
execute as @a[predicate=scr:location/in_overworld,predicate=scr:operation/is_sneaking] at @s if block ~ ~-1 ~ minecraft:emerald_block if block ~1 ~-1 ~1 minecraft:smooth_stone if block ~1 ~-1 ~ minecraft:smooth_stone if block ~1 ~-1 ~-1 minecraft:smooth_stone if block ~ ~-1 ~1 minecraft:smooth_stone if block ~ ~-1 ~-1 minecraft:smooth_stone if block ~-1 ~-1 ~1 minecraft:smooth_stone if block ~-1 ~-1 ~ minecraft:smooth_stone if block ~-1 ~-1 ~-1 minecraft:smooth_stone run execute in scr:building_zone run teleport @s 0 64 0

#建筑区 > 主世界
execute as @a[predicate=scr:location/in_building_zone,predicate=scr:operation/is_sneaking] at @s in scr:building_zone if block ~ ~-1 ~ minecraft:emerald_block if block ~1 ~-1 ~1 minecraft:smooth_stone if block ~1 ~-1 ~ minecraft:smooth_stone if block ~1 ~-1 ~-1 minecraft:smooth_stone if block ~ ~-1 ~1 minecraft:smooth_stone if block ~ ~-1 ~-1 minecraft:smooth_stone if block ~-1 ~-1 ~1 minecraft:smooth_stone if block ~-1 ~-1 ~ minecraft:smooth_stone if block ~-1 ~-1 ~-1 minecraft:smooth_stone run function scr:dimension/overworld/spawn_only


#主世界 > 记忆之地传送中心
execute as @a[predicate=scr:location/in_overworld,predicate=scr:operation/is_sneaking] at @s if block ~ ~-1 ~ minecraft:chiseled_stone_bricks if block ~1 ~-1 ~1 minecraft:mossy_stone_bricks if block ~1 ~-1 ~ minecraft:mossy_stone_bricks if block ~1 ~-1 ~-1 minecraft:mossy_stone_bricks if block ~ ~-1 ~1 minecraft:mossy_stone_bricks if block ~ ~-1 ~-1 minecraft:mossy_stone_bricks if block ~-1 ~-1 ~1 minecraft:mossy_stone_bricks if block ~-1 ~-1 ~ minecraft:mossy_stone_bricks if block ~-1 ~-1 ~-1 minecraft:mossy_stone_bricks run execute in scr:memory_land run teleport @s -2 100 0

#记忆之地传送中心 > 主世界
execute as @a[predicate=scr:location/in_memory_land,predicate=scr:operation/is_sneaking] at @s if block ~ ~-1 ~ minecraft:chiseled_stone_bricks if block ~1 ~-1 ~1 minecraft:mossy_stone_bricks if block ~1 ~-1 ~ minecraft:mossy_stone_bricks if block ~1 ~-1 ~-1 minecraft:mossy_stone_bricks if block ~ ~-1 ~1 minecraft:mossy_stone_bricks if block ~ ~-1 ~-1 minecraft:mossy_stone_bricks if block ~-1 ~-1 ~1 minecraft:mossy_stone_bricks if block ~-1 ~-1 ~ minecraft:mossy_stone_bricks if block ~-1 ~-1 ~-1 minecraft:mossy_stone_bricks run function scr:dimension/overworld/spawn_only

##记忆之地传送中心
#记忆之地传送中心 > 一周目
execute in scr:memory_land run particle minecraft:portal 0 100 -8 0 0 0 1 2
execute in scr:memory_land positioned 0 100 -8 as @a[distance=..1] run execute in scr:memory_land_1 run teleport @s 0 65 0

#一周目 > 记忆之地传送中心
execute as @a[predicate=scr:location/in_memory_land_1,predicate=scr:operation/is_sneaking] at @s if block ~ ~-1 ~ minecraft:chiseled_stone_bricks if block ~1 ~-1 ~1 minecraft:mossy_stone_bricks if block ~1 ~-1 ~ minecraft:mossy_stone_bricks if block ~1 ~-1 ~-1 minecraft:mossy_stone_bricks if block ~ ~-1 ~1 minecraft:mossy_stone_bricks if block ~ ~-1 ~-1 minecraft:mossy_stone_bricks if block ~-1 ~-1 ~1 minecraft:mossy_stone_bricks if block ~-1 ~-1 ~ minecraft:mossy_stone_bricks if block ~-1 ~-1 ~-1 minecraft:mossy_stone_bricks run execute in scr:memory_land run teleport @s -2 100 0


#记忆之地传送中心 > 二周目
execute in scr:memory_land run particle minecraft:portal 8 100 0 0 0 0 1 2
execute in scr:memory_land positioned 8 100 0 as @a[distance=..1] run execute in scr:memory_land_2 run teleport @s 0 100 0

#二周目 > 记忆之地传送中心
execute as @a[predicate=scr:location/in_memory_land_2,predicate=scr:operation/is_sneaking] at @s if block ~ ~-1 ~ minecraft:chiseled_stone_bricks if block ~1 ~-1 ~1 minecraft:mossy_stone_bricks if block ~1 ~-1 ~ minecraft:mossy_stone_bricks if block ~1 ~-1 ~-1 minecraft:mossy_stone_bricks if block ~ ~-1 ~1 minecraft:mossy_stone_bricks if block ~ ~-1 ~-1 minecraft:mossy_stone_bricks if block ~-1 ~-1 ~1 minecraft:mossy_stone_bricks if block ~-1 ~-1 ~ minecraft:mossy_stone_bricks if block ~-1 ~-1 ~-1 minecraft:mossy_stone_bricks run execute in scr:memory_land run teleport @s -2 100 0



#记忆之地传送中心 > 三周目
execute in scr:memory_land run particle minecraft:portal 0 100 8 0 0 0 1 2
execute in scr:memory_land positioned 0 100 8 as @a[distance=..1] run execute in scr:memory_land_3 run teleport @s -88 63 91 180 0

#三周目 > 记忆之地传送中心
execute as @a[predicate=scr:location/in_memory_land_3,predicate=scr:operation/is_sneaking] at @s if block ~ ~-1 ~ minecraft:chiseled_stone_bricks if block ~1 ~-1 ~1 minecraft:mossy_stone_bricks if block ~1 ~-1 ~ minecraft:mossy_stone_bricks if block ~1 ~-1 ~-1 minecraft:mossy_stone_bricks if block ~ ~-1 ~1 minecraft:mossy_stone_bricks if block ~ ~-1 ~-1 minecraft:mossy_stone_bricks if block ~-1 ~-1 ~1 minecraft:mossy_stone_bricks if block ~-1 ~-1 ~ minecraft:mossy_stone_bricks if block ~-1 ~-1 ~-1 minecraft:mossy_stone_bricks run execute in scr:memory_land run teleport @s -2 100 0


#记忆之地传送中心 > 四周目
execute in scr:memory_land run particle minecraft:portal -8 100 0 0 0 0 1 2
execute in scr:memory_land positioned -8 100 0 as @a[distance=..1] run execute in scr:memory_land_4 run teleport @s -306 95 682 180 0

#四周目 > 记忆之地传送中心
execute as @a[predicate=scr:location/in_memory_land_4,predicate=scr:operation/is_sneaking] at @s if block ~ ~-1 ~ minecraft:chiseled_stone_bricks if block ~1 ~-1 ~1 minecraft:mossy_stone_bricks if block ~1 ~-1 ~ minecraft:mossy_stone_bricks if block ~1 ~-1 ~-1 minecraft:mossy_stone_bricks if block ~ ~-1 ~1 minecraft:mossy_stone_bricks if block ~ ~-1 ~-1 minecraft:mossy_stone_bricks if block ~-1 ~-1 ~1 minecraft:mossy_stone_bricks if block ~-1 ~-1 ~ minecraft:mossy_stone_bricks if block ~-1 ~-1 ~-1 minecraft:mossy_stone_bricks run execute in scr:memory_land run teleport @s -2 100 0




##记忆之地1传送
#中心 > HB
execute in scr:memory_land_1 run particle minecraft:portal -6 57 9 0 0 0 1 2
execute in scr:memory_land_1 positioned -6 57 9 as @a[distance=..1] run tp @s 2094 67 972 -90 0

#HB > 中心
execute in scr:memory_land_1 run particle minecraft:portal 2099 67 972 0 0 0 1 2
execute in scr:memory_land_1 positioned 2099 67 972 as @a[distance=..1] run tp @s 6 57 6



#中心 > 山庄
execute in scr:memory_land_1 run particle minecraft:portal -9 57 6 0 0 0 1 2
execute in scr:memory_land_1 positioned -9 57 6 as @a[distance=..1] run tp @s -141 67 -4

#山庄 > 中心
execute in scr:memory_land_1 run particle minecraft:portal -146 67 -4 0 0 0 1 2
execute in scr:memory_land_1 positioned -146 67 -4 as @a[distance=..1] run tp @s 6 57 6



#中心 > #龙栖谷
execute in scr:memory_land_1 run particle minecraft:portal -9 57 0 0 0 0 1 2
execute in scr:memory_land_1 positioned -9 57 0 as @a[distance=..1] run tp @s -196 63 100

#龙栖谷 > 中心
execute in scr:memory_land_1 run particle minecraft:portal -190 64 102 0 0 0 1 2
execute in scr:memory_land_1 positioned -190 64 102 as @a[distance=..1] run tp @s 6 57 6



#中心 > 小狼
execute in scr:memory_land_1 run particle minecraft:portal -6 57 -9 0 0 0 1 2
execute in scr:memory_land_1 positioned -6 57 -9 as @a[distance=..1] run tp @s 12 79 -241 90 0

#小狼 > 中心
execute in scr:memory_land_1 run particle minecraft:portal 12 79 -245 0 0 0 1 2
execute in scr:memory_land_1 positioned 12 79 -245 as @a[distance=..1] run tp @s 6 57 6



#中心 > 地狱堡垒
execute in scr:memory_land_1 run particle minecraft:portal -9 57 -6 0 0 0 1 2
execute in scr:memory_land_1 positioned -9 57 -6 as @a[distance=..1] run tp @s -3751 31 5742 45 0

#地狱堡垒 > 中心
execute in scr:memory_land_1 run particle minecraft:portal -3763 32 5740 0 0 0 1 2
execute in scr:memory_land_1 positioned -3763 32 5740 as @a[distance=..1] run tp @s 6 57 6




#中心 > 要塞
execute in scr:memory_land_1 run particle minecraft:portal 0 57 -9 0 0 0 1 2
execute in scr:memory_land_1 positioned 0 57 -9 as @a[distance=..1] run tp @s 3232 0 214 180 0

#要塞 > 中心
execute in scr:memory_land_1 run particle minecraft:portal 3232 0 206 0 0 0 1 2
execute in scr:memory_land_1 positioned 3232 0 206 as @a[distance=..1] run tp @s 6 57 6



#中心 > 蘑菇岛
execute in scr:memory_land_1 run particle minecraft:portal 6 57 -9 0 0 0 1 2
execute in scr:memory_land_1 positioned 6 57 -9 as @a[distance=..1] run tp @s 680 74 2729

#蘑菇岛 > 中心
execute in scr:memory_land_1 run particle minecraft:portal 680 70 2729 0 0 0 1 2
execute in scr:memory_land_1 positioned 680 70 2729 as @a[distance=..1] run tp @s 6 57 6



#中心 > 女巫塔
execute in scr:memory_land_1 run particle minecraft:portal 9 57 -6 0 0 0 1 2
execute in scr:memory_land_1 positioned 9 57 -6 as @a[distance=..1] run tp @s -503 63 -377

#女巫塔 > 中心
execute in scr:memory_land_1 run particle minecraft:portal -499 66 -379 0 0 0 1 2
execute in scr:memory_land_1 positioned -499 66 -379 as @a[distance=..1] run tp @s 6 57 6



#中心 > 刷怪塔
execute in scr:memory_land_1 run particle minecraft:portal -6 50 9 0 0 0 1 2
execute in scr:memory_land_1 positioned -6 50 9 as @a[distance=..1] run tp @s 1078 183 2445

#刷怪塔 > 中心
execute in scr:memory_land_1 run particle minecraft:portal 1096 183 2445 0 0 0 1 2
execute in scr:memory_land_1 positioned 1096 183 2445 as @a[distance=..1] run tp @s 6 57 6



#中心 > 黑石要塞
execute in scr:memory_land_1 run particle minecraft:portal -9 50 6 0 0 0 1 2
execute in scr:memory_land_1 positioned -9 50 6 as @a[distance=..1] run tp @s 8 -24 -174 -45 0

#黑石要塞 > 中心
execute in scr:memory_land_1 run particle minecraft:portal 1 -18 -175 0 0 0 1 2
execute in scr:memory_land_1 positioned 1 -18 -175 as @a[distance=..1] run tp @s 6 57 6



#中心 > 麦田
execute in scr:memory_land_1 run particle minecraft:portal -9 50 0 0 0 0 1 2
execute in scr:memory_land_1 positioned -9 50 0 as @a[distance=..1] run tp @s -2623 76 5005

#麦田 > 中心
execute in scr:memory_land_1 run particle minecraft:portal -2623 72 5005 0 0 0 1 2
execute in scr:memory_land_1 positioned -2623 72 5005 as @a[distance=..1] run tp @s 6 57 6


#中心 > I村
execute in scr:memory_land_1 run particle minecraft:portal -9 50 -6 0 0 0 1 2
execute in scr:memory_land_1 positioned -9 50 -6 as @a[distance=..1] run tp @s 1070 74 589

#I村 > 中心
execute in scr:memory_land_1 run particle minecraft:portal 1072 77 588 0 0 0 1 2
execute in scr:memory_land_1 positioned 1072 77 588 as @a[distance=..1] run tp @s 6 57 6


#中心 > 猪人塔
execute in scr:memory_land_1 run particle minecraft:portal -6 50 -9 0 0 0 1 2
execute in scr:memory_land_1 positioned -6 50 -9 as @a[distance=..1] run tp @s -2017 96 5532

#猪人塔 > 中心
execute in scr:memory_land_1 run particle minecraft:portal -2017 96 5542 0 0 0 1 2
execute in scr:memory_land_1 positioned -2017 96 5542 as @a[distance=..1] run tp @s 6 57 6


##记忆之地2传送
#中心 > 海边聚落
execute in scr:memory_land_2 run particle minecraft:portal 5 100 0 0 0 0 1 2
execute in scr:memory_land_2 positioned 5 100 0 as @a[distance=..1] run tp @s -3303 70 2965

#海边聚落 > 中心
execute in scr:memory_land_2 run particle minecraft:portal -3303 66 2965 0 0 0 1 2
execute in scr:memory_land_2 positioned -3303 66 2965 as @a[distance=..1] run tp @s 0 100 0


#中心 > 宸之屋
execute in scr:memory_land_2 run particle minecraft:portal -5 100 0 0 0 0 1 2
execute in scr:memory_land_2 positioned -5 100 0 as @a[distance=..1] run tp @s -177 78 331

#宸之屋 > 中心
execute in scr:memory_land_2 run particle minecraft:portal -177 74 331 0 0 0 1 2
execute in scr:memory_land_2 positioned -177 74 331 as @a[distance=..1] run tp @s 0 100 0



##模组服传送
function scr:server_unique/teleport_mod