# Loot is already frozen. No /loot, RNG or table evaluation is allowed on the claim path.
data modify storage scr_mail:runtime work.item_queue set value []
data modify storage scr_mail:runtime work.item_queue set from storage scr_mail:runtime work.entry.items
scoreboard players set #delivered scr_ml_n 0
execute unless data storage scr_mail:runtime work.item_queue[0] run return 1
return run function scr_mail:reward/items/apply_loop
