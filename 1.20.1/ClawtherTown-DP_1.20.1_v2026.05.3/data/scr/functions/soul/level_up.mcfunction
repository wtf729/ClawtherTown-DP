
scoreboard players add @s[scores={soul_level=218..}] soul_require 1000
scoreboard players add @s[scores={soul_level=120..217}] soul_require 750
scoreboard players add @s[scores={soul_level=90..119}] soul_require 500
scoreboard players add @s[scores={soul_level=80..89}] soul_require 450
scoreboard players add @s[scores={soul_level=70..79}] soul_require 400
scoreboard players add @s[scores={soul_level=60..69}] soul_require 350
scoreboard players add @s[scores={soul_level=50..59}] soul_require 300
scoreboard players add @s[scores={soul_level=40..49}] soul_require 250
scoreboard players add @s[scores={soul_level=30..39}] soul_require 200
scoreboard players add @s[scores={soul_level=20..29}] soul_require 150
scoreboard players add @s[scores={soul_level=10..19}] soul_require 100
scoreboard players add @s[scores={soul_level=0..9}] soul_require 50

scoreboard players add @s soul_level 1

#level_up_reward
execute as @s[scores={soul_level=2..}] run function scr:soul/level_up_reward/level_up

execute as @s[scores={soul_level=5}] run function scr:soul/level_up_reward/up_to_5
execute as @s[scores={soul_level=20}] run function scr:soul/level_up_reward/up_to_20
execute as @s[scores={soul_level=50}] run function scr:soul/level_up_reward/up_to_50
execute as @s[scores={soul_level=120}] run function scr:soul/level_up_reward/up_to_120
execute as @s[scores={soul_level=250}] run function scr:soul/level_up_reward/up_to_250