tag @s add scr_mail.adapter
tag @s add scr.clean_protected
data merge entity @s {Invulnerable:1b,Silent:1b,view_range:0.0f,width:0.0f,height:0.0f}
execute if entity @e[type=minecraft:item_display,tag=scr_mail.adapter,distance=..0.1,limit=1] run data modify storage scr_mail:runtime work.adapter_ready set value 1b
execute unless data storage scr_mail:runtime work{adapter_ready:1b} run kill @s
