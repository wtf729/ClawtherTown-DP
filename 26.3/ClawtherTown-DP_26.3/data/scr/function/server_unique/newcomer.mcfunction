function scr:server_unique/update_scoreboard

scoreboard players set @s stage 1
team join stage_1

give @s minecraft:iron_sword
give @s minecraft:iron_pickaxe
give @s minecraft:bread 64
give @s minecraft:oak_log 16
give @s minecraft:torch 64
loot give @s loot scr:card/card_clawther_coin_double_v
loot give @s loot scr:card/card_soul_double_v

execute as @a at @s run playsound minecraft:ui.toast.challenge_complete block @s ~ ~ ~ 0.3 1.5

tellraw @a {"text":"","extra":[{"text":"--------------------------------------------------\n","color":"aqua"},{"text":"[","color":"gold","bold":true},{"text":"告示鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"新玩家","color":"aqua"},{"selector":"@s"},{"text":"来到了鹰翎镇! 大家快去欢迎他吧!","color":"aqua"},{"text":"\n--------------------------------------------------","color":"aqua"}]}

tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"告示鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"欢迎来到鹰翎镇! ","color":"aqua"},{"text":"点击这里","underlined":true,"color":"yellow","click_event":{"action":"run_command","command":"/trigger scrhelp set 1000"}},{"text":"可查看关于鹰翎镇的介绍! ","color":"gold"},{"text":"\n[","color":"gold","bold":true},{"text":"告示鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"祝你在鹰翎镇玩得开心!","color":"light_purple"}]}

tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"邮递鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"你收到了一份礼物: ","color":"aqua"},{"text":"[新人礼]","color":"gold"},{"text":" !","color":"aqua"}]}

scoreboard players set @s not_newcomer 1
