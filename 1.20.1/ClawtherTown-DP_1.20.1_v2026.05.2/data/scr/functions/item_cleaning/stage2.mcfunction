execute if score #item_count item_cleaning <= #item_limit item_cleaning run scoreboard players set #item_cleaning_stage item_cleaning 3

execute if score #item_count item_cleaning > #item_limit item_cleaning run scoreboard players set #item_cleaning_stage item_cleaning 4

scoreboard players reset #item_cleaning timecounter