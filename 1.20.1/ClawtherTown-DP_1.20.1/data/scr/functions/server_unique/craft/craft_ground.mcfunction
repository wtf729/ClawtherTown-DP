##自定义合成-地面合成
#紫颂曲奇
execute as @e[type=item,nbt={Item:{id:"minecraft:torch",Count:1b}}] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:gold_nugget",Count:1b}}] run function scr:server_unique/craft/recipe/ground_teleport_cookie

#灵魂曲奇
execute as @e[type=item,nbt={Item:{id:"minecraft:torch",Count:1b}}] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:iron_nugget",Count:1b}}] run function scr:server_unique/craft/recipe/ground_soul_cookie

#不稳定铜锭
execute as @e[type=item,nbt={Item:{id:"minecraft:copper_ingot",Count:64b}}] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:book",Count:1b}}] run function scr:server_unique/craft/recipe/ground_unstable_copper_ingot

#海之菜肴
execute as @e[type=item,nbt={Item:{id:"minecraft:cod",Count:1b}}] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:salmon",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:pufferfish",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:potato",Count:1b}}] run function scr:server_unique/craft/recipe/ground_dish_of_the_sea

#矿工特供
execute as @e[type=item,nbt={Item:{id:"minecraft:cocoa_beans",Count:1b}}] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:sugar",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:carrot",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:apple",Count:1b}}] run function scr:server_unique/craft/recipe/ground_miners_treat

#金胡萝卜+
execute as @e[type=item,nbt={Item:{id:"minecraft:gold_block",Count:1b}}] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:carrot",Count:1b}}] run function scr:server_unique/craft/recipe/ground_golden_carrot_plus

#鹰翎束
execute as @e[type=item,nbt={Item:{id:"minecraft:feather",Count:64b,tag:{id:"scr:feather"}}}] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:stick",Count:1b}}] run function scr:server_unique/craft/recipe/ground_feather_bundle



#奇珍煤炭
execute as @e[type=item,nbt={Item:{id:"minecraft:coal_block",Count:16b}}] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:book",Count:1b}}] run function scr:server_unique/craft/recipe/ground_rare_coal

#奇珍铜锭
execute as @e[type=item,nbt={Item:{id:"minecraft:copper_block",Count:16b}}] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:book",Count:1b}}] run function scr:server_unique/craft/recipe/ground_rare_copper_ingot

#奇珍铁锭
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_block",Count:16b}}] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:book",Count:1b}}] run function scr:server_unique/craft/recipe/ground_rare_iron_ingot

#奇珍金锭
execute as @e[type=item,nbt={Item:{id:"minecraft:gold_block",Count:16b}}] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:book",Count:1b}}] run function scr:server_unique/craft/recipe/ground_rare_gold_ingot

#奇珍钻石
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond_block",Count:16b}}] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:book",Count:1b}}] run function scr:server_unique/craft/recipe/ground_rare_diamond

#奇珍绿宝石
execute as @e[type=item,nbt={Item:{id:"minecraft:emerald_block",Count:16b}}] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:book",Count:1b}}] run function scr:server_unique/craft/recipe/ground_rare_emerald



#星辉剑
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_sword",Count:1b,tag:{id:"scr:obsidian_netherite_sword_xiii"}}}] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:diamond_block",Count:1b}}] run function scr:server_unique/craft/recipe/ground_obsidian_netherite_sword_xiii_diamond

#金煌剑
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_sword",Count:1b,tag:{id:"scr:obsidian_netherite_sword_xiii"}}}] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:gold_block",Count:1b}}] run function scr:server_unique/craft/recipe/ground_obsidian_netherite_sword_xiii_gold

#翠影剑
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_sword",Count:1b,tag:{id:"scr:obsidian_netherite_sword_xiii"}}}] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:emerald_block",Count:1b}}] run function scr:server_unique/craft/recipe/ground_obsidian_netherite_sword_xiii_emerald

#月之剑
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_sword",Count:1b,tag:{id:"scr:obsidian_netherite_sword_xiii"}}}] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:firework_star",Count:1b,tag:{id:"scr:z1009"}}}] run function scr:server_unique/craft/recipe/ground_obsidian_netherite_sword_xiii_custom_i

#还原
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_sword",Count:1b,tag:{id:"scr:obsidian_netherite_sword_xiii"}}}] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}}] run function scr:server_unique/craft/recipe/ground_obsidian_netherite_sword_xiii



#翎之稿慢速模式
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_pickaxe",Count:1b,tag:{id:"scr:clawther_pickaxe_x"}}}] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:redstone_block",Count:1b}}] run function scr:server_unique/craft/recipe/ground_clawther_pickaxe_x_slow

#还原
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_pickaxe",Count:1b,tag:{id:"scr:clawther_pickaxe_x"}}}] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}}] run function scr:server_unique/craft/recipe/ground_clawther_pickaxe_x