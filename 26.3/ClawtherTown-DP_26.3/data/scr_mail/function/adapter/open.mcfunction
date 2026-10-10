data modify storage scr_mail:runtime work.adapter_ready set value 0b
execute summon minecraft:item_display run function scr_mail:adapter/prepare
execute unless data storage scr_mail:runtime work{adapter_ready:1b} run return 0
return 1
