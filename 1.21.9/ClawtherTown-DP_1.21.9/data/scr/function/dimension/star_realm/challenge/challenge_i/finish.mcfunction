execute unless score @s star_realm_challenge_i_progress >= @s star_realm_challenge_i_checkpoint run function scr:dimension/star_realm/challenge/challenge_i/finish_first
advancement grant @s only scr:star_realm_challenge_i

particle minecraft:firework ~ ~ ~ 0.1 0.1 0.1 1 500 normal

tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"侦察鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"已设置","color":"white"},{"score":{"name":"@s","objective":"star_realm_challenge_i_checkpoint"},"color":"yellow"},{"text":"号重生点! ","color":"white"},{"text":"你的挑战进度为 ","color":"white"},{"score":{"name":"@s","objective":"star_realm_challenge_i_progress"},"color":"yellow"},{"text":"/","color":"light_purple"},{"score":{"name":"#server","objective":"star_realm_challenge_i_total"},"color":"aqua"},{"text":" !","color":"white"}]}

tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"侦察鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"恭喜通关! ","color":"yellow"},{"text":"输入","color":"yellow"},{"text":"/trigger star","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger star"}},{"text":"返回大厅!","color":"yellow"}]}

playsound minecraft:block.note_block.chime block @s ~ ~ ~ 1 2
scoreboard players set @s star_realm_challenge_i_checkpoint 0