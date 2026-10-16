execute unless function scr:shop/policy/sell_ready run return run function scr:shop/policy/stop_sale
# The sold item and unit price are frozen by sell_success.
scoreboard players set @s scr_sell_taken 0

execute if score @s shop_sell_item_sold matches 10101 store result score @s scr_sell_taken run clear @s minecraft:coal_block 1
execute if score @s shop_sell_item_sold matches 10102 store result score @s scr_sell_taken run clear @s minecraft:copper_block 1
execute if score @s shop_sell_item_sold matches 10103 store result score @s scr_sell_taken run clear @s minecraft:iron_block 1
execute if score @s shop_sell_item_sold matches 10104 store result score @s scr_sell_taken run clear @s minecraft:gold_block 1
execute if score @s shop_sell_item_sold matches 10105 store result score @s scr_sell_taken run clear @s minecraft:diamond_block 1
execute if score @s shop_sell_item_sold matches 10106 store result score @s scr_sell_taken run clear @s minecraft:emerald_block 1
execute if score @s shop_sell_item_sold matches 10107 store result score @s scr_sell_taken run clear @s minecraft:lapis_block 1
execute if score @s shop_sell_item_sold matches 10108 store result score @s scr_sell_taken run clear @s minecraft:redstone_block 1
execute if score @s shop_sell_item_sold matches 10109 store result score @s scr_sell_taken run clear @s minecraft:netherite_block 1
execute if score @s shop_sell_item_sold matches 10110 store result score @s scr_sell_taken run clear @s minecraft:amethyst_shard 1
execute if score @s shop_sell_item_sold matches 10201 store result score @s scr_sell_taken run clear @s minecraft:coal[minecraft:item_name="rare_coal"] 1
execute if score @s shop_sell_item_sold matches 10202 store result score @s scr_sell_taken run clear @s minecraft:copper_ingot[minecraft:item_name="rare_copper_ingot"] 1
execute if score @s shop_sell_item_sold matches 10203 store result score @s scr_sell_taken run clear @s minecraft:iron_ingot[minecraft:item_name="rare_iron_ingot"] 1
execute if score @s shop_sell_item_sold matches 10204 store result score @s scr_sell_taken run clear @s minecraft:gold_ingot[minecraft:item_name="rare_gold_ingot"] 1
execute if score @s shop_sell_item_sold matches 10205 store result score @s scr_sell_taken run clear @s minecraft:diamond[minecraft:item_name="rare_diamond"] 1
execute if score @s shop_sell_item_sold matches 10206 store result score @s scr_sell_taken run clear @s minecraft:emerald[minecraft:item_name="rare_emerald"] 1

execute unless score @s scr_sell_taken matches 1.. run return run function scr:shop/sell/operations/sell_end
scoreboard players operation @s shop_sell_amount += @s scr_sell_taken
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
