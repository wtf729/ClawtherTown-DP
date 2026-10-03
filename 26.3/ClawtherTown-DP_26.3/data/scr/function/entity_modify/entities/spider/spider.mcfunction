function scr:random/random100000_entity_modify


execute if score #random100000_entity_modify scr_random matches 1..10 run function scr:entity_modify/entities/spider/spider_rare
#execute if score #random100000_entity_modify scr_random matches 11..20 run function scr:entity_modify/entities/spider/spider_v
#execute if score #random100000_entity_modify scr_random matches 21..500 run function scr:entity_modify/entities/spider/spider_iv
#execute if score #random100000_entity_modify scr_random matches 501..3000 run function scr:entity_modify/entities/spider/spider_iii
#execute if score #random100000_entity_modify scr_random matches 3001..10000 run function scr:entity_modify/entities/spider/spider_ii
execute if score #random100000_entity_modify scr_random matches 11..100000 run function scr:entity_modify/entities/spider/spider_i