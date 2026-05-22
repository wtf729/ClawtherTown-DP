execute as @s[scores={time_daily_sign_in_streak=1..3}] run function scr:time/player/sign_in/reward/reward_bonus_i
execute as @s[scores={time_daily_sign_in_streak=4..6}] run function scr:time/player/sign_in/reward/reward_bonus_ii
execute as @s[scores={time_daily_sign_in_streak=7..}] run function scr:time/player/sign_in/reward/reward_bonus_iii