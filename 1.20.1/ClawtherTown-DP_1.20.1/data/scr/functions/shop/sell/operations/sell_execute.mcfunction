execute as @s[scores={shop_sell_item_sold=1..}] run function scr:shop/sell/operations/sell_fail_conflict

execute as @s[scores={shop_sell_item_sold=0,shop_sell_selected_item=10101},nbt={Inventory:[{id:"minecraft:coal_block"}]}] run function scr:shop/sell/operations/sell_success
execute as @s[scores={shop_sell_item_sold=0,shop_sell_selected_item=10101}] unless entity @s[nbt={Inventory:[{id:"minecraft:coal_block"}]}] run function scr:shop/sell/operations/sell_fail

execute as @s[scores={shop_sell_item_sold=0,shop_sell_selected_item=10102},nbt={Inventory:[{id:"minecraft:copper_block"}]}] run function scr:shop/sell/operations/sell_success
execute as @s[scores={shop_sell_item_sold=0,shop_sell_selected_item=10102}] unless entity @s[nbt={Inventory:[{id:"minecraft:copper_block"}]}] run function scr:shop/sell/operations/sell_fail

execute as @s[scores={shop_sell_item_sold=0,shop_sell_selected_item=10103},nbt={Inventory:[{id:"minecraft:iron_block"}]}] run function scr:shop/sell/operations/sell_success
execute as @s[scores={shop_sell_item_sold=0,shop_sell_selected_item=10103}] unless entity @s[nbt={Inventory:[{id:"minecraft:iron_block"}]}] run function scr:shop/sell/operations/sell_fail

execute as @s[scores={shop_sell_item_sold=0,shop_sell_selected_item=10104},nbt={Inventory:[{id:"minecraft:gold_block"}]}] run function scr:shop/sell/operations/sell_success
execute as @s[scores={shop_sell_item_sold=0,shop_sell_selected_item=10104}] unless entity @s[nbt={Inventory:[{id:"minecraft:gold_block"}]}] run function scr:shop/sell/operations/sell_fail

execute as @s[scores={shop_sell_item_sold=0,shop_sell_selected_item=10105},nbt={Inventory:[{id:"minecraft:diamond_block"}]}] run function scr:shop/sell/operations/sell_success
execute as @s[scores={shop_sell_item_sold=0,shop_sell_selected_item=10105}] unless entity @s[nbt={Inventory:[{id:"minecraft:diamond_block"}]}] run function scr:shop/sell/operations/sell_fail

execute as @s[scores={shop_sell_item_sold=0,shop_sell_selected_item=10106},nbt={Inventory:[{id:"minecraft:emerald_block"}]}] run function scr:shop/sell/operations/sell_success
execute as @s[scores={shop_sell_item_sold=0,shop_sell_selected_item=10106}] unless entity @s[nbt={Inventory:[{id:"minecraft:emerald_block"}]}] run function scr:shop/sell/operations/sell_fail

execute as @s[scores={shop_sell_item_sold=0,shop_sell_selected_item=10107},nbt={Inventory:[{id:"minecraft:lapis_block"}]}] run function scr:shop/sell/operations/sell_success
execute as @s[scores={shop_sell_item_sold=0,shop_sell_selected_item=10107}] unless entity @s[nbt={Inventory:[{id:"minecraft:lapis_block"}]}] run function scr:shop/sell/operations/sell_fail

execute as @s[scores={shop_sell_item_sold=0,shop_sell_selected_item=10108},nbt={Inventory:[{id:"minecraft:redstone_block"}]}] run function scr:shop/sell/operations/sell_success
execute as @s[scores={shop_sell_item_sold=0,shop_sell_selected_item=10108}] unless entity @s[nbt={Inventory:[{id:"minecraft:redstone_block"}]}] run function scr:shop/sell/operations/sell_fail

