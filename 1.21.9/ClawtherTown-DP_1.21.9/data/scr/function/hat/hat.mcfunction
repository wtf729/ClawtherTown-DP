execute as @s unless predicate scr:body/head/air unless predicate scr:handheld/mainhand/air run tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"神鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"你这样我很难办事啊, 把你头上的东西给我摘下来!","color":"yellow"}]}

execute as @s if predicate scr:body/head/air if predicate scr:handheld/mainhand/air run tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"神鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"不是哥们, 你手上没有东西啊!","color":"yellow"}]}

execute as @s unless predicate scr:body/head/air if predicate scr:handheld/mainhand/air run tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"神鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"你头上已经戴着东西了, 而且你手上没有东西, 你是故意找茬是不是?","color":"yellow"}]}

execute as @s if predicate scr:body/head/air unless predicate scr:handheld/mainhand/air run tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"神鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"兄弟, 新帽子不错!","color":"yellow"}]}
execute as @s if predicate scr:body/head/air unless predicate scr:handheld/mainhand/air run function scr:hat/hat_execute

scoreboard players set @s sethat 0