execute as @a at @s run playsound minecraft:ui.toast.challenge_complete block @s ~ ~ ~ 1 0.5

tellraw @a {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"铁匠鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"selector":"@s"},{"text":"成功将","color":"aqua"},{"text":"[下界黑晶剑 - XII]","color":"#f03c14","bold":false},{"text":"强化至","color":"aqua"},{"text":"[下界黑晶剑 - XIII]","color":"#f00a14","bold":false},{"text":" !","color":"aqua"}]}

function scr:result/combat/obsidian_netherite_sword/obsidian_netherite_sword_only/obsidian_netherite_sword_xiii

function scr:random/random100000