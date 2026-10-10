function scr:soul/actionbar
stopsound @s * minecraft:entity.player.levelup
execute as @s[scores={soul_level=..100}] run playsound minecraft:entity.player.levelup ambient @a ~ ~ ~ 0.2 0.5
stopsound @s * minecraft:ui.toast.challenge_complete
execute as @s[scores={soul_level=100..}] run playsound minecraft:ui.toast.challenge_complete block @s ~ ~ ~ 0.1 0.5
particle minecraft:happy_villager ~ ~ ~ 2 2 2 1 100

execute as @s[scores={soul_level=..50}] run tellraw @s [{"text":"你的","color":"aqua"},{"text":"灵魂等级","color":"light_purple"},{"text":"已提升至","color":"aqua"},{"score":{"name":"@s","objective":"soul_level"},"color":"light_purple"},{"text":"级!","color":"aqua"}]
execute as @s[scores={soul_level=51..}] run tellraw @a ["",{"selector":"@s"},{"text":"经过不懈努力, ","color":"yellow"},{"text":"灵魂等级","color":"light_purple"},{"text":"已提升至","color":"yellow"},{"score":{"name":"@s","objective":"soul_level"},"color":"light_purple"},{"text":"级!","color":"yellow"}]


tellraw @s [{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.postman","fallback":"驿差鹰"},{"text":"] ","color":"gold","bold":true},{"text":"你收到了升级奖励: ","color":"yellow","bold":false},{"text":"[秘币]*2","color":"light_purple","bold":false}]
scoreboard players add @s mystic_coin 2


tellraw @s [{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.postman","fallback":"驿差鹰"},{"text":"] ","color":"gold","bold":true},{"text":"你收到了升级奖励: ","color":"yellow","bold":false},{"text":"[奇珍矿石]","color":"light_purple","bold":false}]
function scr_mail:source/level_up