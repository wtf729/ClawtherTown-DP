tellraw @a {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"清洁鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"吃掉了","color":"yellow"},{"score":{"name":"#item_count_item","objective":"item_cleaning"},"color":"light_purple"},{"text":"个物品与","color":"yellow"},{"score":{"name":"#item_count_exp","objective":"item_cleaning"},"color":"light_purple"},{"text":"个经验球。我快吃不下了...","color":"yellow"}]}

function scr:item_cleaning/kill

scoreboard players reset #item_cleaning timecounter

scoreboard players set #item_cleaning_stage item_cleaning 0
scoreboard players set #instant_clear item_cleaning 0