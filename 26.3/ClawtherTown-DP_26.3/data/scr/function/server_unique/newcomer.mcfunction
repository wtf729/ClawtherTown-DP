function scr:server_unique/update_scoreboard

scoreboard players set @s stage 1
team join stage_1

# Tutorial newcomer gift is now sent on C-01 start with a stable Mail event_id.

execute as @a at @s run playsound minecraft:ui.toast.challenge_complete block @s ~ ~ ~ 0.3 1.5

tellraw @a ["",{"text":"--------------------------------------------------\n","color":"aqua"},{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.announcer","fallback":"号角鹰"},{"text":"] ","color":"gold","bold":true},{"text":"新玩家","color":"aqua"},{"selector":"@s"},{"text":"来到了鹰翎镇! 大家快去欢迎他吧!","color":"aqua"},{"text":"\n--------------------------------------------------","color":"aqua"}]

tellraw @s [{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.announcer","fallback":"号角鹰"},{"text":"] ","color":"gold","bold":true},{"text":"欢迎来到鹰翎镇! ","color":"aqua","bold":false},{"text":"点击这里","underlined":true,"color":"yellow","click_event":{"action":"run_command","command":"/trigger scrhelp set 1000"},"bold":false},{"text":"可查看关于鹰翎镇的介绍! ","color":"gold","bold":false},{"text":"\n[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.announcer","fallback":"号角鹰"},{"text":"] ","color":"gold","bold":true},{"text":"祝你在鹰翎镇玩得开心!","color":"light_purple","bold":false}]


scoreboard players set @s not_newcomer 1
