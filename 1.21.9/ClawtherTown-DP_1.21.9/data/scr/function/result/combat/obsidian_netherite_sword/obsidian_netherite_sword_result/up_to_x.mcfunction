execute as @a at @s run playsound minecraft:entity.ender_dragon.ambient ambient @s ~ ~ ~ 0.7 0.8
execute as @a at @s run playsound minecraft:entity.wither.spawn ambient @s ~ ~ ~ 0.3

tellraw @a {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"铁匠鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"selector":"@s"},{"text":"成功将","color":"aqua"},{"text":"[下界黑晶剑 - IX]","color":"red","bold":false},{"text":"强化至","color":"aqua"},{"text":"[下界黑晶剑 - X]","color":"#f03c14","bold":false},{"text":" !","color":"aqua"}]}

function scr:result/combat/obsidian_netherite_sword/obsidian_netherite_sword_only/obsidian_netherite_sword_x

function scr:random/random100000