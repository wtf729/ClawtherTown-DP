# @s is the freshly summoned display, even when its section is not yet selector-accessible.
tag @s add scr_profile.adapter
tag @s add scr.clean_protected
data merge entity @s {Invulnerable:1b,Silent:1b,view_range:0.0f,width:0.0f,height:0.0f}
execute if entity @e[type=minecraft:item_display,tag=scr_profile.adapter,distance=..0.1,limit=1] run data modify storage scr_profile:runtime work.adapter_ready set value 1b
# Direct @s cleanup also works for a hidden entity; an @e selector would leave it behind.
execute unless data storage scr_profile:runtime work{adapter_ready:1b} run kill @s
