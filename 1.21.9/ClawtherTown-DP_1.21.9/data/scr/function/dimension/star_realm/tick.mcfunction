scoreboard players set @s in_star_realm 20
function scr:dimension/star_realm/teleport
gamemode adventure @s[gamemode=survival]

execute as @s[predicate=scr:special/star_realm_banned] run function scr:dimension/star_realm/ban


#进度更新
scoreboard players add @s star_realm_challenge_i_progress 0


execute as @s[x=-500,y=120,z=-1,dx=58,dy=66,dz=746] run function scr:dimension/star_realm/challenge/challenge_i/tick