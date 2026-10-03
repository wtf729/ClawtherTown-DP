tag @s[nbt={SelectedItem:{id:"minecraft:name_tag"}}] add homes.hasNameTag
execute if entity @s[tag=homes.hasNameTag] run function homes:try_to_name_home
tellraw @s[tag=!homes.hasNameTag] {"text":"你必须在主手拿着命名牌才能为家命名!","color":"red"}
tag @s remove homes.hasNameTag
scoreboard players set @s namehome 0