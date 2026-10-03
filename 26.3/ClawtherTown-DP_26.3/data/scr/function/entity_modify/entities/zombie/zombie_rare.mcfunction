data modify entity @s equipment.mainhand set value {"id":"minecraft:iron_pickaxe","count":1}
data modify entity @s equipment.offhand set value {"id":"minecraft:torch","count":1}
data modify entity @s equipment.feet set value {"id":"minecraft:leather_boots","count":1,"components":{"minecraft:dyed_color":1908001}}
data modify entity @s equipment.legs set value {"id":"minecraft:leather_leggings","count":1,"components":{"minecraft:dyed_color":1908001}}
data modify entity @s equipment.chest set value {"id":"minecraft:leather_chestplate","count":1,"components":{"minecraft:enchantments":{"minecraft:thorns":10,"minecraft:unbreaking":3,"minecraft:mending":1},"minecraft:dyed_color":1908001}}
data modify entity @s equipment.head set value {"id":"minecraft:leather_helmet","count":1,"components":{"minecraft:dyed_color":1908001}}
data merge entity @s {Tags:["modified","zombie_rare","timecounter_entity"],CustomName:[{"text":" [奇珍]","color":"aqua","bold":true,"italic":false},{"text":" 僵尸矿工 ","color":"gold","bold":false,"italic":false}],CustomNameVisible:1b,IsBaby:0b,attributes:[{id:"minecraft:movement_speed",modifiers:[{amount:0.05,id:"scr:zombie_rare.movement_speed",operation:"add_value"}],base:0.23},{id:"minecraft:max_health",modifiers:[{amount:30,id:"scr:zombie_rare.max_health",operation:"add_value"}],base:20}],DeathLootTable:"scr:entities/zombie/zombie_rare",InWaterTime:-1,PersistenceRequired:1b,drop_chances:{mainhand:0f,offhand:0f,feet:0f,legs:0f,chest:0.05f,head:0f}}
# Apply current health only after the maximum-health attributes are loaded.
data modify entity @s Health set value 50f
