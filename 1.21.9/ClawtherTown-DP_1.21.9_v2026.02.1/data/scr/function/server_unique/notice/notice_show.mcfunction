scoreboard players add #notice notice 1

execute if score #notice notice matches 1 run tellraw @a {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"告示鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"输入 ","color":"green"},{"text":"/trigger i","underlined":true,"color":"light_purple","click_event":{"action":"run_command","command":"/trigger i"}},{"text":" 可打开快捷菜单!","color":"green"}]}

execute if score #notice notice matches 2 run tellraw @a {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"告示鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"输入 ","color":"green"},{"text":"/trigger shop","underlined":true,"color":"light_purple","click_event":{"action":"run_command","command":"/trigger shop"}},{"text":" 可打开行商鹰的小店!","color":"green"}]}

execute if score #notice notice matches 3 run tellraw @a {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"告示鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"输入 ","color":"green"},{"text":"/trigger sethome set <家序号>","underlined":true,"color":"light_purple","click_event":{"action":"suggest_command","command":"/trigger sethome set "}},{"text":" 可设置多个家!","color":"green"}]}

execute if score #notice notice matches 4 run tellraw @a {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"告示鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"输入 ","color":"green"},{"text":"/trigger title","underlined":true,"color":"light_purple","click_event":{"action":"run_command","command":"/trigger title"}},{"text":" 来更换称号!","color":"green"}]}

execute if score #notice notice matches 5 run tellraw @a {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"告示鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"输入 ","color":"green"},{"text":"/trigger star","underlined":true,"color":"light_purple","click_event":{"action":"run_command","command":"/trigger star"}},{"text":" 可前往星辰之地!","color":"green"}]}

execute if score #notice notice matches 6 run tellraw @a {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"告示鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"输入 ","color":"green"},{"text":"/trigger spawn","underlined":true,"color":"light_purple","click_event":{"action":"run_command","command":"/trigger spawn"}},{"text":" 可回到世界重生点!","color":"green"}]}

execute if score #notice notice matches 7 run tellraw @a {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"告示鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"输入 ","color":"green"},{"text":"/trigger sethat","underlined":true,"color":"light_purple","click_event":{"action":"run_command","command":"/trigger sethat"}},{"text":" 可以把东西戴在头上!","color":"green"}]}

execute if score #notice notice matches 8 run tellraw @a {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"告示鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"输入 ","color":"green"},{"text":"/trigger gallery","underlined":true,"color":"light_purple","click_event":{"action":"run_command","command":"/trigger gallery"}},{"text":" 可以打开鹰翎镇展览馆!","color":"green"}]}

execute if score #notice notice matches 8 run scoreboard players set #notice notice 0

scoreboard players set #notice timecounter 0