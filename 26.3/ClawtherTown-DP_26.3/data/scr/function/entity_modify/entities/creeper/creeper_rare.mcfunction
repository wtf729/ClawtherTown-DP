data remove entity @s equipment.mainhand
data remove entity @s equipment.offhand
data modify entity @s equipment.feet set value {"id":"minecraft:leather_boots","count":1}
data modify entity @s equipment.legs set value {"id":"minecraft:leather_leggings","count":1}
data modify entity @s equipment.chest set value {"id":"minecraft:leather_chestplate","count":1,"components":{"minecraft:enchantments":{"minecraft:thorns":10,"minecraft:unbreaking":3,"minecraft:mending":1}}}
data modify entity @s equipment.head set value {"id":"minecraft:leather_helmet","count":1}
data merge entity @s {Tags:["modified","creeper_rare","timecounter_entity"],CustomName:[{"text":" [奇珍]","color":"aqua","bold":true,"italic":false},{"text":" 钱怕 ","color":"gold","bold":false,"italic":false}],CustomNameVisible:1b,powered:0b,Health:100f,attributes:[{id:"minecraft:movement_speed",modifiers:[{amount:0.1,id:"scr:creeper_rare.movement_speed",operation:"add_value"}],base:0.15},{id:"minecraft:max_health",modifiers:[{amount:80,id:"scr:creeper_rare.max_health",operation:"add_value"}],base:20}],DeathLootTable:"scr:entities/creeper/creeper_rare",PersistenceRequired:1b,drop_chances:{mainhand:0f,offhand:0f,feet:0f,legs:0f,chest:0.05f,head:0f}}
