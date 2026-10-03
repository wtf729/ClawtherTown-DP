tellraw @s {"text":"","extra":[{"text":"[","color":"yellow","bold":false},{"text":"紫颂曲奇","color":"aqua","bold":false},{"text":"] ","color":"yellow","bold":false},{"text":"已生效!","color":"green"}]}

scoreboard players set @s scr_home_radius 10

execute at @s run function scr:right_click/operations/home/tp

execute as @s at @s run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 0.5 1



advancement revoke @s only scr:consumables/teleport_cookie
