data modify storage homes:storage temp set from storage homes:storage players[-1].homes[-1].name
execute store success score #success homes.dummy run data modify storage homes:storage temp set from entity @s SelectedItem.components."minecraft:custom_name"
execute if score #success homes.dummy matches 1 run function homes:set_home_name
execute unless score #success homes.dummy matches 1 run tellraw @s {"text":"你的家已经叫那个名字了!","color":"red"}