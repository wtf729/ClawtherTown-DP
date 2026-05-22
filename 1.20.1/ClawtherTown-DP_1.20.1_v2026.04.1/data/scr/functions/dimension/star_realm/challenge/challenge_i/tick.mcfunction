attribute @s minecraft:max_health modifier add scr:star_realm.max_health -19 add_value
effect give @s minecraft:saturation 5 0 true

execute as @s at @s if block ~ ~-1 ~ minecraft:barrier run kill @s
execute as @s at @s if block ~ ~ ~ minecraft:lava run kill @s

execute as @s[scores={star_realm_challenge_i_checkpoint=1..}] run function scr:dimension/star_realm/challenge/challenge_i/checkpoint


execute as @s[scores={star_realm_challenge_i_load=1..}] run function scr:dimension/star_realm/challenge/challenge_i/load
scoreboard players enable @a star_realm_challenge_i_load