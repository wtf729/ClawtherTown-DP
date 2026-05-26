execute as @s[scores={cd_branch_health_i=1..}] run function scr:right_click/tellraw/cd_branch_health_i

execute as @s[scores={cd_branch_health_i=0}] run effect give @s minecraft:instant_health 1 0
execute as @s[scores={cd_branch_health_i=0}] run particle minecraft:happy_villager ~ ~1 ~ 1 1 1 1 50
execute as @s[scores={cd_branch_health_i=0}] run playsound minecraft:block.beacon.power_select ambient @a ~ ~ ~
execute as @s[scores={cd_branch_health_i=0}] run tellraw @s {"text":"","extra":[{"text":"[","color":"yellow","bold":false},{"text":"魔法树枝 | 水花","color":"dark_aqua","bold":false},{"text":"] ","color":"yellow","bold":false},{"text":"法杖已生效!","color":"green"}]}

execute as @s[scores={cd_branch_health_i=0}] run scoreboard players set @s cd_branch_health_i 2400