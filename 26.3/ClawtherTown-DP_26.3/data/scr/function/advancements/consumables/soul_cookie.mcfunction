execute at @s run spawnpoint @a[distance=..2]
execute at @s run tellraw @a[distance=..2] [{"text":"[","color":"yellow","bold":false},{"text":"灵魂曲奇","color":"aqua","bold":false},{"text":"] ","color":"yellow","bold":false},{"text":"已设置重生点!","color":"green","bold":false}]

advancement revoke @s only scr:consumables/soul_cookie