scoreboard players set @s shop 0
execute unless function scr:shop/policy/ready run return run function scr:shop/policy/deny
return 1
