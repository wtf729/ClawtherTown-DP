scoreboard players operation @s star_realm_challenge_i_progress = @s star_realm_challenge_i_checkpoint
tellraw @s [{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.main","fallback":"神鹰"},{"text":"] ","color":"gold","bold":true},{"text":"首次通过奖励! ","color":"white","bold":false},{"text":"你获得了: ","color":"yellow","bold":false},{"text":"[灵魂]*100","color":"aqua","bold":false},{"text":" 与 ","color":"yellow","bold":false},{"text":"[鹰翎币]*5000","color":"aqua","bold":false}]

scoreboard players add @s soul_add 100
function scr:soul/reward

scoreboard players add @s clawther_coin_add 5000
function scr:clawther_coin/reward

playsound scr:ui.mh_mission_complete_epic ambient @s ~ ~ ~

function scr:title/grant/advancements_1