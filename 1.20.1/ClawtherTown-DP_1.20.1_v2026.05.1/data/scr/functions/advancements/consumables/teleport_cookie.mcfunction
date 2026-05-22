execute at @s run scoreboard players set @e[distance=..1] scraftspawn 1
execute at @s run tellraw @a[distance=..1] {"text":"","extra":[{"text":"[","color":"yellow","bold":false},{"text":"紫颂曲奇","color":"aqua","bold":false},{"text":"] ","color":"yellow","bold":false},{"text":"已返回主城!","color":"green"}]}

execute as @e[scores={scraftspawn=1}] run function scr:dimension/overworld/spawn

advancement revoke @s only scr:consumables/teleport_cookie