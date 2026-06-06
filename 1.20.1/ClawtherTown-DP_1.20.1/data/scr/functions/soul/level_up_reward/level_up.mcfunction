function scr:soul/actionbar
stopsound @s * minecraft:entity.player.levelup
execute as @s[scores={soul_level=..100}] run playsound minecraft:entity.player.levelup ambient @a ~ ~ ~ 0.2 0.5
stopsound @s * minecraft:ui.toast.challenge_complete
execute as @s[scores={soul_level=100..}] run playsound minecraft:ui.toast.challenge_complete block @s ~ ~ ~ 0.1 0.5
particle minecraft:happy_villager ~ ~ ~ 2 2 2 1 100

execute as @s[scores={soul_level=..50}] run tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"神鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"你的","color":"aqua"},{"text":"灵魂等级","color":"light_purple"},{"text":"已提升至","color":"aqua"},{"score":{"name":"@s","objective":"soul_level"},"color":"light_purple"},{"text":"级!","color":"aqua"}]}
execute as @s[scores={soul_level=51..}] run tellraw @a {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"神鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"selector":"@s"},{"text":"经过不懈努力, ","color":"yellow"},{"text":"灵魂等级","color":"light_purple"},{"text":"已提升至","color":"yellow"},{"score":{"name":"@s","objective":"soul_level"},"color":"light_purple"},{"text":"级!","color":"yellow"}]}


tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"邮递鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"你收到了升级奖励: ","color":"yellow"},{"text":"[秘币]*2","color":"light_purple"}]}

scoreboard players add @s mystic_coin 2

tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"邮递鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"你收到了升级奖励: ","color":"yellow"},{"text":"[奇珍矿石]*1","color":"light_purple"}]}

loot spawn ~ ~ ~ loot scr:case/case/case_rare_ore


#特殊升级奖励
# function scr:soul/level_up_reward/special/special_1
function scr:soul/level_up_reward/special/special_2





#scoreboard players set @s soul_title_countdown 120