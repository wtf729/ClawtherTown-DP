execute if data storage scr_tower:runtime fc{bonus:1} run return run function scr_tower:generate/bonus_loop
data modify storage scr_tower:runtime card set value {kind:"reward",removed:0,rare:0}
data modify storage scr_tower:runtime categories set from storage scr_tower:runtime fc.categories
execute store result score #roll scr_tw run random value 1..100 scr_tower:rewards
data remove storage scr_tower:runtime category
function scr_tower:generate/category
execute unless data storage scr_tower:runtime category.kind run return 0
execute if data storage scr_tower:runtime category{kind:"gem"} run function scr_tower:generate/gem with storage scr_tower:runtime category
execute if data storage scr_tower:runtime category{kind:"item"} run function scr_tower:generate/item
execute unless data storage scr_tower:runtime card.reward run return 0
execute if score #i scr_tw = #danger scr_tw run data modify storage scr_tower:runtime card.kind set value "danger"
data modify storage scr_tower:runtime p.run.cards append from storage scr_tower:runtime card
scoreboard players add #i scr_tw 1
execute if score #i scr_tw matches ..3 run function scr_tower:generate/loop
