function scr:random/random100000_entity_modify


execute if score #random100000_entity_modify scr_random matches 1..10 run function scr:entity_modify/entities/creeper/creeper_rare
execute if score #random100000_entity_modify scr_random matches 11..20 run function scr:entity_modify/entities/creeper/creeper_v
execute if score #random100000_entity_modify scr_random matches 21..300 run function scr:entity_modify/entities/creeper/creeper_iv
execute if score #random100000_entity_modify scr_random matches 301..3000 run function scr:entity_modify/entities/creeper/creeper_iii
execute if score #random100000_entity_modify scr_random matches 3001..10000 run function scr:entity_modify/entities/creeper/creeper_ii
execute if score #random100000_entity_modify scr_random matches 10001..100000 run function scr:entity_modify/entities/creeper/creeper_i