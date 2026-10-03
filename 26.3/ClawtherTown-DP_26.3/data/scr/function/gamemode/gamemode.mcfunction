#gamemode
execute if score @s gamemode matches 1 run function scr:gamemode/show_gamemode

execute if score @s gamemode matches 2 run function scr:gamemode/survival
execute if score @s gamemode matches 3 run function scr:gamemode/creative
execute if score @s gamemode matches 4 run function scr:gamemode/spectator
execute if score @s gamemode matches 5 run function scr:gamemode/adventure