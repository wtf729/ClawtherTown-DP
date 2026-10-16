# RandomCommand rejects min == max; fixed denominations must be assigned directly.
$data modify storage scr_tower:runtime card.reward set value {handler:"clawther_gem",parameters:{amount:$(min)}}
data modify storage scr_tower:runtime card.rare set from storage scr_tower:runtime category.rare
$scoreboard players set #gem_min scr_tw $(min)
$scoreboard players set #gem_max scr_tw $(max_amount)
$execute unless score #gem_min scr_tw = #gem_max scr_tw store result storage scr_tower:runtime card.reward.parameters.amount int 1 run random value $(min)..$(max_amount) scr_tower:rewards
