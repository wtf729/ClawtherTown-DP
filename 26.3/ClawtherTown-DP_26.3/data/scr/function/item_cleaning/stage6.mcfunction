function scr:item_cleaning/refresh_candidates
execute store result score #item_count item_cleaning if entity @e[type=minecraft:item,tag=scr.cleanup_candidate]

tellraw @a [{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.cleaner","fallback":"出尘鹰"},{"text":"] ","color":"gold","bold":true},{"text":"吃掉了","color":"yellow","bold":false},{"score":{"name":"#item_count_item","objective":"item_cleaning"},"color":"light_purple","bold":false},{"text":"个物品与","color":"yellow","bold":false},{"score":{"name":"#item_count_exp","objective":"item_cleaning"},"color":"light_purple","bold":false},{"text":"个经验球。奥里给兄弟们, 干了!","color":"yellow","bold":false}]

function scr:item_cleaning/kill

scoreboard players reset #item_cleaning timecounter

scoreboard players set #item_cleaning_stage item_cleaning 0
