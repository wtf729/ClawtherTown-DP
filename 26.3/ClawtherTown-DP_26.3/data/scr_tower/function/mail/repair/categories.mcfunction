execute unless data storage scr_tower:runtime repair_categories[0] run return 1
data modify storage scr_tower:runtime repair_category set from storage scr_tower:runtime repair_categories[0]
execute if data storage scr_tower:runtime repair_category{kind:"gem"} run function scr_tower:mail/repair/candidate
data remove storage scr_tower:runtime repair_categories[0]
return run function scr_tower:mail/repair/categories
