execute as @a at @s run playsound minecraft:entity.ender_dragon.ambient ambient @s ~ ~ ~ 0.7 0.8
execute as @a at @s run playsound minecraft:entity.wither.spawn ambient @s ~ ~ ~ 0.3

tellraw @a {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"铁匠鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"玩家 ","color":"aqua"},{"selector":"@s"},{"text":" 经过不懈努力打造出了 ","color":"aqua"},{"text":"[翎之镐 - VIII]","color":"red","bold":false},{"text":" !","color":"aqua"}]}

function scr:result/tools/clawther_pickaxe/clawther_pickaxe_only/clawther_pickaxe_viii

function scr:random/random100000