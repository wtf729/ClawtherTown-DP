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
