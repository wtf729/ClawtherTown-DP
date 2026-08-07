##自定义合成-地面合成
#紫颂曲奇
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:torch",count:1}}] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:gold_nugget",count:1}}] run function scr:server_unique/craft/recipe/ground_teleport_cookie

#灵魂曲奇
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:torch",count:1}}] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:iron_nugget",count:1}}] run function scr:server_unique/craft/recipe/ground_soul_cookie

#不稳定铜锭
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:copper_ingot",count:64}}] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:book",count:1}}] run function scr:server_unique/craft/recipe/ground_unstable_copper_ingot

#海之菜肴
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:cod",count:1}}] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:salmon",count:1}}] if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:pufferfish",count:1}}] if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:potato",count:1}}] run function scr:server_unique/craft/recipe/ground_dish_of_the_sea

#矿工特供
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:cocoa_beans",count:1}}] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:sugar",count:1}}] if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:carrot",count:1}}] if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:apple",count:1}}] run function scr:server_unique/craft/recipe/ground_miners_treat

#金胡萝卜+
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:gold_block",count:1}}] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:carrot",count:1}}] run function scr:server_unique/craft/recipe/ground_golden_carrot_plus

#鹰翎束
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:feather",count:64,components:{"minecraft:item_name":"clawther"}}}] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:stick",count:1}}] run function scr:server_unique/craft/recipe/ground_clawther_bundle



#奇珍煤炭
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:coal_block",count:16}}] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:book",count:1}}] run function scr:server_unique/craft/recipe/ground_rare_coal

#奇珍铜锭
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:copper_block",count:16}}] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:book",count:1}}] run function scr:server_unique/craft/recipe/ground_rare_copper_ingot

#奇珍铁锭
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_block",count:16}}] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:book",count:1}}] run function scr:server_unique/craft/recipe/ground_rare_iron_ingot

#奇珍金锭
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:gold_block",count:16}}] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:book",count:1}}] run function scr:server_unique/craft/recipe/ground_rare_gold_ingot

#奇珍青金石
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:lapis_block",count:16}}] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:book",count:1}}] run function scr:server_unique/craft/recipe/ground_rare_lapis

#奇珍钻石
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_block",count:16}}] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:book",count:1}}] run function scr:server_unique/craft/recipe/ground_rare_diamond

#奇珍绿宝石
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:emerald_block",count:16}}] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:book",count:1}}] run function scr:server_unique/craft/recipe/ground_rare_emerald




#多普勒
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_sword",count:1,components:{"minecraft:item_name":"obsidian_netherite_sword_xiii"}}}] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:diamond_block",count:1}}] run function scr:server_unique/craft/recipe/ground_obsidian_netherite_sword_diamond

#传说
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_sword",count:1,components:{"minecraft:item_name":"obsidian_netherite_sword_xiii"}}}] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:gold_block",count:1}}] run function scr:server_unique/craft/recipe/ground_obsidian_netherite_sword_gold

#伽玛多普勒
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_sword",count:1,components:{"minecraft:item_name":"obsidian_netherite_sword_xiii"}}}] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:emerald_block",count:1}}] run function scr:server_unique/craft/recipe/ground_obsidian_netherite_sword_emerald

#月蚀
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_sword",count:1,components:{"minecraft:item_name":"obsidian_netherite_sword_xiii"}}}] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:painting",count:1,components:{"minecraft:item_name":"painting_a_0009"}}}] run function scr:server_unique/craft/recipe/ground_obsidian_netherite_sword_custom_1

#还原
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_sword",count:1,components:{"minecraft:item_name":"obsidian_netherite_sword_xiii"}}}] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:iron_ingot",count:1}}] run function scr:server_unique/craft/recipe/ground_obsidian_netherite_sword_xiii



#翎之稿慢速模式
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_pickaxe",count:1,components:{"minecraft:item_name":"clawther_pickaxe_x"}}}] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:redstone_block",count:1}}] run function scr:server_unique/craft/recipe/ground_clawther_pickaxe_x_slow

#还原
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_pickaxe",count:1,components:{"minecraft:item_name":"clawther_pickaxe_x"}}}] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:iron_ingot",count:1}}] run function scr:server_unique/craft/recipe/ground_clawther_pickaxe_x