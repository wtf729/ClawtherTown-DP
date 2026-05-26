execute as @s[scores={cd_staff_clear_spring_custom_1=1..}] run function scr:right_click/tellraw/cd_staff_clear_spring_custom_1

execute as @s[scores={cd_staff_clear_spring_custom_1=0}] run effect give @e[distance=..3] minecraft:regeneration 60 2
execute as @s[scores={cd_staff_clear_spring_custom_1=0}] run effect give @e[distance=..3] minecraft:absorption 60 4
execute as @s[scores={cd_staff_clear_spring_custom_1=0}] run particle minecraft:happy_villager ~ ~1 ~ 1 1 1 1 50
execute as @s[scores={cd_staff_clear_spring_custom_1=0}] run playsound minecraft:block.beacon.power_select ambient @a ~ ~ ~
execute as @s[scores={cd_staff_clear_spring_custom_1=0}] at @s run tellraw @a[distance=..3] {"text":"","extra":[{"text":"[","color":"yellow","bold":false},{"translate":"item.scr.staff_clear_spring_custom_1","color":"light_purple","bold":false},{"text":"] ","color":"yellow","bold":false},{"text":"法杖已生效!","color":"green"}]}

execute as @s[scores={cd_staff_clear_spring_custom_1=0}] run scoreboard players set @s cd_staff_clear_spring_custom_1 3600