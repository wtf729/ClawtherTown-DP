execute unless function scr:case/open/try_lock run return 0
execute store result score @s scr_case_taken run clear @s minecraft:carrot_on_a_stick[minecraft:item_name=key_clawther_case] 0
execute unless score @s scr_case_taken matches 1.. run return run function scr:case/open/abort_start
execute store result score @s scr_case_taken run clear @s minecraft:shulker_shell[minecraft:item_name=case_clawther_case] 0
execute unless score @s scr_case_taken matches 1.. run return run function scr:case/open/abort_start
execute store result score @s scr_case_taken run clear @s minecraft:carrot_on_a_stick[minecraft:item_name=key_clawther_case] 1
execute unless score @s scr_case_taken matches 1 run return run function scr:case/open/abort_start
execute store result score @s scr_case_taken run clear @s minecraft:shulker_shell[minecraft:item_name=case_clawther_case] 1
execute unless score @s scr_case_taken matches 1 run return run function scr:case/open/abort_start
function scr:case/open/case/clawther_case
