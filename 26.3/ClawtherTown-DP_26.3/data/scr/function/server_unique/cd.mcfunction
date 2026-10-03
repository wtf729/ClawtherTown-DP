execute as @a[scores={cd_staff_sapphire_star=1..}] run scoreboard players remove @s cd_staff_sapphire_star 1
execute as @a[scores={cd_staff_clear_spring=1..}] run scoreboard players remove @s cd_staff_clear_spring 1
execute as @a[scores={cd_staff_clear_spring_custom_1=1..}] run scoreboard players remove @s cd_staff_clear_spring_custom_1 1
execute as @a[scores={cd_staff_strong_wind=1..}] run scoreboard players remove @s cd_staff_strong_wind 1
execute as @a[scores={cd_staff_wind=1..}] run scoreboard players remove @s cd_staff_wind 1
execute as @a[scores={cd_case=1..}] run scoreboard players remove @s cd_case 1
execute as @a[scores={cd_branch_apple_i=1..}] run scoreboard players remove @s cd_branch_apple_i 1
execute as @a[scores={cd_branch_absorption_i=1..}] run scoreboard players remove @s cd_branch_absorption_i 1
execute as @a[scores={cd_branch_absorption_ii=1..}] run scoreboard players remove @s cd_branch_absorption_ii 1
execute as @a[scores={cd_branch_health_i=1..}] run scoreboard players remove @s cd_branch_health_i 1
execute as @a[scores={cd_branch_health_ii=1..}] run scoreboard players remove @s cd_branch_health_ii 1


execute as @a[scores={cd_staff_sapphire_star=1}] run tellraw @s {"text":"","extra":[{"text":"[","color":"yellow","bold":false},{"translate":"item.scr.staff_sapphire_star","color":"aqua","bold":false},{"text":"] ","color":"yellow","bold":false},{"text":"法杖已准备就绪!","color":"green"}]}
execute as @a[scores={cd_staff_sapphire_star=1}] at @s run function scr:right_click/playsound/cd

execute as @a[scores={cd_staff_clear_spring=1}] run tellraw @s {"text":"","extra":[{"text":"[","color":"yellow","bold":false},{"translate":"item.scr.staff_clear_spring","color":"red","bold":false},{"text":"] ","color":"yellow","bold":false},{"text":"法杖已准备就绪!","color":"green"}]}
execute as @a[scores={cd_staff_clear_spring=1}] at @s run function scr:right_click/playsound/cd

execute as @a[scores={cd_staff_clear_spring_custom_1=1}] run tellraw @s {"text":"","extra":[{"text":"[","color":"yellow","bold":false},{"translate":"item.scr.staff_clear_spring_custom_1","color":"light_purple","bold":false},{"text":"] ","color":"yellow","bold":false},{"text":"法杖已准备就绪!","color":"green"}]}
execute as @a[scores={cd_staff_clear_spring_custom_1=1}] at @s run function scr:right_click/playsound/cd

#execute as @a[scores={cd_staff_strong_wind=1}] run tellraw @s {"text":"","extra":[{"text":"[","color":"yellow","bold":false},{"translate":"item.scr.staff_strong_wind","color":"red","bold":false},{"text":"] ","color":"yellow","bold":false},{"text":"法杖已准备就绪!","color":"green"}]}
#execute as @a[scores={cd_staff_strong_wind=1}] at @s run function scr:right_click/playsound/cd

#execute as @a[scores={cd_staff_wind=1}] run tellraw @s {"text":"","extra":[{"text":"[","color":"yellow","bold":false},{"translate":"item.scr.staff_wind","color":"red","bold":false},{"text":"] ","color":"yellow","bold":false},{"text":"法杖已准备就绪!","color":"green"}]}
#execute as @a[scores={cd_staff_wind=1}] at @s run function scr:right_click/playsound/cd

execute as @a[scores={cd_branch_apple_i=1}] run tellraw @s {"text":"","extra":[{"text":"[","color":"yellow","bold":false},{"text":"魔法树枝 | 红苹果","color":"#3c3cd7","bold":false},{"text":"] ","color":"yellow","bold":false},{"text":"法杖已准备就绪!","color":"green"}]}
execute as @a[scores={cd_branch_apple_i=1}] at @s run function scr:right_click/playsound/cd

execute as @a[scores={cd_branch_absorption_i=1}] run tellraw @s {"text":"","extra":[{"text":"[","color":"yellow","bold":false},{"text":"魔法树枝 | 泡沫","color":"#3c3cd7","bold":false},{"text":"] ","color":"yellow","bold":false},{"text":"法杖已准备就绪!","color":"green"}]}
execute as @a[scores={cd_branch_absorption_i=1}] at @s run function scr:right_click/playsound/cd

execute as @a[scores={cd_branch_absorption_ii=1}] run tellraw @s {"text":"","extra":[{"text":"[","color":"yellow","bold":false},{"text":"魔法树枝 | 海之泡沫","color":"#b400ff","bold":false},{"text":"] ","color":"yellow","bold":false},{"text":"法杖已准备就绪!","color":"green"}]}
execute as @a[scores={cd_branch_absorption_ii=1}] at @s run function scr:right_click/playsound/cd

execute as @a[scores={cd_branch_health_i=1}] run tellraw @s {"text":"","extra":[{"text":"[","color":"yellow","bold":false},{"text":"魔法树枝 | 水花","color":"#3c3cd7","bold":false},{"text":"] ","color":"yellow","bold":false},{"text":"法杖已准备就绪!","color":"green"}]}
execute as @a[scores={cd_branch_health_i=1}] at @s run function scr:right_click/playsound/cd

execute as @a[scores={cd_branch_health_ii=1}] run tellraw @s {"text":"","extra":[{"text":"[","color":"yellow","bold":false},{"text":"魔法树枝 | 澄澈之水","color":"#b400ff","bold":false},{"text":"] ","color":"yellow","bold":false},{"text":"法杖已准备就绪!","color":"green"}]}
execute as @a[scores={cd_branch_health_ii=1}] at @s run function scr:right_click/playsound/cd
