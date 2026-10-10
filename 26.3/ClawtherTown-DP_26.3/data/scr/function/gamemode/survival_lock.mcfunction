# Sky Creative/Spectator are management modes; global enforcement must not downgrade them.

execute as @a[gamemode=creative] at @s unless predicate scr_profile:profile/sky unless score @s superop matches 1 run tellraw @s [{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.main","fallback":"神鹰"},{"text":"] ","color":"gold","bold":true},{"text":"生存锁定目前处于开启状态, ","color":"white","bold":false},{"text":"暂时无法使用创造模式!","color":"white","bold":false}]


execute as @a[gamemode=creative] at @s unless predicate scr_profile:profile/sky unless score @s superop matches 1 run gamemode survival
