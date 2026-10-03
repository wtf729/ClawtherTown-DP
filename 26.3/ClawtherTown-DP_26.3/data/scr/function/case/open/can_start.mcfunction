# Shared gate for new requests only; never called by ongoing batch draws.
execute unless entity @s[type=minecraft:player] run return 0
execute if entity @s[tag=scr.case_starting] run return run function scr:case/open/busy
execute if score @s case_opening matches 1.. run return run function scr:case/open/busy
execute if score @s case_opening_fast matches 1.. run return run function scr:case/open/busy
execute if score @s cd_case matches 1.. run return run function scr:case/open/cooldown
return 1
