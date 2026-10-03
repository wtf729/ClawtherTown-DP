function scr:entity_modify/timecounter_entity/timecounter_entity

execute as @e[type=minecraft:zombie,tag=!modified,sort=random,limit=1,nbt={PersistenceRequired:0b}] at @s run function scr:entity_modify/entities/zombie/zombie
execute as @e[type=minecraft:creeper,tag=!modified,sort=random,limit=1,nbt={PersistenceRequired:0b}] at @s run function scr:entity_modify/entities/creeper/creeper
execute as @e[type=minecraft:spider,tag=!modified,sort=random,limit=1,nbt={PersistenceRequired:0b}] at @s run function scr:entity_modify/entities/spider/spider
execute as @e[type=minecraft:pig,tag=!modified,sort=random,limit=1,nbt={PersistenceRequired:0b}] at @s run function scr:entity_modify/entities/pig/pig