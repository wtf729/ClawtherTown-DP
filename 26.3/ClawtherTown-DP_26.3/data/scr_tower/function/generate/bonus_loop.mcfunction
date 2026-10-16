data modify storage scr_tower:runtime card set value {kind:"reward",removed:0,rare:0}
execute if score #i scr_tw = #forced scr_tw run function scr_tower:generate/bonus_gem
execute unless score #i scr_tw = #forced scr_tw run function scr_tower:generate/bonus_item
execute unless data storage scr_tower:runtime card.reward run return 0
data modify storage scr_tower:runtime p.run.cards append from storage scr_tower:runtime card
scoreboard players add #i scr_tw 1
execute if score #i scr_tw matches ..3 run function scr_tower:generate/bonus_loop
