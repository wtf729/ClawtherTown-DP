execute store result score @s shop_income run scoreboard players get @s shop_sell_unit_price_sold
scoreboard players operation @s shop_income *= @s shop_sell_amount

tellraw @s {"text":"","extra":[{"text":"--------------------------------------------------\n","color":"dark_gray"},{"text":"[","color":"gold","bold":true},{"text":"行商鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"出售成功! ","color":"green"},{"text":"\n你出售了","color":"yellow"},{"score":{"name":"@s","objective":"shop_sell_amount"},"color":"light_purple"},{"text":"个物品! 总计收入","color":"yellow"},{"score":{"name":"@s","objective":"shop_income"},"color":"light_purple"},{"text":"鹰翎币","color":"light_purple"},{"text":"!","color":"yellow"},{"text":"\n--------------------------------------------------","color":"dark_gray"}]}


scoreboard players operation @s clawther_coin_add += @s shop_income
function scr:clawther_coin/reward
playsound minecraft:entity.villager.yes ambient @s ~ ~ ~


scoreboard players set @s shop_sell_amount 0
scoreboard players set @s shop_income 0
scoreboard players set @s shop_sell_item_sold 0