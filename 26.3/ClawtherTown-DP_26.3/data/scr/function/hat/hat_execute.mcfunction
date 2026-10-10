execute store success score #hat_move scr_tk run item replace entity @s armor.head from entity @s weapon.mainhand
execute unless score #hat_move scr_tk matches 1 run return 0
execute store success score #hat_clear scr_tk run item replace entity @s weapon.mainhand with minecraft:air
execute if score #hat_clear scr_tk matches 1 run function scr_task:event/hat_equipped
