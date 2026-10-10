scoreboard players operation @s death_loss = @s clawther_coin
scoreboard players operation @s death_loss *= #numerator death_loss
scoreboard players operation @s death_loss /= #denominator death_loss
scoreboard players operation @s clawther_coin -= @s death_loss

tellraw @s [{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.main","fallback":"神鹰"},{"text":"] ","color":"gold","bold":true},{"text":"死神夺走了你","color":"red","bold":false},{"score":{"name":"@s","objective":"death_loss"},"color":"light_purple","bold":false},{"text":"枚鹰翎币! ","color":"red","bold":false},{"text":"你的钱包中还剩下","color":"gold","bold":false},{"score":{"name":"@s","objective":"clawther_coin"},"color":"light_purple","bold":false},{"text":"枚鹰翎币!","color":"gold","bold":false},{"text":"\n输入","color":"yellow","bold":false},{"text":"/trigger back","color":"green","bold":false},{"text":"或","color":"yellow","bold":false},{"text":"点击这里","underlined":true,"color":"green","click_event":{"action":"run_command","command":"/trigger back"},"bold":false},{"text":"返回死亡地点!","color":"yellow","bold":false}]


execute as @s if score @s killed_by_player_trigger matches 1.. run function scr:server_unique/death/death_loot_player