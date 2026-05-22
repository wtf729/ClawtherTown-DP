
# scoreboard players add @s[scores={soul_level=220..}] soul_require 470
# scoreboard players add @s[scores={soul_level=120..219}] soul_require 270
# scoreboard players add @s[scores={soul_level=90..119}] soul_require 200
# scoreboard players add @s[scores={soul_level=80..89}] soul_require 180
# scoreboard players add @s[scores={soul_level=70..79}] soul_require 160
# scoreboard players add @s[scores={soul_level=60..69}] soul_require 140
# scoreboard players add @s[scores={soul_level=50..59}] soul_require 120
# scoreboard players add @s[scores={soul_level=40..49}] soul_require 100
# scoreboard players add @s[scores={soul_level=30..39}] soul_require 80
# scoreboard players add @s[scores={soul_level=20..29}] soul_require 70
# scoreboard players add @s[scores={soul_level=10..19}] soul_require 60
# scoreboard players add @s[scores={soul_level=0..9}] soul_require 50
scoreboard players add @s soul_require 120

scoreboard players add @s soul_level 1

#level_up_reward
execute as @s[scores={soul_level=2..}] run function scr:soul/level_up_reward/level_up

execute as @s[scores={soul_level=5}] run function scr:soul/level_up_reward/up_to_5
execute as @s[scores={soul_level=20}] run function scr:soul/level_up_reward/up_to_20
execute as @s[scores={soul_level=50}] run function scr:soul/level_up_reward/up_to_50
execute as @s[scores={soul_level=120}] run function scr:soul/level_up_reward/up_to_120
execute as @s[scores={soul_level=250}] run function scr:soul/level_up_reward/up_to_250