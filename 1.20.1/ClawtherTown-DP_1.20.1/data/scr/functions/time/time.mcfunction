scoreboard players add #server timecounter 1
scoreboard players add @a timecounter 1

function scr:time/player/count_player
function scr:time/player/count_player_daily

function scr:time/server/count_server

#签到
execute as @a[scores={time_daily_sign_in=0},predicate=scr:score/time_daily_sign] at @s run function scr:time/player/sign_in/execute

#检测刚刚登录
function scr:time/player/check


##测试用指令
#execute as @a run title @s actionbar {"text":"","extra":[{"text":"服务器 ","bold":true,"color":"yellow"},{"score":{"name":"#server","objective":"timecounter"},"bold":true,"color":"light_purple"},{"text":" 玩家 ","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"timecounter"},"bold":true,"color":"light_purple"}]}

#execute as @a run title @s actionbar {"text":"","extra":[{"text":"上次在线为: 鹰翎镇时间 ","bold":true,"color":"yellow"},{"score":{"name":"@s","objective":"time_online_year"},"bold":true,"color":"light_purple"},{"text":" 年 ","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"time_online_day"},"bold":true,"color":"light_purple"},{"text":" 日 ","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"time_online_hour"},"bold":true,"color":"light_purple"},{"text":" 时 ","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"time_online_minute"},"bold":true,"color":"light_purple"},{"text":" 分 ","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"time_online_second"},"bold":true,"color":"light_purple"},{"text":" 秒","bold":true,"color":"gold"}]}

#execute as @a run title @s actionbar {"text":"","extra":[{"text":"你今天在鹰翎镇度过了: ","bold":true,"color":"yellow"},{"score":{"name":"@s","objective":"time_daily_hour"},"bold":true,"color":"light_purple"},{"text":" 时 ","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"time_daily_minute"},"bold":true,"color":"light_purple"},{"text":" 分 ","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"time_daily_second"},"bold":true,"color":"light_purple"},{"text":" 秒","bold":true,"color":"gold"}]}

#execute as @a run title @s actionbar {"text":"","extra":[{"text":"你已在鹰翎镇度过了: ","bold":true,"color":"yellow"},{"score":{"name":"@s","objective":"time_year"},"bold":true,"color":"light_purple"},{"text":" 年 ","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"time_day"},"bold":true,"color":"light_purple"},{"text":" 天 ","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"time_hour"},"bold":true,"color":"light_purple"},{"text":" 时 ","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"time_minute"},"bold":true,"color":"light_purple"},{"text":" 分 ","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"time_second"},"bold":true,"color":"light_purple"},{"text":" 秒","bold":true,"color":"gold"}]}

#execute as @a run title @s actionbar {"text":"","extra":[{"text":"世界机器已经运行了: ","bold":true,"color":"yellow"},{"score":{"name":"#server","objective":"time_year"},"bold":true,"color":"light_purple"},{"text":" 年 ","bold":true,"color":"gold"},{"score":{"name":"#server","objective":"time_day"},"bold":true,"color":"light_purple"},{"text":" 天 ","bold":true,"color":"gold"},{"score":{"name":"#server","objective":"time_hour"},"bold":true,"color":"light_purple"},{"text":" 时 ","bold":true,"color":"gold"},{"score":{"name":"#server","objective":"time_minute"},"bold":true,"color":"light_purple"},{"text":" 分 ","bold":true,"color":"gold"},{"score":{"name":"#server","objective":"time_second"},"bold":true,"color":"light_purple"},{"text":" 秒","bold":true,"color":"gold"}]}