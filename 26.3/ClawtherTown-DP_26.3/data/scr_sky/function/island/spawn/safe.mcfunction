execute unless dimension scr:sky run return 0
$execute store result score #spawn_clear scr_sk run function scr_sky:island/spawn/space {x:$(x),y:$(y),z:$(z)}
execute unless score #spawn_clear scr_sk matches 1 run return 0
$execute positioned $(x) $(y) $(z) positioned ~-0.3 ~ ~-0.3 positioned ~ ~-0.01 ~ store result score #spawn_support scr_sk run function scr_sky:island/spawn/support
execute unless score #spawn_support scr_sk matches 1 run return 0
$execute positioned $(x) $(y) $(z) positioned ~-0.3 ~ ~0.3 positioned ~ ~-0.01 ~ store result score #spawn_support scr_sk run function scr_sky:island/spawn/support
execute unless score #spawn_support scr_sk matches 1 run return 0
$execute positioned $(x) $(y) $(z) positioned ~0.3 ~ ~-0.3 positioned ~ ~-0.01 ~ store result score #spawn_support scr_sk run function scr_sky:island/spawn/support
execute unless score #spawn_support scr_sk matches 1 run return 0
$execute positioned $(x) $(y) $(z) positioned ~0.3 ~ ~0.3 positioned ~ ~-0.01 ~ store result score #spawn_support scr_sk run function scr_sky:island/spawn/support
execute unless score #spawn_support scr_sk matches 1 run return 0
return 1
