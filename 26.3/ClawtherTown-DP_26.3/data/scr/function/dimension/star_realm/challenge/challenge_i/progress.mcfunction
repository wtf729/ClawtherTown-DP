scoreboard players operation @s star_realm_challenge_i_progress = @s star_realm_challenge_i_checkpoint
particle minecraft:totem_of_undying ~ ~ ~ 0.1 0.1 0.1 1 100 normal
tellraw @s [{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.main","fallback":"神鹰"},{"text":"] ","color":"gold","bold":true},{"text":"首次通过奖励! ","color":"white","bold":false},{"text":"你获得了: ","color":"yellow","bold":false},{"text":"[灵魂]*20","color":"aqua","bold":false},{"text":" 与 ","color":"yellow","bold":false},{"text":"[鹰翎币]*50","color":"aqua","bold":false}]

scoreboard players add @s soul_add 20
function scr:soul/reward

scoreboard players add @s clawther_coin_add 50
function scr:clawther_coin/reward