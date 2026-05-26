function scr:random/random100000_entity_modify


execute if score #random100000_entity_modify scr_random matches 1..1000 run function scr:entity_modify/entities/pig/pig_rare
#execute if score #random100000_entity_modify scr_random matches 11..20 run function scr:entity_modify/entities/pig/pig_v
#execute if score #random100000_entity_modify scr_random matches 21..500 run function scr:entity_modify/entities/pig/pig_iv
#execute if score #random100000_entity_modify scr_random matches 501..3000 run function scr:entity_modify/entities/pig/pig_iii
#execute if score #random100000_entity_modify scr_random matches 3001..10000 run function scr:entity_modify/entities/pig/pig_ii
execute if score #random100000_entity_modify scr_random matches 1001..100000 run function scr:entity_modify/entities/pig/pig_i