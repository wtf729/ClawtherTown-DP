execute as @s[scores={cd_staff_sapphire_star=1..}] run function scr:right_click/tellraw/cd_staff_sapphire_star

execute as @s[scores={cd_staff_sapphire_star=0}] run tellraw @s {"text":"","extra":[{"text":"[","color":"yellow","bold":false},{"translate":"item.scr.staff_sapphire_star","color":"aqua","bold":false},{"text":"] ","color":"yellow","bold":false},{"text":"指引明路...","color":"green"}]}

execute as @s[scores={cd_staff_sapphire_star=0}] run scoreboard players set @s scr_home_radius 15

execute as @s[scores={cd_staff_sapphire_star=0}] at @s run function scr:right_click/operations/home/tp

execute as @s[scores={cd_staff_sapphire_star=0}] at @s run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 0.5 1




execute as @s[scores={cd_staff_sapphire_star=0}] run scoreboard players set @s cd_staff_sapphire_star 100
