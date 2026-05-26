execute store result score @s shop_sell_item_sold run scoreboard players get @s shop_sell_selected_item

clear @s[scores={shop_sell_item_sold=10101}] minecraft:coal_block 1
clear @s[scores={shop_sell_item_sold=10102}] minecraft:copper_block 1
clear @s[scores={shop_sell_item_sold=10103}] minecraft:iron_block 1
clear @s[scores={shop_sell_item_sold=10104}] minecraft:gold_block 1
clear @s[scores={shop_sell_item_sold=10105}] minecraft:diamond_block 1
clear @s[scores={shop_sell_item_sold=10106}] minecraft:emerald_block 1
clear @s[scores={shop_sell_item_sold=10107}] minecraft:lapis_block 1
clear @s[scores={shop_sell_item_sold=10108}] minecraft:redstone_block 1
clear @s[scores={shop_sell_item_sold=10109}] minecraft:netherite_block 1
clear @s[scores={shop_sell_item_sold=10110}] minecraft:amethyst_shard 1
clear @s[scores={shop_sell_item_sold=10201}] minecraft:coal[minecraft:item_name="rare_coal"] 1
clear @s[scores={shop_sell_item_sold=10202}] minecraft:copper_ingot[minecraft:item_name="rare_copper_ingot"] 1
clear @s[scores={shop_sell_item_sold=10203}] minecraft:iron_ingot[minecraft:item_name="rare_iron_ingot"] 1
clear @s[scores={shop_sell_item_sold=10204}] minecraft:gold_ingot[minecraft:item_name="rare_gold_ingot"] 1
clear @s[scores={shop_sell_item_sold=10205}] minecraft:diamond[minecraft:item_name="rare_diamond"] 1
clear @s[scores={shop_sell_item_sold=10206}] minecraft:emerald[minecraft:item_name="rare_emerald"] 1

scoreboard players add @s shop_sell_amount 1
playsound minecraft:block.note_block.chime ui @s ~ ~ ~ 0.2


function scr:shop/actionbar/sell_count

execute as @s[scores={shop_sell_item_sold=10101}] unless entity @s[nbt={Inventory:[{id:"minecraft:coal_block"}]}] run function scr:shop/sell/operations/sell_end
execute as @s[scores={shop_sell_item_sold=10102}] unless entity @s[nbt={Inventory:[{id:"minecraft:copper_block"}]}] run function scr:shop/sell/operations/sell_end
execute as @s[scores={shop_sell_item_sold=10103}] unless entity @s[nbt={Inventory:[{id:"minecraft:iron_block"}]}] run function scr:shop/sell/operations/sell_end
execute as @s[scores={shop_sell_item_sold=10104}] unless entity @s[nbt={Inventory:[{id:"minecraft:gold_block"}]}] run function scr:shop/sell/operations/sell_end
execute as @s[scores={shop_sell_item_sold=10105}] unless entity @s[nbt={Inventory:[{id:"minecraft:diamond_block"}]}] run function scr:shop/sell/operations/sell_end
execute as @s[scores={shop_sell_item_sold=10106}] unless entity @s[nbt={Inventory:[{id:"minecraft:emerald_block"}]}] run function scr:shop/sell/operations/sell_end
execute as @s[scores={shop_sell_item_sold=10107}] unless entity @s[nbt={Inventory:[{id:"minecraft:lapis_block"}]}] run function scr:shop/sell/operations/sell_end
execute as @s[scores={shop_sell_item_sold=10108}] unless entity @s[nbt={Inventory:[{id:"minecraft:redstone_block"}]}] run function scr:shop/sell/operations/sell_end
execute as @s[scores={shop_sell_item_sold=10109}] unless entity @s[nbt={Inventory:[{id:"minecraft:netherite_block"}]}] run function scr:shop/sell/operations/sell_end
execute as @s[scores={shop_sell_item_sold=10110}] unless entity @s[nbt={Inventory:[{id:"minecraft:amethyst_shard"}]}] run function scr:shop/sell/operations/sell_end
execute as @s[scores={shop_sell_item_sold=10201}] unless entity @s[nbt={Inventory:[{id:"minecraft:coal",components:{"minecraft:item_name":"rare_coal"}}]}] run function scr:shop/sell/operations/sell_end
execute as @s[scores={shop_sell_item_sold=10202}] unless entity @s[nbt={Inventory:[{id:"minecraft:copper_ingot",components:{"minecraft:item_name":"rare_copper_ingot"}}]}] run function scr:shop/sell/operations/sell_end
execute as @s[scores={shop_sell_item_sold=10203}] unless entity @s[nbt={Inventory:[{id:"minecraft:iron_ingot",components:{"minecraft:item_name":"rare_iron_ingot"}}]}] run function scr:shop/sell/operations/sell_end
execute as @s[scores={shop_sell_item_sold=10204}] unless entity @s[nbt={Inventory:[{id:"minecraft:gold_ingot",components:{"minecraft:item_name":"rare_gold_ingot"}}]}] run function scr:shop/sell/operations/sell_end
execute as @s[scores={shop_sell_item_sold=10205}] unless entity @s[nbt={Inventory:[{id:"minecraft:diamond",components:{"minecraft:item_name":"rare_diamond"}}]}] run function scr:shop/sell/operations/sell_end
execute as @s[scores={shop_sell_item_sold=10206}] unless entity @s[nbt={Inventory:[{id:"minecraft:emerald",components:{"minecraft:item_name":"rare_emerald"}}]}] run function scr:shop/sell/operations/sell_end