scoreboard objectives add mail trigger
scoreboard objectives add mail_action trigger
scoreboard objectives add scr_ml_n dummy
scoreboard objectives add scr_ml_ok dummy
scoreboard objectives add scr_ml_lock dummy
scoreboard objectives add scr_ml_work dummy
scoreboard objectives add scr_ml_batch dummy
scoreboard objectives add scr_ml_recover dummy
scoreboard players set #busy scr_ml_lock 0
data remove storage scr_mail:runtime work
# UI tickets expire at reload; persistent messages and reward receipts are never reset.
data remove storage scr_mail:ui players
scoreboard players set @a scr_ml_work 1
scoreboard players set @a scr_ml_batch 1
# Invalidate offline recovery markers too; their next tick will recheck journals.
scoreboard players reset * scr_ml_recover
kill @e[type=minecraft:item_display,tag=scr_mail.adapter]

# Persistent physical-reward outbox counters; never reset player values at load.
scoreboard objectives add scr_ml_q_new dummy
scoreboard objectives add scr_ml_q_level dummy
scoreboard objectives add scr_ml_q_return dummy
scoreboard objectives add scr_ml_q_birth dummy

# Deterministic public configuration registry; no player reward/history migration.
function scr_mail:definitions/load
