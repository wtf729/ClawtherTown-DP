execute store result score #item_count item_cleaning if entity @e[type=item]

tellraw @a {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"清洁鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"吃掉了","color":"yellow"},{"score":{"name":"#item_count_item","objective":"item_cleaning"},"color":"light_purple"},{"text":"个物品与","color":"yellow"},{"score":{"name":"#item_count_exp","objective":"item_cleaning"},"color":"light_purple"},{"text":"个经验球。奥里给兄弟们, 干了!","color":"yellow"}]}

function scr:item_cleaning/kill

scoreboard players reset #item_cleaning timecounter

scoreboard players set #item_cleaning_stage item_cleaning 0