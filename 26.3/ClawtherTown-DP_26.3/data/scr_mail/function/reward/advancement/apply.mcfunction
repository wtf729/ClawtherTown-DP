execute unless data storage scr_mail:runtime work.entry.parameters{id:"scr_mail:reward/unlocked",operation:"grant"} run return 0
advancement grant @s only scr_mail:reward/unlocked
execute unless entity @s[advancements={scr_mail:reward/unlocked=true}] run return 0
return 1
