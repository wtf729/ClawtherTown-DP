#execute as @s[scores={cd_staff_wind=1..}] run function scr:right_click/tellraw/cd_staff_wind

execute as @s[scores={cd_staff_wind=0}] run summon minecraft:wind_charge ~ ~1 ~ {Motion:[0.0,-1.0,0.0]}
execute as @s[scores={cd_staff_wind=0}] run playsound minecraft:item.firecharge.use ambient @a ~ ~ ~
#execute as @s[scores={cd_staff_wind=0}] at @s run tellraw @s {"text":"","extra":[{"text":"[","color":"yellow","bold":false},{"translate":"item.scr.staff_wind","color":"red","bold":false},{"text":"] ","color":"yellow","bold":false},{"text":"法杖已生效!","color":"green"}]}

execute as @s[scores={cd_staff_wind=0}] run scoreboard players set @s cd_staff_wind 25