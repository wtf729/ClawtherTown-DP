# Contexts are synchronous: a lock surviving to the next tick is interrupted work.
execute if score #busy scr_ml_lock matches 1 run function scr_mail:context/reset
execute as @a[tag=!scr_mail.bound] run function scr_mail:player/bind
# Missing recovery markers include offline players joining after load/reset.
execute as @a unless score @s scr_ml_recover matches 0..1 run scoreboard players set @s scr_ml_recover 1
execute as @a[scores={scr_ml_recover=1}] at @s run function scr_mail:recovery/check
# Retry only queued physical grants; each player gets at most one retry per source per tick.
execute as @a[scores={scr_ml_q_new=1..}] at @s run function scr_mail:queue/newcomer
execute as @a[scores={scr_ml_q_level=1..}] at @s run function scr_mail:queue/level_up
execute as @a[scores={scr_ml_q_return=1..}] at @s run function scr_mail:queue/back_to_server
execute as @a[scores={scr_ml_q_birth=1..}] at @s run function scr_mail:queue/birthday
execute as @a[scores={scr_ml_work=1}] at @s run function scr_mail:prepare/start
execute as @a[scores={scr_ml_batch=1}] at @s run function scr_mail:claim/batch_tick
execute as @a[scores={mail=1..}] at @s run function scr_mail:ui/open
execute as @a[scores={mail_action=1..}] at @s run function scr_mail:request/start
scoreboard players enable @a mail
scoreboard players enable @a mail_action
