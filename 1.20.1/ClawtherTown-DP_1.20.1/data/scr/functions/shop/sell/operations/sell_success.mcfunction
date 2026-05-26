execute store result score @s shop_sell_item_sold run scoreboard players get @s shop_sell_selected_item
execute store result score @s shop_sell_unit_price_sold run scoreboard players get @s shop_sell_unit_price

tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"邮递鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"正在收取货物, 请耐心等待!","color":"green"}]}