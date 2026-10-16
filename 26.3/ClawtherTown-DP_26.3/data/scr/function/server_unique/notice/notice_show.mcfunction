execute if score #notice notice matches 8.. run scoreboard players set #notice notice 0
scoreboard players add #notice notice 1

execute if score #notice notice matches 1 run tellraw @a [{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.announcer","fallback":"号角鹰"},{"text":"] ","color":"gold","bold":true},{"text":"输入 ","color":"#c9d1d9","bold":false},{"text":"/trigger i","underlined":true,"color":"#4dd9ff","click_event":{"action":"run_command","command":"/trigger i"},"bold":false},{"text":" 可打开快捷菜单!","color":"#c9d1d9","bold":false}]

execute if score #notice notice matches 2 run tellraw @a [{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.announcer","fallback":"号角鹰"},{"text":"] ","color":"gold","bold":true},{"text":"输入 ","color":"#c9d1d9","bold":false},{"text":"/trigger shop","underlined":true,"color":"#4dd9ff","click_event":{"action":"run_command","command":"/trigger shop"},"bold":false},{"text":"","color":"#c9d1d9","bold":false,"extra":[{"text":" 可打开"},{"translate":"character.scr.trader","fallback":"行商鹰"},{"text":"的小店!"}]}]

execute if score #notice notice matches 3 run tellraw @a [{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.announcer","fallback":"号角鹰"},{"text":"] ","color":"gold","bold":true},{"text":"输入 ","color":"#c9d1d9","bold":false},{"text":"/trigger sethome set <家序号>","underlined":true,"color":"#4dd9ff","click_event":{"action":"suggest_command","command":"/trigger sethome set "},"bold":false},{"text":" 可设置多个家!","color":"#c9d1d9","bold":false}]

execute if score #notice notice matches 4 run tellraw @a [{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.announcer","fallback":"号角鹰"},{"text":"] ","color":"gold","bold":true},{"text":"输入 ","color":"#c9d1d9","bold":false},{"text":"/trigger title","underlined":true,"color":"#4dd9ff","click_event":{"action":"run_command","command":"/trigger title"},"bold":false},{"text":" 来更换称号!","color":"#c9d1d9","bold":false}]

execute if score #notice notice matches 5 run tellraw @a [{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.announcer","fallback":"号角鹰"},{"text":"] ","color":"gold","bold":true},{"text":"输入 ","color":"#c9d1d9","bold":false},{"text":"/trigger star","underlined":true,"color":"#4dd9ff","click_event":{"action":"run_command","command":"/trigger star"},"bold":false},{"text":" 可前往星辰之地!","color":"#c9d1d9","bold":false}]

execute if score #notice notice matches 6 run tellraw @a [{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.announcer","fallback":"号角鹰"},{"text":"] ","color":"gold","bold":true},{"text":"输入 ","color":"#c9d1d9","bold":false},{"text":"/trigger spawn","underlined":true,"color":"#4dd9ff","click_event":{"action":"run_command","command":"/trigger spawn"},"bold":false},{"text":" 可回到世界重生点!","color":"#c9d1d9","bold":false}]

execute if score #notice notice matches 7 run tellraw @a [{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.announcer","fallback":"号角鹰"},{"text":"] ","color":"gold","bold":true},{"text":"输入 ","color":"#c9d1d9","bold":false},{"text":"/trigger sethat","underlined":true,"color":"#4dd9ff","click_event":{"action":"run_command","command":"/trigger sethat"},"bold":false},{"text":" 可以把东西戴在头上!","color":"#c9d1d9","bold":false}]

execute if score #notice notice matches 8 run tellraw @a [{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.announcer","fallback":"号角鹰"},{"text":"] ","color":"gold","bold":true},{"text":"输入 ","color":"#c9d1d9","bold":false},{"text":"/trigger gallery","underlined":true,"color":"#4dd9ff","click_event":{"action":"run_command","command":"/trigger gallery"},"bold":false},{"text":" 可以打开鹰翎镇展览馆!","color":"#c9d1d9","bold":false}]

# Check both reminders for every scheduled public broadcast.
execute as @a run function scr:server_unique/notice/player

execute if score #notice notice matches 8 run scoreboard players set #notice notice 0

scoreboard players set #notice timecounter 0