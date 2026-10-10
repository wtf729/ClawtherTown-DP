execute unless entity @s[type=minecraft:player,gamemode=!creative,gamemode=!spectator] run return 0
execute unless predicate scr:location/in_sky run return 0
execute store result score #px scr_sk run data get entity @s Pos[0]
execute store result score #pz scr_sk run data get entity @s Pos[2]
function scr_sky:hub/check
execute unless score #hub scr_sk matches 1 run return 0
execute unless entity @s[gamemode=creative] unless entity @s[gamemode=spectator] unless entity @s[gamemode=adventure] run gamemode adventure @s
effect give @s minecraft:regeneration 3 0 true
effect give @s minecraft:saturation 2 0 true
