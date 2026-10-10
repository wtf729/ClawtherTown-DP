# Readiness is checked BEFORE beginning a transaction. A successful summon is not proof of selector visibility.
function scr_profile:adapter/cleanup
data modify storage scr_profile:runtime work.adapter_ready set value 0b
execute summon minecraft:item_display run function scr_profile:adapter/prepare
execute unless data storage scr_profile:runtime work{adapter_ready:1b} run return 0
execute unless entity @e[type=minecraft:item_display,tag=scr_profile.adapter,distance=..0.1,limit=1] run return 0
return 1
