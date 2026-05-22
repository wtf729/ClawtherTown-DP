scoreboard players operation @s death_loss = @s clawther_coin
scoreboard players operation @s death_loss *= #numerator death_loss
scoreboard players operation @s death_loss /= #denominator death_loss
scoreboard players operation @s clawther_coin -= @s death_loss

tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"神鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"死神夺走了你","color":"red"},{"score":{"name":"@s","objective":"death_loss"},"color":"light_purple"},{"text":"枚鹰翎币! ","color":"red"},{"text":"你的钱包中还剩下","color":"gold"},{"score":{"name":"@s","objective":"clawther_coin"},"color":"light_purple"},{"text":"枚鹰翎币!","color":"gold"},{"text":"\n输入","color":"yellow"},{"text":"/trigger back","color":"green"},{"text":"或","color":"yellow"},{"text":"点击这里","underlined":true,"color":"green","click_event":{"action":"run_command","command":"/trigger back"}},{"text":"返回死亡地点!","color":"yellow"}]}


execute as @s if score @s killed_by_player_trigger matches 1.. run function scr:server_unique/death/death_loot_player