# Task state names: LOCKED=0, AVAILABLE=1, ACTIVE=2, READY_TO_COMPLETE=3, COMPLETED=4.
# Catalog is code-owned and rebuilt at reload; persistent player records are never reset.
scoreboard objectives add task trigger
scoreboard objectives add scr_tk dummy
scoreboard players add #catalog_rev scr_tk 1
data modify storage scr_task:runtime catalog set value []
data remove storage scr_task:runtime work
data remove storage scr_task:runtime busy
data remove storage scr_task:runtime result
function #scr_task:register
function scr_task:ui/load
scoreboard players enable @a task
function scr_task:ui/notification/load
# Resume safe starting-mail retries after reload, then every 30 seconds.
schedule function scr_task:core/start_items/retry 1t replace
# Business bootstrap/recovery after reload; never from a Dialog render.
schedule function scr_task:core/player/resume_online 1t replace
