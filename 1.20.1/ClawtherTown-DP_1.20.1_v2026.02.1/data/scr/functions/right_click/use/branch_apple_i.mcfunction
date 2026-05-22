execute as @s[scores={cd_branch_apple_i=1..}] run function scr:right_click/tellraw/cd_branch_apple_i

execute as @s[scores={cd_branch_apple_i=0}] run effect give @s saturation 1 1
execute as @s[scores={cd_branch_apple_i=0}] run particle minecraft:happy_villager ~ ~1 ~ 1 1 1 1 50
execute as @s[scores={cd_branch_apple_i=0}] run playsound minecraft:entity.player.burp ambient @a ~ ~ ~
execute as @s[scores={cd_branch_apple_i=0}] run tellraw @s {"text":"","extra":[{"text":"[","color":"yellow","bold":false},{"text":"魔法树枝 | 红苹果","color":"dark_aqua","bold":false},{"text":"] ","color":"yellow","bold":false},{"text":"法杖已生效!","color":"green"}]}

execute as @s[scores={cd_branch_apple_i=0}] run scoreboard players set @s cd_branch_apple_i 2400