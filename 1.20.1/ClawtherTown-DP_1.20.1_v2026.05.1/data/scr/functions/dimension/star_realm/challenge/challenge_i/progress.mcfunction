scoreboard players operation @s star_realm_challenge_i_progress = @s star_realm_challenge_i_checkpoint
particle minecraft:totem_of_undying ~ ~ ~ 0.1 0.1 0.1 1 100 normal
tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"神鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"首次通过奖励! ","color":"white"},{"text":"你获得了: ","color":"yellow"},{"text":"[灵魂]*20","color":"aqua"},{"text":" 与 ","color":"yellow"},{"text":"[鹰翎币]*50","color":"aqua"}]}

scoreboard players add @s soul_add 20
function scr:soul/reward

scoreboard players add @s clawther_coin_add 50
function scr:clawther_coin/reward