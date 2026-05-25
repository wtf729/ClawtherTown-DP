execute as @s[scores={cd_branch_absorption_ii=1..}] run function scr:right_click/tellraw/cd_branch_absorption_ii

execute as @s[scores={cd_branch_absorption_ii=0}] run effect give @s minecraft:absorption 60 1
execute as @s[scores={cd_branch_absorption_ii=0}] run particle minecraft:happy_villager ~ ~1 ~ 1 1 1 1 50
execute as @s[scores={cd_branch_absorption_ii=0}] run playsound minecraft:block.beacon.power_select ambient @a ~ ~ ~
execute as @s[scores={cd_branch_absorption_ii=0}] run tellraw @s {"text":"","extra":[{"text":"[","color":"yellow","bold":false},{"text":"魔法树枝 | 海之泡沫","color":"dark_purple","bold":false},{"text":"] ","color":"yellow","bold":false},{"text":"法杖已生效!","color":"green"}]}

execute as @s[scores={cd_branch_absorption_ii=0}] run scoreboard players set @s cd_branch_absorption_ii 3600