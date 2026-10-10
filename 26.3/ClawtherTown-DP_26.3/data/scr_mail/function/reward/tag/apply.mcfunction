execute unless data storage scr_mail:runtime work.entry.parameters{name:"scr.mail_unlocked",operation:"add"} run return 0
tag @s add scr.mail_unlocked
execute unless entity @s[tag=scr.mail_unlocked] run return 0
return 1
