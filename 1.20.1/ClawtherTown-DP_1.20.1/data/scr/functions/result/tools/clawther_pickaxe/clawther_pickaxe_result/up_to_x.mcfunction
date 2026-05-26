execute as @a at @s run playsound minecraft:ui.toast.challenge_complete block @s ~ ~ ~ 1 0.5

tellraw @a {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"铁匠鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"玩家 ","color":"aqua"},{"selector":"@s"},{"text":" 经过不懈努力打造出了 ","color":"aqua"},{"text":"[翎之镐 - X]","color":"red","bold":true},{"text":" !","color":"aqua"}]}

function scr:result/tools/clawther_pickaxe/clawther_pickaxe_only/clawther_pickaxe_x

function scr:random/random100000