execute as @s[scores={shop_sell_item_sold=0,shop_sell_selected_item=10109},nbt={Inventory:[{id:"minecraft:netherite_block"}]}] run function scr:shop/sell/operations/sell_success
execute as @s[scores={shop_sell_item_sold=0,shop_sell_selected_item=10109}] unless entity @s[nbt={Inventory:[{id:"minecraft:netherite_block"}]}] run function scr:shop/sell/operations/sell_fail

execute as @s[scores={shop_sell_item_sold=0,shop_sell_selected_item=10110},nbt={Inventory:[{id:"minecraft:amethyst_shard"}]}] run function scr:shop/sell/operations/sell_success
execute as @s[scores={shop_sell_item_sold=0,shop_sell_selected_item=10110}] unless entity @s[nbt={Inventory:[{id:"minecraft:amethyst_shard"}]}] run function scr:shop/sell/operations/sell_fail

execute as @s[scores={shop_sell_item_sold=0,shop_sell_selected_item=10201},nbt={Inventory:[{id:"minecraft:coal",tag:{id:"scr:rare_coal"}}]}] run function scr:shop/sell/operations/sell_success
execute as @s[scores={shop_sell_item_sold=0,shop_sell_selected_item=10201}] unless entity @s[nbt={Inventory:[{id:"minecraft:coal",tag:{id:"scr:rare_coal"}}]}] run function scr:shop/sell/operations/sell_fail

execute as @s[scores={shop_sell_item_sold=0,shop_sell_selected_item=10202},nbt={Inventory:[{id:"minecraft:copper_ingot",tag:{id:"scr:rare_copper_ingot"}}]}] run function scr:shop/sell/operations/sell_success
execute as @s[scores={shop_sell_item_sold=0,shop_sell_selected_item=10202}] unless entity @s[nbt={Inventory:[{id:"minecraft:copper_ingot",tag:{id:"scr:rare_copper_ingot"}}]}] run function scr:shop/sell/operations/sell_fail

execute as @s[scores={shop_sell_item_sold=0,shop_sell_selected_item=10203},nbt={Inventory:[{id:"minecraft:iron_ingot",tag:{id:"scr:rare_iron_ingot"}}]}] run function scr:shop/sell/operations/sell_success
execute as @s[scores={shop_sell_item_sold=0,shop_sell_selected_item=10203}] unless entity @s[nbt={Inventory:[{id:"minecraft:iron_ingot",tag:{id:"scr:rare_iron_ingot"}}]}] run function scr:shop/sell/operations/sell_fail

execute as @s[scores={shop_sell_item_sold=0,shop_sell_selected_item=10204},nbt={Inventory:[{id:"minecraft:gold_ingot",tag:{id:"scr:rare_gold_ingot"}}]}] run function scr:shop/sell/operations/sell_success
execute as @s[scores={shop_sell_item_sold=0,shop_sell_selected_item=10204}] unless entity @s[nbt={Inventory:[{id:"minecraft:gold_ingot",tag:{id:"scr:rare_gold_ingot"}}]}] run function scr:shop/sell/operations/sell_fail

execute as @s[scores={shop_sell_item_sold=0,shop_sell_selected_item=10205},nbt={Inventory:[{id:"minecraft:diamond",tag:{id:"scr:rare_diamond"}}]}] run function scr:shop/sell/operations/sell_success
execute as @s[scores={shop_sell_item_sold=0,shop_sell_selected_item=10205}] unless entity @s[nbt={Inventory:[{id:"minecraft:diamond",tag:{id:"scr:rare_diamond"}}]}] run function scr:shop/sell/operations/sell_fail

execute as @s[scores={shop_sell_item_sold=0,shop_sell_selected_item=10206},nbt={Inventory:[{id:"minecraft:emerald",tag:{id:"scr:rare_emerald"}}]}] run function scr:shop/sell/operations/sell_success
execute as @s[scores={shop_sell_item_sold=0,shop_sell_selected_item=10206}] unless entity @s[nbt={Inventory:[{id:"minecraft:emerald",tag:{id:"scr:rare_emerald"}}]}] run function scr:shop/sell/operations/sell_fail

scoreboard players set @s shop 0