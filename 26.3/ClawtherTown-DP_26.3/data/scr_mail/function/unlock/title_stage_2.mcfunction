# Explicit return contract; idempotent and never downgrades an existing stage.
execute unless score @s stage matches 2.. run function scr:title/grant/stage_2
execute unless score @s stage matches 2.. run return 0
return 1
