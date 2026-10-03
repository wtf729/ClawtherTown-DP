scoreboard players set @s time_daily_sign_in 1
scoreboard players add @s time_daily_sign_in_times 1
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 1


function scr:time/tellraw/player_daily_sign_in

function scr:time/tellraw/player

function scr:time/tellraw/player_daily_sign_in_times

#将玩家上次签到的日期+1后与服务端的日期对比
scoreboard players add @s time_day_sign_in 1
execute if score @s time_day_sign_in = #server time_day_sign_in run function scr:time/player/sign_in/streak
execute if score @s time_day_sign_in < #server time_day_sign_in run function scr:time/player/sign_in/restart
#将玩家的签到日期与服务端当前日期同步 为下一天统计连续签到做准备
execute store result score @s time_day_sign_in run scoreboard players get #server time_day_sign_in

#当玩家的连续签到天数大于等于连续签到天数记录时 将玩家的连续签到天数储存于连续签到天数记录
execute if score @s time_daily_sign_in_streak >= @s time_daily_sign_in_streak_record run function scr:time/player/sign_in/new_record


function scr:time/tellraw/player_daily_sign_in_streak

function scr:time/tellraw/player_daily_sign_in_streak_record

function scr:time/player/sign_in/reward/reward