execute as @s unless entity @s[nbt={Inventory:[{id:"minecraft:shulker_shell",tag:{id:"scr:case_deepwater_case"}}]}] run function scr:right_click/tellraw/cd_case_missing
execute as @s[scores={cd_case=1..}] if entity @s[nbt={Inventory:[{id:"minecraft:shulker_shell",tag:{id:"scr:case_deepwater_case"}}]}] run function scr:right_click/tellraw/cd_case

execute as @s[scores={cd_case=0},nbt={Inventory:[{id:"minecraft:shulker_shell",tag:{id:"scr:case_deepwater_case"}}]}] at @s run function scr:case/open/case/manual/deepwater_case